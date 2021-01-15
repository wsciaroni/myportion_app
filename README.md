# myportion_app

A new Flutter project.

## Working With GitHub

1. [**Signed Commits are Required**](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-gpg-key-to-your-github-account)
2. **No Commits directly to Master**
3. **Two Reviews Required per Pull Request**
4. **Happy Commiting :)**

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### Setting up the Development Environment

Setup a VM with Ubuntu 20.04 (Or others if you dare)
I chose to use [20.04.1 LTS](https://ubuntu.com/download/desktop)
Install vscode
`sudo snap install code --classic`

Install flutter:
`sudo snap install flutter --classic`
`flutter sdk-path`

Install other dependencies
`sudo apt install -Y git openjdk-11-jdk`

Configure VSCode Extensions
1. Launch vscode: `code &`
2. Click Package button
3. Search for "Flutter"
4. Click "Install"
5. Search for "Dart"
6. Make sure the dart extension is installed as well (It should be a dependency for Flutter)

Install Android Studio

- `sudo snap install android-studio --classic`
- Open Android Studio from the Activities area in Ubuntu
- Do not import settings
- Move the the installer choosing the Standard install
- Once the installer is done, click `Finish`
- Android Studio should remain open, if not open it.
- **Click Configure in the bottom right** `Configure->SDK-Manager`
- Select the version of android that corresponds to a device that you own (If you want to debug on that device).  I had trouble using the Android 11 (R) version, but had good luck with Android 10 (Q)... YMMV
- **Make sure you have the required SDK Tools**

    - Leave anything that comes checked
    - Check `Android SDK Command-line Tools (latest)`

- Click OK
- If prompted, accept the terms and conditions and proceed with installing any needed SDKs

From the main Android Studio startup page, **Click Configure->Plugins**
Install the "flutter" plugin.  

### Setup an Android Emulator

- Launch Android Studio->Configure->AVD Manager
- Downloaded the neede image for the Pixel (Or whatever device)
- Make sure that your VM has Nested virtualization (VT-X) Enabled or you will need to use a physical device to debug.

### Flutter Doctor setup

Open a terminal and run `flutter doctor` and handle any errors that may remain in your installation.

I had to do the following
- `flutter config --android-studio-dir=/snap/android-studio/current/android-studio`
- `flutter doctor --android-licenses` Then accept any licenses needed
- It is okay that Android Studio plugins are not recognized


- Close all IDEs
- Launch vscode
- Open the root directory of our GitHub project