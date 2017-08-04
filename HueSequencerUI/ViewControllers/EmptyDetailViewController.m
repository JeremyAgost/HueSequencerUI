//
//  EmptyDetailViewController.m
//  HueSequencerUI
//
//  Created by Jeremy Agostino on 5/25/13.
//  Copyright (c) 2013 JeremyAgost. All rights reserved.
//

#import "EmptyDetailViewController.h"

@interface EmptyDetailViewController ()

- (void)configureView;

@end

@implementation EmptyDetailViewController

@synthesize popoverController=__popoverController;

- (void)configureView
{
    self.togglePopoverItem.title = self.splitViewController.isShowingMaster ? @"Hide" : @"Show";
}

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)splitViewController:(MGSplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    if (barButtonItem) {
        barButtonItem.title = @"Popover";
        NSMutableArray * items = self.toolbar.items.mutableCopy;
        [items insertObject:barButtonItem atIndex:0];
        self.toolbar.items = items;
    }
    self.popoverController = pc;
}

- (void)splitViewController:(MGSplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    if (barButtonItem) {
        NSMutableArray * items = self.toolbar.items.mutableCopy;
        [items removeObject:barButtonItem];
        self.toolbar.items = items;
    }
    self.popoverController = nil;
}

- (void)actionTogglePopover:(id)sender
{
    [self.splitViewController toggleMasterView:sender];
    [self configureView];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [self configureView];
}

@end
