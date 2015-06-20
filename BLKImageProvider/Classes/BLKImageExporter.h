//
//  BLKImageExport.h
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright (c) 2015 black9. All rights reserved.
//

#ifndef BLKImageProvider_BLKImageExport_h
#define BLKImageProvider_BLKImageExport_h
#import "BLKHandlers.h"

@protocol BLKImageExporter <NSObject>

- (void)exportImage:(UIImage*)image withName:(NSString*)name completitionHandler:(BLKImageProviderExportHandler)completitionHandler;

@end

#endif
