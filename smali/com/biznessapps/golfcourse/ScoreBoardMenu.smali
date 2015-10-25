.class public Lcom/biznessapps/golfcourse/ScoreBoardMenu;
.super Landroid/widget/FrameLayout;
.source "ScoreBoardMenu.java"


# instance fields
.field private mListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;

.field private mMenuItemClickListener:Landroid/view/View$OnClickListener;

.field private mTVCurrentGame:Landroid/widget/TextView;

.field private mTVMainMenu:Landroid/widget/TextView;

.field private mTVNewGame:Landroid/widget/TextView;

.field private mTVNotes:Landroid/widget/TextView;

.field private mTVOverview:Landroid/widget/TextView;

.field private mTVPlayers:Landroid/widget/TextView;

.field protected mUiSettings:Lcom/biznessapps/api/UiSettings;

.field private mVGListView:Landroid/view/ViewGroup;

.field private mVGRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardMenu$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu$1;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardMenu;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p2, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    .line 40
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/ScoreBoardMenu;)Lcom/biznessapps/golfcourse/OnMenuSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->initUI()V

    .line 57
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_game_screen_drawer_menu_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->listView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGListView:Landroid/view/ViewGroup;

    .line 67
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvCurrentGame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVCurrentGame:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVCurrentGame:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvNewGame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVNewGame:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVNewGame:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvNotes:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVNotes:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVNotes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvPlayers:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVPlayers:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVPlayers:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvOverview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVOverview:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVOverview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvMainMenu:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVMainMenu:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVMainMenu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->loadUniversalStrings(Landroid/view/ViewGroup;)V

    .line 84
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 86
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZListViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZListViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGListView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZListViewStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    .line 87
    return-void
.end method


# virtual methods
.method public hideMenu(I)V
    .locals 2
    .param p1, "layoutId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    return-void
.end method

.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVCurrentGame:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->current_game:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVNewGame:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->new_game:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVNotes:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->notes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVPlayers:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->players:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVOverview:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->overview:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mTVMainMenu:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->main_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    return-void
.end method

.method public setOnMenuSelectedListener(Lcom/biznessapps/golfcourse/OnMenuSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/golfcourse/OnMenuSelectListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;

    .line 45
    return-void
.end method

.method public showMenu(I)V
    .locals 2
    .param p1, "layoutId"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void
.end method
