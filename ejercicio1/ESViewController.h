//
//  ESViewController.h
//  ejercicio1
//
//  Created by Nacho on 11/06/13.
//  Copyright (c) 2013 Nacho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *fechaLabel;
- (IBAction)actualizarFecha:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *saludoLabel;
- (void) saludo:(NSString *) texto;
- (void) saludo:(NSString *) texto deParteDe:(NSString *) nombre;

- (void) saludo:(NSString *) texto deParteDe:(NSString *) nombre esPorLaTarde:(Boolean *) esTarde;
@end
