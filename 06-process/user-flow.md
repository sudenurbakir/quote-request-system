# Kullanıcı Akışı

## 1. Amaç

Bu doküman, kurumsal müşterinin ürün seçiminden teklif talebinin oluşturulmasına kadar olan temel kullanıcı akışını göstermektedir.

Akış, müşterinin teklif talebi oluşturma sürecini ve sistemin bu süreçte gerçekleştirdiği temel kontrolleri kapsamaktadır.

---

## 2. Ana Kullanıcı Akışı

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
