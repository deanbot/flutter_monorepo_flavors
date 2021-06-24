# Monorepo 

See [melos example](./melos).

## Setup 

- Shared (library) packages require a directory in `packages`, a `pubspec.yaml`, and a same-named barrel file in `lib`.

example:

```txt
packages
└───app_core
    │   pubspec.yaml
    │   [...]
    └───lib
        │   app_core.dart
        └───[...]
```
    
- In library packages `pubspec.lock` should be ignored (per https://dart.dev/tools/pub/glossary#library-package).
- Packages which consume library packages use a relative path (instead of version name) within `pubspec.yaml`.

`apps/app_a/pubspec.yaml`:
```yaml
dependencies:
  app_core:
    path: ../packages/app_core
```

`packages/http_album_repository/pubspec.yaml`:
```yaml
dependencies:
  app_core:
    path: ../app_core
```

