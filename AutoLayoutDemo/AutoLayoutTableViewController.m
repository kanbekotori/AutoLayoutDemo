//
//  AutoLayoutTableViewController.m
//  AutoLayoutDemo
//
//  Created by jiangxingshang on 15/1/16.
//  Copyright (c) 2015年 jxs. All rights reserved.
//

#import "AutoLayoutTableViewController.h"
#import "AutoLayoutTableViewCell.h"
#import "ViewController.h"

@interface AutoLayoutTableViewController ()
@property (nonatomic, strong) NSArray *data;
@end

static NSString *cellReuseId = @"cell";

@implementation AutoLayoutTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"AutoLayout";
    [self.tableView registerClass:[AutoLayoutTableViewCell class] forCellReuseIdentifier:cellReuseId];
    [self.tableView setDelaysContentTouches:NO];
    self.data = [NSArray arrayWithObjects:
                 @"Also note in the first example we had to add the constraints to the superview [superview addConstraints:.... Masonry however will automagically add constraints to the appropriate view.",
                 @"mas_updateConstraints is useful for updating a set of constraints, but doing anything beyond updating constant values can get exhausting. That's where mas_remakeConstraints comes in.mas_remakeConstraints is similar to mas_updateConstraints, but instead of updating constant values, it will remove all of its contraints before installing them again. This lets you provide different constraints without having to keep around references to ones which you want to remove.", nil];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AutoLayoutTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseId];
    cell.label.text = [self.data objectAtIndex:indexPath.row];
    [cell.btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}

- (void)click:(UIButton *)sender {
    [self.navigationController pushViewController:[[ViewController alloc] init] animated:YES];
}

@end
