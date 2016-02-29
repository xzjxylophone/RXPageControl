//
//  RXPageControl.h
//  YYZC
//
//  Created by Rush.D.Xzj on 16/1/28.
//  Copyright © 2016年 Rush.D.Xzj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RXPageControl : UIView


@property (nonatomic, assign) NSInteger numberOfPages;
@property (nonatomic, assign) NSInteger currentPage;

// 所有的点
@property (nonatomic, readonly) NSArray *circleViews;

// 圈的大小,直径
@property (nonatomic, assign) CGFloat circleSize;
// 圈与圈中心点之间的距离
@property (nonatomic, assign) CGFloat circleDistance;


// default grayColor
@property (nonatomic, strong) UIColor *pageIndicatorTintColor;
// default blackColor
@property (nonatomic, strong) UIColor *currentPageIndicatorTintColor;

- (void)reloadView;


@end
