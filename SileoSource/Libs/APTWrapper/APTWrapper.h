//
//  APTWrapper.h
//  SileoSource
//
//  Created by iMokhles on 08/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface APTWrapper : NSObject

+ (void)performOperationsForInstalls:(id)arg1 removals:(id)arg2 progressCallback:(id)arg3 outputCallback:(id)arg4 completionCallback:(id)arg5;
+ (_Bool)verifySignatureForKey:(id)arg1 data:(id)arg2 error:(id *)arg3;
+ (double)installProgressFromAPTStatus:(id)arg1 statusValid:(_Bool *)arg2 statusReadable:(id *)arg3;
+ (id)packageOperationsForInstalls:(id)arg1 removals:(id)arg2 error:(id *)arg3;


@end

NS_ASSUME_NONNULL_END
