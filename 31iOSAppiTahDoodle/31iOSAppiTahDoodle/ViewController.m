//
//  ViewController.m
//  31iOSAppiTahDoodle
//
//  Created by rhino Q on 22/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"

NSString *BNRDocPath()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                            NSUserDomainMask,
                                                            YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}

static NSString * const CellIdentifier = @"cell";

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *taskTable;
@property (weak, nonatomic) IBOutlet UIButton *insertButton;
@property (nonatomic) NSMutableArray *tasks;

@property (nonatomic, strong) ArrayDataSource *arrayDataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *plist = [NSArray arrayWithContentsOfFile:BNRDocPath()];
    if(plist) {
        self.tasks = [plist mutableCopy];
    } else {
        self.tasks = [NSMutableArray array];
    }
    [self setupTableView];
}

-(void)setupTableView
{
    TableViewCellConfigureBlock configureCell = ^(UITableViewCell *cell, NSString *text) {
        cell.textLabel.text = text;
    };
    
    self.arrayDataSource = [[ArrayDataSource alloc] initWithItems:self.tasks cellIdentifier:CellIdentifier configureCellBlock:configureCell];
    self.taskTable.dataSource = self.arrayDataSource;
}

- (IBAction)didButtonTapped:(UIButton *)sender {
    [self addTask];
}

- (void)addTask
{
    NSString *text = _textField.text;
    
    if([text length] == 0) { return ;}
    
//  [self.tasks addObject:text];
    [self.arrayDataSource addItem:text];
    
    [self.taskTable reloadData];
    
    _textField.text = @"";
    
    [_textField resignFirstResponder];
}

#pragma mark - Table view management

//- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"cell"];
//    NSString *item = [self.tasks objectAtIndex:indexPath.row];
//    c.textLabel.text = item;
//    return c;
//}
//
//- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return [self.tasks count];
//}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.tasks writeToFile:BNRDocPath() atomically:YES];
}

@end
