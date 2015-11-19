//
//  CCAES.h
//
//  @brief AES加密解密算法
//  @note 加密封装,需要导入NSData+Encryption_AES256.h
//                      NSData+Encryption_AES256.m文件
//
//  Created by 许 强 on 13-10-28.
//  Copyright (c) 2013年 许强. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCAES : NSObject

/**
 *  加密数据
 *
 *  @param key 密匙,传入nil值则使用默认KEY
 *
 *  @return 加密后的数据
 */
+ (NSData *)AES256EncryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  解密数据
 *
 *  @param key 密匙,传入nil值则使用默认KEY
 *
 *  @return 解密后的数据
 */
+ (NSData *)AES256Decrypt:(NSData *)data withKey:(NSString *)key;

/**
 *  加密文件
 *
 *  @param filePath    源文件路径
 *  @param newFilePath 加密后的文件路径
 *  @param key 密匙,传入nil值则使用默认KEY
 *  @return YES,加密成功, NO,加密失败
 */
+ (BOOL)AES256EncryptFile:(NSString *)filePath withKey:(NSString *)key newPath:(NSString *)newFilePath;

/**
    内部会优先使用mmAES256DecryptWithKey进行解密，常规方法
 *  解密文件，并写到document中，返回新文件的路径
 *
 *  @param filePath 解密后的文件路径 
 *  @param key 密匙,传入nil值则使用默认KEY
 *  @return new file path
 */
+ (NSString *)AES256DecryptFile:(NSString *)filePath withKey:(NSString *)key;

/**
 *  唯一和AES256DecryptFile不同的是，函数内部始终会调用AES256DecryptWithKey进行解密
    这样处理主要是为了兼容旧数据，临时接口
 */
+ (NSString *)AES256DecryptFileTemp:(NSString *)filePath withKey:(NSString *)key;

/**
 *  用来删除解密后的文件
 *
 *  @param filePath 文件路径
 *  @return YES,成功, NO,失败
 */
+ (BOOL)deleteFile:(NSString *)filePath;

@end
