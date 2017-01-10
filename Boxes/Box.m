//
//  Box.m
//  Boxes
//
//  Created by Andy Ung on 2017-01-10.
//  Copyright © 2017 Ungy Inc. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype) initWithHeight:(float)height width:(float)width depth:(float)depth;


{
    self = [super init];
    if (self) {
        _width = width;
        _depth = depth;
        _height = height;
    }
    return self;
}


-(float)volume{
    return self.height * self.width * self.depth;
}

- (BOOL)isBiggerThan:(Box*)otherBox
{
    return [self volume] > [otherBox volume];
}

-(float)calculateFactor:(Box*)otherBox
{
    
    self.factor = [self volume] / [otherBox volume];
    if (self.factor > 1) {
        self.biggestBox = self;
        self.smallestBox = otherBox;
        
    } else if(self.factor < 1){
        self.biggestBox = otherBox;
        self.smallestBox = self;
    }
    
    self.multiple = self.biggestBox.volume / self.smallestBox.volume;
    
    NSLog(@"Factor is %f",self.factor);
    return self.multiple;
}



//-(float)isThisTimesBiggerThan:(Box*)otherBox;
//if ([self.volume > otherBox volume]) {
//    return self.volume / [otherBox volume];
//} else {
//    return 0
//}




@end


