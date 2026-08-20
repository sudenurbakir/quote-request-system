-- =============================================
-- B2B Quote Request System
-- Business Queries
-- =============================================


-- =============================================
-- Query 1
-- Kurumsal satışa açık ürünleri listele
-- =============================================

SELECT
    ProductId,
    ProductName,
    Price,
    Stock
FROM Products
WHERE CorporateSaleEnabled = TRUE;


-- =============================================
-- Query 2
-- Kurumsal satışa kapalı ürünleri listele
-- =============================================

SELECT
    ProductId,
    ProductName,
    Price,
    Stock
FROM Products
WHERE CorporateSaleEnabled = FALSE;


-- =============================================
-- Query 3
-- Yeni durumundaki teklif taleplerini listele
-- =============================================

SELECT
    QuoteRequestId,
    QuoteNumber,
    UserId,
    CompanyId,
    CreatedDate
FROM QuoteRequests
WHERE Status = 'New';


-- =============================================
-- Query 4
-- Belirli bir teklifin ürünlerini listele
-- =============================================

SELECT
    QuoteRequestId,
    ProductId,
    Quantity
FROM QuoteRequestItems
WHERE QuoteRequestId = 1;


-- =============================================
-- Query 5
-- En az 20 adet talep edilen ürünleri listele
-- =============================================

SELECT
    ProductId,
    Quantity
FROM QuoteRequestItems
WHERE Quantity >= 20;


-- =============================================
-- Query 6
-- Belirli bir firmanın teklif taleplerini listele
-- =============================================

SELECT
    QuoteRequestId,
    QuoteNumber,
    Status,
    CreatedDate
FROM QuoteRequests
WHERE CompanyId = 1;


-- =============================================
-- Query 7
-- Belirli bir kullanıcının oluşturduğu teklifleri listele
-- =============================================

SELECT
    QuoteRequestId,
    QuoteNumber,
    Status,
    CreatedDate
FROM QuoteRequests
WHERE UserId = 1;


-- =============================================
-- Query 8
-- Teklif taleplerini firma bilgileriyle birlikte listele
-- =============================================

SELECT
    QuoteRequests.QuoteNumber,
    Companies.CompanyName,
    QuoteRequests.Status,
    QuoteRequests.CreatedDate
FROM QuoteRequests
INNER JOIN Companies
    ON QuoteRequests.CompanyId = Companies.CompanyId;


-- =============================================
-- Query 9
-- Teklif taleplerini kullanıcı bilgileriyle birlikte listele
-- =============================================

SELECT
    QuoteRequests.QuoteNumber,
    Users.FirstName,
    Users.LastName,
    Users.Email,
    QuoteRequests.Status
FROM QuoteRequests
INNER JOIN Users
    ON QuoteRequests.UserId = Users.UserId;


-- =============================================
-- Query 10
-- Tekliflerde hangi ürünlerden kaç adet talep edildiğini listele
-- =============================================

SELECT
    QuoteRequests.QuoteNumber,
    Products.ProductName,
    QuoteRequestItems.Quantity
FROM QuoteRequests
INNER JOIN QuoteRequestItems
    ON QuoteRequests.QuoteRequestId = QuoteRequestItems.QuoteRequestId
INNER JOIN Products
    ON QuoteRequestItems.ProductId = Products.ProductId;


-- =============================================
-- Query 11
-- Hangi firmanın hangi ürünlerden kaç adet talep ettiğini listele
-- =============================================

SELECT
    Companies.CompanyName,
    Products.ProductName,
    QuoteRequestItems.Quantity
FROM QuoteRequests
INNER JOIN Companies
    ON QuoteRequests.CompanyId = Companies.CompanyId
INNER JOIN QuoteRequestItems
    ON QuoteRequests.QuoteRequestId = QuoteRequestItems.QuoteRequestId
INNER JOIN Products
    ON QuoteRequestItems.ProductId = Products.ProductId;


-- =============================================
-- Query 12
-- Kurumsal satışa açık ürünlerin tekliflerde
-- kaç adet talep edildiğini listele
-- =============================================

SELECT
    Products.ProductName,
    QuoteRequestItems.Quantity
FROM Products
INNER JOIN QuoteRequestItems
    ON Products.ProductId = QuoteRequestItems.ProductId
WHERE Products.CorporateSaleEnabled = TRUE;


-- =============================================
-- Query 13
-- 20 ve üzeri adet talep edilen ürünleri
-- ürün adıyla birlikte listele
-- =============================================

SELECT
    Products.ProductName,
    QuoteRequestItems.Quantity
FROM QuoteRequestItems
INNER JOIN Products
    ON QuoteRequestItems.ProductId = Products.ProductId
WHERE QuoteRequestItems.Quantity >= 20;
