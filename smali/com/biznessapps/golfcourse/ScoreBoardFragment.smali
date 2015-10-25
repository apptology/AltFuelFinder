.class public Lcom/biznessapps/golfcourse/ScoreBoardFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;
.source "ScoreBoardFragment.java"


# static fields
.field public static final INTENT_PARAM_KEY_STAY_ON_SCOREBOARD:Ljava/lang/String; = "stay_on_scoreboard"

.field public static final INTENT_RESULT_CODE_ADD_NOTE:I = 0x66

.field public static final INTENT_RESULT_CODE_HOLE_DETAILS:I = 0x68

.field public static final INTENT_RESULT_CODE_LIST_PLAYER:I = 0x65

.field public static final INTENT_RESULT_CODE_OVERVIEW:I = 0x67

.field public static final RESULT_NEW_GAME:I = 0xc8

.field private static final SHARE_EMAIL_DATE_FORMAT:Ljava/lang/String; = "MMM dd, yyyy"

.field private static final SHARE_EMAIL_DESCRIPTION_FORMAT:Ljava/lang/String; = "%s: %s\n%s:%s"


# instance fields
.field private mCapturedBitmap:Landroid/graphics/Bitmap;

.field private mEditClickListener:Landroid/view/View$OnClickListener;

.field private mGame:Lcom/biznessapps/golfcourse/model/Game;

.field private mIVCourseThumb:Lcom/biznessapps/widgets/SquareImageView;

.field private mIVEdit:Landroid/widget/ImageView;

.field private mIVShare:Landroid/widget/ImageView;

.field private mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

.field private mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

.field private mScoreBoardCellClickListener:Lcom/biznessapps/golfcourse/OnCellClickListener;

.field private mShareClickListener:Landroid/view/View$OnClickListener;

.field private mTVCourseName:Landroid/widget/TextView;

.field private mTVScoreCard:Landroid/widget/TextView;

.field private mVGCourse:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;-><init>()V

    .line 336
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment$3;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mEditClickListener:Landroid/view/View$OnClickListener;

    .line 343
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mShareClickListener:Landroid/view/View$OnClickListener;

    .line 377
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mScoreBoardCellClickListener:Lcom/biznessapps/golfcourse/OnCellClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/golfcourse/ScoreBoardFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/model/Game;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVEdit:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/golfcourse/ScoreBoardFragment;Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;
    .param p1, "x1"    # Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->captureScoreBoardScreen(Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/ScoreBoardAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/golfcourse/ScoreBoardFragment;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private captureScoreBoardScreen(Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 227
    .local v4, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 229
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/SmartTableView;->getScrollPosoitionX()I

    move-result v2

    .line 230
    .local v2, "tableScrollX":I
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/SmartTableView;->getScrollPosoitionY()I

    move-result v3

    .line 232
    .local v3, "tableScrollY":I
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;IILandroid/app/ProgressDialog;Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V

    invoke-virtual {v6, v0}, Lcom/biznessapps/golfcourse/SmartTableView;->fitViewToContents(Lcom/biznessapps/golfcourse/OnTableResizeListener;)V

    .line 266
    return-void
.end method

.method private shareScoreBoard(Lcom/biznessapps/golfcourse/model/Player;)V
    .locals 2
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;

    .prologue
    .line 269
    iget-object v0, p1, Lcom/biznessapps/golfcourse/model/Player;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->nothing_email:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;Lcom/biznessapps/golfcourse/model/Player;)V

    invoke-direct {p0, v0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->captureScoreBoardScreen(Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVShare:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_board_screen_layout:I

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->initAdsWithAlpha()V

    .line 131
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 137
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 140
    sget v0, Lcom/biznessapps/layout/R$id;->ivEdit:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVEdit:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVEdit:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mEditClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVEdit:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 144
    sget v0, Lcom/biznessapps/layout/R$id;->ivShare:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVShare:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVShare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mShareClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v0, Lcom/biznessapps/layout/R$id;->tvScorecard:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mTVScoreCard:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mTVScoreCard:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->score_card:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    sget v0, Lcom/biznessapps/layout/R$id;->vgCourse:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mVGCourse:Landroid/view/ViewGroup;

    .line 152
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mVGCourse:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mVGCourse:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 155
    sget v0, Lcom/biznessapps/layout/R$id;->ivCourseThumb:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/SquareImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVCourseThumb:Lcom/biznessapps/widgets/SquareImageView;

    .line 156
    sget v0, Lcom/biznessapps/layout/R$id;->tvCourseName:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mTVCourseName:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/biznessapps/layout/R$id;->stScoreBoardView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/SmartTableView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

    .line 160
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mScoreBoardCellClickListener:Lcom/biznessapps/golfcourse/OnCellClickListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/SmartTableView;->setOnCellClickListener(Lcom/biznessapps/golfcourse/OnCellClickListener;)V

    .line 162
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->updateUI()V

    .line 163
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 303
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "needsUpdate":Z
    const/16 v4, 0x65

    if-ne p1, v4, :cond_2

    .line 307
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/SmartTableView;->setAdapter(Lcom/biznessapps/golfcourse/SmartTableViewAdapter;)V

    .line 308
    const/4 v2, 0x1

    .line 326
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 328
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_1
    :goto_1
    return-void

    .line 309
    :cond_2
    const/16 v4, 0x66

    if-ne p1, v4, :cond_5

    .line 310
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 311
    if-eqz p3, :cond_3

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 312
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    :goto_3
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 315
    const-string v4, "note"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "note":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iput-object v3, v4, Lcom/biznessapps/golfcourse/model/Game;->notes:Ljava/lang/String;

    .line 318
    const/4 v2, 0x1

    .line 319
    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "note":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 311
    goto :goto_2

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    move v5, v6

    .line 313
    goto :goto_3

    .line 320
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    const/16 v4, 0x67

    if-eq p1, v4, :cond_0

    .line 322
    const/16 v4, 0x68

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 212
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 213
    .local v2, "playerId":J
    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v1

    .line 215
    .local v1, "player":Lcom/biznessapps/golfcourse/model/Player;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v1, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    invoke-direct {p0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->shareScoreBoard(Lcom/biznessapps/golfcourse/model/Player;)V

    .line 221
    .end local v1    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .end local v2    # "playerId":J
    :cond_1
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 201
    sget v4, Lcom/biznessapps/layout/R$string;->choose_player_to_send_email:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 202
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 203
    .local v2, "playerId":J
    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v1

    .line 205
    .local v1, "player":Lcom/biznessapps/golfcourse/model/Player;
    iget-object v4, v1, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 207
    .end local v1    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .end local v2    # "playerId":J
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->initSettingsData()V

    .line 87
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->loadData()V

    .line 90
    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onPause()V

    .line 186
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->onResume()V

    .line 175
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->updateUI()V

    .line 177
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getFragmentArgments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "current_game_id"

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 99
    .local v0, "gameId":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 101
    invoke-static {v0, v1}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    .line 102
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 103
    return-void

    :cond_0
    move v2, v4

    .line 99
    goto :goto_0

    :cond_1
    move v3, v4

    .line 102
    goto :goto_1
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 109
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v1

    iget-object v1, v1, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 111
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v1

    iget-object v1, v1, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVCourseThumb:Lcom/biznessapps/widgets/SquareImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedImage(Ljava/lang/String;Landroid/view/View;)V

    .line 116
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mTVCourseName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v2

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-direct {v1, v2, v3}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;-><init>(Landroid/content/Context;Lcom/biznessapps/golfcourse/model/Game;)V

    iput-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    .line 120
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/SmartTableView;->setAdapter(Lcom/biznessapps/golfcourse/SmartTableViewAdapter;)V

    .line 121
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVCourseThumb:Lcom/biznessapps/widgets/SquareImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/SquareImageView;->setImageResource(I)V

    goto :goto_0
.end method
