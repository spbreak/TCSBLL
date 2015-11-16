//
//  TCSBLL.m
//  TCSBLL
//
//  Created by huanglexian on 15/11/15.
//  Copyright © 2015年 spbreak. All rights reserved.
//

#import "TCSBLL.h"
#import <TCSDAL/TCSDAL.h>

@implementation TCSBLL

/**
 *  获得姓数组
 *
 *  @return 姓数组
 */
+(NSArray *)getSurname{
    NSArray *arr=[TCSDAL getManyOfTable:@"name" withWhere:nil withArrField:@[@"name"]];
    return arr;
}
/**
 *  获得配对姓数组
 *
 *  @return 配对姓数组
 */
+(NSArray *)getNameOfMatching{
    NSArray *arr=[TCSDAL getManyOfTable:@"nameofmatching" withWhere:nil withArrField:@[@"name"]];
    return arr;
}
/**
 *  获得占卜学堂数组
 *
 *  @return 占卜学堂数组
 */
+(NSArray *)getDivinationOfSchool{
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
    NSString *strWhere=[NSString stringWithFormat:@"surname = '%@'",surnanme];
    NSDictionary *dict=[TCSDAL getSingleOfTable:@"surnameofsource" withWhere:strWhere withArrField:@[@"content"]];
    return dict;
}
@end
