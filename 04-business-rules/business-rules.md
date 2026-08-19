# Business Rules

## 1. Amaç

Bu doküman, B2B Teklif Talep Sistemi içerisindeki iş kurallarını ve sistem davranışlarını belirleyen kısıtları tanımlamaktadır.

Business Rules, sistemin belirli durumlarda nasıl davranması gerektiğini belirler.

---

## 2. Ürün Kuralları

### BR-01 — Kurumsal Satış Durumu

Bir ürün yalnızca "Kurumsal Satışa Açık" durumu aktif olduğunda kurumsal teklif sürecine dahil edilebilir.

---

### BR-02 — Kurumsal Satışa Kapalı Ürün

Kurumsal satış durumu pasif olan ürünlerde "Kurumsal Teklif Talep Et" seçeneği gösterilmemelidir.

---

### BR-03 — Ürün Bazlı Yönetim

Kurumsal satış durumu her ürün için bağımsız olarak yönetilebilmelidir.

Bir ürünün kurumsal satışa açık olması diğer ürünlerin durumunu etkilememelidir.

---

## 3. Adet Kuralları

### BR-04 — Minimum Ürün Adedi

Teklif talebine eklenen bir ürünün adedi en az 1 olmalıdır.

---

### BR-05 — Geçersiz Adet

0 veya negatif adet bilgisiyle ürün teklif sepetine eklenememelidir.

---

### BR-06 — Ondalıklı Adet

Ürün adedi tam sayı olmalıdır.

Örneğin:

- 1 → Geçerli
- 10 → Geçerli
- 10.5 → Geçersiz

---

## 4. Teklif Sepeti Kuralları

### BR-07 — Teklif Sepetine Eklenebilecek Ürünler

Teklif sepetine yalnızca kurumsal satışa açık ürünler eklenebilir.

---

### BR-08 — Birden Fazla Ürün

Bir teklif sepeti birden fazla farklı ürün içerebilir.

---

### BR-09 — Aynı Ürün

Aynı ürün teklif sepetine tekrar eklendiğinde yeni bir satır oluşturulmak yerine mevcut ürünün adedi güncellenmelidir.

> Bu kural business tarafında doğrulanmalıdır.

---

### BR-10 — Boş Teklif Sepeti

Teklif sepetinde ürün bulunmuyorsa teklif talebi oluşturulamaz.

---

### BR-11 — Sepetten Ürün Çıkarma

Müşteri teklif sepetindeki ürünleri talep oluşturmadan önce kaldırabilir.

---

## 5. Teklif Talebi Kuralları

### BR-12 — Minimum Ürün

Bir teklif talebi en az bir ürün içermelidir.

---

### BR-13 — Firma Bilgileri

Teklif talebi oluşturulabilmesi için gerekli firma bilgilerinin tamamlanmış olması gerekir.

---

### BR-14 — Yetkili Bilgileri

Teklif talebi oluşturulabilmesi için gerekli yetkili bilgilerinin tamamlanmış olması gerekir.

---

### BR-15 — Teklif Numarası

Her teklif talebine sistem tarafından benzersiz bir teklif numarası atanmalıdır.

Örnek:

`TK-2026-001245`

Aynı teklif numarası birden fazla talep için kullanılamaz.

---

### BR-16 — Talep Oluşturma

Teklif talebi ancak gerekli bilgiler doğrulandıktan sonra oluşturulabilir.

---

## 6. Talep Durumu Kuralları

### BR-17 — Başlangıç Durumu

Yeni oluşturulan teklif taleplerinin başlangıç durumu:

`Yeni`

olmalıdır.

---

### BR-18 — Durum Değişikliği

Teklif talebinin durumu yalnızca yetkili kullanıcılar tarafından değiştirilebilir.

---

### BR-19 — Tamamlanan Talep

`Tamamlandı` durumundaki bir teklif talebi tekrar `Yeni` durumuna getirilemez.

> Durum geçişleri detaylı olarak süreç analizinde tanımlanacaktır.

---

## 7. Yetkilendirme Kuralları

### BR-20 — Ürün Yönetimi Yetkisi

Kurumsal satış durumunu değiştirme işlemi yalnızca yetkili kullanıcılar tarafından gerçekleştirilebilir.

---

### BR-21 — Teklif Talebi Görüntüleme Yetkisi

Teklif taleplerinin müşteri ve firma bilgileri yalnızca yetkili kullanıcılar tarafından görüntülenebilir.

---

## 8. Veri Tutarlılığı Kuralları

### BR-22 — Talep Verilerinin Korunması

Teklif talebi oluşturulduktan sonra talep içerisindeki ürün ve adet bilgileri, oluşturulduğu andaki haliyle saklanmalıdır.

---

### BR-23 — Ürün Durumunun Değişmesi

Bir ürün teklif talebine eklendikten sonra ürünün kurumsal satış durumu değiştirilse bile daha önce oluşturulmuş teklif talebindeki ürün kaydı korunmalıdır.

---

### BR-24 — Benzersiz Talep

Her teklif talebi yalnızca bir kez oluşturulmalıdır.

Aynı işlem tekrar gönderildiğinde sistemin aynı talebi iki kez oluşturmaması sağlanmalıdır.

---

## 9. Kural Özeti

| ID | Kural | Kategori |
|---|---|---|
| BR-01 | Ürün kurumsal satışa açık olmalı | Ürün |
| BR-02 | Kapalı ürünlerde teklif butonu gösterilmez | Ürün |
| BR-03 | Kurumsal satış durumu ürün bazlıdır | Ürün |
| BR-04 | Minimum adet 1'dir | Adet |
| BR-05 | 0 ve negatif adet kabul edilmez | Adet |
| BR-06 | Adet tam sayı olmalıdır | Adet |
| BR-07 | Sadece kurumsal ürünler sepete eklenebilir | Sepet |
| BR-08 | Sepet birden fazla ürün içerebilir | Sepet |
| BR-09 | Aynı ürün tekrar eklendiğinde adet güncellenir | Sepet |
| BR-10 | Boş sepetten talep oluşturulamaz | Sepet |
| BR-11 | Ürün sepetten çıkarılabilir | Sepet |
| BR-12 | Teklif en az bir ürün içermelidir | Teklif |
| BR-13 | Firma bilgileri zorunludur | Teklif |
| BR-14 | Yetkili bilgileri zorunludur | Teklif |
| BR-15 | Her talebin benzersiz numarası vardır | Teklif |
| BR-16 | Doğrulama sonrası talep oluşturulur | Teklif |
| BR-17 | Yeni talebin başlangıç durumu "Yeni"dir | Durum |
| BR-18 | Durum sadece yetkili kullanıcı tarafından değiştirilebilir | Durum |
| BR-19 | Tamamlanan talep tekrar Yeni olamaz | Durum |
| BR-20 | Ürün yönetimi yetkilendirilmiştir | Yetki |
| BR-21 | Talep bilgileri yetkili kullanıcıya açıktır | Yetki |
| BR-22 | Talep verileri oluşturulduğu haliyle korunur | Veri |
| BR-23 | Ürün durum değişikliği eski talepleri etkilemez | Veri |
| BR-24 | Aynı talep iki kez oluşturulmamalıdır | Veri |
