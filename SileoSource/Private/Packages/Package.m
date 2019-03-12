//
//  Package.m
//  SileoSource
//
//  Created by iMokhles on 08/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import "Package.h"
#import <objc/runtime.h>

@implementation Package

- (_Bool)isEqual:(Package *)arg1 {
    
    return [[self package] isEqualToString:arg1.package];
}
- (unsigned long long)hash {
    NSString *string = [NSString stringWithFormat:@"%@|-|%@", self.package, self.version];
    return [string hash];
}
- (id)sourceRepo {
    
    return nil;
    // [[objc_getClass("RepoManager") sharedInstance] repoWithSourceFile:self.sourceFile];
}
- (_Bool)hasIcon {
    _Bool iconExist = NO;
    if ([self icon] && [[self icon] length] != 0) {
        iconExist = YES;
    }
    return iconExist;
}
@end
