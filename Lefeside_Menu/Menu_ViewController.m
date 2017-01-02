//
//  Menu_ViewController.m
//  Lefeside_Menu
//
//  Created by murugan on 02/01/17.
//  Copyright © 2017 murugan. All rights reserved.
//

#import "Menu_ViewController.h"
#import "ViewController.h"
#import "TableViewCell.h"
@interface Menu_ViewController ()

@end

@implementation Menu_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    cell.lbltitle.text=@"sachin";
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *sb=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row==0)
    {
        ViewController *main=[sb instantiateViewControllerWithIdentifier:@"ViewController"];
        DEMONavigationController *navigationController = [[DEMONavigationController alloc] initWithRootViewController:main];
        self.frostedViewController.contentViewController = navigationController;
    }
    if (indexPath.row==2)
    {
        Home_ViewController *main=[sb instantiateViewControllerWithIdentifier:@"Home_ViewController"];
        DEMONavigationController *navigationController = [[DEMONavigationController alloc] initWithRootViewController:main];
        self.frostedViewController.contentViewController = navigationController;
    }
    if (indexPath.row==4)
    {
        ViewController *main=[sb instantiateViewControllerWithIdentifier:@"ViewController"];
        DEMONavigationController *navigationController = [[DEMONavigationController alloc] initWithRootViewController:main];
        self.frostedViewController.contentViewController = navigationController;
        self.frostedViewController.contentViewController = navigationController;
    }
    [self.frostedViewController hideMenuViewController];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
