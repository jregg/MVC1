//
//  JRGViewController.m
//  MVC
//
//  Created by Register, Joseph (US - Seattle) on 2/11/14.
//  Copyright (c) 2014 JRegg. All rights reserved.
//

#import "JRGTableViewController.h"
#import "JRGPostTableViewCell.h"
#import "Post.h"
#import "JRGViewController.h"

@interface JRGTableViewController ()

@property (nonatomic, strong) NSMutableArray *posts;

@end

@implementation JRGTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.posts = [NSMutableArray new];
    for (int i = 0; i < 10; i++) {
        Post *currentPost = [Post new];
        currentPost.title = [NSString stringWithFormat:@"Lost iOS Student %d", i];
        [self.posts addObject:currentPost];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.posts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    JRGPostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Post *currentPost = (Post *)self.posts[indexPath.row];
    
    cell.textLabel.text = currentPost.title;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showDetailsSegue"]) {
        JRGViewController *detailViewController = segue.destinationViewController
    }
}

@end
