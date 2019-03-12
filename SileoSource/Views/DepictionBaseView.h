//
//  DepictionBaseView.h
//  SileoSource
//
//  Created by iMokhles on 07/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DepictionViewDelegate <NSObject>
- (void)subviewHeightChanged;
@end

@interface DepictionBaseView : UIView

@property(nonatomic) UIViewController *parentViewController; // @synthesize parentViewController=_parentViewController;
@property(retain, nonatomic) NSObject<DepictionViewDelegate> *delegate; // @synthesize


+ (id)viewWithDictionary:(NSDictionary *)arg1 viewController:(UIViewController *)arg2;
- (id)initWithDictionary:(NSDictionary *)arg1 viewController:(UIViewController *)arg2;
- (double)depictionHeightForWidth:(double)arg1;
- (void)subviewHeightChanged;

@end

NS_ASSUME_NONNULL_END
