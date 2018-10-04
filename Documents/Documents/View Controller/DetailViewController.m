//
//  DetailViewController.m
//  Documents
//
//  Created by Andrew Dhan on 10/3/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

#import "DetailViewController.h"
#import "NSString+WordCount.h"
#import "AELDocument.h"
#import "AELDocumentController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self documentTextView] setDelegate: self];
    [self updateViews];
}

- (void)textViewDidChange:(UITextView *)textView
{
    int count = [[[self documentTextView] text] wordCount];
    NSString *wordCountString = [NSString stringWithFormat:@"%i", count];
    
    NSString *wordLabelText = [NSString stringWithFormat:@"%@ %@", @"Word Count:", wordCountString];
    [[self wordCount] setText: wordLabelText];
}

-(void) updateViews{
    if ([self document]){
        //if document is not nil
        [self setTitle: @"View Document"];
        
        int count = [[[self documentTextView] text] wordCount];
        NSString *wordCountString = [NSString stringWithFormat:@"%i", count];
        NSString *wordLabelText = [NSString stringWithFormat:@"%@ %@", @"Word Count:", wordCountString];
        [[self wordCount] setText: wordLabelText];
        
        [[self nameField] setText: [[self document] title]];
        [[self documentTextView] setText:[[self document] text]];
    } else {
        [self setTitle: @"Add Document"];
        NSString *wordLabelText = [NSString stringWithFormat:@"%@", @"Word Count: 0"];
        [[self wordCount] setText: wordLabelText];
    }
}

- (IBAction)save:(UIBarButtonItem *)sender {
    NSString *documentText = [[self documentTextView] text];
    NSString *documentName = [[self nameField] text];
    
    if([self document]){
        //if document is not nil
        [[self documentController] updateDocumentFor: [self document] title:documentName text:documentText];
    } else {
        [[self documentController] createDocumentWith: documentName text:documentText];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
