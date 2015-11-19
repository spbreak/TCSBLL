//
//  NSData+Encryption_AES256.h
//  bazitaohua
//
//  Created by sun on 13-9-24.
//
//

#import <Foundation/Foundation.h>

/**
 *  简单的数据加密解密模块
 */
@interface NSData (Encryption_AES256)

/**************废弃接口++**************/
/**
 *  加密数据
 *
 *  @param key 密匙
 *
 *  @return 加密后的数据
 */
- (NSData *)AES256EncryptWithKey:(NSString *)key;

/**
 *  解密数据
 *
 *  @param key 密匙
 *
 *  @return 解密后的数据
 */
- (NSData *)AES256DecryptWithKey:(NSString *)key;
/**************废弃接口--**************/


/**
 //注意：这里为了兼容旧数据加密问题，外界调用的时候需要遵循如下规则：
 //1、解密时优先调用mmAES256DecryptWithKey，若无法取得数据，再调用AES256DecryptWithKey，正常情况下此时应该可以取得数据
 //2、加密时始终调用mmAES256EncryptWithKey，保证以后的加密逻辑都执行自己的代码，避免执行第三方源码或库的同名类别函数
 */
/**
 *  加密数据
 *
 *  @param key 密匙
 *
 *  @return 加密后的数据
 */
- (NSData *)mmAES256EncryptWithKey:(NSString *)key;

/**
 *  解密数据
 *
 *  @param key 密匙
 *
 *  @return 解密后的数据
 */
- (NSData *)mmAES256DecryptWithKey:(NSString *)key;

@end
