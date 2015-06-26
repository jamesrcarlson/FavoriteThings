//
//  FavortiesViewController.m
//  FavoriteThings-Objc
//
//  Created by James Carlson on 6/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavortiesViewController.h"

@interface FavortiesViewController () <UITableViewDataSource>


@end

@implementation FavortiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    
    tableView.dataSource = self;
    
    //register cell that will be DQ'ed for tableview
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellID String"];
    
    
    [self.view addSubview:tableView];
    
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // DQ the cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID String"]; // take out for DQ - [UITableViewCell new];
    
    
    
    cell.textLabel.text = [self favoriteThings][indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self favoriteThings].count;
}

- (NSArray *)favoriteThings {
    
    
    return @[@"Family", @"Pizza", @"home", @"beaches", @"Tomorrow", @"trucks", @"Computers", @"Programming", @"Yesterday"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
