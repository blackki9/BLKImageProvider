//
//  BLKImportersFactory.h
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright © 2015 black9. All rights reserved.
//

#ifndef BLKImportersFactory_h
#define BLKImportersFactory_h
#import "BLKImageImporter.h"

@protocol BLKImportersFactory <NSObject>

+ (id<BLKImageImporter>)photoLibraryImporter;
+ (id<BLKImageImporter>)cameraImporter;
+ (id<BLKImageImporter>)documentsFolderImporter;

@end

#endif /* BLKImportersFactory_h */
