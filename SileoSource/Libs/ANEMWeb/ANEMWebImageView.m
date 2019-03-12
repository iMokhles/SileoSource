//
//  ANEMWebImageView.m
//  SileoSource
//
//  Created by iMokhles on 06/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import "ANEMWebImageView.h"

@implementation ANEMWebImageView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor grayColor]];
        _loadingIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:0];
        [_loadingIndicator startAnimating];
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
            [self setImage:[UIImage imageWithData:imageData]];
            [self setBackgroundColor:[UIColor clearColor]];
            [self->_loadingIndicator stopAnimating];
        });
    });
}
@end
