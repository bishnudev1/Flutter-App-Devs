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
