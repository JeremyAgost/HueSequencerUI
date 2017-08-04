//
//  EmptyDetailViewController.h
//  HueSequencerUI
//
//  Created by Jeremy Agostino on 5/25/13.
//  Copyright (c) 2013 JeremyAgost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGSplitViewController.h"

@interface EmptyDetailViewController : UIViewController <MGSplitViewControllerDelegate, UIPopoverControllerDelegate>

@property (nonatomic, strong) MGSplitViewController * splitViewController;
@property (nonatomic, strong) UIPopoverController * popoverController;
@property (nonatomic, strong) UIToolbar * toolbar;
@property (nonatomic, strong) UIBarButtonItem * togglePopoverItem;

- (IBAction)actionTogglePopover:(id)sender;

@end
