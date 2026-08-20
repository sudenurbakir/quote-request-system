# ER Diagram

## 1. Amaç

Bu doküman, B2B Teklif Talep Sistemi içerisindeki temel entity'leri ve bu entity'ler arasındaki ilişkileri görsel olarak göstermektedir.

---

## 2. Entity Açıklamaları

### USER

Sistemde işlem gerçekleştiren kullanıcıların bilgilerini tutar.

Örnek kullanıcı rolleri:

- Customer
- SalesRepresentative
- Admin

---

### COMPANY

Kurumsal müşterinin firma bilgilerini tutar.

Bir firma birden fazla teklif talebi oluşturabilir.

---

### PRODUCT

Platformda satışa sunulan ürünlerin bilgilerini tutar.

`CorporateSaleEnabled` alanı ürünün kurumsal satışa açık olup olmadığını belirler.

---

### QUOTE_REQUEST

Müşterinin oluşturduğu teklif talebinin ana kaydını temsil eder.

Bir teklif talebi:

- Bir kullanıcıya
- Bir firmaya
- Bir veya daha fazla teklif kalemine

bağlıdır.

---

### QUOTE_REQUEST_ITEM

Teklif talebindeki ürünleri ve talep edilen adetleri tutar.

Örneğin:

- Laptop → 20 adet
- Mouse → 50 adet
- Klavye → 10 adet

---

## 4. İlişki Açıklamaları

### User → QuoteRequest

Bir kullanıcı birden fazla teklif talebi oluşturabilir.

**İlişki:** 1:N

---

### Company → QuoteRequest

Bir firma birden fazla teklif talebine sahip olabilir.

**İlişki:** 1:N

---

### QuoteRequest → QuoteRequestItem

Bir teklif talebi bir veya daha fazla ürün içerebilir.

**İlişki:** 1:N

---

### Product → QuoteRequestItem

Bir ürün farklı teklif taleplerinde yer alabilir.

**İlişki:** 1:N

---

## 5. Veri Akışı

Temel veri ilişkisi şu şekilde ilerlemektedir:

**User → QuoteRequest → QuoteRequestItem → Product**

Aynı zamanda:

**Company → QuoteRequest**

ilişkisi bulunmaktadır.

Bu yapı sayesinde bir kullanıcının belirli bir firma adına oluşturduğu teklif talebi içerisinde birden fazla ürün ve her ürün için farklı adet bilgisi tutulabilir.

---

## 6. Tasarım Kararları

### QuoteRequestItem Kullanımı

`QuoteRequestItem`, `QuoteRequest` ve `Product` arasındaki ilişkiyi yönetmektedir.

Bu yapı sayesinde:

- Bir teklif birden fazla ürün içerebilir.
- Bir ürün birden fazla teklifte bulunabilir.
- Her teklif içerisinde ürünün farklı miktarı tutulabilir.

---

### Foreign Key Kullanımı

Entity'ler arasındaki ilişkileri oluşturmak için Foreign Key alanları kullanılmaktadır.

Örneğin:

`QuoteRequest.UserId`

→ `User.UserId`

`QuoteRequest.CompanyId`

→ `Company.CompanyId`

`QuoteRequestItem.QuoteRequestId`

→ `QuoteRequest.QuoteRequestId`

`QuoteRequestItem.ProductId`

→ `Product.ProductId`

---

## 7. Primary Key'ler

Her entity'nin benzersiz bir Primary Key alanı bulunmaktadır.

- `User.UserId`
- `Company.CompanyId`
- `Product.ProductId`
- `QuoteRequest.QuoteRequestId`
- `QuoteRequestItem.QuoteRequestItemId`

Primary Key'ler ilgili kaydı benzersiz şekilde tanımlamak için kullanılır.

## 3. Entity İlişkileri

```mermaid
erDiagram

    USER ||--o{ QUOTE_REQUEST : creates
    COMPANY ||--o{ QUOTE_REQUEST : submits
    QUOTE_REQUEST ||--|{ QUOTE_REQUEST_ITEM : contains
    PRODUCT ||--o{ QUOTE_REQUEST_ITEM : included_in

    USER {
        int UserId PK
        string FirstName
        string LastName
        string Email
        string Phone
        string Role
    }

    COMPANY {
        int CompanyId PK
        string CompanyName
        string TaxNumber
        string Address
    }

    PRODUCT {
        int ProductId PK
        string ProductName
        decimal Price
        int Stock
        boolean CorporateSaleEnabled
    }

    QUOTE_REQUEST {
        int QuoteRequestId PK
        string QuoteNumber
        int UserId FK
        int CompanyId FK
        string Status
        datetime CreatedDate
    }

    QUOTE_REQUEST_ITEM {
        int QuoteRequestItemId PK
        int QuoteRequestId FK
        int ProductId FK
        int Quantity
    }

