//
//  ANEMWebImageButton.m
//  SileoSource
//
//  Created by iMokhles on 06/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import "ANEMWebImageButton.h"

@interface ANEMWebImageButton ()
{
    UIActivityIndicatorView *_loadingIndicator;
}
@end

@implementation ANEMWebImageButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor grayColor]];
        _loadingIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:0];
        [_loadingIndicator startAnimating];
        self.imageScale = 0x3ff0000000000000;
    }
    return self;
}

- (void)layoutSubviews {
    [_loadingIndicator setCenter:[self center]];
}
- (void)loadImage {
    [_loadingIndicator startAnimating];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData *imageData = [NSData dataWithContentsOfURL:self.imageURL];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self setImage:[UIImage imageWithData:imageData scale:self.imageScale] forState:UIControlStateNormal];
            [self setBackgroundColor:[UIColor clearColor]];
            [self->_loadingIndicator stopAnimating];
        });
    });
}
- (void)stopLoading {
    [self setBackgroundColor:[UIColor clearColor]];
    [_loadingIndicator stopAnimating];
}
@end
