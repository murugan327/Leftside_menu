//
//  DEMOMenuViewController.m
//  REFrostedViewControllerExample
//
//  Created by Roman Efimov on 9/18/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOMenuViewController.h"
#import "DEMOHomeViewController.h"
#import "DEMOSecondViewController.h"
#import "DEMONavigationController.h"
#import "UIViewController+REFrostedViewController.h"
#import "Home_ViewController.h"

@implementation DEMOMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   //menuArray = @[@"Area Ratio Calculator", @"ORDER STATUS", @"REBALL FIXTURE",@"PRINT PART", @"FLEXFRAME", @"HEAT NOZZLES", @"PRESSFIT DIES", @"CONTACT INFO"];
    
    menuArray = @[@"Unit Converter", @"Order Status", @"Reball Fixture",@"Print Part", @"Reflow Nozzles", @"Pressfit Dies", @"Proto Stencils", @"Flex Frame",@"Contact Info",@"Beam On Technology"];
    
    self.tableView.separatorColor = [UIColor colorWithRed:150/255.0f green:161/255.0f blue:177/255.0f alpha:1.0f];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.opaque = NO;
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.tableFooterView=[[UIView alloc]initWithFrame:CGRectZero];
}

#pragma mark -
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
    cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:17];
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)sectionIndex
{
    return 34;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0 && indexPath.row == 0)
    
    {
        Home_ViewController *homeViewController = [[Home_ViewController alloc] init];
        DEMONavigationController *navigationController = [[DEMONavigationController alloc] initWithRootViewController:homeViewController];
        self.frostedViewController.contentViewController = navigationController;
    }
    else if (indexPath.section == 0 && indexPath.row == 1)
    {
        NSUserDefaults *checkDetails=[NSUserDefaults standardUserDefaults];
        
        NSString *getUserId=[checkDetails stringForKey:@"USER_ID"];
        
        if ([getUserId isEqualToString:@""] || [getUserId length]==0)
        {
//            LoginController *secondViewController = [[LoginController alloc] init];
//            DEMONavigationController *navigationController = [[DEMONavigationController alloc] initWithRootViewController:secondViewController];
//            self.frostedViewController.contentViewController = navigationController;
        }
        else
        {
//            OrderStatusController *secondViewController = [[OrderStatusController alloc] init];
//            DEMONavigationController *navigationController = [[DEMONavigationController alloc] initWithRootViewController:secondViewController];
//            self.frostedViewController.contentViewController = navigationController;
        }
    }
    else if (indexPath.section == 0 && indexPath.row == 2)
        
    {
        [self webUrl:@"http://m.beamon.com/app/bga-reballing-fixtures.html" menuString:[menuArray objectAtIndex:indexPath.row]];
    }

    else if (indexPath.section == 0 && indexPath.row == 3)
        
    {
       [self webUrl:@"http://m.beamon.com/app/printpart-fixtures.html" menuString:[menuArray objectAtIndex:indexPath.row]];
    }

    else if (indexPath.section == 0 && indexPath.row == 4)
        
    {
        [self webUrl:@"http://m.beamon.com/app/nozzles.html"menuString:[menuArray objectAtIndex:indexPath.row]];
        
    }

    else if (indexPath.section == 0 && indexPath.row == 5)
        
    {
        [self webUrl:@"http://m.beamon.com/app/press-fit-fixtures.html" menuString:[menuArray objectAtIndex:indexPath.row]];
        
    }
    else if (indexPath.section == 0 && indexPath.row == 6)
        
    {
        [self webUrl:@"http://m.beamon.com/app/proto-stencils.html" menuString:[menuArray objectAtIndex:indexPath.row]];
        
    }
    else if (indexPath.section == 0 && indexPath.row == 7)
        
    {
        [self webUrl:@"http://m.beamon.com/app/flex-frame.html" menuString:[menuArray objectAtIndex:indexPath.row]];
        
    }else if (indexPath.section == 0 && indexPath.row == 8)
        
    {
         [self webUrl:@"http://m.beamon.com/app/contact.html" menuString:[menuArray objectAtIndex:indexPath.row]];
        
    }else if (indexPath.section == 0 && indexPath.row == 9)
    {
        [self webUrl:@"http://www.beamon.com/" menuString:[menuArray objectAtIndex:indexPath.row]];
    }


    
    
//    1. http://m.beamon.com/app/bga-reballing-fixtures.html
//    2. http://m.beamon.com/app/contact.html
//    3. http://m.beamon.com/app/flex-frame.html
//    4. Login - Use API and design UI in app
//    5. http://m.beamon.com/app/nozzles.html
//    6. http://m.beamon.com/app/press-fit-fixtures.html
//    7. http://m.beamon.com/app/printpart-fixtures.html
    
    [self.frostedViewController hideMenuViewController];
}
-(void)webUrl:(NSString*)webUrl menuString:(NSString*)menuString
{
//    WebViewController *secondViewController = [[WebViewController alloc] init];
//    DEMONavigationController *navigationController = [[DEMONavigationController alloc] initWithRootViewController:secondViewController];
//    secondViewController.tittleSting=[NSString stringWithFormat:@"%@",menuString];
//    secondViewController.urlString=[NSString stringWithFormat:@"%@",webUrl];
   // self.frostedViewController.contentViewController = navigationController;
    
}
#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 54;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return menuArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = menuArray[indexPath.row];
    
    if (indexPath.row == 9) {
        NSDictionary *underlineAttribute_user = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
        cell.textLabel.attributedText = [[NSAttributedString alloc] initWithString:@"Beam On Technology"attributes:underlineAttribute_user];
    }
    
    return cell;
}

@end
