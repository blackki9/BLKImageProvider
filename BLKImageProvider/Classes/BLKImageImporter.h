//
//  BLKImageImporter.h
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright (c) 2015 black9. All rights reserved.
//

#ifndef BLKImageProvider_BLKImageImporter_h
#define BLKImageProvider_BLKImageImporter_h
#import "BLKHandlers.h"
@import Foundation;
@import UIKit;

@protocol BLKImageImporter <NSObject>

- (void)importImageWithCompletitionHandler:(BLKImageProviderImportHandler)completitionHandler inController:(UIViewController*)presentController;
- (void)importImageWitController:(UIViewController*)controller popoverOrigin:(CGRect)popoverOrigin withCompletitionHandler:(BLKImageProviderImportHandler)completitionHandler;

@end

#endif
