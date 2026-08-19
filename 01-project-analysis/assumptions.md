# Varsayımlar

Bu dokümanda, sistemin analiz ve tasarım sürecinde temel alınan varsayımlar yer almaktadır.

## 1. Kullanıcı Varsayımları

- Kurumsal teklif talebi oluşturacak kullanıcıların sisteme giriş yapmış olduğu varsayılmıştır.
- Kullanıcının geçerli bir e-posta adresine sahip olduğu varsayılmıştır.
- Kullanıcının teklif talebi oluştururken firma ve yetkili bilgilerini sağlayabileceği varsayılmıştır.

## 2. Ürün Varsayımları

- Ürünlerin mevcut e-ticaret sisteminde kayıtlı olduğu varsayılmıştır.
- Her ürünün benzersiz bir ürün kimliğine sahip olduğu varsayılmıştır.
- Bir ürünün kurumsal satışa açık olup olmadığı ürün bazında yönetilecektir.
- Kurumsal satışa açık olmayan ürünler teklif sepetine eklenemeyecektir.
- Ürün stok bilgilerinin mevcut e-ticaret sistemi tarafından yönetildiği varsayılmıştır.

## 3. Teklif Talebi Varsayımları

- Bir teklif talebi bir veya birden fazla ürün içerebilir.
- Her ürün için talep edilen adet bilgisi tutulacaktır.
- Teklif talebi oluşturulduğunda sistem tarafından benzersiz bir teklif numarası üretilecektir.
- Teklif talebi oluşturulduktan sonra müşteriye teklif numarası gösterilecektir.
- Oluşturulan teklif talepleri admin/satış panelinde görüntülenebilecektir.

## 4. İş Süreci Varsayımları

- Satış ekibinin oluşturulan teklif taleplerini admin paneli üzerinden takip ettiği varsayılmıştır.
- Nihai fiyatlandırmanın satış ekibi tarafından yapıldığı varsayılmıştır.
- Sistem müşteriye otomatik fiyat veya indirim hesaplamayacaktır.
- Teklif talebinin oluşturulması doğrudan satış işleminin tamamlandığı anlamına gelmeyecektir.

## 5. Teknik Varsayımlar

- Ürün yönetimi için mevcut bir ürün yönetim yapısının bulunduğu varsayılmıştır.
- Kullanıcı ve kimlik doğrulama yapısının mevcut sistem tarafından sağlandığı varsayılmıştır.
- Teklif taleplerinin kalıcı olarak veritabanında saklanacağı varsayılmıştır.
- Admin panelinin mevcut sistem içerisinde bulunduğu varsayılmıştır.

## 6. Doğrulanması Gereken Varsayımlar

Aşağıdaki konular analiz sürecinin ilerleyen aşamalarında doğrulanmalıdır:

- Kurumsal teklif talebi oluşturmak için kullanıcı girişi zorunlu mudur?
- Kullanıcı aynı ürünü teklif sepetine birden fazla kez eklerse sistem nasıl davranmalıdır?
- Bir ürün için minimum veya maksimum teklif adedi olacak mıdır?
- Teklif talebinde fiyat bilgisi müşteriye gösterilecek midir?
- Teklif talebinin geçerlilik süresi olacak mıdır?
- Satış ekibi teklif taleplerini hangi durumlarla takip edecektir?
- Müşteriye talep oluşturulduğunda e-posta veya SMS gönderilecek midir?
- Kurumsal müşteriler için ayrı bir kullanıcı tipi bulunacak mıdır?
