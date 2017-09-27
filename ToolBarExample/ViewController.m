//
//  ViewController.m
//  ToolBarExample
//
//  Created by DDC.Mac2 on 9/22/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import "ViewController.h"
#import "KYTCustomAlerts.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createObject:(UIBarButtonItem *)sender {
    [KYTCustomAlerts alertUserWithCreateMessage:self.view];
}

- (IBAction)readObject:(UIBarButtonItem *)sender {
    [KYTCustomAlerts alertUserWithReadMessage:self.view];
}

- (IBAction)updateObject:(UIBarButtonItem *)sender {
    [KYTCustomAlerts alertUserWithUpdateMessage:self.view];
}

- (IBAction)deleteObject:(UIBarButtonItem *)sender {
    [KYTCustomAlerts alertUserWithDeleteMessage:self.view];
    
}

@end
