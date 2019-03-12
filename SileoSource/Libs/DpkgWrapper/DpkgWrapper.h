//
//  DpkgWrapper.h
//  SileoSource
//
//  Created by iMokhles on 08/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DpkgWrapper : NSObject

+ (id)installPackageAtURL:(id)arg1;
+ (id)rawFieldsForPackageAtURL:(NSURL *)arg1;
+ (void)ignoreUpdates:(_Bool)arg1 forPackage:(id)arg2;
+ (_Bool)getValuesForStatusField:(id)arg1 wantInfo:(int *)arg2 eFlag:(int *)arg3 status:(int *)arg4;
+ (_Bool)isVersion:(id)arg1 greaterThan:(id)arg2;
+ (id)getArchitectures;

@end

NS_ASSUME_NONNULL_END
