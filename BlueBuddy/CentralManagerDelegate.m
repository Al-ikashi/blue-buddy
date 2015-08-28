#import "CentralManagerDelegate.h"

@implementation CentralManagerDelegate {
}

#pragma mark Central Manager delegate

- (void) centralManagerDidUpdateState:(CBCentralManager*) centralManager
{
    NSLog(@"Central Manager state updated");
}

- (void) centralManager:(CBCentralManager*) centralManager
  didDiscoverPeripheral:(CBPeripheral*) peripheral
      advertisementData:(NSDictionary*) advertisementData
                   RSSI:(NSNumber*) RSSI
{
    
    NSLog(@"%@ (%@) %@", peripheral.name, peripheral.identifier.UUIDString, RSSI.stringValue);
    
    if ([peripheral.name isEqualToString:@"Guy's Apple Watch"])
    {
        
        [centralManager stopScan];
        NSLog(@"Scanning stopped");
        
        [centralManager connectPeripheral:peripheral options:nil];
    }
    
}

- (void) centralManager:(CBCentralManager*) centralManager
   didConnectPeripheral:(CBPeripheral*) peripheral
{
    
    NSLog(@"Connected to %@", peripheral.name);
    peripheral.delegate = self;
    
    [peripheral discoverServices:nil];
}

#pragma mark Peripheral delegate

- (void) peripheral:(CBPeripheral*) peripheral
didDiscoverServices:(NSError*) error
{
    
    for (CBService* service in peripheral.services)
    {
        NSLog(@"Discovered service %@", service);
    }
    
}

@end
