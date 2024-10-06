# Domi Track

## OVERVIEW👩‍💻

This project displays a map locator palteform using `flutter_map`, build using Flutter with a Home module & Details module.

## Module Implemented

### Home Module :-

- The user will see all of the registered locations, and clicking on one of them will bring up a sheet with further information about that site, such as photographs and documents.

- Explore the map and click on registered locations to learn more about them.

- The Image section contains a horizontal carousel that displays photographs regarding a specific location.

- The Docs section contains all of the related documents for a certain location, along with a search box.

### Details Module :-

- When you click on any location that is not already registered with us, you will be directed to the details page, where you will see a marker designating the target location.

- You will get a sheet for inviting your friends to claim the location.

- You can change your target location at any moment by just clicking on it.

## Steps To Use Run This Project

### Tools

- Dart

- Flutter

- Flutter Map

### Steps

- Install Flutter

- Install Dart

- Clone this repo to your local machine using

  `git clone https://github.com/jeetsdev/domi_track`

- Run `flutter pug get`

- Run this Project on your IOS emulator

## Project Structure

Here is the detailed project structure of Domi Track

```markdown
domi_track/
│
├── lib/
│ ├── core/
│ │ ├── constants/
│ │ │ └── constants.dart
│ │ ├── enums/
│ │ │ ├── doc_type_enums.dart
│ │ │ └── enums.dart
│ │ ├── models/
│ │ │ └── models.dart
│ │ ├── widgets/
│ │ │ ├── typography/
│ │ │ │ ├── custom_text.dart
│ │ │ │ ├── text_extra_small.dart
│ │ │ │ ├── text_extra_small_bold.dart
│ │ │ │ ├── text_large.dart
│ │ │ │ ├── text_medium.dart
│ │ │ │ ├── text_small.dart
│ │ │ │ └── text_small_bold.dart
│ │ │ └── widget.dart
│ │ └── providers/
│ │ └── app_state.dart
│ │
│ ├── features/
│ │ ├── details/
│ │ │ ├── view/
│ │ │ │ ├── screens/
│ │ │ │ │ └── details_screen.dart
│ │ │ │ └── widgets/
│ │ │ │ └── invite_and_earn_card.dart
│ │ │ └── details_service.dart
│ │ └── home/
│ │ ├── view/
│ │ │ ├── screens/
│ │ │ │ └── home_screen.dart
│ │ │ └── widgets/
│ │ │ └── location_card.dart
│ │ └── home_service.dart
│ │
│ └── main.dart
│
├── pubspec.yaml
└── README.md

```

## Explanation of the Structure

- `lib`: The main directory for your Dart code.
  - core/: Contains core functionalities, constants, enums, models, and widgets.
    - constants/: Holds constant values used throughout the app.
    - enums/: Contains enumerations like DocTypeEnums.
    - models/: Contains data models used in the app.
    - widgets/: Contains reusable widgets, including typography components.
    - providers/: Contains state management classes (like AppState).
- `features`: Contains feature-specific code.
  - details/: Contains everything related to the details feature, including screens and widgets.
  - home/: Contains everything related to the home feature.
- `main.dart`: The entry point of the Flutter application.
- `pubspec.yaml`: The configuration file for the Flutter project, where dependencies are listed.
- `README.md`: Documentation for the project, explaining its purpose and usage.

This modular structure allows easy navigation and maintenance of the codebase as the project grows. Adjustments can be made based on specific needs or additional features.

## Demo Video

You can watch the demo video of the project below:


https://github.com/user-attachments/assets/82738a45-6692-4d8c-bdda-653a9f56dd9e



## Project Images

| ![Landing Page](https://res.cloudinary.com/drkcsvbdj/image/upload/v1728026705/IMG_3133_bixqg2.png) | ![Home Page](https://res.cloudinary.com/drkcsvbdj/image/upload/v1728026705/IMG_3132_acjliv.png)            |
| -------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| ![Deaggble Sheet](https://res.cloudinary.com/drkcsvbdj/image/upload/v1728026704/IMG_3134_hf5jw2.png) | ![Details Page](https://res.cloudinary.com/drkcsvbdj/image/upload/v1728026704/IMG_3135_r2nbai.png) |
|                                                                                                    |                                                                                                             |
