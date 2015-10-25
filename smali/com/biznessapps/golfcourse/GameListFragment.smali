.class public Lcom/biznessapps/golfcourse/GameListFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;
.source "GameListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment",
        "<",
        "Lcom/biznessapps/golfcourse/GameListLayoutItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final LIST_PLAYER_REQUEST_CODE:I = 0x64

.field private static final NEW_GAME_REQUEST_CODE:I = 0x65

.field private static final SCOREBOARD_REQUEST_CODE:I = 0x66


# instance fields
.field private mAddGameButton:Landroid/widget/ImageView;

.field private mAddPlayerButton:Landroid/widget/ImageView;

.field private mCourseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Course;",
            ">;"
        }
    .end annotation
.end field

.field private mGameButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Game;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerButtonClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedGameItem:Lcom/biznessapps/golfcourse/model/Game;

.field private mTVGuide:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;-><init>()V

    .line 266
    new-instance v0, Lcom/biznessapps/golfcourse/GameListFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/GameListFragment$2;-><init>(Lcom/biznessapps/golfcourse/GameListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mGameButtonClickListener:Landroid/view/View$OnClickListener;

    .line 284
    new-instance v0, Lcom/biznessapps/golfcourse/GameListFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/GameListFragment$3;-><init>(Lcom/biznessapps/golfcourse/GameListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mPlayerButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/biznessapps/golfcourse/GameListFragment;Lcom/biznessapps/golfcourse/model/Game;)Lcom/biznessapps/golfcourse/model/Game;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/GameListFragment;
    .param p1, "x1"    # Lcom/biznessapps/golfcourse/model/Game;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mSelectedGameItem:Lcom/biznessapps/golfcourse/model/Game;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/GameListFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/GameListFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/GameListFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/GameListFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/GameListFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 9
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 187
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mGameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v3, v8}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 189
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->items:Ljava/util/List;

    .line 192
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mGameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Game;

    .line 193
    .local v1, "game":Lcom/biznessapps/golfcourse/model/Game;
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->items:Ljava/util/List;

    new-instance v4, Lcom/biznessapps/golfcourse/GameListLayoutItem;

    invoke-direct {v4, v1}, Lcom/biznessapps/golfcourse/GameListLayoutItem;-><init>(Lcom/biznessapps/golfcourse/model/Game;)V

    iget-object v5, p0, Lcom/biznessapps/golfcourse/GameListFragment;->items:Ljava/util/List;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/GameListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v5, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    .end local v1    # "game":Lcom/biznessapps/golfcourse/model/Game;
    :cond_1
    new-instance v0, Lcom/biznessapps/golfcourse/GameListAdapter;

    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/biznessapps/golfcourse/GameListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, p1, v3, v4}, Lcom/biznessapps/golfcourse/GameListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 197
    .local v0, "adapter":Lcom/biznessapps/golfcourse/GameListAdapter;
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v3, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/GameListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 199
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    new-instance v4, Lcom/biznessapps/golfcourse/GameListFragment$1;

    invoke-direct {v4, p0}, Lcom/biznessapps/golfcourse/GameListFragment$1;-><init>(Lcom/biznessapps/golfcourse/GameListFragment;)V

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 211
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v3, v7}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 212
    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Course;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    const-string v0, "golfcourse.php?app_code=%s&platform=android&&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/golfcourse/GameListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->root:Landroid/view/ViewGroup;

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
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->initAdsWithAlpha()V

    .line 111
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 117
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 119
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setItemsCanFocus(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->initListViewListener()V

    .line 122
    sget v0, Lcom/biznessapps/layout/R$id;->btAddGame:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddGameButton:Landroid/widget/ImageView;

    .line 123
    sget v0, Lcom/biznessapps/layout/R$id;->btAddPlayer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mPlayerButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddGameButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mGameButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddGameButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mPlayerButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 131
    sget v0, Lcom/biznessapps/layout/R$id;->tvGuide:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mTVGuide:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/GameListFragment;->loadUniversalStrings(Landroid/view/ViewGroup;)V

    .line 136
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment;->titleBarRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 137
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mTVGuide:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->tap_plus_button_new_golf_game:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->loadData()V

    .line 246
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 247
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mGameButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddGameButton:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 251
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 227
    sget v0, Lcom/biznessapps/layout/R$id;->action_delete_list_item:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 228
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mSelectedGameItem:Lcom/biznessapps/golfcourse/model/Game;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 229
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mSelectedGameItem:Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v2, v0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/model/Game;->deleteGame(J)Z

    .line 231
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/GameListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 236
    :goto_1
    return v1

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :cond_1
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$menu;->common_delete_list_item_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 223
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 260
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->defineBgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v2, "current_game_id"

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mGameList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v3, v1, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 263
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/golfcourse/GameListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 264
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/GameListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 62
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-static {}, Lcom/biznessapps/golfcourse/CourseJsonParser;->getInstance()Lcom/biznessapps/golfcourse/CourseJsonParser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/biznessapps/golfcourse/CourseJsonParser;->parseCourseList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    .line 87
    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Course;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getBackground()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/GameListFragment;->setBgUrl(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GolfCourseViewController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 94
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 171
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getAllGames(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mGameList:Ljava/util/List;

    .line 177
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/GameListFragment;->plugListView(Landroid/app/Activity;)V

    .line 180
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddGameButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GameListFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
