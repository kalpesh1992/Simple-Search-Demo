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

if (self.pdfURL) {
        self.documentInteractionController
        = [UIDocumentInteractionController interactionControllerWithURL:self.pdfURL];
        [self.documentInteractionController presentOpenInMenuFromBarButtonItem:sender animated:YES];
    }
