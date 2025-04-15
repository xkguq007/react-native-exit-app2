#import <UIKit/UIKit.h>

#import "RNExitApp.h"

#import <RNExitAppSpec/RNExitAppSpec.h>

@implementation RNExitApp

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(exitApp)
{
    exit(0);
};

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeRNExitAppSpecJSI>(params);
}

@end
