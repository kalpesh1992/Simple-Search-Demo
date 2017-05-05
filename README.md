# Simple-Search-Demo

- (UIView *)documentInteractionControllerViewForPreview:(UIDocumentInteractionController *)controller {
    return self.view;
}

- (CGRect)documentInteractionControllerRectForPreview:(UIDocumentInteractionController *)controller {
    return self.view.frame;
}
- (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller   canPerformAction:(SEL)action{
    return FALSE;
}
