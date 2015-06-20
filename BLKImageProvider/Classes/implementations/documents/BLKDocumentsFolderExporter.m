//
//  BLKDocumentsFolderExporter.m
//  BLKImageProvider
//
//  Created by black9 on 20/06/15.
//  Copyright © 2015 black9. All rights reserved.
//

#import "BLKDocumentsFolderExporter.h"
@import UIKit;

@implementation BLKDocumentsFolderExporter

- (void)exportImage:(UIImage*)image withName:(NSString*)name completitionHandler:(BLKImageProviderExportHandler)completitionHandler
{
    NSData* imageData = UIImagePNGRepresentation(image);
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [imageData writeToFile:[self filePathInDocumentsDirectoryWithFileName:name] atomically:YES];
    });
}
- (NSString*)filePathInDocumentsDirectoryWithFileName:(NSString*)fileName
{
    return [[self documentsFolderPath] stringByAppendingPathComponent:fileName];
}
- (NSString*)documentsFolderPath
{
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}
@end
