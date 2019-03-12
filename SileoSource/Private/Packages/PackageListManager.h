//
//  PackageListManager.h
//  SileoSource
//
//  Created by iMokhles on 08/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PackageListManager : NSObject

+ (instancetype)sharedInstance;
- (void)markUpgradeAll:(id)arg1;
- (id)packagesForIdentifiers:(id)arg1;
- (id)packageFromURL:(id)arg1;
- (id)installedPackageWithIdentifier:(id)arg1;
- (id)newestPackageWithIdentifier:(id)arg1;
- (id)filteredPackagesForDisplay:(id)arg1;
- (id)packagesListForLoadIdentifier:(id)arg1 repoContext:(id)arg2 parseError:(id *)arg3 useCache:(_Bool)arg4 overridePackagesFile:(id)arg5;
- (id)packagesListForLoadIdentifier:(id)arg1 repoContext:(id)arg2;
- (id)dpkgDir;
- (id)packageFromDictionary:(id)arg1;
- (id)humanReadableCategory:(id)arg1;
- (void)loadAllPackages;
- (id)availableUpdates;
- (void)purgeCache;
- (void)waitForReady;
- (id)init;

@end

NS_ASSUME_NONNULL_END
