//
//  FoodTruckModel.h
//  ObserverPatternObjectiveC
//
//  Created by Asami Doi on 22/06/2023.
//

#ifndef FoodTruckModel_h
#define FoodTruckModel_h

#import <Foundation/Foundation.h>
#import "Observer.h"

@class Donut;

@interface FoodTruckModel: NSObject <Observer>
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, strong) NSMutableArray* donuts;

- (instancetype)initWithCapacity: (NSInteger) capacity;

@end

#endif /* FoodTruckModel_h */
