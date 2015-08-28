#import "BlueBuddyManager.h"

@implementation BlueBuddyManager
{
    CBCentralManager* bluetoothCentralManager;
    CBPeripheralManager* bluetoothPeripheralManager;
    
    CentralManagerDelegate* centralDelegate;
    PeripheralManagerDelegate* peripheralDelegate;
}

+ (CBUUID*) serviceId
{
    return [CBUUID UUIDWithString:@"FA277294-AAE0-4FA7-847D-EA961BB1FC43"];
}

- (void) start
{
    
    centralDelegate = [[CentralManagerDelegate alloc] init];
    peripheralDelegate = [[PeripheralManagerDelegate alloc] init];
    
    bluetoothCentralManager = [[CBCentralManager alloc] initWithDelegate:centralDelegate queue:nil];
    bluetoothPeripheralManager = [[CBPeripheralManager alloc] initWithDelegate:peripheralDelegate queue:nil];
    
    NSLog(@"Scanning for devices");
    [bluetoothCentralManager scanForPeripheralsWithServices:nil options:nil];

}

@end
