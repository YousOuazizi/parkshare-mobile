# 🏗️ Structure Monorepo ParkShare

Ce repository **parkshare-mobile** fait partie du monorepo ParkShare.

## 📦 Repositories du Projet

| Repository | Description | URL |
|-----------|-------------|-----|
| **parkshare-frontend** | Application Web Angular 18 | https://github.com/YousOuazizi/parkshare-frontend |
| **parkshare-backend** | API Backend NestJS | https://github.com/YousOuazizi/parkshare-backend |
| **parkshare-mobile** | Application Mobile Flutter | https://github.com/YousOuazizi/parkshare-mobile |
| **parkshare-ops** | DevOps & Infrastructure | https://github.com/YousOuazizi/parkshare-ops |

## 🔗 Dépendances

Cette application mobile dépend de :
- **parkshare-backend** : Pour l'API REST
- **parkshare-ops** : Pour les configurations de déploiement mobile

## 🚀 Développement Local

### Prérequis
- Flutter >= 3.x
- Dart >= 3.x
- Android Studio ou Xcode (pour les émulateurs)

### Installation
```bash
cd parkshare-mobile
flutter pub get
flutter run
```

### Avec le Backend Local
```bash
# Terminal 1 - Backend
cd parkshare-backend
npm run start:dev

# Terminal 2 - Mobile
cd parkshare-mobile
flutter run
```

**Note** : Pour Android Emulator, l'URL de l'API est `http://10.0.2.2:3000/api`

## 📚 Documentation Complète

Pour la documentation complète du monorepo, consultez :
- **Setup complet** : https://github.com/YousOuazizi/parkshare-ops/blob/main/SETUP_COMPLETE.md
- **Configuration GitHub** : https://github.com/YousOuazizi/parkshare-ops/blob/main/GITHUB_SETUP.md
- **Migration Info** : https://github.com/YousOuazizi/parkshare-ops/blob/main/MIGRATION_INFO.md

## 🔧 Configuration

### Configuration de l'API

Éditez `lib/config/app_config.dart` :

```dart
class AppConfig {
  // Pour émulateur Android
  static const String apiBaseUrl = 'http://10.0.2.2:3000/api';

  // Pour émulateur iOS
  // static const String apiBaseUrl = 'http://localhost:3000/api';

  // Pour device physique (remplacez par votre IP)
  // static const String apiBaseUrl = 'http://192.168.1.X:3000/api';
}
```

## 🧪 Tests

```bash
flutter test                                      # Tests unitaires
flutter test --coverage                           # Couverture
flutter drive --target=test_driver/app.test.dart  # Tests d'intégration
```

## 📱 Build

### Android
```bash
flutter build apk --release
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## 🎯 Fonctionnalités Principales

- Recherche de parkings à proximité
- Réservation en temps réel
- Navigation GPS intégrée
- Chat avec propriétaires
- Paiement mobile (Stripe)
- QR code pour accès
- Notifications push

---

Pour toute question, consultez le README.md de ce repository ou la documentation dans parkshare-ops.
