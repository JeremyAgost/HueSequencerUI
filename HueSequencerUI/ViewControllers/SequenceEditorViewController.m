//
//  SequenceEditorViewController.m
//  HueSequencerUI
//
//  Created by Jeremy Agostino on 5/25/13.
//  Copyright (c) 2013 JeremyAgost. All rights reserved.
//

#import "SequenceEditorViewController.h"

@interface SequenceEditorViewController ()

@end

@implementation SequenceEditorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.splitPosition = 480;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
