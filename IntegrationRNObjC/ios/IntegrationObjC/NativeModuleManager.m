//
//  NativeModuleManager.m
//  IntegrationObjC
//
//  Created by VuNguyenIT on 2/28/18.
//
#import "NativeModuleManager.h"
@implementation NativeModuleManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(backToNative)
{
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"dismissViewController" object:nil]];
}
@end
