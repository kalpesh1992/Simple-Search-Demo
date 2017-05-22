//
//  ViewController.m
//  firebase
//
//  Created by Kalpesh Satasiya on 22/05/17.
//  Copyright © 2017 Kalpesh Satasiya. All rights reserved.
//

#import "ViewController.h"
#import "AFHTTPRequestOperationManager.h"
@import FirebaseStorage;

@interface ViewController (){
//    FIRStorage *storage;
//    FIRStorageReference *storageRef;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.ref = [[FIRDatabase database] reference];
    NSLog(@"%@",self.ref);
    
    [[_ref child:@"companies"] observeEventType:FIRDataEventTypeValue withBlock:^(FIRDataSnapshot * _Nonnull snapshot) {
        
        NSDictionary *usersDict = snapshot.value;
        NSLog(@"%@",usersDict);
    }];
    
    FIRStorage *storage = [FIRStorage storageWithURL:@"gs://demofirebase-b1e8e.appspot.com"];
    FIRStorageReference *storageRef = [storage reference];


    NSData *data = [NSData dataWithContentsOfFile:@"mountains.jpg"];
    
    // Create a reference to the file you want to upload
    FIRStorageReference *riversRef = [storageRef child:@"images/mountains.jpg"];
    
    // Upload the file to the path "images/rivers.jpg"
    FIRStorageUploadTask *uploadTask = [riversRef putData:data
                                                 metadata:nil
                                               completion:^(FIRStorageMetadata *metadata,
                                                            NSError *error) {
                                                   if (error != nil) {
                                                       NSLog(@"%@",error);
                                                   } else {
                                                       // Metadata contains file metadata such as size, content-type, and download URL.
                                                       NSURL *uploadTask = metadata.downloadURL;
                                                   }
                                               }];
}
    
    
#pragma -mark upload file
//    
//-(void)uploadFile{
//    FIRStorageReference *imagesRef = [storageRef child:@"images"];
//    
//    // Child references can also take paths delimited by '/'
//    // spaceRef now points to "images/space.jpg"
//    // imagesRef still points to "images"
//    FIRStorageReference *spaceRef = [storageRef child:@"images/space.jpg"];
//    
//    // This is equivalent to creating the full reference
//    spaceRef = [storage referenceForURL:@"gs://<your-firebase-storage-bucket>/images/space.jpg"];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
