//
//  BLLSpecs.m
//  TCSBLL
//
//  Created by huanglexian on 15/11/16.
//  Copyright (c) 2015年 spbreak. All rights reserved.
//

#import "TCSBLL.h"

SPEC_BEGIN(BLL)

describe(@"BLL", ^{
    
    context(@"SurnameAndNameofmatchingAndSurnameofsourceAndDivinationofschool", ^{
        
        it(@"Surname", ^{
            [[theValue([[TCSBLL getSurname] count]) should] beGreaterThan:theValue(0)];
        });
        
        it(@"Nameofmatching", ^{
            [[theValue([[TCSBLL getNameOfMatching] count])should]beGreaterThan:theValue(0)];
        });
        
        it(@"Divinationofschool", ^{
            [[theValue([[TCSBLL getDivinationOfSchool] count])should]beGreaterThan:theValue(0)];
        });
        
        it(@"Surnameofsource", ^{
            NSDictionary *DICT=[TCSBLL getSurnameOfSourceForSurname:@"党"];
            NSArray *arr=[DICT allValues];
            [[theValue([arr count])should]beGreaterThan:theValue(0)];
        });
    });
});

SPEC_END
