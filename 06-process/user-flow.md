# Kullanıcı Akışı

## 1. Amaç

Bu doküman, kurumsal müşterinin ürün seçiminden teklif talebinin oluşturulmasına kadar olan temel kullanıcı akışını göstermektedir.

Akış, müşterinin teklif talebi oluşturma sürecini ve sistemin bu süreçte gerçekleştirdiği temel kontrolleri kapsamaktadır.

---

## 2. Akış Adımları

### Adım 1 — Ürün Görüntüleme

Müşteri bir ürünün detay sayfasını görüntüler.

Sistem ürünün `Kurumsal Satışa Açık` durumunu kontrol eder.

---

### Adım 2 — Kurumsal Satış Kontrolü

**Kurumsal satış aktifse:**

`Kurumsal Teklif Talep Et` butonu gösterilir.

**Kurumsal satış aktif değilse:**

Kurumsal teklif butonu gösterilmez ve kullanıcı mevcut satın alma akışından devam eder.

---

### Adım 3 — Adet Belirleme

Müşteri teklif etmek istediği ürünün adetini belirler.

Sistem adet bilgisinin geçerli olup olmadığını kontrol eder.

Geçersiz adet girilirse kullanıcıya hata mesajı gösterilir.

---

### Adım 4 — Teklif Sepetine Ekleme

Geçerli adet bilgisiyle ürün kurumsal teklif sepetine eklenir.

Müşteri isterse başka kurumsal ürünleri de sepete ekleyebilir.

---

### Adım 5 — Teklif Sepetini Düzenleme

Müşteri:

- Ürün adetini değiştirebilir.
- Ürünleri sepetten çıkarabilir.
- Yeni ürünler ekleyebilir.

Sepette en az bir ürün bulunması durumunda teklif talebi oluşturma işlemine devam edilebilir.

---

### Adım 6 — Firma ve Yetkili Bilgileri

Müşteri teklif talebi oluşturmak için gerekli bilgileri girer.

Örnek:

- Firma adı
- Vergi numarası
- Firma adresi
- Yetkili adı soyadı
- E-posta
- Telefon

---

### Adım 7 — Bilgi Doğrulama

Sistem girilen bilgileri kontrol eder.

Bilgiler eksik veya geçersizse kullanıcı bilgilendirilir ve formu düzenlemesi istenir.

Bilgiler geçerliyse teklif talebi oluşturulur.

---

### Adım 8 — Teklif Talebinin Oluşturulması

Sistem aşağıdaki bilgileri kaydeder:

- Müşteri bilgileri
- Firma bilgileri
- Yetkili bilgileri
- Ürünler
- Ürün adetleri
- Talep tarihi
- Talep durumu

Talebin başlangıç durumu:

`Yeni`

olarak belirlenir.

---

### Adım 9 — Teklif Numarasının Oluşturulması

Sistem oluşturulan talebe benzersiz bir teklif numarası atar.

Örnek:

`TK-2026-001245`

---

### Adım 10 — Başarı Ekranı

Müşteriye talebin başarıyla oluşturulduğu gösterilir.

Teklif numarası ekranda görüntülenir.

---

### Adım 11 — Satış Ekibine İletim

Oluşturulan teklif talebi satış ekibinin yönetim panelinde görüntülenebilir hale gelir.

Satış ekibi talep detaylarını inceleyerek sonraki teklif sürecini yürütür.

---

## 4. Alternatif / Hata Akışları

### AF-01 — Kurumsal Satış Kapalı

Ürün kurumsal satışa açık değilse:

Ürün Detayı
    ↓
Kurumsal Satış Kapalı
    ↓
Kurumsal Teklif Butonu Gösterilmez

### AF-02 — Geçersiz Adet

Adet Girilir

↓

Adet Geçersiz

↓

Hata Mesajı

↓

Adet Yeniden Girilir

---

### AF-03 — Boş Teklif Sepeti

Teklif Talebi Oluştur

↓

Sepet Boş

↓

İşlem Engellenir

↓

Kullanıcı Sepete Yönlendirilir

---

### AF-04 — Eksik Firma / Yetkili Bilgisi

Bilgiler Girilir

↓

Eksik / Geçersiz Bilgi

↓

Hata Mesajı

↓

Form Düzenlenir

↓

Tekrar Gönderilir

---

## 5. Akışın Başlangıç ve Bitiş Noktaları

### Başlangıç

Müşterinin ürün detay sayfasını görüntülemesi.

### Bitiş

Teklif talebinin oluşturulması, benzersiz teklif numarasının üretilmesi ve talebin satış ekibine iletilmesi.

### Kapsam Dışı Sonraki Süreç

Satış ekibinin:

- Fiyatlandırma yapması
- İskonto belirlemesi
- Müşteriye nihai teklif sunması
- Sipariş oluşturması

bu akışın kapsamı dışındadır.

# Kullanıcı Akışı

```mermaid
flowchart TD

    A[Ürün Detay Sayfası] --> B{Kurumsal Satışa Açık mı?}

    B -- Hayır --> C[Kurumsal Teklif Butonu Gösterilmez]
    B -- Evet --> D[Kurumsal Teklif Talep Et]

    D --> E[Adet Belirle]
    E --> F{Adet Geçerli mi?}

    F -- Hayır --> G[Hata Mesajı Göster]
    G --> E

    F -- Evet --> H[Kurumsal Teklife Ekle]

    H --> I[Kurumsal Teklif Sepeti]

    I --> J{Başka Ürün Eklenecek mi?}

    J -- Evet --> A
    J -- Hayır --> K[Teklif Talebi Oluştur]

    K --> L{Sepet Boş mu?}

    L -- Evet --> M[Hata Mesajı Göster]
    M --> I

    L -- Hayır --> N[Firma ve Yetkili Bilgilerini Gir]

    N --> O{Bilgiler Geçerli mi?}

    O -- Hayır --> P[Hata Mesajı Göster]
    P --> N

    O -- Evet --> Q[Teklif Talebini Oluştur]

    Q --> R[Teklif Numarası Oluştur]

    R --> S[Talep Başarı Ekranı]

    S --> T[Satış Ekibine İlet]
