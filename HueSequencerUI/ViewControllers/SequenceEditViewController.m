//
//  SequenceEditViewController.m
//  HueSequencerUI
//
//  Created by Jeremy Agostino on 5/25/13.
//  Copyright (c) 2013 JeremyAgost. All rights reserved.
//

#import "SequenceEditViewController.h"

@interface SequenceEditViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView * tableView;

@property (nonatomic, strong) UIView * headerSectionTitleView;
@property (nonatomic, strong) UITableViewCell * headerSectionNameFieldCell;
@property (nonatomic, strong) UITextField * headerSectionNameField;

@end

@implementation SequenceEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    self.view = [UIView new];
    self.view.frame = CGRectMake(0, 0, 480, 500);
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    [self.tableView sizeToFit];
    
    self.headerSectionTitleView = [UIView new];
    self.headerSectionTitleView.frame = CGRectZero;
    
    self.headerSectionNameField = [UITextField new];
    self.headerSectionNameField.font = [UIFont boldSystemFontOfSize:17];
    self.headerSectionNameField.text = @"";
    self.headerSectionNameField.placeholder = NSLocalizedString(@"Sequence Name", nil);
    [self.headerSectionNameField sizeToFit];
    
    self.headerSectionNameFieldCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    [self.headerSectionNameFieldCell.contentView addSubview:self.headerSectionNameField];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 1;
            
        case 1:
            
        default:
            return 0;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return self.headerSectionTitleView;
            
        default:
            return nil;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            return self.headerSectionNameFieldCell;
            
        default:
            return nil;
    }
}

@end
