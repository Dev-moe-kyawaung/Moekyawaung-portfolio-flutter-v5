# 🚀 Moe Kyaw Aung — Flutter Portfolio V5

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.22-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.4-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-Hosting-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
![Riverpod](https://img.shields.io/badge/Riverpod-2.5-00BCD4?style=for-the-badge&logo=flutter&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

[![CI](https://github.com/Dev-moe-kyawaung/Moekyawaung-flutter_portfolio_v5/actions/workflows/ci.yml/badge.svg)](https://github.com/Dev-moe-kyawaung/Moekyawaung-flutter_portfolio_v5/actions/workflows/ci.yml)
[![Deploy](https://github.com/Dev-moe-kyawaung/Moekyawaung-flutter_portfolio_v5/actions/workflows/deploy_web.yml/badge.svg)](https://github.com/Dev-moe-kyawaung/Moekyawaung-flutter_portfolio_v5/actions/workflows/deploy_web.yml)

**Cyberpunk neon Flutter Web portfolio — Pro Max Edition**  
*Senior Android Developer · Kotlin · Jetpack Compose · Firebase · CI/CD*

[🌐 Live Demo](https://Moekyawaung-flutter-portfolio-v5.web.app) · [📱 GitHub](https://github.com/Dev-moe-kyawaung) · [💼 LinkedIn](https://www.linkedin.com/in/moe-kyaw-aung-2653093a1)

</div>

---

## 🎨 Design

**Aesthetic:** Cyberpunk · Neon Cyan + Purple · Dark-first · Glassmorphism

| Token     | Value         | Usage                  |
|-----------|---------------|------------------------|
| `neonCyan`   | `#00F5FF`  | Primary accent, glows  |
| `neonPurple` | `#BF00FF`  | Secondary, gradients   |
| `neonGreen`  | `#00FF88`  | Success, highlights    |
| `bgDeep`     | `#050510`  | Main background        |
| `silver`     | `#E8E8F0`  | Primary text           |

**Typography:**  
- Display: **Orbitron** (headers, name) — tech/cyberpunk personality  
- Body: **Space Grotesk** (readable, modern)  
- Code/Labels: **Space Mono** (monospace authenticity)

---

## ✨ Features

| Feature                  | Status |
|--------------------------|--------|
| 🎭 Typing animation (hero)       | ✅ |
| 🌀 Rotating avatar ring          | ✅ |
| ✨ Particle field canvas          | ✅ |
| 📊 Animated skill progress bars  | ✅ |
| 🌙 Dark / Light mode toggle      | ✅ |
| 🇲🇲 Burmese / English toggle    | ✅ |
| 📱 Fully responsive (mobile/tablet/desktop) | ✅ |
| 🔝 Scroll progress bar + Back-to-top | ✅ |
| 🗂️ Project filter by category   | ✅ |
| 🔗 43 GitHub accounts grid       | ✅ |
| 📱 38+ Lovable PWA collection    | ✅ |
| ✉️ 21 email addresses (copy)     | ✅ |
| 📩 Contact form with validation  | ✅ |
| 📋 One-click clipboard copy      | ✅ |
| ⚙️ GitHub Actions CI/CD         | ✅ |
| 🔥 Firebase Hosting deploy       | ✅ |
| 📦 PWA offline support           | ✅ |

---

## 🗂️ Project Structure

```
Moekyawaung-flutter_portfolio_v5/
├── lib/
│   ├── main.dart                   # Entry point
│   ├── app/
│   │   ├── app.dart                # MaterialApp.router
│   │   ├── router/app_router.dart  # GoRouter
│   │   └── theme/                  # Colors, typography, theme
│   ├── core/
│   │   ├── constants/              # AppStrings, AppLinks, AppAssets
│   │   ├── helpers/                # Responsive, validators
│   │   ├── services/               # LaunchService, ScrollService
│   │   └── widgets/                # GlowCard, NeonButton, SectionTitle...
│   ├── data/
│   │   ├── models/                 # ProfileModel, ProjectModel...
│   │   ├── sources/local/          # PortfolioLocalSource (all data)
│   │   └── state/                  # Riverpod providers
│   └── features/
│       ├── shell/                  # PortfolioShellPage, StickyNavbar
│       ├── hero/                   # Hero section, particles, typing
│       ├── about/                  # About, timeline, info grid
│       ├── skills/                 # Progress bars, tech cloud
│       ├── services/               # Service cards grid
│       ├── projects/               # Projects, GitHub accounts
│       ├── apps/                   # 16 apps, 38+ PWA links
│       └── contact/                # Form, emails, social grid
└── .github/workflows/              # CI, build, deploy pipelines
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK `>=3.22.0`
- Dart SDK `>=3.4.0`
- Firebase CLI (for deployment)

### Local Development

```bash
# Clone
git clone https://github.com/Dev-moe-kyawaung/Moekyawaung-flutter_portfolio_v5.git
cd Moekyawaung-flutter_portfolio_v5

# Install dependencies
flutter pub get

# Run web (Chrome)
flutter run -d chrome --web-renderer canvaskit

# Run with hot reload
flutter run -d chrome --web-renderer html
```

### Build for Production

```bash
# Web (CanvasKit — highest quality)
flutter build web --release --web-renderer canvaskit --pwa-strategy offline-first

# Android APK
flutter build apk --release --split-per-abi

# Android AAB (Play Store)
flutter build appbundle --release

# iOS
flutter build ios --release --no-codesign
```

### Deploy to Firebase

```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login
firebase login

# Deploy
firebase deploy --only hosting
```

---

## ⚙️ GitHub Actions

| Workflow          | Trigger         | Purpose                       |
|-------------------|-----------------|-------------------------------|
| `ci.yml`          | Push / PR       | Lint, analyze, test           |
| `build_web.yml`   | Push to main    | Build Flutter Web artifact    |
| `deploy_web.yml`  | Push to main    | Build + deploy to Firebase    |
| `build_android.yml`| Push / Tag     | Build APK + AAB               |
| `build_ios.yml`   | Push / Tag      | Build iOS IPA                 |

**Required Secrets:**
```
FIREBASE_TOKEN      # firebase login:ci
KEYSTORE_BASE64     # base64 encoded keystore.jks
KEYSTORE_PASSWORD   # keystore password
KEY_PASSWORD        # key password
KEY_ALIAS           # key alias
CODECOV_TOKEN       # codecov.io token
```

---

## 📦 Tech Stack

| Layer          | Technology                              |
|----------------|-----------------------------------------|
| Framework      | Flutter 3.22 / Dart 3.4                 |
| State Mgmt     | Riverpod 2.5 + StateNotifier            |
| Navigation     | GoRouter 13.x                           |
| Animations     | flutter_animate, animate_do, Rive       |
| Networking     | dio, http, cached_network_image         |
| UI             | google_fonts, flutter_svg, glassmorphism|
| Launch         | url_launcher                            |
| Hosting        | Firebase Hosting                        |

---

## 👤 About

**Moe Kyaw Aung (မိုးကျော်အောင်)**  
Senior Android Developer | Flutter Engineer | Cybersecurity Enthusiast

- 📍 Tachileik, Myanmar 🇲🇲 ↔ Bangkok, Thailand 🇹🇭  
- 🎯 12 Years experience  
- 📜 82+ Programming Hub Certificates  
- 🐙 43 GitHub Accounts  
- 📱 38+ Live PWA Deployments  
- 🔥 16+ Production Apps  

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

<div align="center">

**Code with culture. Build with purpose. 🇲🇲**

Made with 💙 Flutter · Firebase · GitHub Actions

</div>
