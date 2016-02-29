//
//  RXPageControl.m
//  YYZC
//
//  Created by Rush.D.Xzj on 16/1/28.
//  Copyright © 2016年 Rush.D.Xzj. All rights reserved.
//

#import "RXPageControl.h"

@interface RXPageControl ()

@property (nonatomic, strong) NSArray *circleViews;

@end

@implementation RXPageControl


- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.pageIndicatorTintColor = [UIColor grayColor];
        self.currentPageIndicatorTintColor = [UIColor blackColor];
    }
    return self;
}


- (void)setCurrentPage:(NSInteger)currentPage
{
    _currentPage = currentPage;
    for (NSInteger i = 0; i < self.circleViews.count; i++) {
        UIView *view = self.circleViews[i];
        if (i == currentPage) {
            view.backgroundColor = self.currentPageIndicatorTintColor;
        } else {
            view.backgroundColor = self.pageIndicatorTintColor;
        }
    }
}


- (void)reloadView
{
    
    for (UIView *view in self.circleViews) {
        [view removeFromSuperview];
    }
    
    NSMutableArray *ary = [NSMutableArray array];
    
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    
    CGFloat startX = (width - self.circleDistance * self.numberOfPages + self.circleSize) / 2.0f;
    CGFloat y = (height - self.circleSize) / 2.0f;
    for (NSInteger i = 0; i < self.numberOfPages; i++) {
        CGFloat x = startX + self.circleDistance * i;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x, y, self.circleSize, self.circleSize)];
        if (i == self.currentPage) {
            view.backgroundColor = self.currentPageIndicatorTintColor;
        } else {
            view.backgroundColor = self.pageIndicatorTintColor;
        }
        view.layer.masksToBounds = YES;
        view.layer.cornerRadius = self.circleSize / 2.0f;
        
        [ary addObject:view];
        [self addSubview:view];
    }
    self.circleViews = ary;
}



@end
