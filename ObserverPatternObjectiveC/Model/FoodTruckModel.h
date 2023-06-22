//
//  FoodTruckModel.h
//  ObserverPatternObjectiveC
//
//  Created by Asami Doi on 22/06/2023.
//

#ifndef FoodTruckModel_h
#define FoodTruckModel_h

#import <Foundation/Foundation.h>

@class Donut;

@interface FoodTruckModel: NSObject
@property (nonatomic, copy) Donut* donuts;
@property (nonatomic, assign) NSInteger count;
@end

#endif /* FoodTruckModel_h */
