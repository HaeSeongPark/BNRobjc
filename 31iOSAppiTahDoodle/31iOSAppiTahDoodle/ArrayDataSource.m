//
//  ArrayDataSource.m
//  31iOSAppiTahDoodle
//
//  Created by rhino Q on 22/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource ()
{
    NSMutableArray *_items;
}

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;

@end

// 제네릭으로 만들면 좋을 듯
@implementation ArrayDataSource
                     //제네릭

- (instancetype)init
{
    return nil;
}

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock
{
    self = [super init];
    if (self) {
//        self.items = [anItems mutableCopy];
//        [self setItems:anItems];
        [self setItems:anItems];
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = [aConfigureCellBlock copy];
    }
    return self;
}
                  //제네릭
-(void)setItems:(NSArray*)items
{
    if(!items) {
        _items = [NSMutableArray array];
        return;
    }
    _items = [items mutableCopy];
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.items[indexPath.row];
}

#pragma mark UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                                            forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

                 //제네릭
- (void)addItem:(NSString *)anItem
{
    if(!_items) {
        _items = [NSMutableArray array];
    }
    [_items addObject:anItem];
}

@end
