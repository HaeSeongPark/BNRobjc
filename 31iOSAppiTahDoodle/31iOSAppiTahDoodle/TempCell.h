//
//  TempCell.h
//  31iOSAppiTahDoodle
//
//  Created by rhino Q on 23/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TempCell : UITableViewCell

+(UINib *)nib;

//extension? protocol? subclass?
-(void)configure:(NSString *)text;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

NS_ASSUME_NONNULL_END
