//
//  WVSSAddress.m
//  WebViewScreenSaver
//
//  Created by Alastair Tse on 26/04/2015.
//
//  Copyright 2015 Alastair Tse.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "WVSSAddress.h"

static NSTimeInterval const kDefaultDuration = 5 * 60.0;
static NSString * const kScreenSaverDefaultURL = @"https://leetcode.com/problemset/algorithms/";

// Keys for the dictionaries in kScreenSaverURLList - string values should not be changed.
NSString * const kWVSSAddressURLKey = @"kScreenSaverURL";
NSString * const kWVSSAddressTimeKey = @"kScreenSaverTime";

@implementation WVSSAddress

+ (WVSSAddress *)addressWithURL:(NSString *)url duration:(NSInteger)duration {
  WVSSAddress *address = [[[self class] alloc] init];
  address.url = url;
  address.duration = duration;
  return address;
}

+ (WVSSAddress *)defaultAddress {
  return [self addressWithURL:kScreenSaverDefaultURL duration:kDefaultDuration];
}

+ (NSString *)defaultAddressURL {
  return kScreenSaverDefaultURL;
}

+ (NSInteger)defaultDuration {
  return kDefaultDuration;
}

- (NSDictionary *)dictionaryRepresentation {
  return @{kWVSSAddressURLKey: self.url, kWVSSAddressTimeKey: @(self.duration)};
}

- (NSString *)description {
  return [NSString stringWithFormat:@"<%@ : %@ for %ld>", [self className], self.url, self.duration];
}

@end
