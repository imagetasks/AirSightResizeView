//
//  ViewController.h
//  AirSightResizeViewDemo
//
//  Created by Andrey Tsarkov on 22.04.2020.
//  Copyright © 2020 imagetasks. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "AirSightResizeView.h"

@interface ViewController : NSViewController <AirSightResizeViewDelegate>

@property (weak) IBOutlet AirSightResizeView *selectionView;
@property (weak) IBOutlet NSTextField *labelSize;
@property (weak) IBOutlet NSTextField *labelXY;

@end

