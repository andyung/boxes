//
//  Box.h
//  Boxes
//
//  Created by Andy Ung on 2017-01-10.
//  Copyright © 2017 Ungy Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float depth;
@property float factor;
@property float multiple;
@property Box* biggestBox;
@property Box* smallestBox;

- (instancetype) initWithHeight:(float)height width:(float)width depth:(float)depth;


- (float)volume;

- (BOOL)isBiggerThan:(Box*)otherBox;
-(float)calculateFactor:(Box*)otherBox;


@end
