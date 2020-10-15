//
//  field_default.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "field_default.h"
@interface field_default ()<UITextFieldDelegate>

@end
@implementation field_default

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.textColor = text_color;
        self.font = text_font;
        self.textAlignment = NSTextAlignmentLeft;
        self.delegate = self;
        self.isEdit = YES;

    }
    return self;
}
- (void)editBegin:(ClickBlock)block{
    self.beginBlock = block;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (self.beginBlock) {
        self.beginBlock();
    }
    return self.isEdit;
}
- (void)setRe:(regular *)re{
    _re = re;
    
    self.keyboardType = re.keyboardType;
    
    if (self.text.length > 0 && [re isKindOfClass:[regular_decimal class]]) {
        self.text = [mapping decimalNumber:self.text num:3];
        
    }
    if (self.text.length > 0 && [re isKindOfClass:[regular_decimal_two class]]) {
        self.text = [mapping decimalNumber:self.text num:2];
    }

    
    
    
}
- (void)change:(TextBlock)block{
    
    
    self.block = block;
    [self addObserver];
}
- (void)addObserver{
   [[NSNotificationCenter defaultCenter] removeObserver:self name:@"UITextFieldTextDidChangeNotification" object:nil];
   [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textFiledEditChanged:) name:@"UITextFieldTextDidChangeNotification" object:nil];
}


-(void)textFiledEditChanged:(NSNotification *)obj{
    UITextField *textField = self;
    NSLog(@"%@",textField.text);
    NSString *toBeString = textField.text;
    NSString *lang = [[UITextInputMode currentInputMode] primaryLanguage]; // 键盘输入模式
    BOOL isGao = NO;
    if ([lang isEqualToString:@"zh-Hans"]) { // 简体中文输入，包括简体拼音，健体五笔，简体手写
        UITextRange *selectedRange = [textField markedTextRange];
        //获取高亮部分
        UITextPosition *position = [textField positionFromPosition:selectedRange.start offset:0];
        // 没有高亮选择的字，则对已输入的文字进行字数统计和限制
        if (!position) {
                        
        }else{
            isGao = YES;
        }
        if (self.re) {
            self.re.isZH = YES;
        }
        
    }else{
            
        if (self.re) {
            self.re.isZH = NO;
        }
    }
    if (self.re && isGao == NO) {
        textField.text = [self.re run:textField.text];
    }
    
    self.block(textField.text);
    
}

@end
