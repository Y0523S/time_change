//
//  ViewController.m
//  time_转换
//
//  Created by applemac on 16/7/13.
//  Copyright © 2016年 rzht. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSDate *nd = [NSDate dateWithTimeIntervalSince1970:1451577600];
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
//    [dateFormat setDateFormat:@"yyyy-MM-dd HH:MM:ss"];
//    NSString *dateString = [dateFormat stringFromDate:nd];
//    NSLog(@"date: %@", dateString);
//    时间戳转时间的方法:
//    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateStyle:NSDateFormatterMediumStyle];
//    [formatter setTimeStyle:NSDateFormatterShortStyle];
//    [formatter setDateFormat:@"yyyy-MM-dd HH:MM:ss"];
//    NSDate *date = [formatter dateFromString:@"1451577600"];
//    NSLog(@"date1:%@",date);
    // Do any additional setup after loading the view, typically from a nib.

#pragma mark - long类型转为data
    NSString* string =  @"1451577600";
    long long s = 1451577600000;

    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:s/1000];
    NSLog(@"---------------%@",confromTimesp);
#pragma mark - 一下为北京时间
    NSDate *confromTimesps = [NSDate dateWithTimeIntervalSince1970:s/1000];
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSInteger interval = [zone secondsFromGMTForDate:confromTimesps];
    NSDate *localeDate = [confromTimesps  dateByAddingTimeInterval: interval];
    NSLog(@"==============%@",localeDate);

    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];


    NSString* strings=[dateFormat stringFromDate:localeDate];
    NSLog(@"**********%@",strings);



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
