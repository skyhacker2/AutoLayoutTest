//
//  CustomCell.h
//  AutoLayoutTest
//
//  Created by Eleven Chen on 15/11/8.
//  Copyright © 2015年 Hunuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *leftIcon;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textViewHeight;

@end
