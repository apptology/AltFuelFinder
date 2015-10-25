.class public Lcom/biznessapps/coupons/CouponDetailFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.source "CouponDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragmentNew",
        "<",
        "Lcom/biznessapps/coupons/ActivityEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECKIN_FORMAT:Ljava/lang/String; = "%d/%d"


# instance fields
.field private checkinCount:I

.field private checkinLabelView:Landroid/widget/TextView;

.field private checkinLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private coupon:Lcom/biznessapps/coupons/CouponEntity;

.field private couponCheckinView:Landroid/widget/TextView;

.field private couponState:I

.field private currentLocation:Landroid/location/Location;

.field private description:Landroid/widget/TextView;

.field private headerView:Landroid/widget/ImageView;

.field private isQrCoupon:Z

.field private locListener:Landroid/location/LocationListener;

.field private onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field private postActivityButton:Landroid/widget/ImageView;

.field private postActivityCircleView:Landroid/widget/ImageView;

.field private redeemButton:Landroid/widget/Button;

.field private redeemTextView:Landroid/widget/TextView;

.field private shareButton:Landroid/widget/ImageView;

.field private socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;-><init>()V

    .line 87
    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    .line 97
    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLocations:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/biznessapps/coupons/CouponDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$1;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/coupons/CouponDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    iget v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/coupons/CouponDetailFragment;Lcom/biznessapps/coupons/CouponEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;
    .param p1, "x1"    # Lcom/biznessapps/coupons/CouponEntity;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/biznessapps/coupons/CouponDetailFragment;->storeCoupon(Lcom/biznessapps/coupons/CouponEntity;)V

    return-void
.end method

.method static synthetic access$102(Lcom/biznessapps/coupons/CouponDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateControls()V

    return-void
.end method

.method static synthetic access$1200(Lcom/biznessapps/coupons/CouponDetailFragment;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateLocationData(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/biznessapps/coupons/CouponDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityCircleView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/coupons/CouponDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->loadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->redeem()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->tryToUseAgain()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/coupons/CouponDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    return v0
.end method

.method static synthetic access$500(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->doQrScanning()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->doGpsCheckin()V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/coupons/CouponDetailFragment;Landroid/app/Activity;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/coupons/CouponDetailFragment;->showMultipleDialog(Landroid/app/Activity;ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->doActionPosting()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/coupons/CouponDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;

    .prologue
    .line 63
    iget v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/biznessapps/coupons/CouponDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    return p1
.end method

.method private checkCouponInitialState()V
    .locals 4

    .prologue
    .line 578
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTarget()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    .line 579
    iget v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    .line 588
    :goto_0
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateControls()V

    .line 589
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->getLastRedeemedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 583
    const/4 v0, 0x2

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    goto :goto_0

    .line 585
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    goto :goto_0
.end method

.method private doActionPosting()V
    .locals 11

    .prologue
    .line 722
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v2}, Lcom/biznessapps/coupons/CouponEntity;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->checkLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler()Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v10

    .line 725
    .local v10, "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, "avatarUrl":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Lcom/biznessapps/coupons/CouponDetailFragment$12;

    invoke-direct {v0, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$12;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    .line 746
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v2, :cond_1

    const-string v9, "post_qr_coupon_activity.php"

    .line 747
    .local v9, "postUrl":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v2}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTarget()I

    move-result v3

    sub-int v7, v2, v3

    .line 749
    .local v7, "sequence":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 750
    .local v8, "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "user_type"

    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string v2, "user_id"

    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->tabId:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v6}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v9}, Lcom/biznessapps/api/AppHttpUtils;->postActivity(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    .line 757
    .end local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "avatarUrl":Ljava/lang/String;
    .end local v7    # "sequence":I
    .end local v8    # "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "postUrl":Ljava/lang/String;
    .end local v10    # "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_0
    :goto_1
    return-void

    .line 746
    .restart local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v5    # "avatarUrl":Ljava/lang/String;
    .restart local v10    # "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_1
    const-string v9, "post_coupon_activity.php"

    goto :goto_0

    .line 754
    .end local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "avatarUrl":Ljava/lang/String;
    .end local v10    # "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_2
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    goto :goto_1
.end method

.method private doGpsCheckin()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 647
    iget-object v5, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->currentLocation:Landroid/location/Location;

    if-nez v5, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->location_absent:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLastCheckinTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinInterval()I

    move-result v7

    const v8, 0x36ee80

    mul-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    move v0, v3

    .line 652
    .local v0, "canCheckin":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 653
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateCouponsState()V

    .line 654
    iget v5, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    if-ne v5, v3, :cond_3

    .line 655
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->doActionPosting()V

    .line 658
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfRewards()V

    .line 660
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->have_unlocked_coupon:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 661
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateControls()V

    goto :goto_0

    .end local v0    # "canCheckin":Z
    :cond_2
    move v0, v4

    .line 650
    goto :goto_1

    .line 662
    .restart local v0    # "canCheckin":Z
    :cond_3
    iget v5, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    if-nez v5, :cond_4

    .line 663
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->doActionPosting()V

    .line 664
    sget v5, Lcom/biznessapps/layout/R$string;->coupons_checkin_n_times:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateControls()V

    goto :goto_0

    .line 667
    .end local v2    # "format":Ljava/lang/String;
    :cond_4
    iget v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->checking_unsuccess:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/coupons/CouponDetailFragment$9;

    invoke-direct {v5, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$9;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    invoke-static {v3, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 679
    :cond_5
    sget v5, Lcom/biznessapps/layout/R$string;->checkin_interval:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "checkinIntervalFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v6}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinInterval()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private doQrScanning()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLastCheckinTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinInterval()I

    move-result v7

    const v8, 0x36ee80

    mul-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    move v0, v3

    .line 566
    .local v0, "canChecking":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 567
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/biznessapps/camera/scanning/CaptureActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/coupons/CouponDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 575
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .end local v0    # "canChecking":Z
    :cond_0
    move v0, v4

    .line 564
    goto :goto_0

    .line 570
    .restart local v0    # "canChecking":Z
    :cond_1
    sget v5, Lcom/biznessapps/layout/R$string;->checkin_interval:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "checkinIntervalFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v6}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinInterval()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getLocationListener()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/biznessapps/coupons/CouponDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$8;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private initActivities()V
    .locals 7

    .prologue
    .line 695
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->activities_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 696
    .local v0, "activitiesContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v1

    .line 697
    .local v1, "dataContainerColor":I
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 698
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v2}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 700
    sget v2, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->activity:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 703
    new-instance v2, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    new-instance v5, Lcom/biznessapps/coupons/CouponDetailFragment$10;

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/biznessapps/coupons/CouponDetailFragment$10;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/common/social/OnSocialLoginListener;)V

    iput-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    .line 710
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/biznessapps/coupons/CouponDetailFragment$11;

    invoke-direct {v3, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$11;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    return-void
.end method

.method private initCheckinLocations(Lcom/biznessapps/coupons/CouponEntity;)V
    .locals 6
    .param p1, "coupon"    # Lcom/biznessapps/coupons/CouponEntity;

    .prologue
    .line 506
    invoke-virtual {p1}, Lcom/biznessapps/coupons/CouponEntity;->getLocations()Ljava/util/List;

    move-result-object v0

    .line 507
    .local v0, "couponLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-eqz v0, :cond_1

    .line 508
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/location/entities/LocationEntity;

    .line 509
    .local v2, "item":Lcom/biznessapps/location/entities/LocationEntity;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLocations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 227
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 228
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v9, v11}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 229
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->coupon_title_label:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 230
    .local v8, "titleView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->date_text_view:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 231
    .local v1, "dateView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->coupon_description_label:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->description:Landroid/widget/TextView;

    .line 232
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->redeem_textview:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemTextView:Landroid/widget/TextView;

    .line 233
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->coupon_checkin_textview:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponCheckinView:Landroid/widget/TextView;

    .line 234
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->coupon_checkin_label_view:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    .line 235
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->direction_button:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    .local v2, "directionView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->redeem_button:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    .line 237
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->post_activity_label:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 239
    .local v7, "postActivityLabel":Landroid/widget/TextView;
    sget v9, Lcom/biznessapps/layout/R$string;->directions:I

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    iget-boolean v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v9, :cond_2

    sget v9, Lcom/biznessapps/layout/R$string;->scan:I

    :goto_0
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemTextView:Landroid/widget/TextView;

    sget v10, Lcom/biznessapps/layout/R$string;->redeemed:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    sget v10, Lcom/biznessapps/layout/R$string;->stamp_card:I

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 243
    sget v9, Lcom/biznessapps/layout/R$string;->post_activity:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/coupons/CouponsListFragment;->getNextCheckinTime(Lcom/biznessapps/coupons/CouponEntity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "nextCheckinTime":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 247
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    iget-boolean v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v9, :cond_3

    const/16 v9, 0x8

    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->header_image:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->headerView:Landroid/widget/ImageView;

    .line 252
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v9}, Lcom/biznessapps/coupons/CouponEntity;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {p0, v1, v9}, Lcom/biznessapps/coupons/CouponDetailFragment;->setDate(Landroid/widget/TextView;Lcom/biznessapps/coupons/CouponEntity;)V

    .line 254
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v9}, Lcom/biznessapps/coupons/CouponEntity;->getHeaderImage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 255
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v3

    .line 256
    .local v3, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v6, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 257
    .local v6, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 258
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v9}, Lcom/biznessapps/coupons/CouponEntity;->getHeaderImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v6, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 260
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 261
    invoke-virtual {v3, v6}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 263
    .end local v3    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v6    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_1
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v9

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->coupons_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 266
    .local v0, "couponContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->setGlobalBackgroundColor(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/api/UiSettings;)V

    .line 268
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->turn_function_button:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityButton:Landroid/widget/ImageView;

    .line 269
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->turn_circle_view:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityCircleView:Landroid/widget/ImageView;

    .line 271
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v9, v11}, Lcom/biznessapps/coupons/CouponEntity;->setSelected(Z)V

    .line 272
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v9}, Lcom/biznessapps/coupons/CouponEntity;->isSelected()Z

    move-result v9

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityCircleView:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityButton:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v9, v10, v11, v12}, Lcom/biznessapps/utils/ViewUtils;->updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    .line 274
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 275
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->description:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponCheckinView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    const/4 v4, 0x0

    .line 281
    .local v4, "leftDrawableIndex":I
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponCheckinView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 288
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->initActivities()V

    .line 289
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    new-instance v10, Lcom/biznessapps/coupons/CouponDetailFragment$2;

    invoke-direct {v10, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$2;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v9, Lcom/biznessapps/coupons/CouponDetailFragment$3;

    invoke-direct {v9, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$3;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->shareButton:Landroid/widget/ImageView;

    .line 321
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v9

    iget-object v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->shareButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/biznessapps/coupons/CouponDetailFragment$4;

    invoke-direct {v10, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$4;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-void

    .line 240
    .end local v0    # "couponContainer":Landroid/view/ViewGroup;
    .end local v4    # "leftDrawableIndex":I
    .end local v5    # "nextCheckinTime":Ljava/lang/String;
    :cond_2
    sget v9, Lcom/biznessapps/layout/R$string;->checkin:I

    goto/16 :goto_0

    .line 249
    .restart local v5    # "nextCheckinTime":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 7
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 214
    iget-object v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 216
    .local v3, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/coupons/ActivityEntity;

    .line 217
    .local v2, "item":Lcom/biznessapps/coupons/ActivityEntity;
    iget-object v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v2    # "item":Lcom/biznessapps/coupons/ActivityEntity;
    :cond_0
    new-instance v0, Lcom/biznessapps/coupons/ActivitiesAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v4, v3, v6}, Lcom/biznessapps/coupons/ActivitiesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 220
    .local v0, "adapter":Lcom/biznessapps/coupons/ActivitiesAdapter;
    iget-boolean v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Lcom/biznessapps/coupons/ActivitiesAdapter;->setType(I)V

    .line 221
    iget-object v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 224
    .end local v0    # "adapter":Lcom/biznessapps/coupons/ActivitiesAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    :cond_1
    return-void

    .line 220
    .restart local v0    # "adapter":Lcom/biznessapps/coupons/ActivitiesAdapter;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private redeem()V
    .locals 5

    .prologue
    .line 476
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 477
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->redeem_coupon:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 479
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, -0x1

    sget v3, Lcom/biznessapps/layout/R$string;->yes:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/biznessapps/coupons/CouponDetailFragment$6;

    invoke-direct {v4, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$6;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 495
    const/4 v2, -0x2

    sget v3, Lcom/biznessapps/layout/R$string;->no:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/biznessapps/coupons/CouponDetailFragment$7;

    invoke-direct {v4, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$7;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 502
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 503
    return-void
.end method

.method private setDate(Landroid/widget/TextView;Lcom/biznessapps/coupons/CouponEntity;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "item"    # Lcom/biznessapps/coupons/CouponEntity;

    .prologue
    .line 359
    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    .line 360
    sget v2, Lcom/biznessapps/layout/R$string;->ongoing:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 377
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v1, 0x0

    .line 363
    .local v1, "startDateValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 365
    .local v0, "endDateValue":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 366
    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_1
    :goto_1
    const-string v2, "%s - %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    .line 369
    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 370
    sget v2, Lcom/biznessapps/layout/R$string;->ongoing:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 371
    :cond_3
    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 372
    const-string v1, ""

    .line 373
    invoke-virtual {p2}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showMultipleDialog(Landroid/app/Activity;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialogTitleId"    # I
    .param p3, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    const/4 v8, 0x0

    .line 332
    iget-object v6, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v6}, Lcom/biznessapps/coupons/CouponEntity;->getLocations()Ljava/util/List;

    move-result-object v5

    .line 333
    .local v5, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 334
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/location/entities/LocationEntity;

    .line 335
    .local v4, "location":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v4    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    :goto_0
    return-void

    .line 337
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$layout;->multiple_item_dialog:I

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 339
    .local v3, "listViewRoot":Landroid/view/ViewGroup;
    sget v6, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 340
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 341
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 342
    new-instance v1, Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v5}, Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 343
    .local v1, "ex":Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    .end local v1    # "ex":Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;
    :cond_1
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 346
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 348
    sget v6, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v7, Lcom/biznessapps/coupons/CouponDetailFragment$5;

    invoke-direct {v7, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$5;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private storeCoupon(Lcom/biznessapps/coupons/CouponEntity;)V
    .locals 2
    .param p1, "coupon"    # Lcom/biznessapps/coupons/CouponEntity;

    .prologue
    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v0, "dataToStore":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/storage/StorageKeeper;->addCoupons(Ljava/util/List;)V

    .line 692
    return-void
.end method

.method private tryToUseAgain()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    .line 464
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    .line 465
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    iget v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinTarget(I)V

    .line 466
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v0, v2, v3}, Lcom/biznessapps/coupons/CouponEntity;->setLastRedeemedTime(J)V

    .line 467
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v0, v2, v3}, Lcom/biznessapps/coupons/CouponEntity;->setLastCheckinTime(J)V

    .line 468
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {p0, v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->storeCoupon(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 469
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateControls()V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->coupon_cant_be_used:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateControls()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 381
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v2}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v2

    if-nez v2, :cond_0

    .line 382
    iput v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    if-ne v2, v4, :cond_2

    .line 391
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->redeemed:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 394
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponCheckinView:Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->redeemed:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 395
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->description:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    iget v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    if-ne v2, v7, :cond_3

    .line 399
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponCheckinView:Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->unlocked:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 400
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->redeem:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 402
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->description:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :cond_3
    iget v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 404
    :cond_4
    iget-boolean v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v2, :cond_5

    .line 405
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->scan_qr_title:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 409
    :goto_1
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponCheckinView:Landroid/widget/TextView;

    const-string v3, "%d/%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v5}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v5

    iget v6, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v5}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-boolean v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v2, :cond_6

    sget v2, Lcom/biznessapps/layout/R$string;->checkin_scan_message:I

    :goto_2
    invoke-virtual {p0, v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "format":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->description:Landroid/widget/TextView;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/coupons/CouponsListFragment;->getNextCheckinTime(Lcom/biznessapps/coupons/CouponEntity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "nextCheckinTime":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 415
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 407
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "nextCheckinTime":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->checkin:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 411
    :cond_6
    sget v2, Lcom/biznessapps/layout/R$string;->coupons_checkin_n_times:I

    goto :goto_2

    .line 417
    .restart local v0    # "format":Ljava/lang/String;
    .restart local v1    # "nextCheckinTime":Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLabelView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v2, :cond_8

    sget v2, Lcom/biznessapps/layout/R$string;->scan:I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_8
    sget v2, Lcom/biznessapps/layout/R$string;->checkin:I

    goto :goto_3
.end method

.method private updateCouponsState()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 610
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLocations()Ljava/util/List;

    move-result-object v1

    .line 611
    .local v1, "couponLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-eqz v1, :cond_1

    .line 612
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/location/entities/LocationEntity;

    .line 613
    .local v4, "item":Lcom/biznessapps/location/entities/LocationEntity;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 616
    new-instance v5, Landroid/location/Location;

    const-string v7, ""

    invoke-direct {v5, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 618
    .local v5, "locItem":Landroid/location/Location;
    :try_start_0
    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    .line 619
    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_1
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->currentLocation:Landroid/location/Location;

    invoke-virtual {v7, v5}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 624
    .local v0, "couponDistance":F
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getRadius()F

    move-result v7

    iget-object v8, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v8}, Lcom/biznessapps/coupons/CouponEntity;->getDistanceType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/biznessapps/location/LocationUtils;->getDistanceValueInMeters(FLjava/lang/String;)F

    move-result v6

    .line 626
    .local v6, "radiusInMeters":F
    cmpg-float v7, v0, v6

    if-gez v7, :cond_3

    .line 627
    iget v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    if-lez v7, :cond_1

    .line 628
    iget v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    .line 629
    iget v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    if-nez v7, :cond_2

    .line 630
    iput v10, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    .line 634
    :goto_2
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    iget v8, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    invoke-virtual {v7, v8}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinTarget(I)V

    .line 635
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/biznessapps/coupons/CouponEntity;->setLastCheckinTime(J)V

    .line 636
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {p0, v7}, Lcom/biznessapps/coupons/CouponDetailFragment;->storeCoupon(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 644
    .end local v0    # "couponDistance":F
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v5    # "locItem":Landroid/location/Location;
    .end local v6    # "radiusInMeters":F
    :cond_1
    return-void

    .line 620
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    .restart local v5    # "locItem":Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 621
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 632
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "couponDistance":F
    .restart local v6    # "radiusInMeters":F
    :cond_2
    iput v9, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    goto :goto_2

    .line 640
    :cond_3
    const/4 v7, -0x1

    iput v7, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    goto/16 :goto_0
.end method

.method private updateCouponsState(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    iget v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    if-lez v0, :cond_0

    .line 594
    iget v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    .line 595
    iget v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    if-nez v0, :cond_1

    .line 596
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    iget v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinTarget(I)V

    .line 601
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/coupons/CouponEntity;->setLastCheckinTime(J)V

    .line 602
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {p0, v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->storeCoupon(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 607
    :cond_0
    :goto_1
    return-void

    .line 598
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    goto :goto_0

    .line 605
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    goto :goto_1
.end method

.method private updateLocationData(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 539
    if-eqz p1, :cond_0

    .line 540
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->currentLocation:Landroid/location/Location;

    .line 544
    :cond_0
    const/4 v2, 0x0

    .line 545
    .local v2, "distance":F
    iget-object v6, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinLocations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    .line 546
    .local v0, "checkin":Lcom/biznessapps/location/entities/LocationEntity;
    new-instance v5, Landroid/location/Location;

    const-string v6, ""

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 548
    .local v5, "locItem":Landroid/location/Location;
    :try_start_0
    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 549
    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_1
    invoke-virtual {p1, v5}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 554
    .local v1, "currentDistance":F
    cmpg-float v6, v1, v2

    if-ltz v6, :cond_2

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-nez v6, :cond_1

    .line 555
    :cond_2
    move v2, v1

    goto :goto_0

    .line 550
    .end local v1    # "currentDistance":F
    :catch_0
    move-exception v3

    .line 551
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 558
    .end local v0    # "checkin":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "locItem":Landroid/location/Location;
    :cond_3
    return-void
.end method


# virtual methods
.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 2

    .prologue
    .line 453
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 454
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 457
    :cond_0
    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    iget-boolean v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v1, :cond_0

    const-string v0, "qr_coupon_activities.php?app_code=%s&id=%s&tab_id=%s&show_all=1"

    .line 185
    .local v0, "mainPartUrlFormat":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 184
    .end local v0    # "mainPartUrlFormat":Ljava/lang/String;
    :cond_0
    const-string v0, "coupon_activities.php?app_code=%s&id=%s&tab_id=%s&show_all=1"

    goto :goto_0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->initAdsWithAlpha()V

    .line 175
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 424
    if-eqz p3, :cond_0

    if-ne p1, v3, :cond_0

    .line 425
    const-string v2, "SCAN_RESULT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "contents":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-direct {p0, v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateCouponsState(Ljava/lang/String;)V

    .line 428
    iget v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    if-ne v2, v3, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfRewards()V

    .line 432
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->have_unlocked_coupon:I

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 433
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->doActionPosting()V

    .line 434
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateControls()V

    .line 445
    .end local v0    # "contents":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 435
    .restart local v0    # "contents":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    if-nez v2, :cond_2

    .line 436
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->doActionPosting()V

    .line 437
    sget v2, Lcom/biznessapps/layout/R$string;->coupons_scan_n_times:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->updateControls()V

    goto :goto_0

    .line 440
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->qr_unsuccess_scanning:I

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    sget v1, Lcom/biznessapps/layout/R$layout;->coupon_detail_layout:I

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->initSettingsData()V

    .line 122
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QR_COUPON_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->items:Ljava/util/List;

    .line 124
    iget-boolean v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->currentLocation:Landroid/location/Location;

    .line 126
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocationFinder;->addLocationListener(Landroid/location/LocationListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->checkGpsEnabling(Landroid/app/Activity;)Z

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "COUPON_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/coupons/CouponEntity;

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    .line 130
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->bgUrl:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 132
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 134
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {p0, v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->initCheckinLocations(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 135
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->initViews()V

    .line 136
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->checkCouponInitialState()V

    .line 137
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->loadData()V

    .line 138
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->openCustomDialogs()V

    .line 139
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 163
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 166
    :cond_0
    iget-boolean v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-nez v1, :cond_1

    .line 167
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v1

    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/components/LocationFinder;->removeLocationListener(Landroid/location/LocationListener;)V

    .line 169
    :cond_1
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onDestroy()V

    .line 170
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onResume()V

    .line 146
    iget-boolean v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->startSearching()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 150
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onStop()V

    .line 155
    iget-boolean v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->stopSearching()V

    .line 158
    :cond_0
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->tabId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseActivitiesList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment;->items:Ljava/util/List;

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->updateControlsWithData(Landroid/app/Activity;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/biznessapps/coupons/CouponDetailFragment;->plugListView(Landroid/app/Activity;)V

    .line 211
    return-void
.end method
