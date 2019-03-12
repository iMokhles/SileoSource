//
//  DpkgWrapper.m
//  SileoSource
//
//  Created by iMokhles on 08/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import "DpkgWrapper.h"
#import "dpkg-db.h"
#import "version.h"

#import "APTWrapper.h"
#import <objc/runtime.h>
#import <objc/message.h>
#include <string.h>


@implementation DpkgWrapper

+ (id)getArchitectures {
    return @[@"iphoneos-arm"];
}

+ (id)installPackageAtURL:(id)arg1 {
    return @"(Reading database ... 9891 files and directories currently installed.)\nPreparing to unpack bash_4.4.18_iphoneos-arm.deb ...\nUnpacking bash (4.4.18) ...\nSetting up bash (4.4.18) ...\n";
}
+ (id)rawFieldsForPackageAtURL:(NSURL *)arg1 {
    if ([arg1 isFileURL]) {
        return @"Package: bashVersion: 4.4.18\nArchitecture: iphoneos-arm\nMaintainer: CoolStar <coolstarorganization@gmail.com>\nDepends: grep, ncurses (>=6.1), sed, cy+cpu.arm64\nSection: Terminal_Support\nPriority: required\nHomepage: http://www.gnu.org/software/bash/\nDescrip…";
    }
    return [NSException exceptionWithName:@"DPKG Error" reason:@"URL provided not a file URL!" userInfo:0x0];
}
+ (void)ignoreUpdates:(_Bool)arg1 forPackage:(id)arg2 {

}
//bool __cdecl +[DpkgWrapper getValuesForStatusField:wantInfo:eFlag:status:](#313 *self, SEL a2, id a3, int *a4, int *a5, int *a6)
//{
//    int *v6; // x19
//    int *v7; // x21
//    int *v8; // x22
//    void *v9; // x0
//    void *v10; // x20
//    bool v11; // w19
//    __int64 v12; // x27
//    void *v13; // x0
//    __int64 v14; // x0
//    void *v15; // x0
//    void *v16; // x26
//    const char *v17; // x0
//    int v18; // w25
//    __int64 v19; // x26
//    void *v20; // x0
//    __int64 v21; // x0
//    void *v22; // x0
//    void *v23; // x25
//    const char *v24; // x0
//    int v25; // w24
//    __int64 v26; // x25
//    void *v27; // x0
//    __int64 v28; // x0
//    void *v29; // x0
//    void *v30; // x24
//    const char *v31; // x0
//    int v32; // w23
//
//    v6 = a6;
//    v7 = a5;
//    v8 = a4;
//    v9 = objc_msgSend(a3, "componentsSeparatedByString:", CFSTR(" "));
//    v10 = (void *)objc_retainAutoreleasedReturnValue(v9);
//    if ( (unsigned __int64)objc_msgSend(v10, "count") >= 3 )
//    {
//        if ( v8 )
//            *v8 = 0;
//        v12 = 0LL;
//        do
//        {
//            v13 = objc_msgSend(v10, "objectAtIndexedSubscript:", 0LL);
//            v14 = objc_retainAutoreleasedReturnValue(v13);
//            v15 = (void *)objc_retainAutorelease(v14);
//            v16 = v15;
//            v17 = (const char *)objc_msgSend(v15, "UTF8String");
//            v18 = strcmp(&wantinfos[v12], v17);
//            objc_release(v16);
//            if ( v8 && !v18 )
//                *v8 = *(_DWORD *)&wantinfos[v12 + 32];
//            v12 += 36LL;
//        }
//        while ( v12 != 180 );
//        v19 = 0LL;
//        do
//        {
//            v20 = objc_msgSend(v10, "objectAtIndexedSubscript:", 1LL);
//            v21 = objc_retainAutoreleasedReturnValue(v20);
//            v22 = (void *)objc_retainAutorelease(v21);
//            v23 = v22;
//            v24 = (const char *)objc_msgSend(v22, "UTF8String");
//            v25 = strcmp(&eflaginfos[v19], v24);
//            objc_release(v23);
//            if ( v7 && !v25 )
//                *v7 = *(_DWORD *)&eflaginfos[v19 + 32];
//            v19 += 36LL;
//        }
//        while ( v19 != 72 );
//        v26 = 0LL;
//        do
//        {
//            v27 = objc_msgSend(v10, "objectAtIndexedSubscript:", 2LL);
//            v28 = objc_retainAutoreleasedReturnValue(v27);
//            v29 = (void *)objc_retainAutorelease(v28);
//            v30 = v29;
//            v31 = (const char *)objc_msgSend(v29, "UTF8String");
//            v32 = strcmp(&statusinfos[v26], v31);
//            objc_release(v30);
//            if ( v6 && !v32 )
//                *v6 = *(_DWORD *)&statusinfos[v26 + 32];
//            v26 += 36LL;
//        }
//        while ( v26 != 288 );
//        v11 = 1;
//    }
//    else
//    {
//        v11 = 0;
//    }
//    objc_release(v10);
//    return v11;
//}

// Reverse it again to make it identical 100% ;)
+ (_Bool)getValuesForStatusField:(NSString *)arg1 wantInfo:(int *)arg2 eFlag:(int *)arg3 status:(int *)arg4 {
    
    _Bool funValue = false;
    
    NSInteger integer1 = 0;
    NSInteger integer2 = 0;
    NSInteger integer3 = 0;
    
    NSArray *array1 = [arg1 componentsSeparatedByString:@" "];
    if ([array1 count] >= 3) {
        
        do {
            NSString *string1 = array1[0];
            const char *ch1 = [string1 UTF8String];
            int cmpValue1 = strcmp(&wantinfos[integer1], ch1);
            if (arg4 && !cmpValue1) {
                arg4 = &wantinfos[integer1] + 32;
            }
            integer1 += 36;
        } while (integer1 != 180);
        
        do {
            NSString *string2 = array1[1];
            const char *ch2 = [string2 UTF8String];
            int cmpValue2 = strcmp(&eflaginfos[integer2], ch2);
            if (arg3 && !cmpValue2) {
                arg3 = &eflaginfos[integer2] + 32;
            }
            integer2 += 36;
        } while (integer2 != 72);
        
        do {
            NSString *string3 = array1[2];
            const char *ch3 = [string3 UTF8String];
            int cmpValue3 = strcmp(&statusinfos[integer3], ch3);
            if (arg2 && !cmpValue3) {
                arg2 = &statusinfos[integer3] + 32;
            }
            integer3 += 36;
        } while (integer3 != 288);
        
        funValue = true;
    } else {
        funValue = false;
    }
    return funValue;
}
+ (_Bool)isVersion:(NSString *)arg1 greaterThan:(NSString *)arg2 {
    
    struct dpkg_version a, b;
    parseversion(&a, [arg1 UTF8String], nil);
    parseversion(&a, [arg2 UTF8String], nil);
    return dpkg_version_compare(&a, &b) > 0;
}

@end
