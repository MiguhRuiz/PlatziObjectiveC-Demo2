//
//  ViewController.m
//  Whereami
//
//  Created by Miguh Ruiz on 11/8/16.
//  Copyright © 2016 Miguh Ruiz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    MKCoordinateRegion region= MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title =@"Donde estoy?";
    point.subtitle=@"Estoy aquí!!";
    
    [self.mapView addAnnotation:point ];
}

@end
