//
//  DocumentsTableViewController.m
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import "DocumentsTableViewController.h"
#import "DetailViewController.h"
#import "AELDocument.h"

@interface DocumentsTableViewController ()

@end

@implementation DocumentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _documentController = [[AELDocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[AELDocumentController alloc] init];
    }
    return self;
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[[self documentController] documents] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    AELDocument *document = [[[self documentController] documents] objectAtIndex:indexPath.row];
    [[cell textLabel] setText:  [document title]];
    [[cell detailTextLabel] setText:[document text]];
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *destinationVC = (DetailViewController *)[segue destinationViewController];
    
    if([[segue identifier]  isEqual: @"ViewDocument"]){
        NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        AELDocument *document = [[[self documentController] documents] objectAtIndex:indexPath.row];
        [destinationVC setDocument:document];
        [destinationVC setDocumentController: [self documentController]];
    } else{
        [destinationVC setDocumentController: [self documentController]];
    }
}

@end
