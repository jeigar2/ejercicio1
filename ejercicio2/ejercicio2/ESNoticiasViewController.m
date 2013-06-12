//
//  ESNoticiasViewController.m
//  ejercicio2
//
//  Created by User on 6/11/13.
//  Copyright (c) 2013 IGG. All rights reserved.
//

#import "ESNoticiasViewController.h"

enum {
    kRadioMaria = 0,
    kAciPrensa,
    kEvangelio
 };

@interface ESNoticiasViewController ()
// aqui se ponen las funciones ocultas solo la verá nuestro controlador
- (void) mostrarWeb:(NSInteger) ruta;
@end

@implementation ESNoticiasViewController
@synthesize noticiasSegmentedControl = _noticiasSegmentedControl;
@synthesize noticiasWebView = _noticiasWebView;

// mostrará la web correspondiente
- (void)viewWillAppear:(BOOL)animated
{
    [self mostrarWeb: kRadioMaria];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 - (void)mostrarWeb:(NSInteger)ruta
{
    NSString *url=@"";
    
    switch (ruta) {
        case kRadioMaria:
            url = @"http://www.radiomaria.es";
            break;
        case kAciPrensa:
            url = @"http://www.aciprensa.com";
            break;
        case kEvangelio:
            url = @"http://evangeliodeldia.org";
            break;
        default:
            break;
    }
    NSURL *urlNSURL = [[NSURL alloc] initWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlNSURL];
    
    [_noticiasWebView loadRequest:request];
}

@end
