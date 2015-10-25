.class public Lcom/biznessapps/golfcourse/ScoreBoardActivity;
.super Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;
.source "ScoreBoardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;
    }
.end annotation


# static fields
.field public static final INTENT_PARAM_KEY_CURRENT_GAME_ID:Ljava/lang/String; = "current_game_id"

.field public static final INTENT_PARAM_KEY_STAY_ON_SCOREBOARD:Ljava/lang/String; = "stay_on_scoreboard"

.field public static final INTENT_RESULT_CODE_ADD_NOTE:I = 0x66

.field public static final INTENT_RESULT_CODE_HOLE_DETAILS:I = 0x68

.field public static final INTENT_RESULT_CODE_LIST_PLAYER:I = 0x65

.field public static final INTENT_RESULT_CODE_OVERVIEW:I = 0x67

.field public static final RESULT_NEW_GAME:I = 0xc8


# instance fields
.field private mAddNoteFragment:Lcom/biznessapps/golfcourse/AddNoteFragment;

.field private mDrawerMenu:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

.field private mDrawerMenuClickListener:Landroid/view/View$OnClickListener;

.field private mEditPlayerFragment:Lcom/biznessapps/golfcourse/EditPlayerFragment;

.field private mGame:Lcom/biznessapps/golfcourse/model/Game;

.field private mHoleDetailFragment:Lcom/biznessapps/golfcourse/HoleDetailFragment;

.field private mIVDrawerMenu:Landroid/widget/ImageView;

.field private mListPlayerFragment:Lcom/biznessapps/golfcourse/ListPlayerFragment;

.field public mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

.field private mMenuSelectListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;

.field private mOverviewFragment:Lcom/biznessapps/golfcourse/OverviewFragment;

.field private mScoreBoardFragment:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

.field private mSelectPlayerFragment:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

.field private mSelectedFragment:Lcom/biznessapps/common/fragments/CommonFragment;

.field private mStackFragments:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectedFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    .line 73
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    .line 390
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity$1;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mDrawerMenuClickListener:Landroid/view/View$OnClickListener;

    .line 397
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuSelectListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->defineBgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Lcom/biznessapps/golfcourse/model/Game;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    return-object v0
.end method

.method private initDrawerMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-static {p0, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 162
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_home_screen_layout:I

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(I)V

    .line 163
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu(Z)V

    .line 167
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;-><init>(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mDrawerMenu:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    .line 168
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mDrawerMenu:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    .line 170
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mDrawerMenu:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuSelectListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->setOnMenuSelectedListener(Lcom/biznessapps/golfcourse/OnMenuSelectListener;)V

    .line 172
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->updateDrawerMenu()V

    .line 173
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 177
    sget v0, Lcom/biznessapps/layout/R$id;->ivDrawer:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mIVDrawerMenu:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mIVDrawerMenu:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mDrawerMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getBackgroundView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 181
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->getMenuView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 182
    invoke-static {p0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mIVDrawerMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 184
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->updateUI()V

    .line 185
    return-void
.end method

.method private popupFromStack()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 245
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;

    .line 246
    .local v2, "stackItem":Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;
    if-nez v2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 249
    :cond_0
    iget v3, v2, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->fragmentId:I

    int-to-long v0, v3

    .line 250
    .local v0, "fragmentId":J
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_board_screen_layout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 251
    iput-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mScoreBoardFragment:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .line 266
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 252
    :cond_2
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_add_note_layout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    .line 253
    iput-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mAddNoteFragment:Lcom/biznessapps/golfcourse/AddNoteFragment;

    goto :goto_1

    .line 254
    :cond_3
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_list_player_layout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_4

    .line 255
    iput-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mListPlayerFragment:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    goto :goto_1

    .line 256
    :cond_4
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_select_player_layout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_5

    .line 257
    iput-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectPlayerFragment:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    goto :goto_1

    .line 258
    :cond_5
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_edit_player_layout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_6

    .line 259
    iput-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mEditPlayerFragment:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    goto :goto_1

    .line 260
    :cond_6
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_overview_layout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_7

    .line 261
    iput-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mOverviewFragment:Lcom/biznessapps/golfcourse/OverviewFragment;

    goto :goto_1

    .line 262
    :cond_7
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_layout:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 263
    iput-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mHoleDetailFragment:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    goto :goto_1
.end method

.method private showFragment(ILandroid/content/Intent;)Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;
    .locals 2
    .param p1, "fragmentId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "fragment":Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;
    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_board_screen_layout:I

    if-ne p1, v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mScoreBoardFragment:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    if-nez v1, :cond_0

    .line 299
    new-instance v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-direct {v1}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mScoreBoardFragment:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mScoreBoardFragment:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    .line 333
    :cond_1
    :goto_0
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v1, v0

    .line 335
    check-cast v1, Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-direct {p0, v1, p2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->showFragment(Lcom/biznessapps/common/fragments/CommonFragment;Landroid/content/Intent;)V

    .line 337
    return-object v0

    .line 302
    :cond_2
    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_add_note_layout:I

    if-ne p1, v1, :cond_4

    .line 303
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mAddNoteFragment:Lcom/biznessapps/golfcourse/AddNoteFragment;

    if-nez v1, :cond_3

    .line 304
    new-instance v1, Lcom/biznessapps/golfcourse/AddNoteFragment;

    invoke-direct {v1}, Lcom/biznessapps/golfcourse/AddNoteFragment;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mAddNoteFragment:Lcom/biznessapps/golfcourse/AddNoteFragment;

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mAddNoteFragment:Lcom/biznessapps/golfcourse/AddNoteFragment;

    goto :goto_0

    .line 307
    :cond_4
    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_list_player_layout:I

    if-ne p1, v1, :cond_6

    .line 308
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mListPlayerFragment:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    if-nez v1, :cond_5

    .line 309
    new-instance v1, Lcom/biznessapps/golfcourse/ListPlayerFragment;

    invoke-direct {v1}, Lcom/biznessapps/golfcourse/ListPlayerFragment;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mListPlayerFragment:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mListPlayerFragment:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    goto :goto_0

    .line 312
    :cond_6
    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_select_player_layout:I

    if-ne p1, v1, :cond_8

    .line 313
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectPlayerFragment:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    if-nez v1, :cond_7

    .line 314
    new-instance v1, Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    invoke-direct {v1}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectPlayerFragment:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    .line 316
    :cond_7
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectPlayerFragment:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    goto :goto_0

    .line 317
    :cond_8
    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_edit_player_layout:I

    if-ne p1, v1, :cond_a

    .line 318
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mEditPlayerFragment:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    if-nez v1, :cond_9

    .line 319
    new-instance v1, Lcom/biznessapps/golfcourse/EditPlayerFragment;

    invoke-direct {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mEditPlayerFragment:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    .line 321
    :cond_9
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mEditPlayerFragment:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    goto :goto_0

    .line 322
    :cond_a
    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_overview_layout:I

    if-ne p1, v1, :cond_c

    .line 323
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mOverviewFragment:Lcom/biznessapps/golfcourse/OverviewFragment;

    if-nez v1, :cond_b

    .line 324
    new-instance v1, Lcom/biznessapps/golfcourse/OverviewFragment;

    invoke-direct {v1}, Lcom/biznessapps/golfcourse/OverviewFragment;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mOverviewFragment:Lcom/biznessapps/golfcourse/OverviewFragment;

    .line 326
    :cond_b
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mOverviewFragment:Lcom/biznessapps/golfcourse/OverviewFragment;

    goto :goto_0

    .line 327
    :cond_c
    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_layout:I

    if-ne p1, v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mHoleDetailFragment:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    if-nez v1, :cond_d

    .line 329
    new-instance v1, Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mHoleDetailFragment:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .line 331
    :cond_d
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mHoleDetailFragment:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    goto :goto_0

    .line 333
    :cond_e
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showFragment(Lcom/biznessapps/common/fragments/CommonFragment;Landroid/content/Intent;)V
    .locals 4
    .param p1, "fragment"    # Lcom/biznessapps/common/fragments/CommonFragment;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 341
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectedFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    if-ne v2, p1, :cond_0

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectedFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    .line 347
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 348
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 349
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/biznessapps/common/fragments/CommonFragment;->setArguments(Landroid/os/Bundle;)V

    .line 350
    sget v2, Lcom/biznessapps/layout/R$id;->vgContainer:I

    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectedFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 351
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private updateDrawerMenu()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget v0, v0, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mDrawerMenu:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    sget v1, Lcom/biznessapps/layout/R$id;->tvCurrentGame:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->hideMenu(I)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mDrawerMenu:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    sget v1, Lcom/biznessapps/layout/R$id;->tvCurrentGame:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->showMenu(I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->updateDrawerMenu()V

    .line 210
    return-void
.end method


# virtual methods
.method public finishFragment(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 229
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->isActive:Z

    .line 231
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->finish()V

    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;

    iget v0, v2, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->requestCode:I

    .line 236
    .local v0, "requestCode":I
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->popupFromStack()V

    .line 237
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;

    .line 238
    .local v1, "stackItem":Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;
    iget-object v2, v1, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->fragment:Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;

    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    iget-object v3, v1, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->intent:Landroid/content/Intent;

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->showFragment(Lcom/biznessapps/common/fragments/CommonFragment;Landroid/content/Intent;)V

    .line 240
    iget-object v2, v1, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->fragment:Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;

    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v2, v0, p1, p2}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getBackgroundView()Landroid/view/View;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method protected hasNavigationMenu()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 357
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 360
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->updateDrawerMenu()V

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "needsUpdate":Z
    const/16 v4, 0x66

    if-ne p1, v4, :cond_4

    .line 364
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 365
    if-eqz p3, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 366
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 367
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    :goto_1
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 369
    const-string v4, "note"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "note":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iput-object v3, v4, Lcom/biznessapps/golfcourse/model/Game;->notes:Ljava/lang/String;

    .line 372
    const/4 v2, 0x1

    .line 380
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "note":Ljava/lang/String;
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 382
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v4, v6

    .line 365
    goto :goto_0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    move v5, v6

    .line 367
    goto :goto_1

    .line 374
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    const/16 v4, 0x67

    if-eq p1, v4, :cond_0

    .line 376
    const/16 v4, 0x68

    if-ne p1, v4, :cond_0

    goto :goto_2

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_3
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 280
    const/4 v0, 0x1

    .line 282
    .local v0, "handleByActivity":Z
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mSelectedFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    if-eqz v3, :cond_1

    .line 283
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->backPressedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    .line 284
    .local v2, "listener":Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;
    invoke-interface {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;->onBackPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;
    :cond_1
    if-eqz v0, :cond_2

    .line 291
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->finishFragment(ILandroid/content/Intent;)V

    .line 293
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "stay_on_scoreboard"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 82
    .local v2, "stayOnScoreboard":Z
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->initUI()V

    .line 85
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "extra":Landroid/os/Bundle;
    const-string v3, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getTabId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    const-string v3, "TAB_SPECIAL_ID"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "BG_URL_EXTRA"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->defineBgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "TAB_LABEL"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GOLF_OVERVIEW_FRAGMENT"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "current_game_id"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_board_screen_layout:I

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v1, v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    .line 97
    if-nez v2, :cond_0

    .line 98
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget v3, v3, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    if-nez v3, :cond_1

    .line 100
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extra":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .restart local v0    # "extra":Landroid/os/Bundle;
    const-string v3, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getTabId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    const-string v3, "TAB_SPECIAL_ID"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "BG_URL_EXTRA"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->defineBgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "TAB_LABEL"

    sget v4, Lcom/biznessapps/layout/R$string;->overview:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GOLF_OVERVIEW_FRAGMENT"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "game_id"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 108
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_overview_layout:I

    const/16 v4, 0x67

    invoke-virtual {p0, v3, v1, v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuSelectListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;

    sget v4, Lcom/biznessapps/layout/R$id;->tvCurrentGame:I

    invoke-interface {v3, v4}, Lcom/biznessapps/golfcourse/OnMenuSelectListener;->onMenuSelected(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onDestroy()V

    .line 138
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onPause()V

    .line 127
    return-void
.end method

.method protected onPreInit()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "current_game_id"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 151
    .local v0, "gameId":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 153
    invoke-static {}, Lcom/biznessapps/golfcourse/model/Game;->clearCache()V

    .line 154
    invoke-static {v0, v1}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    .line 155
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 157
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->initDrawerMenu()V

    .line 158
    return-void

    :cond_0
    move v2, v4

    .line 151
    goto :goto_0

    :cond_1
    move v3, v4

    .line 155
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->updateUI()V

    .line 122
    return-void
.end method

.method public popupFragment(I)V
    .locals 2
    .param p1, "topFragmentId"    # I

    .prologue
    .line 270
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;

    .line 271
    .local v0, "stackItem":Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;
    if-eqz v0, :cond_0

    .line 272
    :goto_0
    iget v1, v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->fragmentId:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->popupFromStack()V

    .line 274
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "stackItem":Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;
    check-cast v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;

    .restart local v0    # "stackItem":Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;
    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method public startFragment(ILandroid/content/Intent;I)V
    .locals 7
    .param p1, "fragmentId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->showFragment(ILandroid/content/Intent;)Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;

    move-result-object v3

    .line 225
    .local v3, "fragment":Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mStackFragments:Ljava/util/Stack;

    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;

    move-object v1, p0

    move v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardActivity;ILcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;ILandroid/content/Intent;)V

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method
