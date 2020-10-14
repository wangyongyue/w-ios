//
//  buttom_image.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_image.h"

@interface button_image ()

@property(nonatomic,strong)UILabel *labelLeft;
@property(nonatomic,strong)UIImageView *imageLeft;
@property(nonatomic,strong)UIButton *deleButton;

@end
@implementation button_image
- (void)setTitle:(NSString *)title{
    
    _title = title;
    self.labelLeft.text = title;
}
- (void)setFile:(File *)file{
    _file = file;
    
    if (file == nil) {
        [self.deleButton setHidden:YES];

        if (self.isEditor == YES) {
            self.imageLeft.image = [UIImage imageNamed:@"add_image"];
        }else{
            self.imageLeft.image = nil;
            self.imageLeft.image = [UIImage imageNamed:@"img_def"];

        }
        
        return;
    }
    
    if (self.isEditor == YES) {
        [self.deleButton setHidden:NO];
        NSString *url = [NSString stringWithFormat:@"%@%@",ImgeUrl,file.thumbnailUrl];
        url = [url stringByReplacingOccurrencesOfString:@"\\"withString:@"/"];
        url = [url stringByReplacingOccurrencesOfString:@"/"withString:@"/"];
        [self.imageLeft sd_setImageWithURL:[NSURL URLWithString:url]];
        self.imageLeft.contentMode = UIViewContentModeScaleToFill;
    }else{
        [self.deleButton setHidden:YES];
        self.imageLeft.image = [UIImage imageNamed:@"img_def"];
        NSString *url = [NSString stringWithFormat:@"%@%@",ImgeUrl,file.thumbnailUrl];
        url = [url stringByReplacingOccurrencesOfString:@"\\"withString:@"/"];
        url = [url stringByReplacingOccurrencesOfString:@"/"withString:@"/"];
        [self.imageLeft sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:[UIImage imageNamed:@"img_def"]];
        self.imageLeft.contentMode = UIViewContentModeScaleToFill;
    }
    
}
- (void)click:(ClickBlock)block deleBlock:(ClickBlock)deleBlock{
    
    self.block = block;
    self.deleBlock = block;
               
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
                
        self.backgroundColor = white_color;
        
        self.imageLeft = [[UIImageView alloc]init];
        [self addSubview:self.imageLeft];
        
        self.imageLeft.backgroundColor = image_color;
        self.imageLeft.image = [UIImage imageNamed:@"add_image"];
        self.imageLeft.contentMode = UIViewContentModeCenter;
        [self.imageLeft setUserInteractionEnabled:YES];
        
        self.labelLeft = [[label_default alloc]init];
        [self addSubview:self.labelLeft];
        self.labelLeft.textAlignment = NSTextAlignmentCenter;
        
        self.deleButton = [[UIButton alloc]init];
        [self addSubview:self.deleButton];
        [self.deleButton setImage:[UIImage imageNamed:@"delete_image"] forState:UIControlStateNormal];
        
        
        [self.deleButton addTarget:self action:@selector(deleClick) forControlEvents:UIControlEventTouchUpInside];
        [self addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(buttonClick)];
        [self.imageLeft addGestureRecognizer:tap];

         [self.imageLeft mas_makeConstraints:^(MASConstraintMaker *make) {
             
             make.top.offset(0);
             make.left.offset(0);
             make.width.offset(80);
             make.height.offset(80);

         }];
         
    
         [self.labelLeft mas_makeConstraints:^(MASConstraintMaker *make) {
             
             make.top.equalTo(self.imageLeft.mas_bottom).offset(12);
             make.left.offset(0);
             make.right.offset(0);

         }];
         
       
        [self.deleButton mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.right.offset(0);
            make.top.offset(0);

        }];
        
       
        
    }
    return self;
}
- (void)deleClick{
    
    self.imageLeft.image = [UIImage imageNamed:@"add_image"];
    self.imageLeft.contentMode = UIViewContentModeCenter;
    self.file = nil;
    self.deleBlock();
    
}
- (void)buttonClick{
    
    if (self.isEditor == NO) {
        self.block();

        if (self.file) {
            photo_viewer *server = [[photo_viewer alloc]init];
            server.files = @[self.file];
            [photo_viewer_controller push:server];
        }
        
        return;
    }
    if (self.file) {
        photo_viewer *server = [[photo_viewer alloc]init];
        server.files = @[self.file];
        [photo_viewer_controller push:server];
        return;
    }
    
    [Alert photos:^(NSInteger index) {
        
        if (index == 0) {
            
            Camera *a = [[Camera alloc]init];
            
            [[Router navigationController] presentViewController:a animated:NO completion:nil];
            [a uploadFinish:^(File *file) {
                self.file = file;
                self.file.fileUrl = self.file.projectFileUrl;
                self.block();
            }];
            
        }else{
            
            photo_controller *photo = [[photo_controller alloc]init];
            [[Router navigationController] pushViewController:photo animated:YES];
            [photo uploadFinish:^(File *file) {
                self.file = file;
                self.file.fileUrl = self.file.projectFileUrl;
                self.block();

            }];
        }
        
    }];
    
    
    
}

@end
