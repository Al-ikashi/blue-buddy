#import "ViewController.h"

@implementation ViewController
{
    BlueBuddyManager* manager;
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    manager = [[BlueBuddyManager alloc] init];
    [manager start];    
}

- (void) setRepresentedObject:(id) representedObject
{
    [super setRepresentedObject:representedObject];
}

@end
