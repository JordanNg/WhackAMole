//
//  AAJnViewController.m
//  WhackAMole
//
//  Created by Jordan Ng on 3/13/14.
//  Copyright (c) 2014 Agency Agency. All rights reserved.
//

#import "AAJnViewController.h"
#import "AAMole.h"

@interface AAViewController ()
@property (strong, nonatomic) NSMutableArray *moles;
@end

@implementation AAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.moles = [NSMutableArray array];
}

- (void)createMoleAtLocation:(CGPoint)location
{
    AAMole *mole = [[AAMole alloc] initWithFrame:CGRectMake(0.0, 0.0, 50.0, 50.0)];
    mole.center = location;
    mole.backgroundColor = [UIColor redColor];
    [self.view addSubview:mole];
    [self.moles addObject:mole];
}

- (IBAction)handleFieldTapped:(UITapGestureRecognizer *)sender
{
    CGPoint location = [sender locationInView:self.view];
    [self createMoleAtLocation:location];
}


@end