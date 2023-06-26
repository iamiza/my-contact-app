## seperation of concern

```
lib
├── config
│   └── utils
│       └── app_color.dart
├── core
│   └── constants
│       ├── app_images.dart
│       ├── app_styles.dart
│       └── strings.dart
├── features
│   └── contacts
│       ├── controller
│       ├── data
│       └── presentation
│           ├── my_contacts.dart
│           └── widgets
└── main.dart
```

##### gvmnbv
under contacts <br>
data folder hold the model class<br>
controller has logic <br>
presentation has UI
