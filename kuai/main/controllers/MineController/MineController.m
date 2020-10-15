//
//  MineController.m
//  kuai
//
//  Created by wangyongyue on 2020/7/8.
//  Copyright © 2020 sui. All rights reserved.
//

#import "MineController.h"
#import "Header.h"
#import "user_details.h"

@interface MineController ()
@property(nonatomic,strong)button_card *card_button;
@property(nonatomic,strong)UILabel *nameLabel;
@property(nonatomic,strong)UILabel *telLabel;
@property(nonatomic,strong)UILabel *companyLabel;
@property(nonatomic,strong)UIButton *button;
@property(nonatomic,strong)UIImageView *bgImageView;
@property(nonatomic,strong)Server *server;



@end
@implementation MineController
- (void)tapClick{
    
    user_details *server = [[user_details alloc]init];
    [controller_normal push:server];
}
- (void)viewDidLoad{
    [super viewDidLoad];
    
    
    self.bgImageView = [[UIImageView alloc]init];
    [self.view addSubview:self.bgImageView];
    
  
    
    self.button = [[button_editor alloc]init];
    [self.bgImageView addSubview:self.button];
    [self.bgImageView setUserInteractionEnabled:YES];
    
    self.bgImageView.image = [UIImage imageNamed:@"mint_bg"];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClick)];
    
    [self.bgImageView addGestureRecognizer:tap];
    
    
    self.card_button = [[button_card alloc]init];
    [self.bgImageView addSubview:self.card_button];
    self.card_button.imageName = @"hader_default";
    self.card_button.layer.cornerRadius = 50;
    self.card_button.layer.masksToBounds = YES;
    self.card_button.backgroundColor = clear_color;
    self.card_button.imageView.contentMode = UIViewContentModeScaleAspectFill;

//    [self.card_button mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//        make.top.offset(12);
//        make.bottom.offset(-12);
//        make.left.offset(20);
//        make.right.offset(-20);
//
//
//    }];

    
    self.nameLabel = [[label_home alloc]init];
    [self.bgImageView addSubview:self.nameLabel];
    self.telLabel = [[label_home alloc]init];
    [self.bgImageView addSubview:self.telLabel];
    self.companyLabel = [[label_home alloc]init];
    [self.bgImageView addSubview:self.companyLabel];
    self.companyLabel.numberOfLines = 1;
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        make.height.offset(200);
        
    }];
    
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(35);
        make.right.offset(-12);
       
    }];
    
    [self.card_button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(35);
        make.left.offset(12);
        make.width.offset(100);
        make.height.offset(100);
        
    }];
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(40);
        make.left.equalTo(self.card_button.mas_right).offset(5);
    }];
    [self.telLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nameLabel.mas_bottom).offset(5);
        make.left.equalTo(self.card_button.mas_right).offset(5);
    }];
    [self.companyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.telLabel.mas_bottom).offset(5);
        make.left.equalTo(self.card_button.mas_right).offset(5);
        make.right.equalTo(self.button.mas_left).offset(-5);

    }];
    
    
    [self.button addTarget:self action:@selector(editorClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.nameLabel.text = @"";
    self.telLabel.text = @"";
    self.companyLabel.text = @"";
    self.telLabel.font = text_font;
    self.companyLabel.font = text_font;
    
    



    list_view *list = [[list_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bgImageView.mas_bottom).offset(-50);
        make.left.offset(0);
        make.right.offset(0);
        make.bottom.offset(- Top - 20);

        
    }];
    self.view.backgroundColor = mine_bg_color;
    list.backgroundColor = clear_color;
    
    self.server = [[user_mine alloc]init];
    list.server = self.server;
    
    
    Server *serverUser = [[user_mine alloc]init];
    [serverUser networkRequest];
    __weak typeof(serverUser) weakVer = serverUser;
    [serverUser successData:^{
       
        self.nameLabel.text = [Single getInstance].use.trueName;
        self.telLabel.text = [Single getInstance].use.userName;
        self.companyLabel.text = [Single getInstance].use.companyName;
                
        self.card_button.file = [Single getInstance].use.headerFile;
    }];
    
    __weak typeof(self) weakSelf = self;
    [self.card_button click:^{
        updateUserPhoto *server = [[updateUserPhoto alloc]init];
        weakSelf.card_button.file.fileType = 1;
        server.files = @[weakSelf.card_button.file];
        [server networkRequest];
    }];
    
    
    
    
    
    
   
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.server networkRequest];
}
- (void)editorClick{
    
  
    change_mine *server = [[change_mine alloc]init];
    [controller_normal push:server];
}
@end
