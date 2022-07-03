# Flutter-App-Devs
30 Days of Flutter App Development By Bishnudev Khutia

## Day 1

### Windows Installation
- Install Git https://git-scm.com/downloads
- Open Terminal & initialize ```git clone https://github.com/flutter/flutter.git -b stable```
- Add Path ```flutter\bin``` in Path/Enviroment Variables
- Install VS Code https://code.visualstudio.com/
- Install ```Flutter``` extension in VS Code/Extension
- Open Terminal & initialize ```flutter doctor``` & check the needs

### Hello World App
- Open VS Code
- Open Command Palate ```Ctrl+Shift+p```
- Select ```New Flutter Application``` With Name & Directory
- Edit ```main.dart``` in ```lib```
```bash
import 'package:flutter/material.dart';

void main() {
  runApp(const Hello());
}

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Hello,World!"),
        ),
      ),
    );
  }
}
```
## Day 2
