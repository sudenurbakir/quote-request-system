# Functional Requirements

## 1. Amaç

Bu doküman, B2B Teklif Talep Sistemi'nin sahip olması gereken fonksiyonel davranışları tanımlamaktadır.

Fonksiyonel gereksinimler, sistemin kullanıcı ihtiyaçlarını karşılamak için hangi işlemleri gerçekleştirmesi gerektiğini belirtir.

---

## 2. Ürün Yönetimi

### FR-01 — Kurumsal Satış Özelliği

Sistem, ürün yönetim ekranında ürünün kurumsal satışa açık olup olmadığını belirlemek için bir alan sunmalıdır.

**Alan:**
- Kurumsal Satışa Açık

**Değerler:**
- Aktif
- Pasif

---

### FR-02 — Kurumsal Satış Durumunun Güncellenmesi

Yetkili kullanıcı, ürünün kurumsal satış durumunu aktif veya pasif olarak değiştirebilmelidir.

---

### FR-03 — Kurumsal Satışa Açık Ürünlerin Belirlenmesi

Sistem, yalnızca kurumsal satış özelliği aktif olan ürünleri kurumsal teklif sürecine dahil etmelidir.

---

## 3. Ürün Detay Sayfası

### FR-04 — Kurumsal Teklif Butonunun Gösterilmesi

Kurumsal satış özelliği aktif olan ürünlerin detay sayfasında:

**"Kurumsal Teklif Talep Et"**

butonu gösterilmelidir.

Kurumsal satış özelliği pasif olan ürünlerde bu buton gösterilmemelidir.

---

### FR-05 — Teklif Adedi Belirleme

Müşteri, kurumsal teklif talebinde bulunurken talep ettiği ürün adedini belirleyebilmelidir.

Adet aşağıdaki yöntemlerden biriyle değiştirilebilmelidir:

- Artırma (+)
- Azaltma (-)
- Manuel adet girişi

---

### FR-06 — Geçersiz Adet Kontrolü

Sistem, geçersiz adet bilgilerinin teklif sepetine eklenmesini engellemelidir.

Örneğin:

- 0 adet
- Negatif adet
- Geçersiz karakterler

---

## 4. Kurumsal Teklif Sepeti

### FR-07 — Ürünü Teklif Sepetine Ekleme

Müşteri belirlediği ürün ve adet bilgisini kurumsal teklif sepetine ekleyebilmelidir.

---

### FR-08 — Birden Fazla Ürün Ekleme

Müşteri farklı ürünleri aynı kurumsal teklif sepetine ekleyebilmelidir.

Örnek:

- Ürün A — 20 adet
- Ürün B — 10 adet
- Ürün C — 50 adet

---

### FR-09 — Aynı Ürünün Tekrar Eklenmesi

Müşteri aynı ürünü tekrar teklif sepetine eklediğinde sistem yeni bir ürün satırı oluşturmak yerine mevcut ürünün adet bilgisini güncellemelidir.

> Not: Bu davranışın business tarafından doğrulanması gerekmektedir.

---

### FR-10 — Sepet Görüntüleme

Müşteri teklif sepetinde bulunan ürünleri aşağıdaki bilgilerle görüntüleyebilmelidir:

- Ürün adı
- Ürün görseli
- Talep edilen adet

---

### FR-11 — Sepet Adedi Güncelleme

Müşteri teklif sepetinde bulunan ürünlerin adetlerini değiştirebilmelidir.

---

### FR-12 — Sepetten Ürün Çıkarma

Müşteri teklif sepetindeki bir ürünü sepetten çıkarabilmelidir.

---

### FR-13 — Teklif Sepeti Kontrolü

Sistem, teklif talebi oluşturulmadan önce teklif sepetinde en az bir ürün bulunup bulunmadığını kontrol etmelidir.

Sepet boş ise teklif talebi oluşturma işlemi gerçekleştirilememelidir.

---

## 5. Teklif Talebi Oluşturma

### FR-14 — Firma Bilgilerinin Alınması

Sistem, teklif talebi oluşturulurken müşteriden firma bilgilerini almalıdır.

Örnek bilgiler:

- Firma adı
- Vergi numarası
- Firma adresi

> Not: Kesin alanlar business analizi sırasında netleştirilecektir.

---

### FR-15 — Yetkili Bilgilerinin Alınması

Sistem, teklif talebi oluşturulurken yetkili kişi bilgilerini almalıdır.

Örnek bilgiler:

- Ad soyad
- E-posta
- Telefon

---

### FR-16 — Teklif Talebinin Oluşturulması

Müşteri gerekli bilgileri tamamlayarak teklif talebini gönderebilmelidir.

Sistem;

- Müşteri bilgilerini
- Firma bilgilerini
- Ürün bilgilerini
- Talep edilen adetleri
- Talep oluşturulma tarihini

kaydederek teklif talebini oluşturmalıdır.

---

### FR-17 — Teklif Numarası Oluşturma

Teklif talebi başarıyla oluşturulduğunda sistem benzersiz bir teklif numarası oluşturmalıdır.

Örnek:

`TK-2026-001245`

---

### FR-18 — Talep Sonuç Ekranı

Teklif talebi başarıyla oluşturulduğunda müşteriye talebin başarıyla oluşturulduğunu belirten bir bilgilendirme gösterilmelidir.

Ekranda teklif numarası gösterilmelidir.

---

## 6. Admin / Satış Paneli

### FR-19 — Teklif Taleplerini Listeleme

Yetkili kullanıcılar oluşturulan teklif taleplerini listeleyebilmelidir.

Liste içerisinde en az aşağıdaki bilgiler bulunmalıdır:

- Teklif numarası
- Firma adı
- Talep tarihi
- Talep durumu

---

### FR-20 — Teklif Talebi Detayı

Yetkili kullanıcı bir teklif talebinin detaylarını görüntüleyebilmelidir.

Detay ekranında:

- Firma bilgileri
- Yetkili bilgileri
- Ürünler
- Talep edilen adetler
- Talep tarihi
- Teklif numarası
- Talep durumu

görüntülenebilmelidir.

---

### FR-21 — Teklif Talebi Durumu

Teklif talebinin sistem içerisinde bir durum bilgisi bulunmalıdır.

İlk versiyon için önerilen durumlar:

- Yeni
- İnceleniyor
- Teklif Hazırlanıyor
- Tamamlandı
- İptal Edildi

> Not: Durumların kesinleşmesi business tarafında doğrulanmalıdır.

---

## 7. Hata ve Bilgilendirme Mesajları

### FR-22 — İşlem Başarısızlığı

Sistem, teklif talebi oluşturma işlemi başarısız olduğunda kullanıcıya anlaşılır bir hata mesajı göstermelidir.

---

### FR-23 — Başarılı İşlem Bildirimi

Sistem, teklif talebi başarıyla oluşturulduğunda kullanıcıya başarılı işlem mesajı göstermelidir.

---

## 8. Fonksiyonel Gereksinim Özeti

| ID | Gereksinim | Öncelik |
|---|---|---|
| FR-01 | Kurumsal satış alanı | Must Have |
| FR-02 | Kurumsal satış durumunu değiştirme | Must Have |
| FR-03 | Kurumsal ürünleri belirleme | Must Have |
| FR-04 | Teklif butonunu gösterme | Must Have |
| FR-05 | Adet belirleme | Must Have |
| FR-06 | Adet doğrulama | Must Have |
| FR-07 | Ürün ekleme | Must Have |
| FR-08 | Birden fazla ürün ekleme | Must Have |
| FR-09 | Aynı ürün kontrolü | Should Have |
| FR-10 | Teklif sepetini görüntüleme | Must Have |
| FR-11 | Adet güncelleme | Must Have |
| FR-12 | Ürün çıkarma | Must Have |
| FR-13 | Boş sepet kontrolü | Must Have |
| FR-14 | Firma bilgileri | Must Have |
| FR-15 | Yetkili bilgileri | Must Have |
| FR-16 | Teklif talebi oluşturma | Must Have |
| FR-17 | Teklif numarası oluşturma | Must Have |
| FR-18 | Sonuç ekranı | Must Have |
| FR-19 | Talepleri listeleme | Must Have |
| FR-20 | Talep detayını görüntüleme | Must Have |
| FR-21 | Talep durumu | Should Have |
| FR-22 | Hata mesajları | Must Have |
| FR-23 | Başarılı işlem mesajı | Must Have |
