//
//  MainViewController.m
//  RXPageControlExample
//
//  Created by Rush.D.Xzj on 16/2/29.
//  Copyright © 2016年 Rush.D.Xzj. All rights reserved.
//

#import "MainViewController.h"

#import "RXPageControl.h"

@interface MainViewController ()

@property (nonatomic, strong) RXPageControl *rxPageControl;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.rxPageControl = [[RXPageControl alloc] initWithFrame:CGRectMake(50, 150, 200, 10)];
    self.rxPageControl.numberOfPages = 5;
    self.rxPageControl.currentPage = 1;
    self.rxPageControl.circleSize = 5;
    self.rxPageControl.circleDistance = 20;
    self.rxPageControl.pageIndicatorTintColor = [UIColor greenColor];
    self.rxPageControl.currentPageIndicatorTintColor = [UIColor redColor];
    [self.rxPageControl reloadView];
    
    [self.view addSubview:self.rxPageControl];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
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
