//
//  LMFriendBL.m
//  LikeMoves
//
//  Created by 粒橙Leo on 14-9-14.
//  Copyright (c) 2014年 Licheng Yang. All rights reserved.
//

#import "LMContactBL.h"

@implementation LMContactBL
-(id)init{
    self = [super init];
    
    if (self) {
        _dao = [ContactDAO new];
        _dao.delegate=self;
    }
    return self;
}
-(void)findFriendByID:(NSString*)friendID{
    
};
-(void)findFriendByPhone:(NSString*)phone{
    
};
-(void)addFriendByID:(NSString*)friendID{
    [_dao addFriendByID:friendID];
};
-(void)addFriendByPhone:(NSString*)phone{
    [_dao addFriendByPhone:phone];
};
-(void)acceptFriend:(NSString*)friendID{
    [_dao acceptFriend:friendID];
};
-(void)rejectFriend:(NSString*)friendID{
    [_dao rejectFriend:friendID];
};
-(void)delFriend:(NSString*)friendID{
    [_dao delFriend:friendID];
};
-(void)getFriends:(NSString*)page perPage:(NSString*)perPage{
    [_dao getFriends:page perPage:perPage];
};
-(void)getMyFriendRequests:(NSString*)page perPage:(NSString*)perPage{
    [_dao getMyFriendRequests:page perPage:perPage];
};

-(void)getMyAccepts:(NSString*)page perPage:(NSString*)perPage{
    [_dao getMyAccepts:page perPage:perPage];
};
-(void)scanFriend:(NSString *)longitude withLatitude:(NSString *)latitude{
    [_dao scanFriend:longitude withLatitude:latitude];
}
-(void)stopScanFriend{
    [_dao stopScanFriend];
}
/**
 *  获得好友运动排行
 *
 *  @param date 运动排行的日期
 */
-(NSArray*)getFriendSportRank:(NSString*)date{
    return  [_dao getFriendSportRank:date];
};
/**
 *  获得众筹好友
 */
-(void)getCrowdfundFriends;{
    //实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //用[NSDate date]可以获取系统当前时间
    NSString *currentDateStr = [dateFormatter stringFromDate:[NSDate date]];
    [_dao getCrowdfundFriends:currentDateStr];
}
#pragma mark - 代理Delegate
-(void)getSportRankSuccess:(NSArray *)rank{
    [_delegate getSportRankSuccess:rank];
}
-(void)getFriendsSuccess:(NSArray*)friends{
    [_delegate getFriendsSuccess:friends];
};
-(void)getAcceptFriendSuccess:(NSArray *)friends{
    [_delegate getAcceptFriendSuccess:friends];
}
-(void)scanFriendSuccess:(NSArray *)scanFriend{
    [_delegate scanFriendSuccess:scanFriend];
}
-(void)addFriendByPhoneSuccess:(NSInteger)status{
    [_delegate addFriendByPhoneSuccess:status];
}
-(void)getCrowdfundFriendSuccess:(NSArray *)friends{
    [_delegate getCrowdfundFriendsSuccess:friends];
}
-(void)acceptFriendSuccess{
    [_delegate acceptFriendSuccess];
}
-(void)rejectFriendSuccess{
    [_delegate rejectFriendSuccess];
}
-(void)addFriendByIDSuccess:(NSInteger)status{
    [_delegate addFriendByIDSuccess:(NSInteger)status];
}
-(void)delFriendByIDSuccess:(NSInteger)status{
    [_delegate delFriendByIDSuccess:status];
}

@end
