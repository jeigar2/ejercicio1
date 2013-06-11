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
    NSDate *fechaDate = [NSDate date];
    // Horas
    NSDateComponents *compHour = [[NSCalendar currentCalendar] components: NSHourCalendarUnit fromDate:fechaDate ];
    // Minutos
    NSDateComponents *compMin = [[NSCalendar currentCalendar] components: NSMinuteCalendarUnit fromDate:fechaDate ];
    NSInteger hora = [compHour hour];
    NSInteger min = [compMin minute];
    
    Boolean esTarde = NO;
    if (hora>12) {
        esTarde=YES;
    }
    NSLog(@"hora %i: ",hora);
    NSLog(@"minutos %i: ",min);
    [self saludo:@"Hola" deParteDe:@"Ignacio" esPorLaTarde:&esTarde];
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

- (void)saludo:(NSString *)texto deParteDe:(NSString *)nombre esPorLaTarde:(Boolean *)esTarde{
    NSString *cadena = [[NSString alloc] init];
    NSString *saludoo;
    
    if(esTarde){
        saludoo = @"Buenas tardes";
    } else {
        saludoo =@"Buenos días";
    }
                        
    if(nombre == nil){
        cadena =[NSString stringWithFormat:@"%@",texto];
       
    } else {
        cadena =[NSString stringWithFormat:@"%@ %@ de parte de %@", texto,saludoo,nombre];
    }
    self.saludoLabel.text = cadena;
    NSLog(@"%@", cadena);
    
}

- (void)saludo:(NSString *)texto deParteDe:(NSString *)nombre {
    [self saludo:texto deParteDe:nombre esPorLaTarde:false];
}

- (void)saludo:(NSString *)texto {
    [self saludo:texto deParteDe:nil];
}

@end
