.class public Lcom/biznessapps/golfcourse/HoleDetailFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;
.source "HoleDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;
    }
.end annotation


# static fields
.field private static final BG_USE_OVERLAY_BLACK_TEXT_TRANSPARENT_COLOR:I = -0x1

.field private static final BG_USE_OVERLAY_BLUE_EFFECT_RADIUS:I = 0x5a

.field private static final BG_USE_OVERLAY_COLOR:I = -0x50000001

.field public static final INTENT_PARAM_KEY_GAME_ID:Ljava/lang/String; = "game_id"

.field public static final INTENT_PARAM_KEY_HOLE_NUMBER:Ljava/lang/String; = "hole_number"

.field public static final INTENT_PARAM_KEY_TAB_IDX:Ljava/lang/String; = "tab_idx"


# instance fields
.field private mAddScoreClickListener:Landroid/view/View$OnClickListener;

.field private mBTGPS:Landroid/widget/Button;

.field private mBTInfo:Landroid/widget/Button;

.field private mBTScore:Landroid/widget/Button;

.field private mBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mCourse:Lcom/biznessapps/golfcourse/model/Course;

.field private mCurrentLocation:Landroid/location/Location;

.field private mCurrentTabId:I

.field private mFinishClickListener:Landroid/view/View$OnClickListener;

.field private mGame:Lcom/biznessapps/golfcourse/model/Game;

.field private mHole:Lcom/biznessapps/golfcourse/model/Hole;

.field private mHoleNumber:I

.field private mIVNext:Landroid/widget/ImageView;

.field private mIVPrev:Landroid/widget/ImageView;

.field private mIVThumbnail:Landroid/widget/ImageView;

.field private mIVZoom:Landroid/widget/ImageView;

.field mLocationListener:Landroid/location/LocationListener;

.field private mNextButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPopupView:Landroid/view/View;

.field private mPrevButtonClickListener:Landroid/view/View$OnClickListener;

.field private mScorePuttsDialogFragment:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

.field private mScorePuttsSelectedListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

.field private mTVFinish:Landroid/widget/TextView;

.field private mTVHandicap:Landroid/widget/TextView;

.field private mTVPar:Landroid/widget/TextView;

.field private mTVTee1:Landroid/widget/TextView;

.field private mTVTee2:Landroid/widget/TextView;

.field private mTVTee3:Landroid/widget/TextView;

.field private mTVTee4:Landroid/widget/TextView;

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mVGCommon:Landroid/view/ViewGroup;

.field private mVGContent:Landroid/view/ViewGroup;

.field private mVGGPS:Landroid/view/ViewGroup;

.field private mVGGPSList:Landroid/view/ViewGroup;

.field private mVGGreenBack:Landroid/view/ViewGroup;

.field private mVGGreenFront:Landroid/view/ViewGroup;

.field private mVGGreenMiddle:Landroid/view/ViewGroup;

.field private mVGHoleDetails:Landroid/view/ViewGroup;

.field private mVGInfo:Landroid/view/ViewGroup;

.field private mVGScore:Landroid/view/ViewGroup;

.field private mVGScoreHeader:Landroid/view/ViewGroup;

.field private mVGScoreList:Landroid/view/ViewGroup;

.field private mVGTabDetails:Landroid/view/ViewGroup;

.field private mVGTabs:Landroid/view/ViewGroup;

.field private mWebInfo:Lcom/biznessapps/widgets/SmartWebView;

.field private mZoomClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    .line 120
    sget v0, Lcom/biznessapps/layout/R$id;->vgInfo:I

    iput v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I

    .line 595
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$1;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mAddScoreClickListener:Landroid/view/View$OnClickListener;

    .line 606
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$2;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mScorePuttsSelectedListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

    .line 647
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mPrevButtonClickListener:Landroid/view/View$OnClickListener;

    .line 659
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$4;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mNextButtonClickListener:Landroid/view/View$OnClickListener;

    .line 671
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mFinishClickListener:Landroid/view/View$OnClickListener;

    .line 692
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mZoomClickListener:Landroid/view/View$OnClickListener;

    .line 723
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$7;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 735
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$8;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mLocationListener:Landroid/location/LocationListener;

    .line 754
    new-instance v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$9;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment$9;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mScorePuttsDialogFragment:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/golfcourse/HoleDetailFragment;Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;
    .param p1, "x1"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mScorePuttsDialogFragment:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mScorePuttsSelectedListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/golfcourse/HoleDetailFragment;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/biznessapps/golfcourse/HoleDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I

    return p1
.end method

.method static synthetic access$1302(Lcom/biznessapps/golfcourse/HoleDetailFragment;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/widgets/SmartWebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mWebInfo:Lcom/biznessapps/widgets/SmartWebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Game;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateScoreLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    return v0
.end method

.method static synthetic access$408(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    return v0
.end method

.method static synthetic access$410(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    return v0
.end method

.method static synthetic access$500(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Hole;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    return-object v0
.end method

.method static synthetic access$502(Lcom/biznessapps/golfcourse/HoleDetailFragment;Lcom/biznessapps/golfcourse/model/Hole;)Lcom/biznessapps/golfcourse/model/Hole;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;
    .param p1, "x1"    # Lcom/biznessapps/golfcourse/model/Hole;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    return-object p1
.end method

.method static synthetic access$600(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Course;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->rebuildTabs()V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method private rebuildGPSLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPSList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 454
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_gps_item_layout:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenFront:Landroid/view/ViewGroup;

    .line 455
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenFront:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->ivCourse:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->ic_green_front:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPSList:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenFront:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_gps_item_layout:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenMiddle:Landroid/view/ViewGroup;

    .line 460
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenMiddle:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->ivCourse:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->ic_green_middle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPSList:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenMiddle:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 464
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_gps_item_layout:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenBack:Landroid/view/ViewGroup;

    .line 465
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenBack:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->ivCourse:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->ic_green_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPSList:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 468
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateGPSLayout()V

    .line 469
    return-void
.end method

.method private rebuildInfoLayout()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->webInfo:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/SmartWebView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mWebInfo:Lcom/biznessapps/widgets/SmartWebView;

    .line 435
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateInfoLayout()V

    .line 436
    return-void
.end method

.method private rebuildScoreLayout()V
    .locals 5

    .prologue
    .line 511
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    if-nez v2, :cond_0

    .line 523
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreList:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_score_item_layout:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 519
    .local v1, "scoreViewItem":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreList:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    .end local v1    # "scoreViewItem":Landroid/view/ViewGroup;
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateScoreLayout()V

    goto :goto_0
.end method

.method private rebuildTabs()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->rebuildInfoLayout()V

    .line 294
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->rebuildGPSLayout()V

    .line 295
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->rebuildScoreLayout()V

    .line 297
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateUI()V

    .line 298
    return-void
.end method

.method private updateCommonLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 374
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    if-nez v3, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->titleTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biznessapps/golfcourse/model/Hole;->getHoleName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVPar:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVHandicap:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->handicap:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVTee1:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->tee1:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVTee2:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->tee2:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVTee3:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->tee3:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVTee4:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->tee4:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVPrev:Landroid/widget/ImageView;

    iget v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    if-eq v3, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 390
    iget v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    invoke-virtual {v6}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 391
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVNext:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVNext:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 393
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVFinish:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    :goto_2
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVPrev:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 403
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    .line 407
    .local v0, "bgColor":I
    :goto_3
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v3

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVPrev:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v5}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 416
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v3

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGCommon:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v6}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 418
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget-object v3, v3, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 419
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 420
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 421
    .local v2, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v2, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 422
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget-object v3, v3, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 423
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 424
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 425
    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    goto/16 :goto_0

    .end local v0    # "bgColor":I
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v2    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_2
    move v3, v5

    .line 389
    goto/16 :goto_1

    .line 395
    :cond_3
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVNext:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVNext:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 397
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVFinish:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 405
    :cond_4
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v3

    const v5, 0x7fffffff

    and-int v0, v3, v5

    .restart local v0    # "bgColor":I
    goto :goto_3

    .line 427
    :cond_5
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVThumbnail:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private updateGPSLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 472
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    if-nez v3, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenFront:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenFront:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->tvYards:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 483
    .local v1, "mTVDistance":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget-object v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v4, v5, v6}, Lcom/biznessapps/golfcourse/model/Hole;->getDistanceAsString(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "distanceYards":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%s - %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v7

    sget v6, Lcom/biznessapps/layout/R$string;->green_front:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "yards":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget-object v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v4, v5, v6}, Lcom/biznessapps/golfcourse/model/Hole;->getDistanceAsString(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenMiddle:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->tvYards:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "mTVDistance":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 490
    .restart local v1    # "mTVDistance":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%s - %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v7

    sget v6, Lcom/biznessapps/layout/R$string;->green_middle:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget-object v6, v6, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v4, v5, v6}, Lcom/biznessapps/golfcourse/model/Hole;->getDistanceAsString(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGreenBack:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->tvYards:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "mTVDistance":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 496
    .restart local v1    # "mTVDistance":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%s - %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v7

    sget v6, Lcom/biznessapps/layout/R$string;->green_back:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZListViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZListViewStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPSList:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/biznessapps/common/style/BZListViewStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    .line 501
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPSList:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method

.method private updateInfoLayout()V
    .locals 4

    .prologue
    .line 439
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mWebInfo:Lcom/biznessapps/widgets/SmartWebView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mWebInfo:Lcom/biznessapps/widgets/SmartWebView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    iget-object v1, v1, Lcom/biznessapps/golfcourse/model/Hole;->description:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/widgets/SmartWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateScoreLayout()V
    .locals 21

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreList:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreList:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 537
    const/4 v5, 0x0

    .line 538
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 539
    .local v9, "playerId":J
    invoke-static {v9, v10}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v8

    .line 541
    .local v8, "player":Lcom/biznessapps/golfcourse/model/Player;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreList:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 543
    .local v12, "scoreViewItem":Landroid/view/ViewGroup;
    sget v18, Lcom/biznessapps/layout/R$id;->vgScore:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 544
    .local v17, "vgScore":Landroid/view/ViewGroup;
    sget v18, Lcom/biznessapps/layout/R$id;->tvPlayer:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 545
    .local v15, "tvPlayer":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->tvScore:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 546
    .local v16, "tvScore":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->tvHoleScore:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 547
    .local v14, "tvHoleScore":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->btAddScore:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 548
    .local v7, "mBTScore":Landroid/widget/Button;
    sget v18, Lcom/biznessapps/layout/R$string;->add_score:I

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/biznessapps/golfcourse/model/PlayerScore;

    .line 551
    .local v11, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    const/4 v3, 0x0

    .line 552
    .local v3, "holeScore":Lcom/biznessapps/golfcourse/model/Score;
    if-eqz v11, :cond_2

    .line 553
    iget-object v0, v11, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holeScore":Lcom/biznessapps/golfcourse/model/Score;
    check-cast v3, Lcom/biznessapps/golfcourse/model/Score;

    .line 556
    .restart local v3    # "holeScore":Lcom/biznessapps/golfcourse/model/Score;
    :cond_2
    iget-object v0, v8, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    if-eqz v11, :cond_3

    if-nez v3, :cond_4

    .line 558
    :cond_3
    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 559
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    new-instance v18, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;Lcom/biznessapps/golfcourse/model/Player;ILcom/biznessapps/golfcourse/model/Score;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mAddScoreClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    move v5, v6

    .line 572
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto/16 :goto_1

    .line 563
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_4
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 564
    new-instance v18, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;-><init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;Lcom/biznessapps/golfcourse/model/Player;ILcom/biznessapps/golfcourse/model/Score;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mAddScoreClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v3, Lcom/biznessapps/golfcourse/model/Score;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "<sup><small>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</small></sup>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 569
    .local v13, "spScore":Landroid/text/Spanned;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getHoleScoreAsString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 574
    .end local v3    # "holeScore":Lcom/biznessapps/golfcourse/model/Score;
    .end local v6    # "index":I
    .end local v7    # "mBTScore":Landroid/widget/Button;
    .end local v8    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .end local v9    # "playerId":J
    .end local v11    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    .end local v12    # "scoreViewItem":Landroid/view/ViewGroup;
    .end local v13    # "spScore":Landroid/text/Spanned;
    .end local v14    # "tvHoleScore":Landroid/widget/TextView;
    .end local v15    # "tvPlayer":Landroid/widget/TextView;
    .end local v16    # "tvScore":Landroid/widget/TextView;
    .end local v17    # "vgScore":Landroid/view/ViewGroup;
    .restart local v5    # "index":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/biznessapps/common/style/BZSectionStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZSectionStyle;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreHeader:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/biznessapps/common/style/BZSectionStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/biznessapps/common/style/BZListViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZListViewStyle;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreList:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/biznessapps/common/style/BZListViewStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreList:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized updateUI()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateCommonLayout()V

    .line 333
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 334
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPS:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 335
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScore:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 337
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTInfo:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 338
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTGPS:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 339
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTScore:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZTabStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTabStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/common/style/BZTabStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    .line 343
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v3

    iget-object v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(ILandroid/view/ViewGroup;)V

    .line 355
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGTabDetails:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 357
    iget v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I

    sget v3, Lcom/biznessapps/layout/R$id;->btInfo:I

    if-ne v2, v3, :cond_2

    .line 358
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTInfo:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 360
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateInfoLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 361
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I

    sget v3, Lcom/biznessapps/layout/R$id;->btGPS:I

    if-ne v2, v3, :cond_3

    .line 362
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPS:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTGPS:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 364
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateGPSLayout()V

    goto/16 :goto_0

    .line 366
    :cond_3
    iget v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I

    sget v3, Lcom/biznessapps/layout/R$id;->btScore:I

    if-ne v2, v3, :cond_4

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 367
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScore:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTScore:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 369
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateScoreLayout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 366
    goto :goto_1
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 194
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_layout:I

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->initAdsWithAlpha()V

    .line 200
    return-void
.end method

.method protected declared-synchronized initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 206
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 208
    sget v0, Lcom/biznessapps/layout/R$id;->vgContent:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGContent:Landroid/view/ViewGroup;

    .line 209
    sget v0, Lcom/biznessapps/layout/R$id;->vgCommon:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGCommon:Landroid/view/ViewGroup;

    .line 210
    sget v0, Lcom/biznessapps/layout/R$id;->llHoleDetails:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGHoleDetails:Landroid/view/ViewGroup;

    .line 212
    sget v0, Lcom/biznessapps/layout/R$id;->tvPar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVPar:Landroid/widget/TextView;

    .line 213
    sget v0, Lcom/biznessapps/layout/R$id;->tvHandicap:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVHandicap:Landroid/widget/TextView;

    .line 214
    sget v0, Lcom/biznessapps/layout/R$id;->tvTee1:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVTee1:Landroid/widget/TextView;

    .line 215
    sget v0, Lcom/biznessapps/layout/R$id;->tvTee2:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVTee2:Landroid/widget/TextView;

    .line 216
    sget v0, Lcom/biznessapps/layout/R$id;->tvTee3:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVTee3:Landroid/widget/TextView;

    .line 217
    sget v0, Lcom/biznessapps/layout/R$id;->tvTee4:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVTee4:Landroid/widget/TextView;

    .line 218
    sget v0, Lcom/biznessapps/layout/R$id;->ivHoleThumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVThumbnail:Landroid/widget/ImageView;

    .line 219
    sget v0, Lcom/biznessapps/layout/R$id;->ivZoom:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVZoom:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVZoom:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mZoomClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget v0, Lcom/biznessapps/layout/R$id;->vgTabs:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGTabs:Landroid/view/ViewGroup;

    .line 223
    sget v0, Lcom/biznessapps/layout/R$id;->vgTabDetails:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGTabDetails:Landroid/view/ViewGroup;

    .line 225
    sget v0, Lcom/biznessapps/layout/R$id;->btInfo:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTInfo:Landroid/widget/Button;

    .line 226
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTInfo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    sget v0, Lcom/biznessapps/layout/R$id;->svInfo:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGInfo:Landroid/view/ViewGroup;

    .line 229
    sget v0, Lcom/biznessapps/layout/R$id;->btGPS:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTGPS:Landroid/widget/Button;

    .line 230
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTGPS:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    sget v0, Lcom/biznessapps/layout/R$id;->svGPS:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPS:Landroid/view/ViewGroup;

    .line 232
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPS:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->vgGPS:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGGPSList:Landroid/view/ViewGroup;

    .line 234
    sget v0, Lcom/biznessapps/layout/R$id;->btScore:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTScore:Landroid/widget/Button;

    .line 235
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTScore:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    sget v0, Lcom/biznessapps/layout/R$id;->svScore:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScore:Landroid/view/ViewGroup;

    .line 237
    sget v0, Lcom/biznessapps/layout/R$id;->vgScoreHeader:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreHeader:Landroid/view/ViewGroup;

    .line 238
    sget v0, Lcom/biznessapps/layout/R$id;->vgScoreList:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGScoreList:Landroid/view/ViewGroup;

    .line 239
    sget v0, Lcom/biznessapps/layout/R$id;->scorePuttsPopupWindow:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mPopupView:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    sget v0, Lcom/biznessapps/layout/R$id;->ivPrev:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVPrev:Landroid/widget/ImageView;

    .line 242
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVPrev:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mPrevButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v0, Lcom/biznessapps/layout/R$id;->ivNext:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVNext:Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVNext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mNextButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    sget v0, Lcom/biznessapps/layout/R$id;->tvFinish:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVFinish:Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVFinish:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mFinishClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->loadUniversalStrings(Landroid/view/ViewGroup;)V

    .line 252
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->titleBarRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 253
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mIVZoom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGHoleDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getGlobalBgColor()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 258
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 260
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mTVFinish:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->finish:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    sget v0, Lcom/biznessapps/layout/R$id;->tvStaticPar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->par:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    sget v0, Lcom/biznessapps/layout/R$id;->tvStaticHandicap:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->handicap:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 269
    sget v0, Lcom/biznessapps/layout/R$id;->tvStaticTees:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->tees:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTInfo:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->info:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTGPS:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->gps:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBTScore:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->score:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 275
    sget v0, Lcom/biznessapps/layout/R$id;->tvStaticPlayer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->player:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    sget v0, Lcom/biznessapps/layout/R$id;->tvStaticScore:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->score:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    return-void
.end method

.method protected onBackgroundLoaded(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->getInstance(Landroid/content/Context;)Lcom/biznessapps/golfcourse/model/GolfCourseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->useBlurOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getViewForBg()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 309
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/biznessapps/utils/BlurEffectUtils;->addBlurEffect(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getViewForBg()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGContent:Landroid/view/ViewGroup;

    const v1, -0x50000001

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 318
    :goto_0
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateUI()V

    .line 319
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getViewForBg()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mVGContent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->initSettingsData()V

    .line 131
    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->loadData()V

    .line 134
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onDestroyView()V

    .line 156
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    iput v1, v0, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    .line 158
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocationFinder;->removeLocationListener(Landroid/location/LocationListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onResume()V

    .line 141
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocationFinder;->startSearching(Z)V

    .line 143
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateUI()V

    .line 144
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onStop()V

    .line 150
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->stopSearching()V

    .line 151
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    .line 164
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 166
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentLocation:Landroid/location/Location;

    .line 167
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v4, v5}, Lcom/biznessapps/common/components/LocationFinder;->addLocationListener(Landroid/location/LocationListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getFragmentArgments()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    :cond_0
    const-wide/16 v1, -0x1

    .line 176
    .local v1, "gameId":J
    if-eqz v0, :cond_1

    .line 177
    const-string v4, "game_id"

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 178
    const-string v4, "hole_number"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    .line 179
    const-string v4, "tab_idx"

    sget v5, Lcom/biznessapps/layout/R$id;->btInfo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I

    .line 182
    :cond_1
    cmp-long v4, v1, v6

    if-eqz v4, :cond_2

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 185
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    .line 186
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    iput v4, v3, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    .line 188
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    .line 189
    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    iget v4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;

    .line 190
    return-void

    .line 182
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 288
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->rebuildTabs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
