//
//  Package.h
//  SileoSource
//
//  Created by iMokhles on 08/03/2019.
//  Copyright © 2019 iMokhles. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Package : NSObject

@property(retain, nonatomic) NSURL *packageFileURL; // @synthesize packageFileURL=_packageFileURL;
@property(retain, nonatomic) NSString *size; // @synthesize size=_size;
@property(retain, nonatomic) NSString *filename; // @synthesize filename=_filename;
@property(nonatomic) int status; // @synthesize status=_status;
@property(nonatomic) int eFlag; // @synthesize eFlag=_eFlag;
@property(nonatomic) int wantInfo; // @synthesize wantInfo=_wantInfo;
@property(nonatomic) _Bool fromStatusFile; // @synthesize fromStatusFile=_fromStatusFile;
@property(retain, nonatomic) NSMutableArray *allVersions; // @synthesize allVersions=_allVersions;
@property(retain, nonatomic) NSArray *tags; // @synthesize tags=_tags;
@property(nonatomic) _Bool commercial; // @synthesize commercial=_commercial;
@property(nonatomic) _Bool essential; // @synthesize essential=_essential;
@property(retain, nonatomic) NSDictionary *rawControl; // @synthesize rawControl=_rawControl;
@property(nonatomic) NSString *sourceFile; // @synthesize sourceFile=_sourceFile;
@property(retain, nonatomic) NSString *icon; // @synthesize icon=_icon;
@property(retain, nonatomic) NSString *depiction; // @synthesize depiction=_depiction;
@property(retain, nonatomic) NSString *legacyDepiction; // @synthesize legacyDepiction=_legacyDepiction;
@property(retain, nonatomic) NSString *packageDescription; // @synthesize packageDescription=_packageDescription;
@property(retain, nonatomic) NSString *replaces; // @synthesize replaces=_replaces;
@property(retain, nonatomic) NSString *provides; // @synthesize provides=_provides;
@property(retain, nonatomic) NSString *depends; // @synthesize depends=_depends;
@property(retain, nonatomic) NSString *conflicts; // @synthesize conflicts=_conflicts;
@property(retain, nonatomic) NSString *section; // @synthesize section=_section;
@property(retain, nonatomic) NSString *maintainer; // @synthesize maintainer=_maintainer;
@property(retain, nonatomic) NSString *author; // @synthesize author=_author;
@property(retain, nonatomic) NSString *architecture; // @synthesize architecture=_architecture;
@property(retain, nonatomic) NSString *version; // @synthesize version=_version;
@property(retain, nonatomic) NSString *name; // @synthesize name=_name;
@property(retain, nonatomic) NSString *package; // @synthesize package=_package;
- (_Bool)isEqual:(Package *)arg1;
- (unsigned long long)hash;
- (id)sourceRepo;
- (_Bool)hasIcon;

@end

NS_ASSUME_NONNULL_END
