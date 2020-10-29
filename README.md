# Get Fluttered

<img align="right" src="demo.gif" width="280"/>

A Flutter project linked to a YouTube channel. Designed to teach various components used in Flutter health initiatives (e.g. within the [PRAPARE app]).

## Architecture

This app loosely follows the [Model-View-Controller+Services] `(MVC+S) architecture`, which has both [simple] and [production-level] examples of use. Whereas the above examples make heavy use of Provider, ChangeNotifier, and StatefulWidgets, we are instead using [Get] and some of the [Getx pattern] to simplify state management, routing, and dependency injection.

Our take on MVC+S is as follows:

- `model`: The 'container' that holds and shapes all of your data
- `views`: The UI layer, which is separated into multiple `pages` and may optionally be managed via a `viewcontroller`
- `controller`: The glue that holds state for your model (+ data), connects them to commands, and links them to your views
- `service`: A Get service is a controller that maintains state throughout the app lifecycle. An API service communicates with the outside world (e.g. internet or local file system).
- `command`: A high level function that performs a specific task, such as login/logout. It may utilize controllers, APIs, models, etc as necessary.

## Folder Structure

The following is the folder structure under the `/lib` folder:

- `/_internal` - _custom components/variations of existing Flutter widgets, utils, constants, and the like_
- `/controllers` - _manages state of the model and resultant data_
  - `/commands` - _performs a specific task (login, submit, edit)_
  - `/api` - _connects to outside world (e.g. REST, http, file storage). can be combined w/ `/services`_
  - `/services` - _a Get service with persistent state_
- `/models` - _the single point of failure between data and the app. includes CRUD / filtering data functions_
  - `/data` - _the data types and observables used in the app. may include JSON serialization_
- `/styled_components` - _shared widgets that use a common design system / theme so that the app seems consistent across screens_
    - `<widget_name>.dart`
- `/views` - _top level widgets that are loaded via a route_
  - `/<screen_name>` - _contains all code specific to this screen that is not shared_
    - `<screen_name>.dart` - _the screen widget, may optionally include 'page', 'card', or 'panel' at the end based view type_
    - `<screen_name>_binding.dart` - _controllers/services that are loaded (or lazy-loaded) in a view_
    - `<screen_name>_controller.dart` - _the viewcontroller that only affects this screen widget_
    - `<screen_name>_test.dart` - _any relevant tests for the screen widget or its viewcontroller_
- `/routes` - _maps routes to screen widgets_
  - `app_pages.dart` - _the app_
  - `app_routes.dart` - _the string route names used in the app_
- `api_keys.dart` - _unique/private keys that connect the app to an API_
- `icons.dart`
- `main.dart`
- `strings.dart`
- `themes.dart` - _custom themes and font sizes_  

## Style Guide

Follow the [Dart style guide].

Of note, you should:

- Use `UpperCamelCase` for types.
- Use `lowercase_snake_case` for libraries, packages, directories, and files.
- Use `lowerCamelCase` for constant names.
- Use `lowerCamelCase` for everything else (like variable names).
- Capitalize acronyms and abbreviations longer than two letters (Http rather than HTTP or http).
- A leading underscore makes a member variable private. Only use it if it is private.
- You can use single line if statements for returns.
- Use `///` instead of `/** */` for multi-line comments.

For VS Code, install the Dart and Flutter plugin. Set your editor to [format on save].

## Questions

Join us [on Discord].


[production-level]: https://github.com/gskinnerTeam/flokk
[Dart style guide]: https://dart.dev/guides/language/effective-dart/style
[format on save]: https://flutter.dev/docs/development/tools/formatting#automatically-formatting-code-in-vs-code
[Get]: https://pub.dev/packages/get#the-three-pillars
[Getx pattern]: https://github.com/kauemurakami/getx_pattern
[Model-View-Controller+Services]: https://blog.gskinner.com/archives/2020/09/flutter-state-management-with-mvcs.html
[on Discord]: https://discord.gg/HQPsVrz
[PRAPARE app]: https://github.com/firejuun/prapare
[simple]: https://github.com/gskinnerTeam/flutter-mvcs-hello-world