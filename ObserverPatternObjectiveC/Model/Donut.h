//
//  Donut.h
//  ObserverPatternObjectiveC
//
//  Created by Asami Doi on 22/06/2023.
//

#ifndef Donut_h
#define Donut_h

#import <Foundation/Foundation.h>

@interface Donut: NSObject
@property (nonatomic, strong) NSString* name;

- (instancetype) initWithName: (NSString *)name;
@end

#endif /* Donut_h */
