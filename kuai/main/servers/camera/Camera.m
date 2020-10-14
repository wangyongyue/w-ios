//
//  Camera.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Camera.h"
#import "FileUpdate.h"
@interface Camera ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@end

@implementation Camera
- (void)uploadFinish:(FileBlock)block{
    
    self.block = block;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.delegate = self;
        self.sourceType = UIImagePickerControllerSourceTypeCamera;
        self.allowsEditing = NO;
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
        
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    
    FileUpdate *update = [[FileUpdate alloc]init];
    update.image = image;
    __weak typeof(update) weakUpdate = update;
    [update networkRequest];
    [update successData:^{
       
        File *file = weakUpdate.file;
        self.block(file);
       [picker dismissViewControllerAnimated:YES completion:nil];

    }];
    
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
