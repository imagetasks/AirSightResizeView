// Copyright (c) 2020 imagetasks

#import <Cocoa/Cocoa.h>

@protocol AirSightResizeViewDelegate <NSObject>
- (void) selectionDidChanged:(NSRect)selectedRect;
- (NSRect) selectionWillChange:(NSRect)selectedRect;
- (NSRect) selectionWillMove:(NSRect)selectedRect;
- (void) interactionDidStarted;
- (void) interactionDidEnded;
@end



@interface AirSightResizeView : NSView{
    
}

typedef NS_ENUM(NSUInteger, ASTracking) {
    ASOut = 0,
    ASTopLeft = 1,
    ASTopRight = 2,
    ASTop = 3,
    ASLeft = 4,
    ASRight = 5,
    ASBottomLeft = 6,
    ASBottom = 7,
    ASBottomRight = 8,
    ASCenter = 9
};


@property (nonatomic) IBInspectable BOOL animated;
@property (nonatomic) IBInspectable BOOL respectsProportion;
@property (nonatomic) IBInspectable BOOL squareSelection;
@property (nonatomic) IBInspectable NSColor* knobColor;
@property (nonatomic,weak) id<AirSightResizeViewDelegate> delegate;
@property (nonatomic) NSRect selectedFrame;
@property (nonatomic) NSRect selectableFrame;

@end


