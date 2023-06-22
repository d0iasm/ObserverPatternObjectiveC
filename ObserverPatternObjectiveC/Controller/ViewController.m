//
//  ViewController.m
//  ObserverPatternObjectiveC
//
//  Created by Asami Doi on 22/06/2023.
//

#import "ViewController.h"
#import "Observer.h"
#import "FoodTruckModel.h"

//@interface ViewController () <UITableViewDelegate, UITableViewDataSource> {
@interface ViewController () {
}

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (assign) NSInteger capacity;

@property (strong) id<Observer> observer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.capacity = 30;
    self.observer = [[FoodTruckModel alloc] initWithCapacity:self.capacity];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.button addTarget:self action:@selector(addDonut:) forControlEvents:UIControlEventTouchUpInside];
    [self.button setFrame:CGRectMake(0, 0, self.view.frame.size.width, 100)];
    [self.button setTitle:@"Add new donut" forState:UIControlStateNormal];
    [self.button setTitle:@"Add new donut" forState:UIControlStateSelected];
    [self.view addSubview:self.button];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height - 100) style:UITableViewStylePlain];
    
    //[self updateTable];
    
    //self.tableView.dataSource = self;
    //self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

- (void) addDonut:(UIButton *)sender {
    NSLog(@"addDonut is clicked");
    
    if ([self.observer respondsToSelector:@selector((addDonut:))]) {
        [self.observer addDonut:@"foo"];
    }
}

- (void) updateTable {
    if ([self.observer respondsToSelector:@selector((getDonuts:))]) {
        NSArray *donuts = [self.observer getDonuts];
        
        for (int i=0; i<donuts.count; i++) {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
            cell.textLabel.text = donuts[i];
            [self.tableView addSubview:cell];
        }
    }
}

/*
 - (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
 UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell"];
 if (cell == nil) {
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
 }
 cell.textLabel.text = @" ";
 return cell;
 }
 
 - (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 return self.capacity;
 }
 */

@end
