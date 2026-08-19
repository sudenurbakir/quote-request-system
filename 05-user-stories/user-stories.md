# User Stories

## 1. Amaç

Bu doküman, B2B Teklif Talep Sistemi kapsamında farklı kullanıcıların sistemden beklentilerini kullanıcı hikâyeleri ve kabul kriterleri aracılığıyla tanımlamaktadır.

User Story formatı:

> Bir [kullanıcı tipi] olarak, [ihtiyaç] istiyorum, böylece [iş değeri].

---

# 2. Kurumsal Müşteri User Stories

## US-01 — Kurumsal Ürün İçin Teklif Talebi Başlatma

**Bir kurumsal müşteri olarak,** kurumsal satışa açık bir ürün için teklif talebi başlatmak istiyorum, **böylece** toplu satın alma ihtiyacımı satıcıya iletebilirim.

### Acceptance Criteria

- [ ] Kurumsal satışa açık ürünlerde "Kurumsal Teklif Talep Et" butonu görüntülenmelidir.
- [ ] Kurumsal satışa kapalı ürünlerde bu buton görüntülenmemelidir.
- [ ] Butona tıklandığında adet belirleme alanı açılmalıdır.

---

## US-02 — Ürün Adedi Belirleme

**Bir kurumsal müşteri olarak,** talep etmek istediğim ürünün adetini belirlemek istiyorum, **böylece** ihtiyacım olan miktarı satıcıya iletebilirim.

### Acceptance Criteria

- [ ] Kullanıcı adet bilgisini artırabilmelidir.
- [ ] Kullanıcı adet bilgisini azaltabilmelidir.
- [ ] Kullanıcı adet bilgisini manuel olarak girebilmelidir.
- [ ] Adet 1'den küçük olmamalıdır.
- [ ] Geçersiz adet bilgisi kabul edilmemelidir.

---

## US-03 — Ürünü Teklif Sepetine Ekleme

**Bir kurumsal müşteri olarak,** belirlediğim ürün ve adet bilgisini teklif sepetine eklemek istiyorum, **böylece** teklif talebimi daha sonra oluşturabilirim.

### Acceptance Criteria

- [ ] Ürün kurumsal satışa açık olmalıdır.
- [ ] Adet bilgisi geçerli olmalıdır.
- [ ] Ürün teklif sepetine eklenmelidir.
- [ ] Kullanıcı teklif sepetine yönlendirilebilmeli veya sepet içeriğini görebilmelidir.

---

## US-04 — Birden Fazla Ürün Ekleme

**Bir kurumsal müşteri olarak,** farklı ürünleri aynı teklif sepetine eklemek istiyorum, **böylece** tüm ihtiyaçlarım için tek bir teklif talebi oluşturabilirim.

### Acceptance Criteria

- [ ] Teklif sepetinde birden fazla ürün bulunabilmelidir.
- [ ] Her ürünün adet bilgisi ayrı tutulmalıdır.
- [ ] Ürünler birbirinden bağımsız olarak güncellenebilmelidir.

---

## US-05 — Teklif Sepetini Düzenleme

**Bir kurumsal müşteri olarak,** teklif sepetindeki ürünlerin adetlerini değiştirmek istiyorum, **böylece** talep miktarlarımı göndermeden önce düzenleyebilirim.

### Acceptance Criteria

- [ ] Kullanıcı ürün adetini artırabilmelidir.
- [ ] Kullanıcı ürün adetini azaltabilmelidir.
- [ ] Güncellenen adet sepet içerisinde gösterilmelidir.
- [ ] Geçersiz adet girilmesine izin verilmemelidir.

---

## US-06 — Ürünü Teklif Sepetinden Çıkarma

**Bir kurumsal müşteri olarak,** teklif sepetindeki istemediğim ürünleri kaldırmak istiyorum, **böylece** yalnızca ihtiyacım olan ürünleri teklif talebine dahil edebilirim.

### Acceptance Criteria

- [ ] Kullanıcı bir ürünü teklif sepetinden çıkarabilmelidir.
- [ ] Ürün çıkarıldığında sepet güncellenmelidir.
- [ ] Sepette ürün kalmadığında teklif talebi oluşturma işlemi engellenmelidir.

---

## US-07 — Teklif Talebi Oluşturma

**Bir kurumsal müşteri olarak,** firma ve yetkili bilgilerimi girerek teklif talebi oluşturmak istiyorum, **böylece** satış ekibi talebimi değerlendirebilir.

### Acceptance Criteria

- [ ] Teklif sepetinde en az bir ürün bulunmalıdır.
- [ ] Gerekli firma bilgileri doldurulmalıdır.
- [ ] Gerekli yetkili bilgileri doldurulmalıdır.
- [ ] Sistem girilen bilgileri doğrulamalıdır.
- [ ] Başarılı işlem sonucunda teklif talebi oluşturulmalıdır.

---

## US-08 — Teklif Numarasını Görüntüleme

**Bir kurumsal müşteri olarak,** oluşturduğum teklif talebinin numarasını görmek istiyorum, **böylece** talebimi satış ekibiyle takip edebilirim.

### Acceptance Criteria

- [ ] Başarılı talep oluşturma işleminden sonra teklif numarası üretilmelidir.
- [ ] Teklif numarası kullanıcıya gösterilmelidir.
- [ ] Teklif numarası benzersiz olmalıdır.

---

# 3. Satış Ekibi User Stories

## US-09 — Teklif Taleplerini Görüntüleme

**Bir satış temsilcisi olarak,** oluşturulan teklif taleplerini listelemek istiyorum, **böylece** müşterilerden gelen talepleri merkezi olarak takip edebilirim.

### Acceptance Criteria

- [ ] Yetkili satış kullanıcısı teklif taleplerini görüntüleyebilmelidir.
- [ ] Talepler listelenmelidir.
- [ ] Teklif numarası görüntülenmelidir.
- [ ] Firma adı görüntülenmelidir.
- [ ] Talep tarihi görüntülenmelidir.
- [ ] Talep durumu görüntülenmelidir.

---

## US-10 — Teklif Talebi Detayını Görüntüleme

**Bir satış temsilcisi olarak,** teklif talebinin detaylarını görüntülemek istiyorum, **böylece** müşterinin hangi ürünlerden kaç adet istediğini inceleyebilirim.

### Acceptance Criteria

- [ ] Firma bilgileri görüntülenmelidir.
- [ ] Yetkili bilgileri görüntülenmelidir.
- [ ] Talep edilen ürünler görüntülenmelidir.
- [ ] Ürün adetleri görüntülenmelidir.
- [ ] Teklif numarası görüntülenmelidir.
- [ ] Talep tarihi görüntülenmelidir.

---

## US-11 — Teklif Talebi Durumunu Güncelleme

**Bir satış temsilcisi olarak,** teklif talebinin durumunu güncellemek istiyorum, **böylece** talebin hangi aşamada olduğunu takip edebilirim.

### Acceptance Criteria

- [ ] Yalnızca yetkili kullanıcılar durum değiştirebilmelidir.
- [ ] Talebin mevcut durumu görüntülenmelidir.
- [ ] Yeni durum seçilebilmelidir.
- [ ] Durum değişikliği kaydedilmelidir.

---

# 4. Sistem Yöneticisi User Stories

## US-12 — Ürünü Kurumsal Satışa Açma

**Bir sistem yöneticisi olarak,** ürünleri kurumsal satışa açmak istiyorum, **böylece** belirlediğim ürünler için müşteriler teklif talebi oluşturabilir.

### Acceptance Criteria

- [ ] Sistem yöneticisi ürün düzenleme ekranına erişebilmelidir.
- [ ] "Kurumsal Satışa Açık" alanı görüntülenmelidir.
- [ ] Alan aktif hale getirilebilmelidir.
- [ ] Değişiklik kaydedildiğinde ürün kurumsal satışa açık hale gelmelidir.

---

## US-13 — Ürünü Kurumsal Satıştan Çıkarma

**Bir sistem yöneticisi olarak,** ürünleri kurumsal satıştan çıkarabilmek istiyorum, **böylece** artık teklif talebi alınmasını istemediğim ürünleri kontrol edebilirim.

### Acceptance Criteria

- [ ] Sistem yöneticisi "Kurumsal Satışa Açık" alanını pasif hale getirebilmelidir.
- [ ] Değişiklik kaydedilmelidir.
- [ ] Ürün detayında "Kurumsal Teklif Talep Et" butonu artık gösterilmemelidir.
- [ ] Daha önce oluşturulmuş teklif talepleri bu değişiklikten etkilenmemelidir.

---

# 5. User Story Önceliklendirmesi

| ID | User Story | Öncelik |
|---|---|---|
| US-01 | Kurumsal teklif talebi başlatma | Must Have |
| US-02 | Ürün adedi belirleme | Must Have |
| US-03 | Ürünü teklif sepetine ekleme | Must Have |
| US-04 | Birden fazla ürün ekleme | Must Have |
| US-05 | Teklif sepetini düzenleme | Must Have |
| US-06 | Ürün çıkarma | Must Have |
| US-07 | Teklif talebi oluşturma | Must Have |
| US-08 | Teklif numarasını görüntüleme | Must Have |
| US-09 | Talepleri görüntüleme | Must Have |
| US-10 | Talep detayını görüntüleme | Must Have |
| US-11 | Talep durumunu güncelleme | Should Have |
| US-12 | Ürünü kurumsal satışa açma | Must Have |
| US-13 | Ürünü kurumsal satıştan çıkarma | Must Have |
