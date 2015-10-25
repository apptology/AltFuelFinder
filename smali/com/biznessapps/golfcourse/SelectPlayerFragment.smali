.class public Lcom/biznessapps/golfcourse/SelectPlayerFragment;
.super Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;
.source "SelectPlayerFragment.java"


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
.field public static final INTENT_PARAM_KEY_EXCEPT_PLAYER_IDS:Ljava/lang/String; = "except_players_id"

.field public static final INTENT_PARAM_KEY_SELECTED_PLAYER_IDS:Ljava/lang/String; = "selected_players_id"

.field public static final INTENT_RESULT_PARAM_KEY_PLAYER_IDS:Ljava/lang/String; = "selected_players_id"

.field private static final NEW_PLAYER_REQUEST_CODE:I = 0x64


# instance fields
.field private mAddPlayerButton:Landroid/widget/ImageView;

.field private mAddPlayerClickListener:Landroid/view/View$OnClickListener;

.field private mDeselectedIconResId:I

.field private mDoneButton:Landroid/widget/ImageView;

.field private mDoneClickListener:Landroid/view/View$OnClickListener;

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

.field private mSelectedIconResId:I

.field private mSelectedPlayerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTVGuide:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    .line 47
    sget v0, Lcom/biznessapps/layout/R$drawable;->ic_check_mark_checked:I

    iput v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedIconResId:I

    .line 48
    sget v0, Lcom/biznessapps/layout/R$drawable;->ic_check_mark_unchecked:I

    iput v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mDeselectedIconResId:I

    .line 261
    new-instance v0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;-><init>(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mAddPlayerClickListener:Landroid/view/View$OnClickListener;

    .line 275
    new-instance v0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;-><init>(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mDoneClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/SelectPlayerFragment;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SelectPlayerFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)Lcom/biznessapps/common/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)Lcom/biznessapps/common/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)Lcom/biznessapps/common/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    .prologue
    .line 37
    iget v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedIconResId:I

    return v0
.end method

.method private isSelected(J)Z
    .locals 5
    .param p1, "playerID"    # J

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    if-nez v3, :cond_0

    move v3, v4

    .line 221
    :goto_0
    return v3

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 217
    .local v1, "id":J
    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    .line 218
    const/4 v3, 0x1

    goto :goto_0

    .end local v1    # "id":J
    :cond_2
    move v3, v4

    .line 221
    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 11
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 176
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mPlayerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 177
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v10}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 178
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v4, "mLayoutList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mPlayerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/golfcourse/model/Player;

    .line 182
    .local v5, "player":Lcom/biznessapps/golfcourse/model/Player;
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 183
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    iget-object v6, v5, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setTitle(Ljava/lang/String;)V

    .line 184
    iget v6, v5, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "handicap":Ljava/lang/String;
    iget v6, v5, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    if-lez v6, :cond_1

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_1
    const-string v6, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    sget v8, Lcom/biznessapps/layout/R$string;->handicap:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/biznessapps/common/entities/CommonListEntity;->setDescription(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3, v9}, Lcom/biznessapps/common/entities/CommonListEntity;->setArrowVisible(Z)V

    .line 191
    invoke-virtual {v3, v5}, Lcom/biznessapps/common/entities/CommonListEntity;->setObject(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->isSelected(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    iget v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedIconResId:I

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setImageId(I)V

    .line 201
    :goto_2
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_2
    iget v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mDeselectedIconResId:I

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setImageId(I)V

    goto :goto_2

    .line 204
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "handicap":Ljava/lang/String;
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v5    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :cond_3
    new-instance v6, Lcom/biznessapps/golfcourse/ListPlayerAdapter;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v6, p1, v4, v7}, Lcom/biznessapps/golfcourse/ListPlayerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 205
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v7, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v9}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 208
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private remove(J)Z
    .locals 5
    .param p1, "playerID"    # J

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    if-nez v3, :cond_0

    move v3, v4

    .line 237
    :goto_0
    return v3

    .line 229
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 230
    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 231
    .local v1, "id":J
    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 233
    const/4 v3, 0x1

    goto :goto_0

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "id":J
    :cond_2
    move v3, v4

    .line 237
    goto :goto_0
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mDoneButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_select_player_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    const-string v0, "golfcourse.php?app_code=%s&platform=android&&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->root:Landroid/view/ViewGroup;

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
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->initAdsWithAlpha()V

    .line 101
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 109
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setItemsCanFocus(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->initListViewListener()V

    .line 112
    sget v0, Lcom/biznessapps/layout/R$id;->ivAddPlayer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mAddPlayerButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mAddPlayerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v0, Lcom/biznessapps/layout/R$id;->ivDone:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mDoneButton:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mDoneButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v0, Lcom/biznessapps/layout/R$id;->tvGuide:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->loadUniversalStrings(Landroid/view/ViewGroup;)V

    .line 124
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->updateViews()V

    .line 127
    return-void
.end method

.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mTVGuide:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->tap_plus_button_add_player:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->loadData()V

    .line 166
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
    .line 243
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 245
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v2, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 246
    .local v0, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Player;

    .line 248
    .local v1, "player":Lcom/biznessapps/golfcourse/model/Player;
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->getImageId()I

    move-result v2

    iget v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedIconResId:I

    if-ne v2, v3, :cond_0

    .line 249
    iget v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mDeselectedIconResId:I

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/CommonListEntity;->setImageId(I)V

    .line 251
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v2}, Lcom/biznessapps/common/adapters/AbstractAdapter;->notifyDataSetChanged()V

    .line 259
    return-void

    .line 253
    :cond_0
    iget v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedIconResId:I

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/CommonListEntity;->setImageId(I)V

    .line 255
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 12
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 60
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getAllPlayers()Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mPlayerList:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getFragmentArgments()Landroid/os/Bundle;

    move-result-object v1

    .line 64
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 65
    const-string v10, "selected_players_id"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v9

    .line 66
    .local v9, "selectedIds":[J
    if-eqz v9, :cond_0

    .line 67
    move-object v0, v9

    .local v0, "arr$":[J
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-wide v5, v0, v3

    .line 68
    .local v5, "id":J
    iget-object v10, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedPlayerIds:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "arr$":[J
    .end local v3    # "i$":I
    .end local v5    # "id":J
    .end local v7    # "len$":I
    :cond_0
    const-string v10, "except_players_id"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 73
    .local v2, "exceptIds":[J
    if-eqz v2, :cond_3

    .line 74
    move-object v0, v2

    .restart local v0    # "arr$":[J
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_3

    aget-wide v5, v0, v4

    .line 75
    .restart local v5    # "id":J
    iget-object v10, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mPlayerList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/golfcourse/model/Player;

    .line 76
    .local v8, "player":Lcom/biznessapps/golfcourse/model/Player;
    invoke-virtual {v8}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-nez v10, :cond_1

    .line 77
    iget-object v10, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mPlayerList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    .end local v8    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 85
    .end local v0    # "arr$":[J
    .end local v2    # "exceptIds":[J
    .end local v4    # "i$":I
    .end local v5    # "id":J
    .end local v7    # "len$":I
    .end local v9    # "selectedIds":[J
    :cond_3
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->updateViews()V

    .line 86
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->plugListView(Landroid/app/Activity;)V

    .line 173
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
