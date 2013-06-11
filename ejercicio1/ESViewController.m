//
//  ESViewController.m
//  ejercicio1
//
//  Created by Nacho on 11/06/13.
//  Copyright (c) 2013 Nacho. All rights reserved.
//

#import "ESViewController.h"

@interface ESViewController ()

@end

@implementation ESViewController
@synthesize fechaLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actualizarFecha:(id)sender {
    NSDateFormatter *fecha = [[NSDateFormatter alloc] init];
    [fecha setDateFormat:@"dd/MM/yyyy hh:mm:ss"];
    
    self.fechaLabel.text = [fecha stringFromDate:[NSDate date]];
}
@end
