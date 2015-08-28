#import "PeripheralManagerDelegate.h"

@implementation PeripheralManagerDelegate
{
}

#pragma mark Peripheral Manager delegate

- (void) peripheralManagerDidUpdateState:(CBPeripheralManager*) peripheral
{
    NSLog(@"Peripheral Manager state updated");
}

#pragma mark Peripheral delegate

@end
