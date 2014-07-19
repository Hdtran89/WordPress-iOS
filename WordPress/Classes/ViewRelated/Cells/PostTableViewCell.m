#import "PostTableViewCell.h"
#import "Post.h"
#import "PostContentView.h"

@implementation PostTableViewCell

#pragma mark - Lifecycle Methods

- (void)dealloc
{
	self.post = nil;
}

#pragma mark - Private Methods

- (WPContentViewBase *)configurePostView {
    PostContentView *postView = [[PostContentView alloc] init];
    postView.translatesAutoresizingMaskIntoConstraints = NO;
    postView.backgroundColor = [UIColor whiteColor];
    return postView;
}

#pragma mark - Instance Methods

- (void)configureCell:(Post *)post
{
    self.post = post;
    [(PostContentView *)self.postView configurePost:post];
}

@end