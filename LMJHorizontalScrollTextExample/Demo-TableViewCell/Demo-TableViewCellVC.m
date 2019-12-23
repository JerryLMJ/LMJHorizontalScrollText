//
//  Demo-TableViewCellVC.m
//  LMJHorizontalScrollTextExample
//
//  Created by JerryLMJ on 2019/12/21.
//  Copyright © 2019 LMJ. All rights reserved.
//

#import "Demo-TableViewCellVC.h"
#import "LMJHorizontalScrollText.h"

@interface Demo_TableViewCellVC() <UITableViewDelegate,UITableViewDataSource>

@end

@implementation Demo_TableViewCellVC
{
    UITableView * _listView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setTitle:@"back" forState:UIControlStateNormal];
    [backBtn setBackgroundColor:[UIColor lightGrayColor]];
    [backBtn setFrame:CGRectMake(20, 50, 90, 30)];
    [backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
    _listView = [[UITableView alloc] initWithFrame:CGRectMake(20, 100, 300, 600)];
    _listView.delegate   = self;
    _listView.dataSource = self;
    [self.view addSubview:_listView];
}

- (void)backAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - TableView Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * cellId = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell.backgroundColor = [UIColor lightGrayColor];
        
        /* LMJHorizontalScrollText */
        LMJHorizontalScrollText * text = [[LMJHorizontalScrollText alloc] initWithFrame:CGRectMake(20, 10, 260, 20)];
        text.backgroundColor    = [UIColor colorWithRed:64/255.f green:151/255.f blue:255/255.f alpha:0.5];
        text.textColor          = [UIColor whiteColor];
        text.textFont           = [UIFont systemFontOfSize:14];
        text.speed              = 0.03;
        text.moveDirection      = LMJTextScrollMoveLeft;
        text.moveMode           = LMJTextScrollContinuous;
        text.layer.cornerRadius = 3;
        text.tag                = 999;
        [cell addSubview:text];
        /* LMJHorizontalScrollText */
        
    }
    
    /* LMJHorizontalScrollText */
    LMJHorizontalScrollText * text = [cell viewWithTag:999];
    text.text = [NSString stringWithFormat:@"<<<=往返滚动(back and forth)%ld=>>>", (long)indexPath.row];
    /* LMJHorizontalScrollText */
    
    return cell;
}


@end
