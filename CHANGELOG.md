# Changelog

## 1.2.1
* Fix error - Sometimes crashes on Android.
* Fix error - methods marked with uithread must be executed on the main thread

## 1.2.0
* Update work with flutter sdk ver 1.20.1
* Remove [flutter_advanced_networkimage](https://pub.dev/packages/flutter_advanced_networkimage) dependency.

## 1.1.8+2
* Fix errors that sometimes do not delete the image cache.

## 1.1.8+1
* Fix critical error - pdf is not loaded.

## 1.1.8
* Fix memory issue.
* Allow panning only when zoomed in or out.

## 1.1.7+1
* Handle iOS bug.

## 1.1.7
* Add new widget PDFListViewer.

## 1.1.6+1
* Fixed an error where the pdf viewer disappeared when a value of false was entered for showNavigation

## 1.1.6
* Exposing `ZoomableWidget` from [flutter_advanced_networkimage](https://pub.dartlang.org/packages/flutter_advanced_networkimage) parameters (minScale, zoomSteps, maxScale,panLimit)

## 1.1.5
* Page controller initial page setting fixed (making able to set initially loaded page)

## 1.1.4
* Proper android cache cleanup
* iOS build fix

## 1.1.3
- Option to pass in controller `PDFViewer(document: document,controller: PageController())` that you can use to control the pageview rendering the PDF pages.

## 1.1.2
- Option to preload all pages in memory `PDFViewer(document: document,lazyLoad: false)`

## 1.1.1
- Option to disable swipe navigation `PDFViewer(document: document,scrollDirection: Aixs.vertical)`
- Option to change scroll axis to vertical or horizontal `PDFViewer(document: document,scrollDirection: Aixs.vertical)`

## 1.1.0
- Removed rxdart dependency
- Upgraded to androidX
- Added support to optional header while loading document from url
- Auto hide picker for 1 page documents

## 1.0.1
- Swipe control
- Zoom scale up to 5.0

## 1.0.0
- First upgraded version after fork
- Cool new customization features