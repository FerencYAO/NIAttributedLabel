//
//  BYTextImgView.m
//  TestCoreData2
//
//  Created by yao on 14-1-14.
//  Copyright (c) 2014年 BY. All rights reserved.
//

#import "BYTextImgView.h"
#import "NIAttributedLabel.h"

@implementation BYTextImgView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self configView];
    }
    return self;
}

- (void)configView
{
    NSString *testStr = @"测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，http://www.baidu.com 测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，测试数据，";
    UIFont *font = [UIFont systemFontOfSize:17.0];
    CTFontRef systemFont = CTFontCreateWithName((__bridge CFStringRef)font.fontName, font.pointSize, NULL);
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:testStr attributes:@{(NSString *)kCTFontAttributeName:(__bridge id)systemFont}];
    CGSize textSize = NISizeOfAttributedStringConstrainedToSize(attrStr, CGSizeMake(CGRectGetWidth(self.bounds)-20.0, 1000), 1000);
    self.contentSize = CGSizeMake(CGRectGetWidth(self.bounds), textSize.height+500);
    NSMutableAttributedString *mutAttrStr = [[NSMutableAttributedString alloc] init];
    [mutAttrStr addAttributes:@{} range:NSMakeRange(0.0, 0.0)];
    NIAttributedLabel *label = [[NIAttributedLabel alloc] initWithFrame:CGRectMake(10.0, 0.0, CGRectGetWidth(self.bounds)-20.0, 2000)];
    label.textColor = [UIColor blueColor];
    label.numberOfLines = 1000;
    label.attributedString = attrStr;
    label.autoDetectLinks = YES;
    /* 异步匹配链接 */
    label.deferLinkDetection = YES;
    label.autoReplaceImage = YES;
    [label insertImage:[UIImage imageNamed:@"yaolmh"] atIndex:20 margins:UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0) verticalTextAlignment:NIVerticalTextAlignmentMiddle];
    [label insertImage:[UIImage imageNamed:@"Icon"] atIndex:20 margins:UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0) verticalTextAlignment:NIVerticalTextAlignmentMiddle];
    [self addSubview:label];
}



@end
