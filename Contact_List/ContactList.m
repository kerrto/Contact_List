//
//  ContactList.m
//  Contact_List
//
//  Created by Kerry Toonen on 2016-01-12.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"


@implementation ContactList

-(void)addContact:(Contact *)newContact {
[self.contactList addObject:newContact];
}

@end
