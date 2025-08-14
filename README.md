# Rick and Morty Characters App

A Flutter application that displays characters from the Rick and Morty TV series using GraphQL API and Riverpod state management.

## Features

- 📱 Clean and modern UI with Material Design
- 🔄 Real-time data fetching from Rick and Morty GraphQL API
- 🎭 Character list with images, names, and status
- 📊 State management using Riverpod
- 🌐 GraphQL integration with Dio HTTP client
- 💫 Loading states and error handling

## Screenshots

The app displays a list of Rick and Morty characters with:
- Character images
- Character names
- Status (Alive/Dead) with color coding
- Card-based layout with smooth animations

## Architecture

This app follows a clean architecture pattern with:

- **UI Layer**: `HomePage` - Consumer widget that reacts to state changes
- **State Management**: Riverpod providers for reactive state management
- **Data Layer**: GraphQL API integration using Dio HTTP client
- **Models**: Freezed data classes for type-safe character models

## Dependencies

Add these dependencies to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.4.9
  dio: ^5.3.2
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

dev_dependencies:
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

## Project Structure

```
lib/
├── main.dart                          # App entry point
├── pages/
│   └── home_page.dart                 # Main character list page
├── providers/
│   └── fetch_characters_providers.dart # Riverpod state management
└── models/
    └── character.dart                 # Character data model
```

## Key Files

### 1. Character Model (`models/character.dart`)
```dart
@freezed
class Character with _$Character {
  factory Character({
    String? id,
    String? name,
    String? image,
    String? status,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
```

### 2. State Management (`providers/fetch_characters_providers.dart`)
- Uses `StateNotifierProvider` for managing character data
- Handles loading, success, and error states
- Integrates with Rick and Morty GraphQL API

### 3. UI (`pages/home_page.dart`)
- `ConsumerWidget` that reacts to provider state changes
- Displays characters in a scrollable list with cards
- Shows loading indicator while fetching data

## API Integration

The app uses the Rick and Morty GraphQL API:
- **Endpoint**: `https://rickandmortyapi.com/graphql`
- **Query**: Fetches character ID, name, image, and status
- **HTTP Client**: Dio for making GraphQL requests

## Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd rick-and-morty-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code (for Freezed models)**
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## State Management Pattern

The app uses Riverpod with the following state pattern:

```dart
// State definitions
sealed class FetchCharactersState {
  const FetchCharactersState();
  
  factory FetchCharactersState.initial() = _Initial;
  factory FetchCharactersState.fetching() = _Fetching;
  factory FetchCharactersState.fetched(List<Character> characters) = _Fetched;
  factory FetchCharactersState.failed(String error) = _Failed;
}
```

## Error Handling

- Network errors are caught and displayed appropriately
- DioException handling for HTTP-specific errors
- Generic error handling for unexpected issues
- Loading states provide user feedback

## Future Enhancements

- 🔍 Add search functionality
- 📄 Character detail pages
- 🎨 Enhanced UI animations
- 📱 Responsive design for tablets
- 🌙 Dark mode support
- 📊 Pagination for large character lists

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## API Reference

This app uses the [Rick and Morty API](https://rickandmortyapi.com/documentation):
- GraphQL endpoint for efficient data fetching
- No authentication required
- Rate limiting: Please be respectful with requests


