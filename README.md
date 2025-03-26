# Flutter FL Chart Demo

A Flutter application showcasing different chart visualization types using the [FL Chart](https://github.com/imaNNeo/fl_chart) library. This demo demonstrates how to implement and customize various chart visualizations in Flutter applications.

<img src="https://raw.githubusercontent.com/imaNNeo/fl_chart/master/repo_files/images/line_chart/line_chart_sample_1.gif" width="300" />

## Features

This application demonstrates three different chart types:

- **Pie Chart**: Visualize data as sections of a circular graph
- **Bar Chart**: Display data using vertical bars 
- **Line Chart**: Show data trends over time or categories with connected points

The demo includes a tab-based navigation system that allows for easy switching between the different chart examples.

## Project Structure

```
lib/
├── main.dart              # Main application entry point with tab navigation
└── widgets/               # Chart widget implementations
    ├── bar_chart_sample.dart 
    ├── line_chart_sample.dart
    └── pie_chart_sample.dart
```

## Getting Started

### Prerequisites

- Flutter SDK (version 3.7.2 or higher)
- Dart SDK (version 3.7.2 or higher)
- A code editor (VS Code, Android Studio, etc.)

### Installation

1. Clone this repository
```bash
git clone https://github.com/yourusername/flutter_fl_chart_demo.git
```

2. Navigate to the project directory
```bash
cd flutter_fl_chart_demo
```

3. Install dependencies
```bash
flutter pub get
```

4. Run the app
```bash
flutter run
```

## Dependencies

- [FL Chart](https://pub.dev/packages/fl_chart) (version 0.70.2): A powerful Flutter chart library that supports Line, Bar, Pie, Scatter, and Radar charts.

## Customization

Each chart type can be customized by modifying its corresponding file in the `widgets` directory. The charts support various customization options including:

- Colors and gradients
- Animations
- Touch interactions and tooltips
- Labels and annotations
- Styling and formatting

## Resources

- [FL Chart Documentation](https://github.com/imaNNeo/fl_chart/blob/master/README.md)
- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Documentation](https://dart.dev/guides)

## License

This project is licensed under the MIT License - see the LICENSE file for details.
