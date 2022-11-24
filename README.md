# WorkoutSDK

[![CI Status](https://img.shields.io/travis/Miguel/VitaleSDK.svg?style=flat)](https://travis-ci.org/Miguel/VitaleSDK)
[![Version](https://img.shields.io/cocoapods/v/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![License](https://img.shields.io/cocoapods/l/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![Platform](https://img.shields.io/cocoapods/p/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)

## Description
WorkoutSDK is a comprehensive intelligent, automatic, and adaptive training framework programmed in
Swift for iOS and iPadOS. Is the most convenient way of integrating our physical activity training features
with any third party.

## Installation

WorkoutSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WorkoutSDK', :git => 'https://github.com/miguelmunozfer/WorkoutSDK'
```

Add the following lines to the end of the podfile file

```ruby
post_install do |installer|
installer.pods_project.targets.each do |target|
target.build_configurations.each do |config|
config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
end
end
end
```

## Usage

### Simple 1-line setup

Use your MyVitale credentials for initiating SDK. Your user_id must be permanent and unique for each App user (any user id, including the ones you are already using in your system,  can be used).

```swift
WorkoutSDK.sharedInstance.startSession(appID: "APP_ID", password: "PASSWORD")

```

### Config user

WorkoutSDK.sharedInstance.updateProfile(user: "USER_ID", sex: "USER_GENDER", height: "USER_HEIGHT", weigth: "USER_WEIGHT", birthDate: USER_BIRTHDATE, level: LEVEL)


### Sport profile

```swift
WorkoutSDK.sharedInstance.showTrainingProfileViewController()

```

### Show weekly workout plan


```swift
WorkoutSDK.sharedInstance.showWorkoutPlan()


```

### Custom configuration
You can customize different PT module interfaces using this functions:


#### Main color

Main SDK colour can be personalized. All buttons and main elements of the PT module will turn the selected colour.

```swift
Training.sharedInstance.setMainColor(color: mainColor)

```


## Author

MyVitale, info@myvitale.com

## License

VitaleSDK is available under the MIT license. See the LICENSE file for more info.
