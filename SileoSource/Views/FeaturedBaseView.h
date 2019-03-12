//
//  FeaturedBaseView.h
//  SileoSource
//
//  Created by iMokhles on 07/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FeaturedViewDelegate <NSObject>
- (void)subviewHeightChanged;
@end

@interface FeaturedBaseView : UIView

@property(nonatomic) UIViewController *parentViewController; // @synthesize parentViewController=_parentViewController;
@property(retain, nonatomic) NSObject<FeaturedViewDelegate> *delegate; // @synthesize

+ (id)viewWithDictionary:(NSDictionary *)arg1 viewController:(UIViewController *)arg2;
- (id)initWithDictionary:(NSDictionary *)arg1 viewController:(UIViewController *)arg2;
- (double)depictionHeightForWidth:(double)arg1;
- (void)subviewHeightChanged;

@end

NS_ASSUME_NONNULL_END
