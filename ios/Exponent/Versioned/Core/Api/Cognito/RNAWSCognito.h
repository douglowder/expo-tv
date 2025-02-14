#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

#if __has_include("RCTLog.h")
#import "RCTLog.h"
#else
#import <React/RCTLog.h>
#endif

#if __has_include("RCTUtils.h")
#import "RCTUtils.h"
#else
#import <React/RCTUtils.h>
#endif
// Must use brackets instead of quotes for importing JKBigInteger otherwise this is broken by versioning
#import <JKBigInteger.h>

@interface RNAWSCognito : NSObject <RCTBridgeModule>
-(NSString*)getRandomBase64:(NSUInteger)byteLength;
@end
