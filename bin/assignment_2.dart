import 'dart:io';

void main() {
  bool again = true;

  print('====================================');
  print('       SMART TEMPERATURE CONVERTER');
  print('====================================');

  while (again) {
    print('\n1. Celsius to Fahrenheit');
    print('2. Fahrenheit to Celsius');
    print('3. Celsius to Kelvin');
    print('4. Kelvin to Celsius');
    print('5. Fahrenheit to Kelvin');
    print('6. Kelvin to Fahrenheit');
    print('7. Exit');

    stdout.write('\nEnter your choice: ');
    int? choice = int.tryParse(stdin.readLineSync() ?? '');

// Check invalid choice
    if (choice == null || choice < 1 || choice > 7) {
      print('Invalid choice! Please enter a number between 1 and 7.');
      continue;
    }

// Exit
    if (choice == 7) {
      break;
    }

// Take temperature input
    stdout.write('Enter temperature: ');

    double? temperature =
    double.tryParse(stdin.readLineSync() ?? '');

// Check invalid temperature
    if (temperature == null) {
      print('Invalid temperature! Please enter a valid number.');
      continue;
    }

    double result;

    switch (choice) {
      case 1:
        result = celsiusToFahrenheit(temperature);
        print('$temperature°C = $result°F');
        break;

      case 2:
        result = fahrenheitToCelsius(temperature);
        print('$temperature°F = $result°C');
        break;

      case 3:
        result = celsiusToKelvin(temperature);
        print('$temperature°C = $result K');
        break;

      case 4:
        result = kelvinToCelsius(temperature);
        print('$temperature K = $result°C');
        break;

      case 5:
        result = fahrenheitToKelvin(temperature);
        print('$temperature°F = $result K');
        break;

      case 6:
        result = kelvinToFahrenheit(temperature);
        print('$temperature K = $result°F');
        break;
    }
  }

}
  double celsiusToFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }

  double celsiusToKelvin(double celsius) {
    return celsius + 273.15;
  }

  double kelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  double fahrenheitToKelvin(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9 + 273.15;
  }

  double kelvinToFahrenheit(double kelvin) {
    return (kelvin - 273.15) * 9 / 5 + 32;
}