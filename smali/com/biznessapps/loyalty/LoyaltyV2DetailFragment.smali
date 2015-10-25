.class public Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.source "LoyaltyV2DetailFragment.java"


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
.field private static final GAUGE_VIEW_PERCENT_OF_WIDTH:I = 0x5a


# instance fields
.field private mActivityListView:Lcom/biznessapps/widgets/RefreshableListView;

.field private mBTStamp:Landroid/widget/Button;

.field private mGaugeView:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

.field private mIVHeaderImageView:Landroid/widget/ImageView;

.field private mIVInfo:Landroid/widget/ImageView;

.field private mIVInfoInfo:Landroid/widget/ImageView;

.field private mIVProfileImage:Lcom/biznessapps/widgets/LoaderImageView;

.field private mIVShare:Landroid/widget/ImageView;

.field private mInfoClickListener:Landroid/view/View$OnClickListener;

.field private mInfoPageDisplayed:Z

.field private mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

.field private mRedeemClickListener:Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

.field private mShareClickListener:Landroid/view/View$OnClickListener;

.field private mStampClickListener:Landroid/view/View$OnClickListener;

.field private mTVInstruction:Landroid/widget/TextView;

.field private mTVPoint:Landroid/widget/TextView;

.field private mTVProfileName:Landroid/widget/TextView;

.field private mVGActivities:Landroid/view/ViewGroup;

.field private mVGGaugeView:Landroid/view/ViewGroup;

.field private mVGInfo:Landroid/view/ViewGroup;

.field private mVGInfoRoot:Landroid/view/ViewGroup;

.field private mVGLoyalty:Landroid/view/ViewGroup;

.field private mVGPerks:Landroid/view/ViewGroup;

.field private mVGProfile:Landroid/view/ViewGroup;

.field private mVGThumbnail:Landroid/view/ViewGroup;

.field private onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field postActivityCallback:Lcom/biznessapps/api/AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mInfoPageDisplayed:Z

    .line 364
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$2;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mShareClickListener:Landroid/view/View$OnClickListener;

    .line 371
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$3;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mStampClickListener:Landroid/view/View$OnClickListener;

    .line 440
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mRedeemClickListener:Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

    .line 483
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$8;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$8;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mInfoClickListener:Landroid/view/View$OnClickListener;

    .line 492
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$9;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$9;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    .line 583
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->postActivityCallback:Lcom/biznessapps/api/AsyncCallback;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mBTStamp:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->stamp()V

    return-void
.end method

.method static synthetic access$1000(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->loadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->login()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->postActivityForStamp()V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/Runnable;
    .param p6, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
    .param p1, "x1"    # Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->postActivityForRedeem(Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V

    return-void
.end method

.method static synthetic access$802(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mInfoPageDisplayed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private applyStyle()V
    .locals 4

    .prologue
    const v3, 0x7fffffff

    .line 292
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGThumbnail:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getGlobalBgColor()I

    move-result v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGThumbnail:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 298
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGThumbnail:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 299
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 302
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfoRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getGlobalBgColor()I

    move-result v1

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVInfoInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfoRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 307
    return-void
.end method

.method private checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "isStamp"    # Z
    .param p2, "secretCode"    # Ljava/lang/String;
    .param p3, "numStamped"    # I
    .param p4, "perkId"    # Ljava/lang/String;
    .param p5, "successRunnable"    # Ljava/lang/Runnable;
    .param p6, "errorRunable"    # Ljava/lang/Runnable;

    .prologue
    .line 511
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 512
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "loyalty_id"

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v0, "code"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v0, "num_stamped"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    if-eqz p1, :cond_1

    .line 516
    const-string v0, "action"

    const-string v1, "stamp"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :goto_0
    const-string v0, "platform"

    const-string v1, "android"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v0, "version"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v0, "is_advanced"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    if-nez p1, :cond_0

    .line 526
    const-string v0, "perk_id"

    invoke-interface {v6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v5

    .line 530
    .local v5, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 531
    const-string v7, "loyalty_check.php"

    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    const/4 v1, 0x1

    invoke-static {v7, v6, v0, v1}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/biznessapps/api/AsyncCallback;Z)V

    .line 580
    return-void

    .line 518
    .end local v5    # "progressDialog":Landroid/app/ProgressDialog;
    :cond_1
    const-string v0, "action"

    const-string v1, "redeem"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private login()V
    .locals 6

    .prologue
    .line 428
    new-instance v0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->root:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    new-instance v4, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$6;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$6;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;ZLcom/biznessapps/common/social/OnSocialLoginListener;)V

    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    .line 438
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 6
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 257
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->items:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 259
    .local v3, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->items:Ljava/util/List;

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

    .line 260
    .local v2, "item":Lcom/biznessapps/coupons/ActivityEntity;
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v2    # "item":Lcom/biznessapps/coupons/ActivityEntity;
    :cond_0
    new-instance v0, Lcom/biznessapps/coupons/ActivitiesAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v4, v3, v5}, Lcom/biznessapps/coupons/ActivitiesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 263
    .local v0, "adapter":Lcom/biznessapps/coupons/ActivitiesAdapter;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/biznessapps/coupons/ActivitiesAdapter;->setType(I)V

    .line 264
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    iget-object v4, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->perkUnitType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/biznessapps/coupons/ActivitiesAdapter;->setLoyaltyV2UnitType(Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 268
    .end local v0    # "adapter":Lcom/biznessapps/coupons/ActivitiesAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    :cond_1
    return-void
.end method

.method private postActivityForRedeem(Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V
    .locals 11
    .param p1, "perk"    # Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 600
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->checkLogin(Z)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 602
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v10

    .line 603
    .local v10, "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    if-eqz v10, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 605
    const-string v9, "post_loyalty_activity.php"

    .line 606
    .local v9, "postUrl":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "avatar":Ljava/lang/String;
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 609
    .local v8, "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "user_type"

    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v0, "user_id"

    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v0, "points"

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getAwardedValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v0, "perk"

    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->postActivityCallback:Lcom/biznessapps/api/AsyncCallback;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->tabId:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v6}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v9}, Lcom/biznessapps/api/AppHttpUtils;->postActivity(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    .line 614
    return-void

    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "avatar":Ljava/lang/String;
    .end local v8    # "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "postUrl":Ljava/lang/String;
    :cond_0
    move v0, v7

    .line 603
    goto :goto_0
.end method

.method private postActivityForStamp()V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 617
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->checkLogin(Z)Z

    move-result v3

    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 619
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v10

    .line 620
    .local v10, "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    if-eqz v10, :cond_0

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 622
    const-string v9, "post_loyalty_activity.php"

    .line 623
    .local v9, "postUrl":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, "avatar":Ljava/lang/String;
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 626
    .local v8, "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "user_type"

    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v0, "user_id"

    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v0, "points"

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getAwardedValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->postActivityCallback:Lcom/biznessapps/api/AsyncCallback;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->tabId:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v6}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getId()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    invoke-static/range {v0 .. v9}, Lcom/biznessapps/api/AppHttpUtils;->postActivity(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    .line 630
    return-void

    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "avatar":Ljava/lang/String;
    .end local v8    # "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "postUrl":Ljava/lang/String;
    :cond_0
    move v0, v2

    .line 620
    goto :goto_0
.end method

.method private rebuildPerkListView()V
    .locals 6

    .prologue
    .line 272
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGLoyalty:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGPerks:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getDefinedLoyaltyPerks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .line 276
    .local v2, "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;-><init>(Landroid/content/Context;)V

    .line 278
    .local v3, "perkItemView":Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$dimen;->common_padding_medium:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 280
    invoke-virtual {v3, v1}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3, v4, v2, v5}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->setPerk(Lcom/biznessapps/loyalty/LoyaltyV2Entity;Lcom/biznessapps/loyalty/LoyaltyV2Perk;Lcom/biznessapps/api/UiSettings;)V

    .line 283
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mRedeemClickListener:Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

    invoke-virtual {v3, v4}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->setOnRedeemClickListener(Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;)V

    .line 285
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGPerks:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 287
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    .end local v3    # "perkItemView":Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;
    :cond_0
    return-void
.end method

.method private stamp()V
    .locals 7

    .prologue
    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$layout;->loyalty_dialog:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 385
    .local v1, "contentView":Landroid/view/ViewGroup;
    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_title_view:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 386
    .local v4, "titleView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$string;->loyalty_stamp_dialog_message:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_secret_edittext:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 389
    .local v3, "secretEditText":Landroid/widget/EditText;
    sget v5, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$4;

    invoke-direct {v6, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$4;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    sget v5, Lcom/biznessapps/layout/R$string;->stamp:I

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;

    invoke-direct {v6, p0, v3}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->loyalty_dialog_title:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 425
    return-void
.end method

.method private updateUI()V
    .locals 11

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 311
    iget-boolean v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mInfoPageDisplayed:Z

    if-eqz v5, :cond_0

    .line 312
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGLoyalty:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 313
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 361
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGLoyalty:Landroid/view/ViewGroup;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 319
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v0

    .line 320
    .local v0, "loginNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v5

    if-eqz v5, :cond_1

    .line 321
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mTVProfileName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    new-instance v1, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 324
    .local v1, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVProfileImage:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v1, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 325
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 326
    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 328
    invoke-virtual {v1, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 329
    invoke-virtual {v1, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 330
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGProfile:Landroid/view/ViewGroup;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 331
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVProfileImage:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 338
    .end local v1    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :goto_1
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/biznessapps/common/social/SocialNetworkManager;->checkLogin(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 339
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mBTStamp:Landroid/widget/Button;

    sget v6, Lcom/biznessapps/layout/R$string;->stamp:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 345
    :goto_2
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mTVPoint:Landroid/widget/TextView;

    const-string v6, "%d %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getAwardedValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    iget-object v8, v8, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->unitShortHand:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v3

    .line 349
    .local v3, "screenWidth":I
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getDeviceHeight()I

    move-result v2

    .line 350
    .local v2, "screenHeight":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 352
    .local v4, "width":I
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mGaugeView:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 353
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 354
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 355
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mGaugeView:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    invoke-virtual {v5, v1}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mGaugeView:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->relayoutGauge()V

    .line 359
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->rebuildPerkListView()V

    goto/16 :goto_0

    .line 333
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "screenHeight":I
    .end local v3    # "screenWidth":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGProfile:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 334
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mTVProfileName:Landroid/widget/TextView;

    sget v6, Lcom/biznessapps/layout/R$string;->anonymous_user:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 341
    :cond_2
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mBTStamp:Landroid/widget/Button;

    sget v6, Lcom/biznessapps/layout/R$string;->login:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "bgUrl":Ljava/lang/String;
    return-object v0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 223
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setTabId(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 227
    :cond_0
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 200
    sget v0, Lcom/biznessapps/layout/R$layout;->loyalty_v2_detail:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    const-string v0, "loyalty_activities.php?app_code=%s&id=%s&tab_id=%s&show_all=1"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->initAdsWithAlpha()V

    .line 218
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    .line 132
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->initViews(Landroid/view/ViewGroup;)V

    .line 134
    sget v2, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVShare:Landroid/widget/ImageView;

    .line 135
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVShare:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mShareClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget v2, Lcom/biznessapps/layout/R$id;->vgLoyalty:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGLoyalty:Landroid/view/ViewGroup;

    .line 138
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGLoyalty:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    sget v2, Lcom/biznessapps/layout/R$id;->vgThumbnail:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGThumbnail:Landroid/view/ViewGroup;

    .line 142
    sget v2, Lcom/biznessapps/layout/R$id;->loyalty_header_image:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVHeaderImageView:Landroid/widget/ImageView;

    .line 144
    sget v2, Lcom/biznessapps/layout/R$id;->ivInfo:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVInfo:Landroid/widget/ImageView;

    .line 145
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVInfo:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mInfoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v2, Lcom/biznessapps/layout/R$id;->vgProfile:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGProfile:Landroid/view/ViewGroup;

    .line 148
    sget v2, Lcom/biznessapps/layout/R$id;->ivProfileImage:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/LoaderImageView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVProfileImage:Lcom/biznessapps/widgets/LoaderImageView;

    .line 149
    sget v2, Lcom/biznessapps/layout/R$id;->tvProfileName:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mTVProfileName:Landroid/widget/TextView;

    .line 152
    sget v2, Lcom/biznessapps/layout/R$id;->vgGauge:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGGaugeView:Landroid/view/ViewGroup;

    .line 153
    sget v2, Lcom/biznessapps/layout/R$id;->gaugeView:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mGaugeView:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    .line 154
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mGaugeView:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v2, v3}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->setLoyaltyEntity(Lcom/biznessapps/loyalty/LoyaltyV2Entity;)V

    .line 155
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mGaugeView:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2, v3}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->setUiSettings(Lcom/biznessapps/api/UiSettings;)V

    .line 156
    sget v2, Lcom/biznessapps/layout/R$id;->tvPoint:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mTVPoint:Landroid/widget/TextView;

    .line 158
    sget v2, Lcom/biznessapps/layout/R$id;->btStamp:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mBTStamp:Landroid/widget/Button;

    .line 159
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mBTStamp:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mStampClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget v2, Lcom/biznessapps/layout/R$id;->vgPerks:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGPerks:Landroid/view/ViewGroup;

    .line 162
    sget v2, Lcom/biznessapps/layout/R$id;->vgActivities:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGActivities:Landroid/view/ViewGroup;

    .line 163
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGActivities:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mActivityListView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 164
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mActivityListView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v2, v4}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 166
    new-instance v1, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 167
    .local v1, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 168
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getHeaderImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 170
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 171
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 174
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->rebuildPerkListView()V

    .line 177
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v0

    .line 178
    .local v0, "dataContainerColor":I
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGActivities:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v0, v3}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 179
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGActivities:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 181
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGActivities:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->activity:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 185
    sget v2, Lcom/biznessapps/layout/R$id;->vgInfo:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    .line 186
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    sget v2, Lcom/biznessapps/layout/R$id;->vgInfoRoot:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfoRoot:Landroid/view/ViewGroup;

    .line 189
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfoRoot:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->ivInfoInfo:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mIVInfoInfo:Landroid/widget/ImageView;

    .line 191
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->tvInstruction:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mTVInstruction:Landroid/widget/TextView;

    .line 192
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mTVInstruction:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    iget-object v3, v3, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->instruction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->applyStyle()V

    .line 196
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->updateUI()V

    .line 197
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ITEM_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->items:Ljava/util/List;

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 102
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->openCustomDialogs()V

    .line 105
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->checkLogin(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_login_notice:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    sget v1, Lcom/biznessapps/layout/R$string;->okay_i_got_it:I

    new-instance v2, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 120
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->root:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onPause()V

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onResume()V

    .line 212
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->updateUI()V

    .line 213
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 248
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseActivitiesList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->items:Ljava/util/List;

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->updateControlsWithData(Landroid/app/Activity;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->plugListView(Landroid/app/Activity;)V

    .line 254
    return-void
.end method
