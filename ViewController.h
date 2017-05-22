//
//  ViewController.h
//  firebase
//
//  Created by Kalpesh Satasiya on 22/05/17.
//  Copyright © 2017 Kalpesh Satasiya. All rights reserved.
//

#import <UIKit/UIKit.h>
@import FirebaseDatabase;


@interface ViewController : UIViewController


@property (strong, nonatomic) FIRDatabaseReference *ref;
    
@end

