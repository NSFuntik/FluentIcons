# Microsoft Fluent Design Icons for iOS & macOS

A copy of [FluentIcons](https://github.com/microsoft/fluentui-system-icons) that works with Swift Package Manager and optimized for SwiftUI.

## Installation

select File > Swift Packages > Add Package Dependency and enter this repository URL

## Usage

```swift
import FluentIcons

Image(fluent: .appStore24Filled)

# To specify a tint color
Image(fluent: .arrowHookDownLeft28Regular).foregroundColor(.red)
```

## Benefits

#### 1. No more missing assets!

By using the enum `FluentIcon.myIcon24Regular` you can be sure that the icon exists in your app at compile time.

#### 2. Only includes what you use

At build/release time you can run the following script to ensure all unused assets are stripped from the app:

```
DERIVED_DATA=$(xcodebuild -showBuildSettings | pcregrep -o1 'OBJROOT = (/.*)/Build')
ICON_SOURCE_PATH="${DERIVED_DATA}/SourcePackages/checkouts/FluentIcons-SPM"

$ICON_SOURCE_PATH/Sources/remove-unused-fluent-icons/run \
    --path-to-source-code "." \
    --path-to-fluent-icon-source $ICON_SOURCE_PATH

```

#### 3. Consistent asset rendering

All non-color icons are rendered as template images so you can easily apply a `.foregroundColor(_ color:)` to your `Image`.

## FAQ

#### 1. Will this increase my apps build size

No, but please remember to set setup the script using the instructions above ^ to strip out all unused assets.

#### 2. Why are their assets of different sizes? Can't all PDFs be scaled?

Technically they can!  But design has tailored each icon to each specific size.  For example, smaller icons generally have less detail in the image.
