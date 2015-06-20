//
//  BLKPhotoLibraryExporter.m
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright © 2015 black9. All rights reserved.
//

#import "BLKPhotoLibraryExporter.h"

@interface BLKPhotoLibraryExporter ()

@property (nonatomic,copy)BLKImageProviderExportHandler finishHandler;

@end

@implementation BLKPhotoLibraryExporter

- (void)exportImage:(UIImage*)image withName:(NSString*)name completitionHandler:(BLKImageProviderExportHandler)completitionHandler
{
    self.finishHandler = completitionHandler;
    __weak BLKPhotoLibraryExporter* weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        UIImageWriteToSavedPhotosAlbum(image, weakSelf, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    });
    
}
- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if(!error) {
        self.finishHandler(YES);
    }
    else {
        self.finishHandler(NO);
    }
}

@end
