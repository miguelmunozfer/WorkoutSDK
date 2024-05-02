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
WorkoutSDK.sharedInstance.start(with: "USER_ID", appID: "APP_ID", password: "PASSWORD")

```

### Show ecare module


```swift
WorkoutSDK.sharedInstance.showEcareController()


```

## Handling Training Events

To enable event handling in your application, you need to set the `eventsDelegate` of the `TrainingEvents` singleton to an appropriate delegate that conforms to the `TrainingEventsDelegate` protocol. Below is an example of how to set up your `ViewController` to handle these events.

### Step 1: Set the Delegate

First, ensure your `ViewController` or other appropriate class sets itself as the delegate to receive training events:

```swift
TrainingEvents.shared.eventsDelegate = self

```

### Step 2: Implement the Delegate Protocol

Extend your ViewController to conform to the TrainingEventsDelegate protocol. Implement the required methods to handle the events you are interested in. For example, to handle an event and print its name:

```swift
extension ViewController: TrainingEventsDelegate {
    func sendEvent(_ event: TrainingEvent) {
        print(event.eventName ?? "")
    }
}

```


## Author

MyVitale, info@myvitale.com

## License

VitaleSDK is available under the MIT license. See the LICENSE file for more info.
