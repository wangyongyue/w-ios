//
//  Header.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

//单例

#define SINGLETON_FOR_HEADER \
\
+ (instancetype)getInstance;

#define SINGLETON_FOR_CLASS \
\
+ (instancetype)getInstance { \
static id instance = nil; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
instance = [[self alloc] init]; \
}); \
return instance; \
}

//log
#ifndef __OPTIMIZE__
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...) {}
#endif

#define Receiving_Acceptance @"Receiving_Acceptance"
#define Acceptance_Query @"Acceptance_Query"
#define Add_RA @"Add_RA"
#define Edit_RA @"Edit_RA"
#define Delete_RA @"Delete_RA"



#define HostUrl @""
#define ImgeUrl @""


#define Top (44)
#define Bottom (49)
#define Top (44)

#define VideoUrls @"VideoUrls"
#define VideoData @"VideoData"

#define GrayColor [UIColor colorWithRed:169/255.0 green:169/255.0 blue:169/255.0 alpha:1.0]
#import <MJExtension.h>
#import <Masonry.h>
#import <SDWebImage.h>

#import "File.h"
typedef void(^FileBlock)(File *file);
typedef void(^ClickBlock)(void);
typedef void(^TextBlock)(NSString *text);
typedef void(^ObjectBlock)(id obj);

typedef enum : NSUInteger {
    Add  = 0,
    Editor,
    Details
} OperationState;

typedef enum : NSUInteger {
    zhuce  = 0,
    denglu,
    biangeng
} FaceState;

#import "mapping.h"
#import "view_h.h"
#import "WTime.h"

#import "AlertDate.h"
#import "AlertList.h"
#import "AlertTime.h"
#import "user.h"
#import "forget_todo.h"
#import "updateUserPhoto.h"
#import "regular_default_20.h"
#import "label_default_all.h"
#import "Attributed.h"
#import "regular_number_20.h"
#import "regular_decimal_two.h"
#import "label_bold.h"

#import "regular_phone.h"
#import "regular_password.h"
#import "regular_number.h"
#import "regular_decimal.h"
#import "regular_default.h"
#import "regular.h"
#import "regular_code.h"
#import "regular_email.h"
#import "login_code_todo.h"
#import "loginOut.h"

#import "field_default.h"
#import "login_todo.h"


#import "button_card.h"
#import "mine_input_cell.h"

#import "Color.h"
#import "Font.h"
#import "list_view.h"
#import "Single.h"
#import "view_blue.h"
#import "list_pull_down_up_view.h"
#import "list_pull_down_view.h"
#import "button_back.h"
#import "button_editor.h"
#import "button_search.h"
#import "Alert.h"
#import "Camera.h"

#import "label_text_blue.h"
#import "label_blue.h"
#import "label_gray.h"
#import "label_title.h"
#import "label_home.h"
#import "mine_card_cell.h"
#import "list_horizontal_view.h"

#import "button_blue_white.h"
#import "view_fillet.h"
#import "view_line.h"
#import "label_white.h"
#import "button_add.h"
#import "button_code.h"

#import "button_image.h"

#import "TestCCell.h"
#import "Router.h"
#import "Cell004View.h"
#import "Cell005View.h"
#import "Cell006View.h"
#import "Cell007View.h"
#import "Cell008View.h"
#import "goods_line_cell.h"
#import "goods_title_group_cell.h"
#import "photo_item_cell.h"
#import "Photos.h"
#import "photo_controller.h"
#import "photo_viewer.h"


#import "photo_viewer_item_cell.h"
#import "goods_add_butto_two_cell.h"
#import "goods_add_seat_cell.h"

#import "goods_state_cell.h"
#import "goods_subTitle_cell.h"
#import "goods_title_cell.h"
#import "goods_button_cell.h"
#import "goods_footer_cell.h"
#import "goods_header_cell.h"
#import "home_header_cell.h"
#import "home_content_cell.h"
#import "mine_two_cell.h"
#import "mine_todo_cell.h"
#import "mine_card_cell.h"
#import "login_user_cell.h"
#import "login_password_cell.h"
#import "login_code_cell.h"
#import "login_forget_cell.h"
#import "login_login_cell.h"
#import "login_switch_cell.h"
#import "forget_user_cell.h"
#import "forget_password_cell.h"
#import "forget_code_cell.h"
#import "login_face_title_cell.h"
#import "login_face_header_cell.h"
#import "goods_project_item_cell.h"
#import "goods_brand_item_cell.h"
#import "goods_materiel_item_cell.h"
#import "goods_model_item_cell.h"
#import "goods_add_input_unit_cell.h"
#import "goods_add_input_more_cell.h"
#import "goods_add_input_date_cell.h"
#import "goods_add_input_time_cell.h"
#import "goods_add_input_tap_cell.h"

#import "goods_add_input_cell.h"
#import "goods_add_unit_cell.h"
#import "goods_add_number_cell.h"
#import "goods_add_todo_cell.h"
#import "goods_add_collect_cell.h"
#import "goods_add_sign_cell.h"
#import "goods_add_car_cell.h"
#import "goods_add_LR_cell.h"
#import "goods_add_header_cell.h"
#import "goods_add_red_cell.h"
#import "goods_add_line_cell.h"
#import "goods_add_button_cell.h"


#import "Home.h"
#import "login_confi.h"
#import "goods_project.h"
#import "goods_record.h"
#import "goods_add.h"
#import "goods_brand.h"
#import "goods_detail.h"
#import "goods_add_check.h"


#import "forget_confi.h"
#import "user_mine.h"
#import "change_password.h"
#import "change_password_todo.h"
#import "change_mine.h"
#import "change_mine_todo.h"
#import "change_card.h"


#import "HomeController.h"
#import "goods_project_controller.h"
#import "forget_controller.h"
#import "change_card_controller.h"
#import "change_mine_controller.h"
#import "change_password_controller.h"
#import "goods_record_controller.h"
#import "goods_add_controller.h"
#import "goods_brand_controller.h"
#import "goods_detail_controller.h"
#import "goods_project_search_controller.h"
#import "photo_viewer_controller.h"


//#import "Server.h"
#import "Behavior.h"
#import "BeTap.h"
#import "BeSlide.h"
#import "UIView+gesture.h"
#import "FlowLayout.h"
#import "Network.h"
#import "UIImage+Extend.h"
#import "FileUpdate.h"
#import "label_default.h"



#import "LoginConroller.h"

#endif /* Header_h */
