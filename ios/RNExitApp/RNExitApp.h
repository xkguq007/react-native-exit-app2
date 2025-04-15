#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#elif __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import "React/RCTBridgeModule.h"
#endif

#import <RNExitAppSpec/RNExitAppSpec.h>

@interface RNExitApp : NSObject <RCTBridgeModule, NativeRNExitAppSpec>
@end
