//
//  TempCell.m
//  31iOSAppiTahDoodle
//
//  Created by rhino Q on 23/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "TempCell.h"

@interface TempCell()

@end

@implementation TempCell

+ (UINib *)nib
{
    return [UINib nibWithNibName:@"TempCell" bundle:nil];
}

- (void)configure:(NSString *)text
{
    self.titleLabel.text = text;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
