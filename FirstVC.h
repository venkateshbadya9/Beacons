//
//  FirstVC.h
//  BeaconReceiver
//
//  Created by ranvijay on 2/16/17.
//  Copyright © 2017 Venkatesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FirstVC : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UILabel * statusLabel;
@property (strong, nonatomic) CLBeaconRegion * beaconRegion;
@property (strong, nonatomic) CLLocationManager * locationManager;

@end
