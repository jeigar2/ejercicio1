//
//  ESNoticiasViewController.h
//  ejercicio2
//
//  Created by User on 6/11/13.
//  Copyright (c) 2013 IGG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESNoticiasViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISegmentedControl *noticiasSegmentedControl;
@property (strong, nonatomic) IBOutlet UIWebView *noticiasWebView;

@end
