//
//  ContactList.h
//  Contact_List
//
//  Created by Kerry Toonen on 2016-01-12.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"


@interface ContactList : NSObject



@property (nonatomic, strong)NSMutableArray *contactList;
@property (nonatomic, strong)NSString *userNameInput;
@property (nonatomic, strong)NSString *userEmailInput;


@end
