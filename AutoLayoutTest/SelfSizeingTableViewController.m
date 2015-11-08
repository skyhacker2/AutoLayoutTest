//
//  SelfSizeingTableViewController.m
//  AutoLayoutTest
//
//  Created by Eleven Chen on 15/11/8.
//  Copyright © 2015年 Hunuo. All rights reserved.
//

#import "SelfSizeingTableViewController.h"
#import "CustomCell.h"

@interface SelfSizeingTableViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SelfSizeingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 300;
}

#pragma mark - UITableViewDataSource

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Self Sizeing Cell"];
    
//    NSString *string = cell.textView.text;
//    CGSize size = [string sizeWithFont:cell.textView.font constrainedToSize:CGSizeMake(200, 2000) lineBreakMode:NSLineBreakByCharWrapping];
//    NSLog(@"size %f", size.height);
//    cell.textViewHeight.constant = size.height;
//    NSLog(@"cell height %f", cell.frame.size.height);
    
    return cell;
}

@end
