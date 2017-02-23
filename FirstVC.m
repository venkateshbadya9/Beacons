//
//  FirstVC.m
//  BeaconReceiver
//
//  Created by ranvijay on 2/16/17.
//  Copyright © 2017 Venkatesh. All rights reserved.


#import "FirstVC.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Initializing CLLocationManager
    _locationManager = [[CLLocationManager alloc]init];
    _locationManager.delegate = self;
    [_locationManager requestWhenInUseAuthorization];
    
    // Seeting up CLBeaconRegion with same identifier and UUID as broadcasting beacon
     _beaconRegion = [[CLBeaconRegion alloc]initWithProximityUUID:[[NSUUID alloc] initWithUUIDString:@"A77A1B68-49A7-4DBF-914C-760D07FBB87B"] major:1 minor:1 identifier:@"com.beacon.beacondemo"];
    [_locationManager startRangingBeaconsInRegion:_beaconRegion];
    [_locationManager startMonitoringForRegion:_beaconRegion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CLLocationManager Delegates

- (void)locationManager:(CLLocationManager*)manager didEnterRegion:(CLRegion*)region
{
    self.statusLabel.text = @"Finding beacons.";
    [self.locationManager startRangingBeaconsInRegion:_beaconRegion];
}

-(void)locationManager:(CLLocationManager*)manager didExitRegion:(CLRegion*)region
{
    _statusLabel.text = @"None found.";
    [self.locationManager stopRangingBeaconsInRegion:_beaconRegion];
}

-(void)locationManager:(CLLocationManager*)manager didRangeBeacons:(NSArray*)beacons inRegion:(CLBeaconRegion*)region
{
    if(beacons.count > 0)
        _statusLabel.text = @"Beacon found!";
    else
        _statusLabel.text = @"No Beacon found!";
}

@end
