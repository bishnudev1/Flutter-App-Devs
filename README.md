# Flutter-App-Devs
30 Days of Flutter App Development By Bishnudev Khutia

## Day 1 - Introduction

### Windows Installation
- Install Git https://git-scm.com/downloads
- Open Terminal & initialize ```git clone https://github.com/flutter/flutter.git -b stable```
- Add Path ```flutter\bin``` in Path/Enviroment Variables
- Install VS Code https://code.visualstudio.com/
- Install ```Flutter``` extension in VS Code/Extension
- Open Terminal & initialize ```flutter doctor``` & check the needs

### Setup Android SDK without Android Studio
- Install Android Command Line Tools https://developer.android.com/studio#downloads
- Extract to C:\Android
- Open Terminal & initialize ```sdkmanager.bat "build-tools;28.0.3" --sdk_root=../```
- Initialize ```sdkmanager.bat "platforms;android-30" --sdk_root=../```
- Copy Android Folder Path & Set it to Enviroment Variables
- Run Terminal & initialize ```flutter doctor --android-licenses```


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
- Run the App by ```flutter run```
## Day 2 - Creating Home Page
- Scaffold : It's a Container of Flutter which wrap the container just like MaterialApp or Material but it contents essential components like Appbar, Drawer, Footer etc.
- Drawer : Creates a three-dot navbar automatically
- Appbar : Creates a status-bar automatically
```bash
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  final name = "Bishnudev Khutia";
  final roll = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          child: Text("Name : ${name} Roll : ${roll}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
```
## Day 3 - Routes, Theme & Text
