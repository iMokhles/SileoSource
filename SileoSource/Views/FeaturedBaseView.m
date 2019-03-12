//
//  FeaturedBaseView.m
//  SileoSource
//
//  Created by iMokhles on 07/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import "FeaturedBaseView.h"
#import "DepictionBaseView.h"
#import <objc/runtime.h>

@implementation FeaturedBaseView

+ (id)viewWithDictionary:(NSDictionary *)arg1 viewController:(UIViewController *)arg2 {
    
    NSString *classId = arg1[@"class"];
    Class classObject = objc_getClass([classId UTF8String]);
    if ([classObject isKindOfClass:[FeaturedBaseView class]]
        || [classObject isSubclassOfClass:[FeaturedBaseView class]]
        || [classObject isKindOfClass:[DepictionBaseView class]]
        || [classObject isSubclassOfClass:[DepictionBaseView class]]) return [[classObject alloc] initWithDictionary:arg1 viewController:arg2];
    return nil;
}
- (id)initWithDictionary:(NSDictionary *)arg1 viewController:(UIViewController *)arg2 {
    NSString *classId = arg1[@"class"];
    
    if ([classId isEqualToString:@"FeaturedBaseView"]) {
        
    } else if ([classId isEqualToString:@"DepictionBaseView"]) {
        
    } else {
        
    }
    
    self = [super initWithFrame:CGRectMake(0, 0, 320, 480)];
    if (self) {
        self.parentViewController = arg2;
    }
    return self;
}
- (double)depictionHeightForWidth:(double)arg1 {
    return 0.0;
}
- (void)subviewHeightChanged {
    if ([[self superview] respondsToSelector:@selector(subviewHeightChanged)]) {
        [[self superview] performSelector:@selector(subviewHeightChanged)];
    }
    
    if ([[self delegate] respondsToSelector:@selector(subviewHeightChanged)]) {
        [[self delegate] subviewHeightChanged];
    }
}

@end
