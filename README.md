# update
rn > 0.76, use v3.0.0
rn <= 0.76, use v2.0.2 (not 2.0.3)


# react-native-exit-app
Exit / Close / Kill / shutdown your react native app. Does not invoke a crash notification.

This package replace from react-native-exit-app, because of no more action on origin's contributor in years.
<br/>
Original link is: <a href="https://github.com/wumke/react-native-exit-app" target="_blank">Link</a>
<br/>
I'll keep every source code, including package name. without bugs one.
<br/>
you can find this issue, in this link <a href="https://github.com/wumke/react-native-exit-app/pull/72" target="_blank">Link</a>

NOTICE:
- for React Native < 0.47 use react-native-exit-app2 <1.x.x
- for React Native > 0.47 use react-native-exit-app2 >=1.x.x
- React Native with **new architecture** enabled use react-native-exit-app >=2.x.x (**compatible with old architecture**)

## Setup

NOTICE:
Installation steps can be skipped in new architecture and newer React Native versions, just 
```bash
npm install react-native-exit-app2 --save
```

Fast and easy:
```bash
npm install react-native-exit-app2 --save
react-native link react-native-exit-app2
```

Or manual: add the latest version as dependeny to your package.json.

```javascript
{
  "name": "YourProject",
  ...
  },
  "dependencies": {
    ...
    "react-native-exit-app2": "0.1.0",
    ...
  }
```

#### iOS
* Add RNExitApp.xcoderproj into your project in the Libraries folder.
* Add the .a file on the General tab of your target under Linked Frameworks And Libraries
* Add the .a file on the Build Phases tab of your target under Link Binary With Libraries

#### Android
* In the settings.gradle
  ```
    include ':react-native-exit-app2', ':app'
    project(':react-native-exit-app2').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-exit-app2/android')
  ```
* In the build.gradle
  ```
    compile project(':react-native-exit-app2')
  ```
* In MainApplication.java
  ```
    import com.github.wumke.RNExitApp.RNExitAppPackage;
    ...
    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
        ...
        new RNExitAppPackage(),
        ...
      );
    }
    ...
  ```
## Usage

```javascript
import RNExitApp from 'react-native-exit-app2';
...
RNExitApp.exitApp();
...
```

## Versioning

This project uses semantic versioning: MAJOR.MINOR.PATCH.
This means that releases within the same MAJOR version are always backwards compatible. For more info see [semver.org](http://semver.org/).
