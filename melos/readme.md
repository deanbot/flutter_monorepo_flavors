# Melos approach

## Setup

`dart pub global activate melos`

Note configuration in `melos.yaml`

## Workflow

- Run `melos bootstrap` or `dart pub global run melos bootstrap` to install local deps.
- To clean all packages run `melos clean` or `dart pub global run melos clean`.
- Execute custom commands defined in `melos.yaml` via `melos run <command>` or `dart pub global run melos run <command>`.
    - i.e. `dart pub global run melos run lint:all`

See [melos docs](https://pub.dev/packages/melos) for more info.

## Configuration

In addition to `pubspec.lock` and other files ignored in library packages, be sure to ignore `.iml` files generated by melos in the package root and in all package directories including application packages.  