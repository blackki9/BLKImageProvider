//
//  BLKImageProvider.h
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright (c) 2015 black9. All rights reserved.
//

#ifndef BLKImageProvider_BLKImageProvider_h
#define BLKImageProvider_BLKImageProvider_h
#import "BLKHandlers.h"

//Facade for image import/export

@protocol BLKImageProvider <NSObject>

- (void)importImageFromPhotoLibraryWithCompletitionHandler:(BLKImageProviderImportHandler)completitionHandler;
- (void)exportToPhotoLibraryWithImage:(UIImage*)image fileName:(NSString*)fileName completitionHandler:(BLKImageProviderExportHandler)completitionHandler;

- (void)importImagefromCameraWithCompletitionHandler:(BLKImageProviderImportHandler)completitionHandler;

- (void)importImageFromDocumentsWithCompletitionHandler:(BLKImageProviderImportHandler)completitionHandler;
- (void)exportImageToDocuments:(UIImage*)image fileName:(NSString*)fileName completitionHandler:(BLKImageProviderExportHandler)completitionHandler;

@end


#endif
