//
//  LMShopDAODelegate.h
//  LikeMoves
//
//  Created by 粒橙Leo on 14-10-6.
//  Copyright (c) 2014年 Licheng Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LMShopDAODelegate <NSObject>
@optional
-(void)getProductInPromotionSuccess:(NSArray*)array;
-(void)addToCartSuccess;
-(void)getShopingCartsSuccess:(NSArray*)array;
-(void)getReceiversSuccess:(NSArray*)array;
-(void)getGivedCoinsRecordSuccess:(NSArray*)array;
-(void)getReceivedCoinsRecordSuccess:(NSArray*)array;


-(void)getNoPayOrdersSuccess:(NSArray*)array;
-(void)getPaidOrdersSuccess:(NSArray*)array;
-(void)getSendOrdersSuccess:(NSArray*)array;
-(void)getReceivedOrdersSuccess:(NSArray*)array;
-(void)giveCoinsToFriendSuccess;
-(void)getProductCommentsSuccess:(NSArray*)comments;
-(void)modifyShoppingCartSuccess;
-(void)delShoppingCartSuccess;
-(void)addCartToOrderSuccess:(NSDictionary*)data;
-(void)addCartToOrderFail;
-(void)payWithBalanceSuccess;
-(void)payWithAlipaySuccess;
@end
