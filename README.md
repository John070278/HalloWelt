# Hallo Welt

Eine einfache Flutter-App für Android und iOS, die „Hallo Welt!“ anzeigt.

## Aufbau

- `lib/main.dart` – der App-Code
- `test/widget_test.dart` – prüft, dass „Hallo Welt!“ angezeigt wird
- `.github/workflows/build.yml` – baut bei jedem Push automatisch:
  - **Android:** `app-release.apk`
  - **iOS:** `hallo-welt-unsigned.ipa` (auf einem macOS-Rechner von GitHub, kein eigener Mac nötig)

## Fertige App herunterladen

GitHub → Reiter **Actions** → letzten Lauf von „Build“ öffnen → unten unter **Artifacts** herunterladen.

## Auf das Android-Handy

1. `hallo-welt-android` herunterladen und entpacken.
2. `app-release.apk` aufs Handy kopieren und öffnen („Installation aus unbekannten Quellen“ erlauben).

## Auf das iPhone (ohne Mac)

Die iOS-Datei ist unsigniert. Apple erlaubt nur signierte Apps, deshalb signiert man sie beim Installieren:

1. Auf einem Windows-PC **iTunes** (oder „Apple Geräte“) und **[Sideloadly](https://sideloadly.io)** installieren.
2. `hallo-welt-ios-unsigned` herunterladen und entpacken.
3. iPhone per USB anschließen, die `.ipa` in Sideloadly ziehen, mit der eigenen Apple-ID anmelden, **Start**.
4. Auf dem iPhone: *Einstellungen → Datenschutz & Sicherheit → Entwicklermodus* einschalten und
   *Einstellungen → Allgemein → VPN & Geräteverwaltung* der eigenen Apple-ID vertrauen.

Mit einer kostenlosen Apple-ID läuft die App **7 Tage**, danach einfach erneut installieren.
Für dauerhafte Installation oder den App Store braucht man das Apple Developer Program (99 $/Jahr);
dann kann ein Cloud-Dienst wie Codemagic signieren und über TestFlight verteilen.

## Lokal entwickeln

```bash
flutter pub get
flutter test
flutter run        # mit angeschlossenem Android-Handy oder Emulator
```
