.class public Lcom/biznessapps/api/navigation/TabView;
.super Ljava/lang/Object;
.source "TabView.java"


# static fields
.field private static final DEFAULT_LAYOUT_ID:I

.field private static tabMargin:I


# instance fields
.field private final clickAction:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final imageResourceUrl:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private layoutId:I

.field private tabRootLayout:Landroid/view/ViewGroup;

.field private tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

.field private tabSize:I

.field private titleView:Landroid/widget/TextView;

.field private withOldDesign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/biznessapps/layout/R$layout;->tab:I

    sput v0, Lcom/biznessapps/api/navigation/TabView;->DEFAULT_LAYOUT_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;ZLcom/biznessapps/api/navigation/TabViewSettings;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageResourceUrl"    # Ljava/lang/String;
    .param p3, "clickAction"    # Ljava/lang/Runnable;
    .param p4, "withOldDesign"    # Z
    .param p5, "tabSettings"    # Lcom/biznessapps/api/navigation/TabViewSettings;

    .prologue
    .line 66
    sget v6, Lcom/biznessapps/api/navigation/TabView;->DEFAULT_LAYOUT_ID:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/biznessapps/api/navigation/TabView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;ZLcom/biznessapps/api/navigation/TabViewSettings;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;ZLcom/biznessapps/api/navigation/TabViewSettings;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageResourceUrl"    # Ljava/lang/String;
    .param p3, "clickAction"    # Ljava/lang/Runnable;
    .param p4, "withOldDesign"    # Z
    .param p5, "tabSettings"    # Lcom/biznessapps/api/navigation/TabViewSettings;
    .param p6, "layoutId"    # I
    .param p7, "comingTabSize"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget v0, Lcom/biznessapps/api/navigation/TabView;->DEFAULT_LAYOUT_ID:I

    iput v0, p0, Lcom/biznessapps/api/navigation/TabView;->layoutId:I

    .line 48
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabView;->context:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/biznessapps/api/navigation/TabView;->clickAction:Ljava/lang/Runnable;

    .line 50
    iput-boolean p4, p0, Lcom/biznessapps/api/navigation/TabView;->withOldDesign:Z

    .line 51
    iput-object p2, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceUrl:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/biznessapps/api/navigation/TabView;->tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

    .line 53
    iput p6, p0, Lcom/biznessapps/api/navigation/TabView;->layoutId:I

    .line 55
    sget v0, Lcom/biznessapps/api/navigation/TabView;->tabMargin:I

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$dimen;->common_padding_small0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/biznessapps/api/navigation/TabView;->tabMargin:I

    .line 58
    :cond_0
    sget v0, Lcom/biznessapps/api/navigation/TabView;->tabMargin:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p7, v0

    iput v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabSize:I

    .line 60
    invoke-direct {p0}, Lcom/biznessapps/api/navigation/TabView;->initTabViews()V

    .line 61
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/biznessapps/api/navigation/TabView;->getTabOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/api/navigation/TabView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/api/navigation/TabView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->clickAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getTabOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/biznessapps/api/navigation/TabView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/navigation/TabView$1;-><init>(Lcom/biznessapps/api/navigation/TabView;)V

    return-object v0
.end method

.method private initTabViews()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 136
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->context:Landroid/content/Context;

    iget v7, p0, Lcom/biznessapps/api/navigation/TabView;->layoutId:I

    invoke-static {v5, v7}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    .line 137
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    sget v7, Lcom/biznessapps/layout/R$id;->navigation_image_view:I

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    .line 139
    iget v5, p0, Lcom/biznessapps/api/navigation/TabView;->layoutId:I

    sget v7, Lcom/biznessapps/layout/R$layout;->home_tab:I

    if-ne v5, v7, :cond_0

    .line 140
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabSize:I

    iget v7, p0, Lcom/biznessapps/api/navigation/TabView;->tabSize:I

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget v5, Lcom/biznessapps/api/navigation/TabView;->tabMargin:I

    sget v7, Lcom/biznessapps/api/navigation/TabView;->tabMargin:I

    sget v8, Lcom/biznessapps/api/navigation/TabView;->tabMargin:I

    sget v9, Lcom/biznessapps/api/navigation/TabView;->tabMargin:I

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 142
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabSize:I

    int-to-double v7, v5

    const-wide v9, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v7, v9

    double-to-int v1, v7

    .line 145
    .local v1, "imageSize":I
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .local v3, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 147
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 149
    .end local v1    # "imageSize":I
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 150
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v7}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;)V

    .line 153
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    sget v7, Lcom/biznessapps/layout/R$id;->navigation_text_view:I

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    .line 154
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/biznessapps/api/navigation/TabView;->tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/navigation/TabViewSettings;->getTabName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    const v7, -0x333334

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-boolean v5, p0, Lcom/biznessapps/api/navigation/TabView;->withOldDesign:Z

    if-nez v5, :cond_2

    .line 158
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/biznessapps/api/navigation/TabView;->tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/navigation/TabViewSettings;->getTabTextColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    new-instance v4, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    invoke-direct {v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;-><init>()V

    .line 160
    .local v4, "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/navigation/TabViewSettings;->getTabTint()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintColor(I)V

    .line 161
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/navigation/TabViewSettings;->getTabTintOpacity()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintOpacity(F)V

    .line 162
    iget-object v7, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/navigation/TabViewSettings;->isShowText()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v5, p0, Lcom/biznessapps/api/navigation/TabView;->tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/navigation/TabViewSettings;->getTabBgUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v6, v4}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 165
    .end local v4    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_2
    return-void

    .line 162
    .restart local v4    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_3
    const/4 v5, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 98
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/biznessapps/api/navigation/TabView;->withOldDesign:Z

    if-eqz v0, :cond_0

    .line 80
    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->selected_tab_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 82
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 89
    :cond_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->navigation_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public shouldBeSelectedForView(J)Z
    .locals 2
    .param p1, "tabId"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabSettings:Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/TabViewSettings;->getTabId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withOldDesign()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/biznessapps/api/navigation/TabView;->withOldDesign:Z

    return v0
.end method
