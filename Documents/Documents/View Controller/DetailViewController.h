//
//  DetailViewController.h
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AELDocument;
@class AELDocumentController;

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController <UITextViewDelegate>

- (IBAction)save:(id *)sender;

@property AELDocument *document;
@property AELDocumentController *documentController;

@property (weak, nonatomic) IBOutlet UILabel *wordCount;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextView *documentTextView;

@end

NS_ASSUME_NONNULL_END
