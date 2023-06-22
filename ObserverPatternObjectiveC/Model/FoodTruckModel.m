//
//  FoodTruckModel.m
//  ObserverPatternObjectiveC
//
//  Created by Asami Doi on 22/06/2023.
//

#import "FoodTruckModel.h"

#import <Foundation/Foundation.h>
#import "Donut.h"

@interface FoodTruckModel()

@end

@implementation FoodTruckModel

- (instancetype)initWithCapacity: (NSInteger) capacity {
    self = [[FoodTruckModel alloc] init];
    
    if (self) {
        NSArray* initData = [
            NSArray arrayWithObjects:
                [[Donut alloc] initWithName:@"Glazed"],
            [[Donut alloc] initWithName:@"Mochi"],
            [[Donut alloc] initWithName:@"Eclair"],
            [[Donut alloc] initWithName:@"Cruller"],
            [[Donut alloc] initWithName:@"Fritter"],
            [[Donut alloc] initWithName:@"Boston Cream"],
            [[Donut alloc] initWithName:@"Jelly"],
            [[Donut alloc] initWithName:@"Beignet"],
            nil
        ];
        
        self.count = 0;
        self.donuts = [[NSMutableArray alloc] initWithCapacity:capacity];
        //[self.donuts addObjectsFromArray:initData];
    }
    return self;
}

- (void)addDonut:(NSString *)name {
    NSLog(@"addDonut is clicked in Model: %ld", (long)self.count);
    Donut* donut = [[Donut alloc] initWithName:name];
    [self.donuts addObject:donut];
    self.count += 1;
}

- (NSArray *)getDonuts {
    NSMutableArray *donutNames = [[NSMutableArray alloc] initWithCapacity: self.donuts.count];
    for (int i=0; i<self.donuts.count; i++) {
        [donutNames addObject:[self.donuts[i] valueForKey:@"name"]];
    }
    NSArray *result = [donutNames copy];
    return result;
}

@end
