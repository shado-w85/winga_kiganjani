# Winga Kiganjani

Campus commerce and financial inclusion Flutter app.

## API configuration

Authentication and food catalog requests use `localhost:3000` on desktop, web,
and iOS Simulator. On an Android Emulator, the default is `10.0.2.2:3000`,
which routes to the host machine. Override the API origin at build time with
`--dart-define=API_BASE_URL=https://your-api-host`.

Use an HTTPS API for release builds. Cleartext HTTP is enabled only for Android
debug and profile builds to support local development.

See the [Flutter documentation](https://docs.flutter.dev/) for SDK setup and
platform-specific build requirements.
