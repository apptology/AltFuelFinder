.class public Lcom/biznessapps/home_screen/components/BackgroundComponent;
.super Ljava/lang/Object;
.source "BackgroundComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;
    }
.end annotation


# static fields
.field private static final HEADER_LEFT_ALIGNMENT:Ljava/lang/String; = "left"

.field private static final HEADER_RIGHT_ALIGNMENT:Ljava/lang/String; = "right"


# instance fields
.field private appSettings:Lcom/biznessapps/common/entities/AppSettings;

.field private context:Landroid/content/Context;

.field private homeBgUrl:Ljava/lang/String;

.field private uiSettings:Lcom/biznessapps/api/UiSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;Lcom/biznessapps/common/entities/AppSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeBgUrl"    # Ljava/lang/String;
    .param p3, "uiSettings"    # Lcom/biznessapps/api/UiSettings;
    .param p4, "appSettings"    # Lcom/biznessapps/common/entities/AppSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->context:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v0

    invoke-static {p2, v0}, Lcom/biznessapps/images/NewImageManager;->addWidthParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->homeBgUrl:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->uiSettings:Lcom/biznessapps/api/UiSettings;

    .line 51
    iput-object p4, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 52
    return-void
.end method

.method public static setBlurBg(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 127
    .local v0, "setHomeBgAsyncTask":Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method

.method private setHeaderBackground(Landroid/widget/ImageView;)V
    .locals 16
    .param p1, "headerView"    # Landroid/widget/ImageView;

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v14}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderSrc()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "headerSrc":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 74
    new-instance v13, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    invoke-direct {v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;-><init>()V

    .line 75
    .local v13, "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v14}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderTint()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintColor(I)V

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v14}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderTintOpacity()F

    move-result v14

    invoke-virtual {v13, v14}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintOpacity(F)V

    .line 78
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v14

    invoke-virtual {v14}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v7

    .line 79
    .local v7, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v9, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 80
    .local v9, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v9, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 83
    invoke-virtual {v9, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 84
    const/4 v14, 0x3

    invoke-virtual {v9, v14}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v14}, Lcom/biznessapps/common/entities/AppSettings;->isNormalHeader()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/biznessapps/layout/R$dimen;->footer_bar_height:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 88
    .local v6, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 89
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    const/4 v14, -0x1

    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 113
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {v7, v9}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 117
    .end local v7    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v9    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v13    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :goto_1
    return-void

    .line 95
    .restart local v7    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v9    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .restart local v13    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v14}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderHeight()F

    move-result v3

    .line 96
    .local v3, "headerHeight":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v14}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderWidth()F

    move-result v5

    .line 97
    .local v5, "headerWidth":F
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v14

    invoke-virtual {v14}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v1

    .line 98
    .local v1, "deviceWidth":I
    const/high16 v14, 0x439f0000    # 318.0f

    div-float v14, v5, v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_2

    const/high16 v14, 0x439f0000    # 318.0f

    div-float v10, v5, v14

    .line 99
    .local v10, "proportionCoef":F
    :goto_2
    int-to-float v14, v1

    mul-float/2addr v14, v10

    float-to-int v12, v14

    .line 100
    .local v12, "realHeaderWidth":I
    int-to-float v14, v12

    div-float/2addr v14, v5

    mul-float/2addr v14, v3

    float-to-int v11, v14

    .line 101
    .local v11, "realHeaderHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 103
    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 104
    const/4 v2, 0x1

    .line 105
    .local v2, "gravity":I
    const-string v14, "left"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderAlignment()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 106
    const/4 v2, 0x3

    .line 110
    :cond_1
    :goto_3
    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 98
    .end local v2    # "gravity":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "proportionCoef":F
    .end local v11    # "realHeaderHeight":I
    .end local v12    # "realHeaderWidth":I
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_2

    .line 107
    .restart local v2    # "gravity":I
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v10    # "proportionCoef":F
    .restart local v11    # "realHeaderHeight":I
    .restart local v12    # "realHeaderWidth":I
    :cond_3
    const-string v14, "right"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderAlignment()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 108
    const/4 v2, 0x5

    goto :goto_3

    .line 115
    .end local v1    # "deviceWidth":I
    .end local v2    # "gravity":I
    .end local v3    # "headerHeight":F
    .end local v5    # "headerWidth":F
    .end local v7    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v10    # "proportionCoef":F
    .end local v11    # "realHeaderHeight":I
    .end local v12    # "realHeaderWidth":I
    .end local v13    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_4
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setRootBackground(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->uiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 121
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 122
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v1, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->homeBgUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent;->uiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0, v1, p1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 123
    return-void
.end method


# virtual methods
.method public clearBackgrounds(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "headerView"    # Landroid/widget/ImageView;
    .param p3, "menuView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 63
    :cond_0
    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    :cond_1
    if-eqz p3, :cond_2

    .line 67
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 69
    :cond_2
    return-void
.end method

.method public setBackgrounds(Landroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "headerView"    # Landroid/widget/ImageView;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/biznessapps/home_screen/components/BackgroundComponent;->setRootBackground(Landroid/view/ViewGroup;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/biznessapps/home_screen/components/BackgroundComponent;->setHeaderBackground(Landroid/widget/ImageView;)V

    .line 57
    return-void
.end method
