//
//  main.m
//  Contact_List
//
//  Created by Kerry Toonen on 2016-01-12.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"


int main(int argc, const char * argv[]) {
    
 NSMutableArray *contactList = [[NSMutableArray alloc] init];
    
    BOOL shouldContinue = YES;
    while (shouldContinue)
      {

    InputCollector *mainInputCollector = [[InputCollector alloc]init];
        
        NSString *menuInput = @"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application\n";
        
        NSString *userInput = [mainInputCollector inputForPrompt:menuInput];
        
          
    
    if([userInput isEqualToString:@"new"])
        {
            NSLog(@"You want to create a new contact! Great!");
            InputCollector *nameInputCollector = [[InputCollector alloc]init];
            
            NSString *nameInput = @"Name:";
            
            NSString *userNameInput = [nameInputCollector inputForPrompt:nameInput];
            
            InputCollector *emailInputCollector = [[InputCollector alloc]init];
            
            NSString *emailInput = @"Email:";
            
            NSString *userEmailInput = [emailInputCollector inputForPrompt:emailInput];
            
            Contact *newContact=[[Contact alloc] init];
            
            newContact.userNameInput = userNameInput;
            newContact.userEmailInput= userEmailInput;

            [contactList addObject:newContact];
            
        }
          
        
        else if ([userInput isEqualToString:@"list"])
        {
            for (int i=0; i<[contactList count]; i++) {
                NSLog(@"#%d: <%@>()",i,[contactList[i] userNameInput]); }
            
               
        }
        else if ([userInput isEqualToString:@"quit"])
        {
            NSLog(@"You want to exit the application! Goodbye!");
            shouldContinue=NO;
            
        }
        else
        {
            NSLog(@"You have made an invalid selection");
        }
    }
    
    return 0;
}

