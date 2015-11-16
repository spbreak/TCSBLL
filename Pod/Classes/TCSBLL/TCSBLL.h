//
//  TCSBLL.h
//  TCSBLL
//
//  Created by huanglexian on 15/11/15.
//  Copyright © 2015年 spbreak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCSBLL : NSObject
/**
 *  获得天干地支
 *
 *  @return 22个数据
 */
+(NSArray *)getTianGanDiZhi;
/**
 *  获得姓数组
 *
 *  @return 姓数组
 */
+(NSArray *)getSurname;
/**
 *  获得配对姓数组
 *
 *  @return 配对姓数组
 */
+(NSArray *)getNameOfMatching;
/**
 *  获得占卜学堂数组
 *
 *  @return 占卜学堂数组
 */
+(NSArray *)getDivinationOfSchool;
/**
 *  获得单行姓氏数据
 *
 *  @param surnanme 对应的姓氏
 *
 *  @return 单行姓氏
 */
+(NSDictionary *)getSurnameOfSourceForSurname:(NSString *)surnanme;
@end
