#import <UIKit/UIKit.h>

%hook JKBaseUser
- (bool)is_vip {
	return YES;
}

- (void)setIs_vip:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook JKDataBaseTool
- (bool)queryChatAutomaticTranslationVipGuidanceTab {
	return YES;
}
%end

%hook JKFACEManager
+ (id)createYeeCoinOrderWithCate:(long long)arg1 product_Id:(long long)arg2 money:(long long)arg3 callback:(id)arg4 {
	arg1 = 9999999;
	arg2 = 999999;
	arg3 = 99999999;
	return %orig;
}

+ (id)getYeeCoinHistoryListWithLastId:(long long)arg1 callback:(id)arg2 {
	arg1 = 998888999;
	return %orig;
}
%end

%hook JKGroupAtColor
+ (id)groupAtNickColorWithIsVip:(bool)arg1 {
	arg1 = YES;
	return %orig;
}
%end

%hook JKLiveUserMessage
- (bool)is_vip {
	return YES;
}

- (void)setIs_vip:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook JKTableVRowwModel
- (bool)isShowVip {
	return YES;
}

- (void)setIsShowVip:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook JKUserInfoDBModel
- (bool)is_vip {
	return YES;
}

- (void)setIs_vip:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook TPPlayerConfig
- (void)setUserIsVip:(bool)arg1 {
	arg1 = YES;
	%orig;
}

- (bool)userIsVip {
	return YES;
}
%end

%hook TPPlayerMgr
- (void)setUserInfoWithUin:(id)arg1 isVip:(bool)arg2 {
	arg2 = YES;
	%orig;
}
%end

%hook TPProxyGlobalManager
- (void)updateUserUin:(id)arg1 isVip:(bool)arg2 {
	arg2 = YES;
	%orig;
}
%end

%hook TPReportParamsVodEx
- (bool)vip {
	return YES;
}

- (void)setVip:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook V2JKLiveGiftMessage
- (bool)is_vip {
	return YES;
}

- (void)setIs_vip:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook ViperVideoFrameLoggingBufferService
- (id)initWithIncludeStartIndexHash:(bool)arg1 {
	arg1 = YES;
	return %orig;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKChatVIPLimitCell
- (void)setSelected:(bool)arg1 animated:(bool)arg2 {
	arg1 = NO;
	arg2 = YES;
	%orig;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKChatVipTranstionGuidanceCell
- (void)setSelected:(bool)arg1 animated:(bool)arg2 {
	arg1 = YES;
	arg2 = YES;
	%orig;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKHouse
- (bool)is_vip {
	return YES;
}

- (void)setIs_vip:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKPublicLeapSwt
- (bool)onGetVipStatus {
	return YES;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKRechargePackageModel
- (long long)yeecoin {
	return 99999999;
}

- (void)setYeecoin:(long long)arg1 {
	arg1 = 999999999;
	%orig;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKVIPVController
- (void)viewWillAppear:(bool)arg1 {
	arg1 = YES;
	%orig;
}

- (void)viewDidAppear:(bool)arg1 {
	arg1 = YES;
	%orig;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKWalletViewController
- (void)pagingContentViewWithContentView:(id)arg1 progress:(double)arg2 currentIndex:(long long)arg3 targetIndex:(long long)arg4 {
	arg3 = 9999;
	arg4 = 9999;
	arg2 = 9999;
	%orig;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKYeeBeanViewController
- (long long)numberOfSectionsInCollectionView:(id)arg1 {
	return 999;
}
%end

%hook YeeTalkPatchedSwiftClassNameJKYeeCoinViewController
- (void)getYeeBeanBalance {
	%orig;
}
%end

%ctor {
	%init(YeeTalkPatchedSwiftClassNameJKPublicLeapSwt = objc_getClass("YeeTalk.JKPublicLeapSwt"),
		YeeTalkPatchedSwiftClassNameJKHouse = objc_getClass("YeeTalk.JKHouse"),
		YeeTalkPatchedSwiftClassNameJKRechargePackageModel = objc_getClass("YeeTalk.JKRechargePackageModel"),
		YeeTalkPatchedSwiftClassNameJKYeeBeanViewController = objc_getClass("YeeTalk.JKYeeBeanViewController"),
		YeeTalkPatchedSwiftClassNameJKChatVipTranstionGuidanceCell = objc_getClass("YeeTalk.JKChatVipTranstionGuidanceCell"),
		YeeTalkPatchedSwiftClassNameJKChatVIPLimitCell = objc_getClass("YeeTalk.JKChatVIPLimitCell"),
		YeeTalkPatchedSwiftClassNameJKVIPVController = objc_getClass("YeeTalk.JKVIPVController"),
		YeeTalkPatchedSwiftClassNameJKYeeCoinViewController = objc_getClass("YeeTalk.JKYeeCoinViewController"),
		YeeTalkPatchedSwiftClassNameJKWalletViewController = objc_getClass("YeeTalk.JKWalletViewController"));

}