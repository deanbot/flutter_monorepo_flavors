# Vanilla (no tools) approach

## Workflow:

- Initial Setup:
    - Run `flutter pub get` in order for each shared package in `packages`.
    - Run `flutter pub get` for each consuming app.
    - Run `flutter pub get` in any package if [immediate dependencies](https://dart.dev/tools/pub/glossary#immediate-dependency) change.
        - TODO - does consumer need to run `pub get` if [transitive dependencies](https://dart.dev/tools/pub/glossary#transitive-dependency) change?

## Observations:

- Api changes in library package are available immediately. Changes in library packages trigger hot-reloading.
- Running pub get in all packages is cumbersome. Errors resulting from unmet dependencies may take time to recognize.
    - Simple automation can help, i.e. a shell script executing `flutter pub get` in each library package, see [tool/install.sh](./vanilla/tool/install.sh).
    - Can configure shell script as an Android Studio Run Configuration
        - Select **Edit Configurations**, **Add New Configuration** and then select shell script
        - Script Path: <browse and find shell script> (i.e `C:/path/to/repo/vanilla/tool/install.sh`)
        - Working Directory: <browse and find project root> (i.e `C:/path/to/repo/vanilla`)
        - Interpreter Path: <path to sh> (i.e. `C:\Program Files\Git\bin\sh.exe` for git bash's sh)
- Can launch application packages woithout downloading packages for library packages, however library package files will display errors until packages are retrieved.