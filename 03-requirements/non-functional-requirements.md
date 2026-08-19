# Non-Functional Requirements

## 1. Amaç

Bu doküman, B2B Teklif Talep Sistemi'nin performans, güvenlik, kullanılabilirlik, erişilebilirlik ve veri bütünlüğü gibi fonksiyonel olmayan gereksinimlerini tanımlamaktadır.

Non-functional requirements, sistemin hangi kalite ve performans koşullarını sağlaması gerektiğini ifade eder.

---

## 2. Performans

### NFR-01 — Sayfa Yüklenme Süresi

Ürün detay ve teklif sepeti gibi temel kullanıcı ekranları normal sistem koşullarında makul bir sürede yüklenmelidir.

Hedef:

- Temel ekranların %95'inin 2 saniye içerisinde yüklenmesi.

---

### NFR-02 — Teklif Talebi Oluşturma Performansı

Kullanıcı teklif talebini gönderdiğinde sistem talebi makul bir sürede işleyerek sonucu kullanıcıya göstermelidir.

Hedef:

- Teklif talebi oluşturma işleminin %95'inde 3 saniye içerisinde tamamlanması.

---

## 3. Kullanılabilirlik

### NFR-03 — Anlaşılır Kullanıcı Arayüzü

Teklif talebi oluşturma süreci kullanıcı tarafından kolayca anlaşılabilir olmalıdır.

Kullanıcı;

- Ürünü teklif sepetine ekleyebilmeli,
- Adet bilgisini değiştirebilmeli,
- Sepeti düzenleyebilmeli,
- Teklif talebini oluşturabilmelidir.

---

### NFR-04 — Hata Mesajları

Sistem, kullanıcı tarafından gerçekleştirilen geçersiz işlemlerde anlaşılır ve kullanıcıyı yönlendiren hata mesajları göstermelidir.

Örneğin:

> "Teklif talebi oluşturabilmek için en az bir ürün eklemelisiniz."

---

## 4. Güvenlik

### NFR-05 — Yetkilendirme

Ürünlerin kurumsal satış durumunu değiştirme ve teklif taleplerini yönetme işlemleri yalnızca yetkili kullanıcılar tarafından gerçekleştirilebilmelidir.

---

### NFR-06 — Kullanıcı Verilerinin Korunması

Firma, yetkili kişi, e-posta ve telefon gibi kullanıcı bilgileri yalnızca yetkili kullanıcılar tarafından görüntülenebilmelidir.

---

### NFR-07 — Veri Güvenliği

Teklif taleplerinde tutulan kullanıcı ve firma bilgileri güvenli şekilde saklanmalı ve yetkisiz erişime karşı korunmalıdır.

---

## 5. Veri Bütünlüğü

### NFR-08 — Benzersiz Teklif Numarası

Her teklif talebi benzersiz bir teklif numarasına sahip olmalıdır.

Aynı teklif numarası birden fazla talepte kullanılamamalıdır.

---

### NFR-09 — Teklif Ürünlerinin Tutarlılığı

Bir teklif talebi oluşturulduğunda teklif içerisindeki ürün ve adet bilgileri kaydedilmeli ve sonradan oluşabilecek sepet değişikliklerinden etkilenmemelidir.

---

## 6. Kullanılabilirlik ve Erişilebilirlik

### NFR-10 — Responsive Tasarım

Teklif talep süreci masaüstü, tablet ve mobil cihazlarda kullanılabilir olmalıdır.

---

### NFR-11 — Form Kullanılabilirliği

Teklif talebi formunda zorunlu alanlar kullanıcıya açık şekilde belirtilmelidir.

Geçersiz veya eksik bilgiler kullanıcıya anlaşılır şekilde gösterilmelidir.

---

## 7. Ölçeklenebilirlik

### NFR-12 — Artan Talep Sayısı

Sistem, teklif talebi sayısının zaman içerisinde artması durumunda temel fonksiyonlarını kabul edilebilir performans seviyesinde sürdürebilmelidir.

---

## 8. İzlenebilirlik

### NFR-13 — Talep Kayıtlarının İzlenebilirliği

Oluşturulan teklif taleplerinde en az aşağıdaki bilgiler sistem tarafından tutulmalıdır:

- Teklif numarası
- Oluşturulma tarihi
- Oluşturan kullanıcı
- Teklif durumu
- Ürün ve adet bilgileri

---

## 9. NFR Öncelikleri

| ID | Gereksinim | Kategori | Öncelik |
|---|---|---|---|
| NFR-01 | Sayfa yüklenme süresi | Performans | Should Have |
| NFR-02 | Talep oluşturma performansı | Performans | Should Have |
| NFR-03 | Anlaşılır kullanıcı arayüzü | Kullanılabilirlik | Must Have |
| NFR-04 | Hata mesajları | Kullanılabilirlik | Must Have |
| NFR-05 | Yetkilendirme | Güvenlik | Must Have |
| NFR-06 | Kullanıcı verilerinin korunması | Güvenlik | Must Have |
| NFR-07 | Veri güvenliği | Güvenlik | Must Have |
| NFR-08 | Benzersiz teklif numarası | Veri Bütünlüğü | Must Have |
| NFR-09 | Teklif verilerinin tutarlılığı | Veri Bütünlüğü | Must Have |
| NFR-10 | Responsive tasarım | Kullanılabilirlik | Must Have |
| NFR-11 | Form kullanılabilirliği | Kullanılabilirlik | Must Have |
| NFR-12 | Ölçeklenebilirlik | Performans | Should Have |
| NFR-13 | Talep izlenebilirliği | İzlenebilirlik | Must Have |
