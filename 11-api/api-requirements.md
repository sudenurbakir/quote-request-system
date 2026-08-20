# API Requirements

## 1. Amaç

Kurumsal teklif talep sisteminin frontend ve backend arasındaki veri iletişimini sağlayacak API ihtiyaçlarını tanımlamak.

## 2. Temel Kaynaklar

- Products
- Quote Cart
- Quote Requests
- Companies
- Users

## 3. Product API

### 3.1 Kurumsal Satışa Açık Ürünleri Getirme

**Endpoint:** `GET /api/products/corporate`

**Amaç:** Kurumsal satışa açık ürünleri listelemek.

### 3.2 Ürün Detayını Getirme

**Endpoint:** `GET /api/products/{productId}`

**Amaç:** Belirli bir ürünün detaylarını getirmek.

**Kontroller:**
- Ürün mevcut olmalıdır.
- Ürün aktif olmalıdır.
- Kurumsal satış durumu bilgisi döndürülmelidir.

## 4. Quote Cart API

### 4.1 Teklif Sepetine Ürün Ekleme

**Endpoint:** `POST /api/quote-cart/items`

**Request:** `productId`, `quantity`

**Kontroller:**
- Ürün mevcut olmalıdır.
- Ürün kurumsal satışa açık olmalıdır.
- Adet 0'dan büyük olmalıdır.

### 4.2 Teklif Sepetini Görüntüleme

**Endpoint:** `GET /api/quote-cart`

**Amaç:** Teklif sepetindeki ürünleri görüntülemek.

### 4.3 Ürün Adedini Güncelleme

**Endpoint:** `PUT /api/quote-cart/items/{productId}`

**Request:** `quantity`

**Kontroller:**
- Ürün sepette bulunmalıdır.
- Adet 0'dan büyük olmalıdır.

### 4.4 Teklif Sepetinden Ürün Silme

**Endpoint:** `DELETE /api/quote-cart/items/{productId}`

**Amaç:** Ürünü teklif sepetinden kaldırmak.

## 5. Quote Request API

### 5.1 Teklif Talebi Oluşturma

**Endpoint:** `POST /api/quote-requests`

**Amaç:** Müşterinin kurumsal teklif talebi oluşturmasını sağlamak.

**Gerekli Bilgiler:**
- Firma adı
- Vergi numarası
- Firma adresi
- Yetkili adı soyadı
- E-posta
- Telefon
- Ürünler
- Ürün adetleri

**Kontroller:**
- Teklif sepeti boş olmamalıdır.
- Firma bilgileri eksiksiz olmalıdır.
- E-posta geçerli olmalıdır.
- Ürünler kurumsal satışa açık olmalıdır.
- Ürün adetleri geçerli olmalıdır.

### 5.2 Teklif Talebi Detayını Görüntüleme

**Endpoint:** `GET /api/quote-requests/{quoteRequestId}`

**Amaç:** Oluşturulan teklif talebinin detaylarını görüntülemek.

## 6. Teklif Talebi Durumları

- `New` — Yeni oluşturuldu
- `InReview` — İnceleniyor
- `PreparingOffer` — Teklif hazırlanıyor
- `Completed` — Tamamlandı
- `Cancelled` — İptal edildi

## 7. Teklif Numarası

Her teklif talebi oluşturulduğunda sistem tarafından benzersiz bir teklif numarası oluşturulmalıdır.

**Örnek:** `TK-2026-000001`

## 8. HTTP Status Codes

| Kod | Açıklama |
|---|---|
| 200 | Başarılı işlem |
| 201 | Kayıt oluşturuldu |
| 400 | Geçersiz istek |
| 404 | Kayıt bulunamadı |
| 409 | İşlem çakışması |
| 500 | Sunucu hatası |

## 9. Business Rules

1. Kurumsal satışa kapalı ürünler teklif sepetine eklenemez.
2. Sadece kurumsal satışa açık ürünler teklif sepetine eklenebilir.
3. Ürün adedi 0 veya negatif olamaz.
4. Boş sepet ile teklif talebi oluşturulamaz.
5. Her teklif talebine benzersiz teklif numarası atanmalıdır.
6. Yeni teklif talebinin başlangıç durumu `New` olmalıdır.
7. Teklif talebi oluşturulduktan sonra teklif sepeti temizlenmelidir.
8. Oluşturulan teklif talebi admin panelinde görüntülenebilmelidir.

## 10. API Akışı

Ürün Detayı  
↓  
Kurumsal Satış Kontrolü  
↓  
Adet Belirleme  
↓  
Teklif Sepetine Ekleme  
↓  
Teklif Sepeti  
↓  
Firma / Yetkili Bilgileri  
↓  
Teklif Talebi Oluşturma  
↓  
Validasyon  
↓  
Teklif Numarası Oluşturma  
↓  
Status = `New`  
↓  
Başarılı Response

## 11. Başarılı İşlem

Teklif talebi başarıyla oluşturulduğunda sistem:

- Teklif talebi ID'si oluşturmalıdır.
- Benzersiz teklif numarası oluşturmalıdır.
- Talep durumunu `New` olarak belirlemelidir.
- Kullanıcıya başarı mesajı göstermelidir.
- Talebi admin paneline iletmelidir.
