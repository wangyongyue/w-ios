//
//  AlertList.m
//  kuai
//
//  Created by apple on 2020/9/2.
//  Copyright © 2020 sui. All rights reserved.
//


#import "AlertList.h"
@interface AlertList ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,copy)NSString *year;
@property(nonatomic,copy)NSString *month;
@property(nonatomic,copy)NSString *day;
@property(nonatomic,copy)NSString *hour;
@property(nonatomic,copy)NSString *minute;
@property(nonatomic,strong)choice_server *server;

@property(nonatomic,strong)list_view *list;

@end
@implementation AlertList

+ (void)show:(choice_server *)server block:(ObjectBlock)block{
    
    AlertList *view = [[AlertList alloc]init];
    view.block = block;
    view.server = server;
    [server networkRequest];

    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    view.backgroundColor= [UIColor clearColor];
    view.frame = window.bounds;
    [window addSubview:view];
    
  
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self removeFromSuperview];
}
- (NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}
- (void)setServer:(choice_server *)server{
    
    _server = server;
    self.list.server = server;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
                
        self.backgroundColor = white_color;
        UIView *view = [[view_blue alloc]init];
        [self addSubview:view];
        
        UIButton *left = [[UIButton alloc]init];
        [left setTitle:@"取消" forState:UIControlStateNormal];
        [left setTitleColor:white_color forState:UIControlStateNormal];
        [view addSubview:left];
        
        UIButton *right = [[UIButton alloc]init];
        [right setTitle:@"确定" forState:UIControlStateNormal];
        [right setTitleColor:white_color forState:UIControlStateNormal];
        [view addSubview:right];
        
        self.list = [[list_view alloc]init];
        [self addSubview:self.list];
        self.list.backgroundColor = white_color;
        
        
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.offset(0);
            make.right.offset(0);
            make.bottom.offset(-220);
            make.height.offset(40);
        }];
        
        [left mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.offset(12);
            make.top.offset(0);
            make.bottom.offset(0);
        }];
        [right mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.offset(-12);
            make.top.offset(0);
            make.bottom.offset(0);
        }];
        
        [self.list mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.offset(0);
            make.right.offset(0);
            make.top.equalTo(view.mas_bottom).offset(0);
            make.bottom.offset(0);
        }];
        
        [left addTarget:self action:@selector(leftCick) forControlEvents:UIControlEventTouchUpInside];
        [right addTarget:self action:@selector(rightCick) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}

- (void)leftCick{
   

    [self removeFromSuperview];
    
}

- (void)rightCick{

    if (self.server.selObj) {
        
        self.block(self.server.selObj);
    }
    [self removeFromSuperview];

    
}


@end
