#import <Foundation/Foundation.h>

@import CoreBluetooth;

@interface CentralManagerDelegate : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate>

@end
