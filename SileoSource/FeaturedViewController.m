//
//  FeaturedViewController.m
//  SileoSource
//
//  Created by iMokhles on 06/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import "FeaturedViewController.h"
#import "ANEMWebImageButton.h"
#import "FeaturedBaseView.h"

@interface FeaturedViewController () {
    UIButton *_profileButton;
    UIScrollView *_scrollView;
    FeaturedBaseView *_featuredView;
}

@end

@implementation FeaturedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self navigationBarStyle];
    [self setTitle:NSLocalizedString(@"Featured", @"")];
    [self setupProfileButton];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadData) name:@"SileoPackageCacheReloaded" object:nil];
}

- (void)setupProfileButton {
    _profileButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_profileButton setImage:[UIImage imageNamed:@"User_36x36_"] forState:UIControlStateNormal];
//    [_profileButton stopLoading];
    [_profileButton addTarget:self
               action:@selector(showProfile:)
     forControlEvents:UIControlEventTouchUpInside];
    [_profileButton setAccessibilityIgnoresInvertColors:YES];
    [self.navigationController.navigationBar addSubview:_profileButton];
    [_profileButton.layer setCornerRadius:20.0];
    [_profileButton setClipsToBounds:YES];
    [_profileButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [NSLayoutConstraint activateConstraints: [NSArray arrayWithObjects:
                                               [_profileButton.rightAnchor constraintEqualToAnchor:[self.navigationController.navigationBar rightAnchor] constant:-16.0],
                                              [_profileButton.bottomAnchor constraintEqualToAnchor:[self.navigationController.navigationBar bottomAnchor] constant:-12.0],
                                              [_profileButton.heightAnchor constraintEqualToConstant:40.0],
                                              [_profileButton.widthAnchor constraintEqualToConstant:40.0], nil
                                              ]];
}


- (void)showProfile:(ANEMWebImageButton *)sender {
    
}

- (void)navigationBarStyle {
    [self.navigationController.navigationBar setValue:@(YES) forKeyPath:@"hidesShadow"];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.view updateConstraintsIfNeeded];
}

- (void)subviewHeightChanged {
    
}
- (void)scrollViewDidScroll:(id)arg1 {
    
}
- (void)moveAndResizeProfileForHeight:(double)arg1 {
    
}
- (void)viewWillDisappear:(_Bool)arg1 {
    [super viewWillDisappear:arg1];
}
- (void)viewDidAppear:(_Bool)arg1 {
    [super viewDidAppear:arg1];
    
}
- (void)versionTooLow {
    
}
- (void)reloadData {
    
}
@end
