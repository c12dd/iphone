//
//  MainViewController.m
//  UITabBarDemo
//
//  Created by 宁晓明 on 14-6-20.
//  Copyright (c) 2014年 ning. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "MessageViewController.h"
#import "FindViewController.h"
#import "SettingViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadTabBar
{
    //创建4个视图控制器
    HomeViewController *homeView = [[HomeViewController alloc] init];
    MessageViewController *messageView = [[MessageViewController alloc] init];
    FindViewController *findView = [[FindViewController alloc] init];
    SettingViewController *settingView = [[SettingViewController alloc] init];
    
    
    //创建四个UINavigationController 并添加相应的视图
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeView];
    UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageView];
    UINavigationController *findNav = [[UINavigationController alloc] initWithRootViewController:findView];
    UINavigationController *settingNav = [[UINavigationController alloc] initWithRootViewController:settingView];
    
    //创建的TabBarItem 并指定对应的视图控制器
    UITabBarItem *homeItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];
    homeView.tabBarItem = homeItem;
    
    UITabBarItem *messageItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:2];
    messageView.tabBarItem = messageItem;
    
    UITabBarItem *findItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:3];
    findView.tabBarItem = findItem;
    
    UITabBarItem *settingItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:4];
    settingView.tabBarItem = settingItem;
    
    //将导航控制器添加到数组
    NSArray *Items = @[homeNav,messageNav,findNav,settingNav];
    
    //将导航控制器添加到主视图
    [self setViewControllers:Items animated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadTabBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
