# Simple-Search-Demo
#pragma -mark Right to Left and Left to Right Animation

-(void)viewSlideInFromRightToLeft:(UIView *)views
{
    CATransition *transition = nil;
    transition = [CATransition animation];
    transition.duration = 0.7;//kAnimationDuration
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype =kCATransitionFromRight;
    transition.delegate = self;
    [views.layer addAnimation:transition forKey:nil];
}

-(void)viewSlideInFromLeftToRight:(UIView *)views
{
    CATransition *transition = nil;
    transition = [CATransition animation];
    transition.duration = 0.7;//kAnimationDuration
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype =kCATransitionFromLeft;
    transition.delegate = self;
    [views.layer addAnimation:transition forKey:nil];
}
@property (nonatomic, strong) UIDocumentInteractionController *documentInteractionController;


if (self.pdfURL) {
        self.documentInteractionController
        = [UIDocumentInteractionController interactionControllerWithURL:self.pdfURL];
        [self.documentInteractionController presentOpenInMenuFromBarButtonItem:sender animated:YES];
    }
    
    
var ref : DatabaseReference! {
    return Database.database().reference().child("Customers")
}

 func fetchFirebaseCustomerList()  {
        ref.observe(DataEventType.value, with: { (snapshot) in
            
            
            
            if snapshot.childrenCount > 0 {
                self.cust.removeAll()
                
                for customer in snapshot.children.allObjects as! [DataSnapshot] {
                    
                    print(snapshot.value!)
                    let custObject = customer.value as? [String : Any]
                    let custName = custObject?["name"]
                    let cYear = custObject?["year"]
                    let countryCode = custObject?["country"]
                    let catagory = custObject?["catagory"]
//                    let urll = custObject?["pdf"]
//                    let imgl = custObject?["logo"]
                    
                    
                    let dictAddObject = NSMutableDictionary()
                    dictAddObject .setValue(custName, forKey: "name")
                    dictAddObject .setValue(cYear, forKey: "year")
                    dictAddObject .setValue(countryCode, forKey: "country")
                    dictAddObject .setValue(catagory, forKey: "catagory")
                    
//                    let custList = customerModel(cName: custName as! String, year: cYear as! String, countryCode: countryCode as! String, catagory: catagory as! String)
                    
                    self.arrCustomerList .add(dictAddObject)

                    print(self.arrCustomerList)
                    self.hud .hide(animated: true);

                }
                self.tblFavoriteCompanyList .reloadData()
            }
        })
        
    }

    
