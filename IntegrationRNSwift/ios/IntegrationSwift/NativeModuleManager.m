//
//  NativeModuleManager.m
//  IntegrationSwift
//
//  Created by VuNguyenIT on 3/1/18.
//  Copyright © 2018 VuNguyenIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(NativeModuleManager, NSObject)

RCT_EXTERN_METHOD(backToNative:(nonnull NSNumber *)reactTag)

@end
