//
//  NetManager.m
//  PublicNews
//
//  Created by universe on 2016/12/2.
//  Copyright © 2016年 universe. All rights reserved.
//

#import "NetManager.h"

@implementation NetManager


+ (id)getCookingStyleModelWithStyle:(CookingStyle)style CompletionHandler:(void (^)(CookingStyleModel *, NSError *))completionHandler{
    
    NSString *middleStr = nil;
    switch (style) {
            case CookingStyleYueCai:
            middleStr = @"yuecai";
            break;
            case CookingStyleChuanCai:
            middleStr = @"chuancai";
            break;
            case CookingStyleSuCai:
            middleStr = @"sucai";
            break;
            case CookingStyleZheCai:
            middleStr = @"zhicai";
            break;
            case CookingStyleMinCai:
            middleStr = @"mincai";
            break;
            case CookingStyleHuiCai:
            middleStr = @"huicai";
            break;
            case CookingStyleLuCai:
            middleStr = @"lucai";
            break;
            case CookingStyleShangHaiCai:
            middleStr = @"shangcai";
            break;
            case CookingStyleDongBeiCai:
            middleStr = @"dongbeijiacaipu";
            break;
            case CookingStyleHongBei:
            middleStr = @"hongpei";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@%@%@",kCookingStyleBasePathHeader,middleStr,kCookingStyleBasePathFoot];
    
    return [self GET:path paramaters:nil completionHandler:^(id respondObj, NSError *error) {
           !completionHandler ?: completionHandler([CookingStyleModel parse:respondObj],error);
    }];
}



@end
