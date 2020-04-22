//
//  ViewController.m
//  AirSightResizeViewDemo
//
//  Created by Andrey Tsarkov on 22.04.2020.
//  Copyright © 2020 imagetasks. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // set delegate to self
    
    _selectionView.delegate = self;

}


- (IBAction)changeAnimation:(id)sender {
    
    NSButton *b = (NSButton*)sender;
    
    if (b.state == NSControlStateValueOn){
        [_selectionView setAnimated:YES];
    } else {
        [_selectionView setAnimated:NO];
    }
    
}


- (IBAction)changeMode:(id)sender {
    NSPopUpButton *b = (NSPopUpButton*)sender;
    if (b.indexOfSelectedItem == 0){
        [_selectionView setRespectsProportion:NO];
        [_selectionView setSquareSelection:NO];
    } else if (b.indexOfSelectedItem == 1){
        [_selectionView setRespectsProportion:YES];
        [_selectionView setSquareSelection:NO];
    } else {
        [_selectionView setRespectsProportion:NO];
        [_selectionView setSquareSelection:YES];
    }
}

- (IBAction)changeColor:(id)sender {
    NSPopUpButton *b = (NSPopUpButton*)sender;
    if (b.indexOfSelectedItem == 0){
        if (@available(*, macOS 10.14)) {
            [_selectionView setKnobColor: [NSColor controlAccentColor]];
        } else {
            [_selectionView setKnobColor: [NSColor systemBlueColor]];
        }
    } else if (b.indexOfSelectedItem == 1){
        [_selectionView setKnobColor: [NSColor lightGrayColor]];
    } else {
        [_selectionView setKnobColor: [NSColor greenColor]];
    }
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void) selectionDidChanged:(NSRect)selectedRect{
    
    [_labelSize setStringValue:[NSString stringWithFormat:@"%i × %i", (int)round(selectedRect.size.width), (int)round(selectedRect.size.height)]];
    [_labelXY setStringValue:[NSString stringWithFormat:@"X: %i, Y: %i", (int)round(selectedRect.origin.x), (int)round(selectedRect.origin.y)]];
    
}

- (NSRect) selectionWillChange:(NSRect)selectedRect{
    
    // apply snap to grid/pixels or other processing and return NSRect of processed selection
    
    return selectedRect;
}

- (NSRect) selectionWillMove:(NSRect)selectedRect{

    // apply snap to grid/pixels or other processing and return NSRect of processed selection
    
    return selectedRect;
}

- (void) interactionDidStarted{
    
    // user started resize or drag
    
    NSLog(@"interactionDidStarted");
}

- (void) interactionDidEnded{
    
    // user ended resize or drag
    
    NSLog(@"interactionDidEnded");
}


@end
