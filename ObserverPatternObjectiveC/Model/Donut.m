//
//  Donut.m
//  ObserverPatternObjectiveC
//
//  Created by Asami Doi on 22/06/2023.
//

#import "Donut.h"

#import <Foundation/Foundation.h>

@interface Donut()
@end

@implementation Donut

- (instancetype)initWithName: (NSString *)name {
    self = [[Donut alloc] init];
    if (self) {
        self.name = name;
    }
    return self;
}

@end
