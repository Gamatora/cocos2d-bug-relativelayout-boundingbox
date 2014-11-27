//
//  SecondScene.m
//  RelativeBoundingBox
//
//  Created by Jérémy Rousset on 27/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "SecondScene.h"

@interface SecondScene ()
@property (strong, readwrite, nonatomic) CCNodeColor* redNodeColor;
@end

@implementation SecondScene

// When accessing a relative layout during didLoadFromCCB, layout is BROKEN.
- (void)didLoadFromCCB
{
    if (YES) {
        NSLog(@"Displaying self.redNodeColor.boundingBox from didLoadFromCCB --> %@", NSStringFromCGRect(self.redNodeColor.boundingBox));
    }
}

// When accessing a relative layout during onEnter, layout is BROKEN.
- (void)onEnter
{

    if (NO) {
        NSLog(@"Displaying self.redNodeColor.boundingBox from onEnter --> %@", NSStringFromCGRect(self.redNodeColor.boundingBox));
    }

    [super onEnter];
}

@end
