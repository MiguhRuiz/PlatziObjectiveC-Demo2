//
//  ViewController.h
//  Whereami
//
//  Created by Miguh Ruiz on 11/8/16.
//  Copyright © 2016 Miguh Ruiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

