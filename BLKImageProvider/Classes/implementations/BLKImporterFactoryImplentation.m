//
//  BLKImporterFactoryImplentation.m
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright © 2015 black9. All rights reserved.
//

#import "BLKImporterFactoryImplentation.h"
#import "BLKPhotoLibraryImporter.h"

@implementation BLKImporterFactoryImplentation

+ (id<BLKImageImporter>)photoLibraryImporter
{
    return [BLKPhotoLibraryImporter new];
}

+ (id<BLKImageImporter>)cameraImporter
{
    [NSException raise:@"Not implemented yet" format:@""];
    
    return nil;
}

+ (id<BLKImageImporter>)documentsFolderImporter
{
    [NSException raise:@"Not implemented yet" format:@""];
    return nil;
}


@end
