.class public Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "EditPlayerScorePuttsDialogFragment.java"


# instance fields
.field private mDoneClickListener:Landroid/view/View$OnClickListener;

.field private mIVDone:Landroid/widget/ImageView;

.field private mListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

.field private mOutsideClickListener:Landroid/view/View$OnClickListener;

.field private mPutts:I

.field private mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

.field private mPuttsStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScore:I

.field private mScoreAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

.field private mScoreStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

.field private mSettings:Lcom/biznessapps/api/UiSettings;

.field private mTVPlayer:Landroid/widget/TextView;

.field private mTVScore:Landroid/widget/TextView;

.field private mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

.field private mVGContents:Landroid/view/ViewGroup;

.field private mVGOutside:Landroid/view/ViewGroup;

.field private mVGSectionBar:Landroid/view/ViewGroup;

.field private mVGTitle:Landroid/view/ViewGroup;

.field private mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

.field private mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 57
    iput v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I

    .line 58
    iput v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I

    .line 192
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;-><init>(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    .line 210
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$2;-><init>(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    .line 219
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;-><init>(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 230
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$4;-><init>(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    .line 80
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppUiSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mSettings:Lcom/biznessapps/api/UiSettings;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I

    return v0
.end method

.method static synthetic access$602(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I

    return p1
.end method

.method static synthetic access$700(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    return-object v0
.end method

.method private initUI()V
    .locals 6

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->vgOutside:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGOutside:Landroid/view/ViewGroup;

    .line 130
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGOutside:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->vgTitle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGTitle:Landroid/view/ViewGroup;

    .line 133
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGTitle:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 134
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGTitle:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 135
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGTitle:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 137
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->ivDone:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mIVDone:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mIVDone:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvPlayer:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTVPlayer:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvScore:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTVScore:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->vgSectionBar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGSectionBar:Landroid/view/ViewGroup;

    .line 144
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGSectionBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 145
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGTitle:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 147
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->vgContents:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGContents:Landroid/view/ViewGroup;

    .line 149
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->wvPutts:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/wheel/WheelView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

    .line 150
    new-instance v0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "%d"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    .line 151
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    const/16 v1, 0x11

    invoke-virtual {v0, v4, v1}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->setRange(II)V

    .line 152
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setCyclic(Z)V

    .line 154
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->addChangingListener(Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;)V

    .line 155
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    iget v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getIndexFromValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 157
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->wvScore:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/wheel/WheelView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;

    .line 158
    new-instance v0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "%d"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    .line 159
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    invoke-virtual {v0, v4, v5}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->setRange(II)V

    .line 160
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setCyclic(Z)V

    .line 162
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->addChangingListener(Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;)V

    .line 163
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    iget v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getIndexFromValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 164
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-interface {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;->onStateChanged(Lcom/biznessapps/widgets/wheel/WheelView;)V

    .line 166
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->loadUniversalStrings(Landroid/view/ViewGroup;)V

    .line 168
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mVGContents:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 170
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->updateUI()V

    .line 171
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ljava/lang/String;)Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    .locals 4
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 66
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 67
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 72
    new-instance v0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    invoke-direct {v0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;-><init>()V

    .line 73
    .local v0, "fragment":Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    invoke-virtual {v0, p1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v0, v1, p2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 76
    return-object v0
.end method

.method private updateUI()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTVPlayer:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTVPlayer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->player:Lcom/biznessapps/golfcourse/model/Player;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<sup><small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</small></sup>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 188
    .local v0, "spScore":Landroid/text/Spanned;
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTVScore:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 174
    sget v0, Lcom/biznessapps/layout/R$id;->tvColumnScore:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->score:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    sget v0, Lcom/biznessapps/layout/R$id;->tvColumnPutts:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->putts:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x0

    const v1, 0x1030010

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->setStyle(II)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$style;->PopupDialogAnimation_Window:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 94
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_edit_score_layout:I

    .line 98
    .local v0, "contentViewID":I
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    .line 100
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->initUI()V

    .line 102
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public setHoleScore(Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;)V
    .locals 3
    .param p1, "tag"    # Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    .prologue
    .line 106
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 108
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    .line 109
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    iget v0, v0, Lcom/biznessapps/golfcourse/model/Score;->score:I

    iput v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I

    .line 111
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVScore:Lcom/biznessapps/widgets/wheel/WheelView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    iget v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getIndexFromValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    iget v0, v0, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    iput v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I

    .line 116
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    iget v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getIndexFromValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->updateUI()V

    .line 122
    return-void

    .line 106
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnScorePuttsSelectedListener(Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

    .line 126
    return-void
.end method
