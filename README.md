# Recipe Application Using Bloc with Cubit Clean Architecture

This is a recipe application built using the Bloc with Cubit Clean Architecture. It follows best practices for structuring code and separating concerns.

## Pic and Video Sections

The application includes the following features related to pictures and videos:

- [Login With Firebase Authentication]
- [Credentials : email -> uzairiqbal91@gmail.com , pass -> 123456]
- [Getting data from firestore database] 
- [Showing Recipe Food List]
- [Searching with Food name]
- [Filtering with Categories and Cusines Id]
- [Multiple filter with search]


## Libraries Used

The application utilizes the following libraries:

- [flutter_bloc](https://pub.dev/packages/flutter_bloc): State management library for implementing the BLoC pattern.
- [cloud_firestore](https://pub.dev/packages/cloud_firestore): Firestore integration for accessing and storing data.
- [firebase_auth](https://pub.dev/packages/firebase_auth): Firebase authentication for user management.
- [firebase_core](https://pub.dev/packages/firebase_core): Firebase core functionality and initialization.
- [get_it](https://pub.dev/packages/get_it): Dependency injection for managing object instances.
- [cached_network_image](https://pub.dev/packages/cached_network_image): Caching and displaying network images.
- [fluttertoast](https://pub.dev/packages/fluttertoast): Displaying toast messages in the application.
- [freezed](https://pub.dev/packages/freezed): Code generation for immutable classes and unions.
run command after installing libraries using Flutter pub get
- flutter pub run build_runner watch --delete-conflicting-outputs


## Screenshots

<img width="938" alt="Screenshot 2023-05-08 at 9 54 01 PM" src="https://user-images.githubusercontent.com/25804523/236893458-da4d8c8e-1806-466b-b742-c5813adb6e29.png">
<img width="1259" alt="Screenshot 2023-05-08 at 9 53 53 PM" src="https://user-images.githubusercontent.com/25804523/236893475-dc8d2b3a-a657-4400-9778-f67014a49199.png">

I have created 10 food records

## Demo Video

android

https://user-images.githubusercontent.com/25804523/236893518-fa73c925-3a64-46c8-9d6d-639f55a830b6.mp4

iOS

https://user-images.githubusercontent.com/25804523/236957960-67a3163c-c376-4f95-bde8-3cffccc936e2.mp4
