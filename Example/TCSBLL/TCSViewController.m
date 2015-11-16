//
//  TCSViewController.m
//  TCSBLL
//
//  Created by spbreak on 11/16/2015.
//  Copyright (c) 2015 spbreak. All rights reserved.
//

#import "TCSViewController.h"
#import "TCSDAL.h"
#import "TCSBLL.h"

@interface TCSViewController ()

@end

@implementation TCSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *ARR=[TCSDAL getManyOfTable:@"name" withWhere:nil withArrField:@[@"name"]];
    NSDictionary *dict=[TCSBLL getSurnameOfSourceForSurname:@"党"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
