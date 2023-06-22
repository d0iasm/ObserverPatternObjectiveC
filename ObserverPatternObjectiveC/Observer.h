//
//  Observer.h
//  ObserverPatternObjectiveC
//
//  Created by Asami Doi on 22/06/2023.
//

#ifndef Observer_h
#define Observer_h

@protocol Observer <NSObject>

- (void) addDonut: (NSString *) name;
- (NSArray *) getDonuts;

@end

#endif /* Observer_h */
