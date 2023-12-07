# Read and Write Data in Flutter using SharedPreferences
> - SharedPreferences is the best option to store a small amount of data in flutter projects.
> - Shared Preferences is the way in which one can store and retrieve small amounts of primitive data as key/value pairs to a file on the device storage such as String, integer, float, Boolean that make up your preferences in an XML file inside the app on the device storage.
> - For example – Storing the username and login status in the shared_preferences. In Android Application consider a case when the user login or not, we can store the state of login- logout in the shared_preferences, so that the user does not need to write a password, again and again, we can save the login state in bool variable it is a small amount of data there is no need of a database, we can store it in shared_preferences to access it fast.

### INSTALLING
> Run this command 
`flutter pub add shared_preferences`

>  Import it  `import 'package:shared_preferences/shared_preferences.dart';`

### Write Data

```
// Obtain shared preferences.
final prefs = await SharedPreferences.getInstance();

// Save an integer value to 'num' key. 
await prefs.setInt('num', 10);

// Save an boolean value to 'flag' key. 
await prefs.setBool('flag', true);

// Save an double value to 'decnum' key. 
await prefs.setDouble('decnum', 1.5);

// Save an String value to 'name' key. 
await prefs.setString('name', 'Start');

// Save an list of strings to 'items' key. 
await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
```

### Read Data

```
// Obtain shared preferences.
final prefs = await SharedPreferences.getInstance();

// get an integer value from 'num' key. 
await prefs.getInt('num');

// get an boolean value from 'flag' key. 
await prefs.getBool('flag');

// get an double value from 'decnum' key. 
await prefs.getDouble('decnum');

// get an String value from 'name' key. 
await prefs.getString('name');

// get an list of strings from 'items' key. 
await prefs.getStringList('items');
```

### Delete Data

```
// Remove data for the 'counter' key. 
final success = await prefs.remove('counter');
```

### ScreenShot

<img width="303" alt="Screenshot 2023-12-07 at 5 36 22 PM" src="https://github.com/adityagaur0/flutter-shared-Preference/assets/112656570/5012b11e-171b-4fb6-acf9-4edb0bb72b9e">
