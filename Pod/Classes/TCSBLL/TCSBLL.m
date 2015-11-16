//
//  TCSBLL.m
//  TCSBLL
//
//  Created by huanglexian on 15/11/15.
//  Copyright © 2015年 spbreak. All rights reserved.
//

#import "TCSBLL.h"
#import "TCSDAL.h"

@implementation TCSBLL

/**
 *  获得天干地支
 *
 *  @return 22个数据
 */
+(NSArray *)getTianGanDiZhi{
    return @[@"甲",@"乙",@"丙",@"丁",@"戊",@"己",@"庚",@"辛",@"壬",@"癸",@"子",@"丑",@"寅",@"卯",@"辰",@"巳",@"午",@"未",@"申",@"酉",@"戌",@"亥"];
}
/**
 *  获得姓数组
 *
 *  @return 姓数组
 */
+(NSArray *)getSurname{
//    return nil;
    NSArray *arr=[TCSDAL getManyOfTable:@"name" withWhere:nil withArrField:@[@"name"]];
    return arr;
}
/**
 *  获得配对姓数组
 *
 *  @return 配对姓数组
 */
+(NSArray *)getNameOfMatching{
//    return nil;
    NSArray *arr=[TCSDAL getManyOfTable:@"nameofmatching" withWhere:nil withArrField:@[@"name"]];
    return arr;
}
/**
 *  获得占卜学堂数组
 *
 *  @return 占卜学堂数组
 */
+(NSArray *)getDivinationOfSchool{
//    return nil;
    NSArray *arr=[TCSDAL getManyOfTable:@"divinationofschool" withWhere:nil withArrField:@[@"title",@"content"]];
    return arr;
}
/**
 *  获得单行姓氏数据
 *
 *  @param surnanme 对应的姓氏
 *
 *  @return 单行姓氏
 */
+(NSDictionary *)getSurnameOfSourceForSurname:(NSString *)surnanme{
//    return nil;
    NSString *strWhere=[NSString stringWithFormat:@"surname = '%@'",surnanme];
    NSDictionary *dict=[TCSDAL getSingleOfTable:@"surnameofsource" withWhere:strWhere withArrField:@[@"content"]];
    return dict;
}
@end
