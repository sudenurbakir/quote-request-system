-- =============================================
-- B2B Quote Request System
-- Sample Data
-- =============================================


-- =============================================
-- 1. Users
-- =============================================

INSERT INTO Users
    (UserId, FirstName, LastName, Email, Phone, Role)
VALUES
    (1, 'Ahmet', 'Yılmaz', 'ahmet@example.com', '05001112233', 'Customer'),
    (2, 'Elif', 'Demir', 'elif@example.com', '05002223344', 'Customer'),
    (3, 'Mert', 'Kaya', 'mert@example.com', '05003334455', 'SalesRepresentative'),
    (4, 'Zeynep', 'Aydın', 'zeynep@example.com', '05004445566', 'Admin');


-- =============================================
-- 2. Companies
-- =============================================

INSERT INTO Companies
    (CompanyId, CompanyName, TaxNumber, Address)
VALUES
    (1, 'ABC Teknoloji', '1234567890', 'İstanbul'),
    (2, 'XYZ Eğitim', '2345678901', 'Ankara'),
    (3, 'Delta Danışmanlık', '3456789012', 'Kocaeli');


-- =============================================
-- 3. Products
-- =============================================

INSERT INTO Products
    (ProductId, ProductName, Price, Stock, CorporateSaleEnabled)
VALUES
    (1, 'Laptop', 25000.00, 100, TRUE),
    (2, 'Kablosuz Mouse', 750.00, 250, TRUE),
    (3, 'Klavye', 1200.00, 150, TRUE),
    (4, 'Monitör', 8500.00, 80, FALSE),
    (5, 'Web Kamera', 2500.00, 120, TRUE);


-- =============================================
-- 4. Quote Requests
-- =============================================

INSERT INTO QuoteRequests
    (QuoteRequestId, QuoteNumber, UserId, CompanyId, Status, CreatedDate)
VALUES
    (1, 'TK-2026-000001', 1, 1, 'New', '2026-08-20 10:15:00'),
    (2, 'TK-2026-000002', 2, 2, 'InReview', '2026-08-20 11:30:00'),
    (3, 'TK-2026-000003', 1, 1, 'PreparingOffer', '2026-08-20 13:45:00');


-- =============================================
-- 5. Quote Request Items
-- =============================================

INSERT INTO QuoteRequestItems
    (QuoteRequestItemId, QuoteRequestId, ProductId, Quantity)
VALUES
    (1, 1, 1, 10),
    (2, 1, 2, 20),
    (3, 1, 3, 15),

    (4, 2, 5, 25),
    (5, 2, 2, 50),

    (6, 3, 1, 20),
    (7, 3, 5, 30);
