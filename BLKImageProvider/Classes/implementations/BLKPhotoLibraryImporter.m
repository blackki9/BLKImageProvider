//
//  BLKPhotoLibraryImporter.m
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright (c) 2015 black9. All rights reserved.
//

#import "BLKPhotoLibraryImporter.h"
@import UIKit;

@interface BLKPhotoLibraryImporter () <UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@property (nonatomic,strong) UIPopoverController* popover;
@property (nonatomic, strong) UIImagePickerController* imagePicker;
@property (nonatomic, copy) BLKImageProviderImportHandler finishHandler;
@end

@implementation BLKPhotoLibraryImporter

- (instancetype)init
{
    if(self = [super init]) {
        [self p_initPicker];
        [self p_initPopover];
    }
    
    return self;
}
- (void)p_initPicker
{
    _imagePicker = [[UIImagePickerController alloc] init];
    _imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [_imagePicker setDelegate:self];
}
- (void)p_initPopover
{
    if(!_imagePicker) {
        [self p_initPicker];
    }
    _popover = [[UIPopoverController alloc] initWithContentViewController:_imagePicker];
}

#pragma mark - protocol implementation
- (void)importImageWithCompletitionHandler:(BLKImageProviderImportHandler)completitionHandler inController:(UIViewController*)presentController
{
    if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        completitionHandler(nil,NO);
        return;
    }
    
    self.finishHandler = completitionHandler;
    [presentController presentViewController:_imagePicker animated:YES completion:nil];
}

- (void)importImageWitController:(UIViewController*)controller popoverOrigin:(CGRect)popoverOrigin withCompletitionHandler:(BLKImageProviderImportHandler)completitionHandler
{
    if(![[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        completitionHandler(nil,NO);
        return;
    }
    
    self.finishHandler = completitionHandler;
    [_popover presentPopoverFromRect:popoverOrigin inView:controller.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

#pragma mark - UIImagePickerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage* image = info[UIImagePickerControllerOriginalImage];
    _finishHandler(image,YES);
    [self p_hideImagePicker];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    _finishHandler(nil,NO);
    [self p_hideImagePicker];
}

- (void)p_hideImagePicker
{
    if(_popover) {
        [_popover dismissPopoverAnimated:YES];
    }
    else {
        [_imagePicker dismissViewControllerAnimated:YES completion:nil];
    }
}


@end
