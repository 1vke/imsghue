# imsghue
`imsghue` is a rootless jailbreak tweak for iOS.

The goal for this tweak is to allow for the color customization of text balloons, as well as other miscellaneous things throughout the Messages app.

I am making this project to give myself an introduction into the Objective-C language, low level programming languages, and the idea of hooking and manipulating the general function of things in iOS.

## Credits
The following repositories have been a big help in making this:
- [Flora](https://github.com/acquitelol/flora) by [acquitelol](https://github.com/acquitelol)
    - Flora is a great example of a tweak! This repo was helpful when I needed help with preferences, general folder structure, and some other things.
- [NativeColorPickerCellExample](https://github.com/0xkuj/NativeColorPickerCellExample) by [0xkuj](https://github.com/0xkuj)
    - I originally thought I would have to make my own color picker for my preferences, but this repo proved me otherwise! I took this and modified the cells provided in the code to my needs.

## Usage
At this time, this has only been tested on my personal device that is on iOS 16.3, with Dopamine 2.0. 

I use macOS to build/compile this tweak.

Installation should be as simple as running a `make do`.