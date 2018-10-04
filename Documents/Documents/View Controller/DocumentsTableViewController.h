//
//  DocumentsTableViewController.h
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AELDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DocumentsTableViewController : UITableViewController

@property AELDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
