Rick and Morty Characters App

Bu proje, Flutter, Riverpod, Dio ve GraphQL kullanılarak geliştirilmiş basit bir karakter listeleme uygulamasıdır.
Veriler Rick and Morty API üzerinden çekilir ve modern bir kart tasarımıyla ekranda gösterilir.

🚀 Özellikler

Flutter Riverpod ile state management

GraphQL API üzerinden veri çekme

Modern Card UI tasarımı

Karakterlerin resim, isim ve durum bilgilerinin gösterilmesi

Canlı/Ölü durumuna göre renkli durum etiketi

Responsive tasarım

📸 Ekran Görüntüsü
Karakter Listesi

🛠 Kullanılan Teknolojiler

Flutter

Riverpod

Dio

Freezed

Rick and Morty GraphQL API

📂 Proje Yapısı
lib/
│
├── main.dart                  # Uygulama girişi
├── pages/
│   └── home_page.dart          # Ana sayfa (karakter listesi)
├── models/
│   └── character.dart          # Character model (Freezed ile)
├── providers/
│   └── fetch_characters_provider.dart # Riverpod provider

⚙️ Kurulum

Projeyi klonlayın

git clone https://github.com/kullanici/rick-and-morty-app.git
cd rick-and-morty-app


Bağımlılıkları yükleyin

flutter pub get


Uygulamayı çalıştırın

flutter run

🔍 Örnek GraphQL Sorgusu
query {
  characters {
    results {
      id
      name
      image
      status
    }
  }
}

📌 Notlar

API isteği Dio paketi ile yapılmaktadır.

Freezed ile model oluşturulmuştur (flutter pub run build_runner build komutu ile).

UI tasarımında Material Design prensiplerine uygun kart yapısı kullanılmıştır.

