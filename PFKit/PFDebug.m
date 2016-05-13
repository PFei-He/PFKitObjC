//
//  PFDebug.m
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
//  ***** 调试 *****
//

#import "PFDebug.h"
#import "PFFile.h"
#import "PFModel.h"

@implementation PFDebug

//版本号
+ (void)debugVersion
{
    NSLog(@"[ PFKit ][ INFO ] current version: 0.0.4");
    NSLog(@"[ PFKit ][ INFO ] programming language: Objective-C");
    NSLog(@"[ PFKit ][ INFO ] open source license: MIT");
    NSLog(@"[ PFKit ][ INFO ] join me: https://github.com/PFei-He/PFKitObjC");
    NSLog(@"[ PFKit ][ INFO ] THANK YOU FOR USING !!");
}

//调试模式
+ (void)debugMode:(BOOL)openOrNot
{
    [PFFile debugMode:openOrNot];
    [PFModel debugMode:openOrNot];
}

@end
