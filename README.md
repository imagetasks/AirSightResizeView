AirSightResizeView
============

# [![AirSightResizeView](https://github.com/imagetasks/AirSightResizeView/blob/master/demo.gif?raw=true)](#)

Selection view, similar to macOS Preview.app. Used by [Pixea - free image viewer for macOS](https://www.imagetasks.com/pixea/).



Usage
-----

Simply instantiate `AirSightResizeView` with the desired style and add to your view hierarchy. Set view class to `AirSightResizeView` in IB.

    #import <AirSightResizeView/AirSightResizeView.h>
    ...
    - (void)viewDidLoad {
    	[super viewDidLoad];

    	// set (AirSightResizeView*) delegate to self
   		_selectionView.delegate = self;
	}

Properties:
--------------

* `animated` - animates selection
* `respectsProportion` - respects ratio
* `squareSelection` - allows only square selection
* `knobColor` - knob color
* `selectedFrame` - selection rect
* `selectableFrame` - allow selection in rect

Delegate methods:
----------------

	@protocol AirSightResizeViewDelegate

	- (void) selectionDidChanged:(NSRect)selectedRect;
	- (NSRect) selectionWillChange:(NSRect)selectedRect;
	- (NSRect) selectionWillMove:(NSRect)selectedRect;
	- (void) interactionDidStarted;
	- (void) interactionDidEnded;

