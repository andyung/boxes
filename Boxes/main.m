//
//  main.m
//  Boxes
//
//  Created by Andy Ung on 2017-01-10.
//  Copyright © 2017 Ungy Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Box *box2 = [[Box alloc]initWithHeight:100.0 width:25 depth:88];
        Box *box1 = [[Box alloc]initWithHeight:20.0 width:40 depth:20];
        
        
        NSLog(@"Box 1 volume = %f, box 2 volume = %f", [box1 volume],
                    [box2 volume]);
        
        if ([box1 isBiggerThan:box2]) {
            NSLog(@"Box 1 is bigger");
            
        } else {
            NSLog(@"Box 2 is bigger (or the same)");
        }
        
       NSLog(@"Smaller box fits into bigger box %f times", [box1 calculateFactor: box2]);
        
        
    }
    return 0;
}
