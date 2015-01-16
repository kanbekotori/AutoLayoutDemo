//
//  AutoLayoutTableViewCell.m
//  AutoLayoutDemo
//
//  Created by jiangxingshang on 15/1/16.
//  Copyright (c) 2015年 jxs. All rights reserved.
//

#import "AutoLayoutTableViewCell.h"
#import "Masonry.h"

@implementation AutoLayoutTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        UIView *root = self.contentView;
        
        self.label = [[UILabel alloc] init];
        self.label.numberOfLines = 0;
        [root addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.equalTo(root).offset(16);
            make.right.equalTo(root).offset(-16);
        }];
        
        self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.btn setTitle:@"Click Me" forState:UIControlStateNormal];
        self.btn.backgroundColor = [UIColor blueColor];
        [self.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [root addSubview:self.btn];
        [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(40);
            make.top.equalTo(self.label.mas_bottom).offset(16);
            make.leading.equalTo(root).offset(16);
            make.trailing.bottom.equalTo(root).offset(-16);
        }];
    }
    return self;
}

@end
