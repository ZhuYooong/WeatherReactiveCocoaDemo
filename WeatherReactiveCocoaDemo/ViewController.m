//
//  ViewController.m
//  WeatherReactiveCocoaDemo
//
//  Created by MAC on 16/3/4.
//  Copyright © 2016年 TongBuWeiYe. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+LBBlurredImage.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *cityLable;
@property (weak, nonatomic) IBOutlet UILabel *conditionsLable;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLable;
@property (weak, nonatomic) IBOutlet UILabel *hiloLable;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
#pragma mark - 初始化界面
- (void)initView {
    [self initBacgroundImage];
    self.tableView.separatorColor = [UIColor colorWithWhite:1 alpha:.2f];
    self.headerView.frame = self.view.bounds;
    self.tableView.tableHeaderView = self.headerView;
}
//初始化背景
- (void)initBacgroundImage {
    UIImage *background = [UIImage imageNamed:@"bg"];
    [self.backgroundImageView setImageToBlur:background blurRadius:10 completionBlock:nil];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (! cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.textColor = [UIColor whiteColor];
    return cell;
}
@end
