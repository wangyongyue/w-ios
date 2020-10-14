//
//  mine_todo_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "mine_todo_cell.h"
#import "Header.h"
@interface mine_todo_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIImageView *imageView;
@property(nonatomic,strong)UIView *bgView;
@property(nonatomic,strong)UIImageView *toView;

@end

@implementation mine_todo_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        
        self.bgView = [[view_fillet alloc]init];
         [self.contentView addSubview:self.bgView];
         
         self.imageView = [[UIImageView alloc]init];
         [self.bgView addSubview:self.imageView];
        
        self.toView = [[UIImageView alloc]init];
        [self.bgView addSubview:self.toView];
        self.toView.image = [UIImage imageNamed:@"my_more"];
         
         self.label = [[UILabel alloc]init];
         [self.bgView addSubview:self.label];
         
         
         
         [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
             
             make.top.offset(12);
             make.bottom.offset(-0);
             make.left.offset(12);
             make.right.offset(-12);

         }];
         
         [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
             
             make.top.offset(12);
             make.left.offset(12);
            

         }];
         [self.toView mas_makeConstraints:^(MASConstraintMaker *make) {
             
             make.top.offset(12);
             make.right.offset(-12);
           

         }];
      
         
         [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
             
             make.top.offset(12);
             make.left.equalTo(self.imageView.mas_right).offset(12);
             
         }];
       
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    mine_todo *m = (mine_todo *)model;
    self.label.text = m.title;
    
    self.imageView.image = [UIImage imageNamed:m.imageName];
}
@end
@implementation mine_todo
- (NSString *)identifier{ return NSStringFromClass([mine_todo_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 55)];
}
+ (mine_todo *)creat:(NSString *)title{
    
    mine_todo *test = [[mine_todo alloc]init];
    test.title = title;
    return test;
}
+ (mine_todo *)creat:(NSString *)title imageName:(NSString *)imageName{
    
    mine_todo *test = [[mine_todo alloc]init];
    test.title = title;
    test.imageName = imageName;

    return test;
}
@end
