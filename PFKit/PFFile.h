//
//  PFFile.h
//  PFKit
//
//  Created by PFei_He on 16/5/12.
//  Copyright © 2016年 PFei_He. All rights reserved.
//
//  https://github.com/PFei-He/PFKitObjC
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  ***** 文件操作 *****
//

#import <Foundation/Foundation.h>

@interface PFFile : NSObject

/**
 *  @brief 创建文件
 *  @note 文件存放于沙盒中的Documents文件夹中
 *  @param fileName 文件名
 */
+ (void)createWithName:(NSString *)fileName;

/**
 *  @brief 创建文件
 *  @note 文件存放于沙盒中的Documents文件夹中
 *  @param fileName 文件名
 *  @param params 写入的参数
 */
+ (void)createWithName:(NSString *)fileName params:(NSDictionary *)params;

/**
 *  @brief 读取Dictionary类型文件
 *  @note 文件存放于沙盒中的Documents文件夹中
 *  @param fileName 文件名
 *  @return 文件中的数据
 */
+ (NSDictionary *)readDictionaryWithName:(NSString *)fileName;

/**
 *  @brief 读取String类型文件
 *  @note 文件存放于沙盒中的Documents文件夹中
 *  @param fileName 文件名
 *  @return 文件中的数据
 */
+ (NSString *)readStringWithName:(NSString *)fileName;

/**
 *  @brief 读取JSON类型文件
 *  @note 文件存放于main bundle中
 *  @param fileName 文件名
 *  @return 文件中的数据
 */
+ (NSData *)readJSONWithName:(NSString *)fileName;

/**
 *  @brief 读取XML类型文件
 *  @note 文件存放于main bundle中
 *  @param fileName 文件名
 *  @return 文件中的数据
 */
+ (NSData *)readXMLWithName:(NSString *)fileName;

/**
 *  @brief 读取文件的路径
 *  @note 文件存放于沙盒中的Documents文件夹中
 *  @param fileName 文件名
 *  @return 文件路径
 */
+ (NSString *)readPathWithName:(NSString *)fileName;

/**
 *  @brief 写入文件
 *  @note 文件存放于沙盒中的Documents文件夹中
 *  @param fileName 文件名
 *  @param params 写入到文件的参数
 *  @return 写入结果
 */
+ (BOOL)modifyWithName:(NSString *)fileName setParams:(NSDictionary *)params;

/**
 *  @brief 添加参数
 *  @note 文件存放于沙盒中的Documents文件夹中
 *  @param fileName 文件名
 *  @param params 添加到文件的参数
 *  @return 写入结果
 */
+ (BOOL)modifyWithName:(NSString *)fileName addParams:(NSDictionary *)params;

/**
 *  @brief 删除文件
 *  @note 文件存放于沙盒中的Documents文件夹中
 *  @param fileName 文件名
 */
+ (void)removeWithName:(NSString *)fileName;

/**
 *  @brief 调试模式
 *  @note 无
 *  @param openOrNot 是否打开调试模式
 */
+ (void)debugMode:(BOOL)openOrNot;

@end
