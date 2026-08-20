# Database Design

## 1. Amaç

Bu doküman, B2B Teklif Talep Sistemi kapsamında ihtiyaç duyulan temel veri yapılarını ve bu yapılar arasındaki ilişkileri tanımlamaktadır.

Veri modeli oluşturulurken sistemin ürün yönetimi, teklif sepeti, teklif talebi ve müşteri/firma bilgilerinin tutarlı şekilde saklanması hedeflenmiştir.

---

## 2. Temel Entity'ler

Sistemde aşağıdaki temel entity'lerin bulunması öngörülmektedir:

- User
- Company
- Product
- QuoteRequest
- QuoteRequestItem

---

## 3. User

Sistemi kullanan kullanıcıların bilgilerinin tutulduğu entity'dir.

### Alanlar

| Alan | Açıklama |
|---|---|
| UserId | Kullanıcının benzersiz kimliği |
| FirstName | Kullanıcının adı |
| LastName | Kullanıcının soyadı |
| Email | Kullanıcının e-posta adresi |
| Phone | Kullanıcının telefon numarası |
| Role | Kullanıcının sistemdeki rolü |

### Role Örnekleri

- Customer
- SalesRepresentative
- Admin

---

## 4. Company

Teklif talebinde bulunan kurumsal müşterinin firma bilgilerinin tutulduğu entity'dir.

### Alanlar

| Alan | Açıklama |
|---|---|
| CompanyId | Firmanın benzersiz kimliği |
| CompanyName | Firma adı |
| TaxNumber | Vergi numarası |
| Address | Firma adresi |

---

## 5. Product

E-ticaret platformunda bulunan ürünlerin bilgilerinin tutulduğu entity'dir.

### Alanlar

| Alan | Açıklama |
|---|---|
| ProductId | Ürünün benzersiz kimliği |
| ProductName | Ürün adı |
| Price | Ürün fiyatı |
| Stock | Mevcut stok |
| CorporateSaleEnabled | Ürünün kurumsal satışa açık olup olmadığı |

### CorporateSaleEnabled

Bu alan ürünün kurumsal teklif sistemine dahil edilip edilemeyeceğini belirler.

Değerler:

- `true` → Kurumsal satışa açık
- `false` → Kurumsal satışa kapalı

---

## 6. QuoteRequest

Müşterinin oluşturduğu teklif talebinin ana bilgilerinin tutulduğu entity'dir.

### Alanlar

| Alan | Açıklama |
|---|---|
| QuoteRequestId | Teklif talebinin benzersiz kimliği |
| QuoteNumber | Müşteriye gösterilen teklif numarası |
| UserId | Talebi oluşturan kullanıcı |
| CompanyId | Talepte bulunan firma |
| Status | Teklif talebinin durumu |
| CreatedDate | Talebin oluşturulma tarihi |

### Status Örnekleri

- New
- InReview
- PreparingOffer
- Completed
- Cancelled

---

## 7. QuoteRequestItem

Bir teklif talebinin içerisinde bulunan ürünlerin tutulduğu entity'dir.

Bir teklif talebi birden fazla ürün içerebileceği için ürün detayları ayrı bir entity üzerinden tutulmaktadır.

### Alanlar

| Alan | Açıklama |
|---|---|
| QuoteRequestItemId | Teklif kaleminin benzersiz kimliği |
| QuoteRequestId | Bağlı olduğu teklif talebi |
| ProductId | Talep edilen ürün |
| Quantity | Talep edilen ürün adedi |

---

## 8. Entity İlişkileri

### User → QuoteRequest

Bir kullanıcı birden fazla teklif talebi oluşturabilir.

User 1 ───────── N QuoteRequest

### Company → QuoteRequest

Bir firma zaman içerisinde birden fazla teklif talebi oluşturabilir.

**İlişki:** `Company 1:N QuoteRequest`

---

### QuoteRequest → QuoteRequestItem

Bir teklif talebi bir veya birden fazla ürün içerebilir.

**İlişki:** `QuoteRequest 1:N QuoteRequestItem`

---

### Product → QuoteRequestItem

Bir ürün farklı teklif taleplerinde bulunabilir.

**İlişki:** `Product 1:N QuoteRequestItem`

---

## 9. Genel Entity İlişkisi

- `User` → `QuoteRequest` : 1:N
- `Company` → `QuoteRequest` : 1:N
- `QuoteRequest` → `QuoteRequestItem` : 1:N
- `Product` → `QuoteRequestItem` : 1:N

---

## 10. İlişki Özeti

| Entity 1 | İlişki | Entity 2 | Açıklama |
|---|---|---|---|
| User | 1:N | QuoteRequest | Bir kullanıcı birden fazla teklif oluşturabilir |
| Company | 1:N | QuoteRequest | Bir firma birden fazla teklif oluşturabilir |
| QuoteRequest | 1:N | QuoteRequestItem | Bir teklif birden fazla ürün içerebilir |
| Product | 1:N | QuoteRequestItem | Bir ürün farklı tekliflerde bulunabilir |

---

## 11. Önemli Veri Modeli Kararları

### Ürün ve Teklif Kalemi Ayrımı

Ürün bilgileri `Product` entity'sinde tutulurken, teklif sırasında talep edilen adet bilgisi `QuoteRequestItem` içerisinde tutulacaktır.

Böylece aynı ürün farklı teklif taleplerinde farklı adetlerle bulunabilir.

Örneğin:

- Teklif 1 → Laptop → 10 adet
- Teklif 2 → Laptop → 50 adet
- Teklif 3 → Laptop → 25 adet

---

### Teklif Numarası ve ID Ayrımı

`QuoteRequestId` sistem içerisindeki teknik benzersiz kimlik olarak kullanılacaktır.

`QuoteNumber` ise kullanıcı ve satış ekibinin teklif talebini takip edebilmesi için kullanılacaktır.

Örneğin:

- `QuoteRequestId` → 1254
- `QuoteNumber` → TK-2026-001245

---

### Ürün Durumu ve Eski Teklifler

Bir ürünün `CorporateSaleEnabled` değerinin sonradan değiştirilmesi, daha önce oluşturulmuş teklif taleplerini etkilememelidir.

Örneğin:

1. Ürün → Laptop
2. Kurumsal Satış → Aktif
3. Teklif oluşturuldu → Laptop → 20 adet
4. Admin ürünü kurumsal satıştan çıkardı.
5. Eski teklif → Laptop → 20 adet

Eski teklif kaydı korunmalıdır.

---

## 12. Neden QuoteRequestItem Ayrı Bir Entity?

`QuoteRequestItem` entity'sinin ayrı tutulmasının temel nedeni, bir teklif talebinin birden fazla ürün içerebilmesidir.

Örneğin:

**Teklif 1001**

- Laptop → 10 adet
- Mouse → 50 adet
- Klavye → 20 adet

Aynı ürün başka bir teklif talebinde de bulunabilir:

**Teklif 1002**

- Laptop → 100 adet

Bu nedenle `ProductId` doğrudan `QuoteRequest` içerisinde tutulmak yerine `QuoteRequestItem` üzerinden ilişkilendirilmiştir.

Bu yapı sayesinde:

- Bir teklif birden fazla ürün içerebilir.
- Bir ürün birden fazla teklifte bulunabilir.
- Her teklif için farklı ürün adetleri tutulabilir.

Bu ilişki **1:N** ilişkiler kullanılarak modellenmiştir.

---

## 13. Sonraki Aşama

Bir sonraki aşamada entity'ler arasındaki ilişkileri görsel olarak göstermek için **ER Diagram** oluşturulacaktır.
