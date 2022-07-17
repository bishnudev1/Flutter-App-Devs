# Flutter-Complete-Resource
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
- Widget : All items like Text, Icon, Image are Widget. It must returns a value.
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
## Day 3 - Function, Routes, Themes & Text
### Function
- Giving { } backets inside Function Parameters means giving params values are not mandetory.
```bash
import 'package:flutter/material.dart';

void main() {
  runApp(BasicFunc());
}

class BasicFunc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CarDetails(speed: 90);
    return Text("Basic Function");
  }

  CarDetails({int speed = 40, String name = "Audi"}) {
    print(speed);
    print(name);
  }
}
```
### Dark & Light Themes
- To apply Dark Theme
```bash
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
```
- To apply Light Theme
```bash
      theme: ThemeData(
        brightness: Brightness.light,
      ),
```
- Auto Dark-Light Switcher
```bash
themeMode: ThemeMode.system,
```
- Change Color of Status Bar
```bash
primarySwatch: Colors.red,
```
- Full Theme Code
```bash
import 'package:flutter/material.dart';
import 'package:hello_world/Pages/home.dart';
import 'Pages/home.dart';

void main() {
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      // For Dark Theme UI
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // For Light Theme UI ( Default )
      theme: ThemeData(
        brightness: Brightness.light,
        // Change Color of Status Bar
        primarySwatch: Colors.red,
      ),
    );
  }
}

```
### Text
- Styling Text
- It take props called style,textScaleFactor,textAlign,softWrap.
```bash
        title: Text(
          "Home Page",
          style: TextStyle(
<!--             fontSize: 20, -->
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
```
### Routes
- Routes are defined in the main container like MaterialApp, Material or Scaffold.
- It takes one callback Function and one Widget.
```bash
routes: {
      "/": (context) => Home(),
      "/Login": (context) => Login(),
    }
```
## Day 4 - TextInput, Buttons, Google Fonts

### Images
- Config pubspec.yaml and uncomment <b>assets/images/Sample.png</b>
- Import Image Component 
- For Open-Source Images Visit https://undraw.co/
```bash
      child: Column(
        children: [
          Image.asset("assets/images/Education.png",
          fit: BoxFit.cover,
          ),
        ],
      ),
```
### External Fonts
- For Fonts or Other Flutter Packages Visit https://pub.dev/
- Search ```google_fonts```
- Initialize ```flutter pub add google_fonts```
- This will add a dependencies line like this to your package's pubspec.yaml
- ```import 'package:google_fonts/google_fonts.dart';```
- Now use any Google Font like
```bash
        theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
```
- For spacing use <b>SizedBox</b> instead of Padding
```bash
SizedBox(
  height: 20,
),
```
- Or we can wrap the entire container with Padding Widget with each Vertical or Horizentally padding
```bash
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(),
            );
```
### Text-Input
- For Password entries obscureText = true so it will hide password while typing
```bash
          TextFormField(
          obscureText: false,
            decoration: InputDecoration(
              hintText: "Enter Name...",
              labelText: "Username",
            ),
          ),
```
### Buttons
- ElevatedButton must have two props child(includes Text) & onPressed.
```bash
                ElevatedButton(
                  child: Text("Login Now"),
                  style: TextButton.styleFrom(minimumSize: Size(340, 40)),
                  onPressed: () {
                     print("You have clicked Button");
                  },
                ),
```
## Day 5- SingleChildScrollView, Terminal, Navigator

### SingleChildScrollView
- Wrap a Container in SingleChildScrollView and it will be Scorable downwards
```bash
child: SingleChildScrollView(
  child: Container(
    // Widgets, Text, Buttons etc.
  ),
)
```

### Navigator
- Create a folder <b>utils</b> in <b>lib</b>
- Create routes.dart and Initialize the routes
```bash
class MyRoutes {
  static String loginRoute = '/login';
  static String homeRoute = '/';
}
```
- Set InitialRoute & Routes in <b>main.dart</b>
```bash
        return MaterialApp(
        initialRoute: MyRoutes.loginRoute,
        routes: {
          MyRoutes.homeRoute: (context) => Home(),
          MyRoutes.loginRoute: (context) => Login(),
        });
```
- Now Use the route in <b>login.dart</b> With Navigator.pushNamed()
```bash
                  ElevatedButton(
                    child: Text("Login Now"),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
```
## Day 6 - State Management, Animated Container
### State Change in Login Form Using StatefulWidget
- Convert StatelessWidget to StatefulWidget ( It takes 2 classes )
```bash
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material();
  }
}
//This is a Stateless Widget having Single Class
```
```bash
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material();
  }
}
//This is a StatefulWidget having Two Classes
```
- Now Define an empty String for Username ```String name = "";```
- Give TextFormField a props called ```onChanged```. It takes one callback.
```bash
onChanged: (value){
  name = value;
}
```
- Now use the name value by ```Text("Welcome : ${name}"),```
- Without calling the build() method we can re-render the page by ```setState(() {});``` in onChanged. It's a good practice
```bash
onChanged: (value){
  name = value;
  setState(() {});
}
```
### Animated Button With Container();
- We can create an Animated Button With Container() and InkWell() instead of ElevatedButton().
- InkWell() gives us onPressed method so we can call any function and we can customize this button.
- First Create a Container with Proper Height & Width.
- BoxDecoration() gives us to add Boder-Radius,Background-Color,Box-Shadow and many property in it.
```bash
                  Container(
                    width: 340,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("Login Now"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurple,
                    ),
                  ),
```
- Now we can wrap it with InkWell()
- We can use onTap() method to use Navigator() or other callback
```bash
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Container(
                      width: 340,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text("Login Now"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
```
### Customize Login Button With State & Animation Property
- Declare a bool variable ```bool ChangeButton = false```
- Set onTap() funtion to Async & Await
- Whenever Login Button has been Clicked changeButton will be set to True
```bash
onTap: (){
  setState(() {
    changeButton = true;
  });
}
```
- Now using <b>Ternary Operator</b> configure the Border-Radius of Button
```bash
borderRadius:
    BorderRadius.circular(changeButton ? 50 : 8),
// By default the BoderRadius of Button will be 50px but when someone triggered it, the value will be 8px.
```
- Now configure Button Text Property to Icon
```bash
changeButton ? Icon(Icons.done) : Text("Login Now"),
// If someone clicks Button it's innerHTML will changed to Icon from "Login Now" Text.
```
- Now Adding Async-Await to onTap() method to perform Delay and Navigate
```bash
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 2));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
await & Future.delayed() sleeps the function for 1 seconds and it will be redirected to Homepage after a seconds.
```
- InkWell() Full Code Structure With Styling
```bash
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 2));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      width: changeButton ? 50 : 150,
                      height: 30,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done)
                          : Text(
                              "Login Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
```
## Day 7 - QnA Session
### Question and Answers will be uploaded soon.
## Day 8 - Form Validation in Flutter
- Initialize a Form Key ``` final _formkey = GlobalKey<FormState>(); ```
- Wrapping The <b>Container</b> - which contains Text-Input, Buttons, Checkbox etc into <b>Form</b> & Add key 
```bash
child: Form(
  key: _formkey,
  child: Padding(
      TextFormField(),
      ElevatedButton(),
    ),
),
```
-  Add validator in TextFormField
```bash
validator: (value){
  if(value == ''){
    return "Username can not be empty";
  }
  return null; -> Returns null means it contains some data & it's mandatory
},
```
- Add a user-defined method on onTap() in Inkwell()
```bash
onTap: () => loginData(context),
```
- Declare the method with validation and navigation
```bash
  loginData(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
```
## Day 9 - Drawer Customization
- It's mainly a Stateless Widget
- It contains <b>ListView</b> Props as a Child
- It takes a <b>DrawerHeader</b> , <b>ListTile</b> as a Children, 
### How to set Admin Name in Drawer
```bash
return Drawer(
  child: ListView(
    children: [
      DrawerHeader(
        child: UserAccountsDrawerHeader(
          accountName: Text("Bishnudev Khutia"),
          accountEmail: Text("Bishnudevkhutia20@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage("Link of the image"),
          ),
        ),
      ),
    ],
  ),
);
```
- You can starred the Padding and Margin to zero so that it can't take extra UI in our Mobile screen.
```bash
child: ListView(
  padding: EdgeInsets.zero,
  children: [
    DrawerHeader(
      padding: EdgeInsets.zero,
         child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
         ),
    )],
  ),
),
```
### Creating Home, Cart, Contact, Logout Navigations Using <b>ListTile</b>
- It should takes two props 1) leading( Contains Icons ) 2) title( Main Title )
- Import Cupertino Icons
``` import 'package:flutter/cupertino.dart'; ```
```bash
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
```
## Day 10 - Models, AppBar Theme
### Customizing AppBar Theme in Flutter
- Create a Seperate Folder <b>themes.dart</b> in <b>utils</b>
- Create a Class where all Flutter Themes will be stored
```bash
class MyTheme{
  static ThemeData __themeName__(BuildContext context) => ThemeData(__themeCode__)
}
```
- For now we have two themes
```bash
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        fontFamily: GoogleFonts.lato().fontFamily,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
```
- Import it on <b>main.dart</b>
``` import 'package:hello_world/utils/themes.dart'; ```
- Use it ``` theme: MyTheme.lightTheme(context), ```

### Creating a Model Schema with Constructor
- Declaring Schemas
```bash
class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
```
- Creating a Model
```bash
final products = [
  Item(
      id: "Codepur001",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
];
```
## Day 11 - BuildContext, 3 Trees & Constraints
### Constraints
1) In Flutter, widgets are rendered by their underlying RenderBox objects. Render boxes are given constraints by their parent, and size themselves within those constraints. Constraints consist of minimum and maximum widths and heights; sizes consist of a specific width and height.
2) Generally, there are three kinds of boxes, in terms of how they handle their constraints:
- Those that try to be as big as possible. For example, the boxes used by Center and ListView.
- Those that try to be the same size as their children. For example, the boxes used by Transform and Opacity.
- Those that try to be a particular size. For example, the boxes used by Image and Text.
```bash
        child: Container(
          height: 100,
          width: 100,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.deepOrange,
          ),
        ),
        // Due to Constraints the 2nd Container always use the 1st Container Height & Width as Default.
```
- Apply Constraints ``` constraints : BoxConstraints(), ```
- Now it will check wheather the height and width of 2nd Box ( Child Box ) is in between Parent Box. If yes then it will render height and width of 2nd Box otherwise it will render Parent ( 1st Box ) height and width.
```bash
        child: Container(
          constraints: BoxConstraints(
              minHeight: 70, maxHeight: 200, minWidth: 70, maxWidth: 200),
          child: Container(
            height: 150,
            width: 150,
            color: Colors.deepOrange,
          ),
        ),
        // In this case this is true.
```
## Day 12 - ListView Builder, List Generate, Card & Asserts
