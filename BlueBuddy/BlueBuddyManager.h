#import <Foundation/Foundation.h>

@import CoreBluetooth;

#import "CentralManagerDelegate.h"
#import "PeripheralManagerDelegate.h"

@interface BlueBuddyManager : NSObject

+ (CBUUID*) serviceId;
- (void) start;

@end
