//
//  BLKHandlers.h
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright (c) 2015 black9. All rights reserved.
//

#ifndef BLKImageProvider_BLKHandlers_h
#define BLKImageProvider_BLKHandlers_h
@class UIImage;

typedef void (^BLKImageProviderImportHandler) (UIImage* image);
typedef void (^BLKImageProviderExportHandler) (BOOL success);

#endif
