//
//  HeroViewModel.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <Foundation/Foundation.h>
#import "Hero.h"
@interface HeroViewModel : NSObject<YKGRowProtocol>
@property (strong,nonatomic,readonly) Hero *hero;
+ (HeroViewModel *)generateViewModel:(Hero *)hero;
@end

