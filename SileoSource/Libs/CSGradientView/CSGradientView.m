//
//  CSGradientView.m
//  SileoSource
//
//  Created by iMokhles on 06/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import "CSGradientView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CSGradientView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CAGradientLayer *layer = (CAGradientLayer *)self.layer;
        [layer setStartPoint:CGPointMake(0.5, 0.0)];
        [layer setEndPoint:CGPointMake(0.5, 1.0)];
        
        [layer setColors:@[
                           (id)[[UIColor colorWithWhite:0.0 alpha:0.0] CGColor],
                           (id)[[UIColor colorWithWhite:0.0 alpha:0.2] CGColor],
                           (id)[[UIColor colorWithWhite:0.0 alpha:0.5] CGColor]
                           ]];

    }
    return self;
}

+ (Class)layerClass {
    return [CAGradientLayer class];
}
@end
