//
//  BLKDocumentsFolderBrowseViewController.m
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright © 2015 black9. All rights reserved.
//

#import "BLKDocumentsFolderBrowseViewController.h"

@interface BLKDocumentsFolderBrowseViewController () <UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BLKDocumentsFolderBrowseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate

- (void)tableView:(nonnull UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
}

@end
