#import <React/RCTBridgeModule.h>

#import <MobileRTC/MobileRTC.h>
#import <MobileRTC/MobileRTCAuthService.h>

@interface RNMobileRTC : NSObject <RCTBridgeModule, MobileRTCAuthDelegate, MobileRTCMeetingServiceDelegate>

@end
