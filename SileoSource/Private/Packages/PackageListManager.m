//
//  PackageListManager.m
//  SileoSource
//
//  Created by iMokhles on 08/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import "PackageListManager.h"
#import <pthread.h>

@interface PackageListManager () {
    NSArray *_installedPackages;
    NSArray *_allPackages;
    struct _opaque_pthread_mutex_t databaseLock;
    _Bool _isLoaded;
}

@end

@implementation PackageListManager

+ (instancetype)sharedInstance {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] init];
    });
    return shared;
}
- (id)init {
    
    self = [super init];
    if (self) {
        _isLoaded = false;
        pthread_mutex_init(&databaseLock, NULL);
        [self purgeCache];
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self loadAllPackages];
            });
        });
    }
    return self;
}
- (void)waitForReady {
    pthread_mutex_lock(&databaseLock);
    pthread_mutex_unlock(&databaseLock);
    if (!_isLoaded) {
        [self loadAllPackages];
    }
}
- (void)purgeCache {
    
}
//- (id)availableUpdates {
//
//}
- (void)loadAllPackages {
    
}
//- (id)humanReadableCategory:(id)arg1 {
//
//}
//- (id)packageFromDictionary:(id)arg1 {
//
//}
- (id)dpkgDir {
    return [[NSBundle mainBundle] bundlePath];
}
//- (id)packagesListForLoadIdentifier:(id)arg1 repoContext:(id)arg2 {
//
//}
//- (id)packagesListForLoadIdentifier:(id)arg1 repoContext:(id)arg2 parseError:(id *)arg3 useCache:(_Bool)arg4 overridePackagesFile:(id)arg5 {
//
//}
//- (id)filteredPackagesForDisplay:(id)arg1 {
//
//}
//- (id)newestPackageWithIdentifier:(id)arg1 {
//
//}
//- (id)installedPackageWithIdentifier:(id)arg1 {
//
//}
//- (id)packageFromURL:(id)arg1 {
//
//}
//- (id)packagesForIdentifiers:(id)arg1 {
//
//}
- (void)markUpgradeAll:(id)arg1 {
    
}
@end
