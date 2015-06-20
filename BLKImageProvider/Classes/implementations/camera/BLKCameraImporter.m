//
//  BLKCameraImporter.m
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright © 2015 black9. All rights reserved.
//

#import "BLKCameraImporter.h"
@import UIKit;

@interface BLKCameraImporter () <UIImagePickerControllerDelegate>

@property (nonatomic, strong) UIImagePickerController* imagePicker;
@property (nonatomic, copy) BLKImageProviderImportHandler finishHandler;

@end

@implementation BLKCameraImporter

- (void)importImageWithCompletitionHandler:(BLKImageProviderImportHandler)completitionHandler inController:(UIViewController*)presentController
{
    [self initPickerIfNeeded];
    self.finishHandler = completitionHandler;
    
    [presentController presentViewController:_imagePicker animated:YES completion:nil];
}
- (void)initPickerIfNeeded
{
    if(!_imagePicker) {
        self.imagePicker = [[UIImagePickerController alloc] init];
        self.imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        self.imagePicker.delegate = self;
    }
}
#pragma mark - UIImagePickerController

- (void)imagePickerController:(nonnull UIImagePickerController *)picker didFinishPickingMediaWithInfo:(nonnull NSDictionary<NSString *,id> *)info
{
    UIImage* originalImage = info[UIImagePickerControllerOriginalImage];
    _finishHandler(originalImage);
    [self p_hidePicker];
}
- (void)p_hidePicker
{
    [_imagePicker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(nonnull UIImagePickerController *)picker
{
    _finishHandler(nil);
    [self p_hidePicker];
}



@end
