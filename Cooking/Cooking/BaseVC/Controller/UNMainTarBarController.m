//
//  UNMainTarBarController.m
//  Cooking
//
//  Created by universe on 2017/1/6.
//  Copyright © 2017年 universe. All rights reserved.
//

#import "UNMainTarBarController.h"


#import "UNBaseNavController.h"
#import "UNHomeTableViewController.h"
#import "UNWonderfulViewController.h"
#import "UNWonderMenuLayout.h"

#import "UNMineViewController.h"
#import "UNDietViewController.h"
#import "CHTCollectionViewWaterfallLayout.h"

#import "UNDietaryTaboosController.h"

@interface UNMainTarBarController ()

@end

@implementation UNMainTarBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addChildControllers];
    
}

- (void)addChildControllers{

    UNHomeTableViewController *homeVC = [[UNHomeTableViewController alloc] initWithStyle:UITableViewStylePlain];
    homeVC.title = @"菜系";
    
    [self addChildViewController:[[UNBaseNavController alloc] initWithRootViewController:homeVC]];
    
    UNWonderfulViewController *wonVC = [[UNWonderfulViewController alloc] initWithCollectionViewLayout:[[UNWonderMenuLayout alloc] init]];
    wonVC.title = @"菜谱";
     [self addChildViewController:[[UNBaseNavController alloc] initWithRootViewController:wonVC]];
    
    UNMineViewController *mineVC = [[UNMineViewController alloc] init];
    mineVC.title = @"我";
    [self addChildViewController:[[UNBaseNavController alloc] initWithRootViewController:mineVC]];
    
    
    CHTCollectionViewWaterfallLayout *layout = [[CHTCollectionViewWaterfallLayout alloc] init];
    layout.columnCount = 2;
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    UNDietViewController *dietVC = [[UNDietViewController alloc] initWithCollectionViewLayout:layout];
    dietVC.title = @"减肥食谱";
      [self addChildViewController:[[UNBaseNavController alloc] initWithRootViewController:dietVC]];
    
    UNDietaryTaboosController *dietabVC = [[UNDietaryTaboosController alloc] init];
    dietabVC.title = @"饮食禁忌";
    [self addChildViewController:[[UNBaseNavController alloc] initWithRootViewController:dietabVC]];
    
    
   
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
