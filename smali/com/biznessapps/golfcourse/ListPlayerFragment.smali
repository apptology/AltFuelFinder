.class public Lcom/biznessapps/golfcourse/ListPlayerFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;
.source "ListPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final EDIT_PLAYER_REQUEST_CODE:I = 0x65

.field public static final INTENT_PARAM_KEY_SELECTED_GAME_ID:Ljava/lang/String; = "selected_game_id"

.field private static final NEW_PLAYER_REQUEST_CODE:I = 0x64

.field private static final SELECT_PLAYER_REQUEST_CODE:I = 0x66


# instance fields
.field private mAddPlayerButton:Landroid/widget/ImageView;

.field private mAddPlayerClickListener:Landroid/view/View$OnClickListener;

.field private mDoneButton:Landroid/widget/ImageView;

.field private mGame:Lcom/biznessapps/golfcourse/model/Game;

.field private mPlayerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Player;",
            ">;"
        }
    .end annotation
.end field

.field private mTVGuide:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mPlayerList:Ljava/util/List;

    .line 245
    new-instance v0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;-><init>(Lcom/biznessapps/golfcourse/ListPlayerFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mAddPlayerClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ListPlayerFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/ListPlayerFragment;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ListPlayerFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Lcom/biznessapps/golfcourse/model/Game;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/ListPlayerFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    return-object v0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 12
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 193
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mPlayerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 194
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v11}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 195
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v4, "mLayoutList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mPlayerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/golfcourse/model/Player;

    .line 199
    .local v5, "player":Lcom/biznessapps/golfcourse/model/Player;
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 200
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    iget-object v6, v5, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setTitle(Ljava/lang/String;)V

    .line 201
    iget v6, v5, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "handicap":Ljava/lang/String;
    iget v6, v5, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    if-lez v6, :cond_1

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_1
    const-string v6, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    sget v8, Lcom/biznessapps/layout/R$string;->handicap:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/biznessapps/common/entities/CommonListEntity;->setDescription(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3, v10}, Lcom/biznessapps/common/entities/CommonListEntity;->setArrowVisible(Z)V

    .line 208
    invoke-virtual {v3, v5}, Lcom/biznessapps/common/entities/CommonListEntity;->setObject(Ljava/lang/Object;)V

    .line 210
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "handicap":Ljava/lang/String;
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v5    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :cond_2
    new-instance v6, Lcom/biznessapps/golfcourse/ListPlayerAdapter;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v6, p1, v4, v7}, Lcom/biznessapps/golfcourse/ListPlayerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 214
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v9}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 217
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViews()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_list_player_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    const-string v0, "golfcourse.php?app_code=%s&platform=android&&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->root:Landroid/view/ViewGroup;

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
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->initAdsWithAlpha()V

    .line 100
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 106
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 108
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 110
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setItemsCanFocus(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->initListViewListener()V

    .line 113
    sget v0, Lcom/biznessapps/layout/R$id;->ivAddPlayer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mAddPlayerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Lcom/biznessapps/layout/R$id;->ivDone:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mDoneButton:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mDoneButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    sget v0, Lcom/biznessapps/layout/R$id;->tvGuide:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->loadUniversalStrings(Landroid/view/ViewGroup;)V

    .line 124
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->updateViews()V

    .line 127
    return-void
.end method

.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->tap_plus_button_add_player:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    const/4 v7, -0x1

    if-ne p2, v7, :cond_2

    .line 165
    const/16 v7, 0x66

    if-ne p1, v7, :cond_2

    .line 166
    iget-object v7, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 168
    const-string v7, "selected_players_id"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 169
    .local v5, "ids":[J
    if-eqz v5, :cond_2

    .line 170
    move-object v0, v5

    .local v0, "arr$":[J
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-wide v3, v0, v2

    .line 171
    .local v3, "id":J
    iget-object v7, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v7, v3, v4}, Lcom/biznessapps/golfcourse/model/Game;->addPlayer(J)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "arr$":[J
    .end local v2    # "i$":I
    .end local v3    # "id":J
    .end local v5    # "ids":[J
    .end local v6    # "len$":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 174
    .restart local v0    # "arr$":[J
    .restart local v2    # "i$":I
    .restart local v5    # "ids":[J
    .restart local v6    # "len$":I
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v7, v8}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "arr$":[J
    .end local v2    # "i$":I
    .end local v5    # "ids":[J
    .end local v6    # "len$":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->loadData()V

    .line 183
    return-void

    .line 175
    .restart local v0    # "arr$":[J
    .restart local v2    # "i$":I
    .restart local v5    # "ids":[J
    .restart local v6    # "len$":I
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 224
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 226
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v3, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 227
    .local v1, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Player;

    .line 229
    .local v2, "player":Lcom/biznessapps/golfcourse/model/Player;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    const-string v3, "TAB_SPECIAL_ID"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v3, "BG_URL_EXTRA"

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v3, "TAB_LABEL"

    sget v4, Lcom/biznessapps/layout/R$string;->edit_player:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v3, "golf_player_id"

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 237
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    if-eqz v3, :cond_0

    .line 238
    const-string v3, "game_id"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 240
    :cond_0
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GOLF_EDIT_PLAYER_FRAGMENT"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_edit_player_layout:I

    const/16 v4, 0x65

    invoke-virtual {p0, v3, v0, v4}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->startFragment(ILandroid/content/Intent;I)V

    .line 243
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 11
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v9, -0x1

    .line 59
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 61
    iget-object v8, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mPlayerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getFragmentArgments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 67
    const-string v8, "selected_game_id"

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 71
    .local v1, "gameId":J
    cmp-long v8, v1, v9

    if-eqz v8, :cond_0

    .line 72
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v8

    iput-object v8, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    .line 73
    iget-object v8, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v7, v8, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    .line 78
    .local v7, "playerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 79
    .local v4, "id":J
    invoke-static {v4, v5}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v6

    .line 80
    .local v6, "player":Lcom/biznessapps/golfcourse/model/Player;
    iget-object v8, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment;->mPlayerList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":J
    .end local v6    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .end local v7    # "playerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getAllPlayersIds()Ljava/util/List;

    move-result-object v7

    .restart local v7    # "playerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 84
    .end local v1    # "gameId":J
    .end local v7    # "playerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->updateViews()V

    .line 85
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->plugListView(Landroid/app/Activity;)V

    .line 190
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
