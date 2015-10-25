.class public Lcom/biznessapps/fan_wall/FanWallFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "FanWallFragment.java"


# static fields
.field protected static info:Lcom/biznessapps/fan_wall/FanWallEntity;


# instance fields
.field protected accountsContentView:Landroid/view/ViewGroup;

.field protected commentParentId:Ljava/lang/String;

.field private commentTextView:Landroid/widget/EditText;

.field protected commentsListView:Landroid/widget/ListView;

.field private fanWallContainer:Landroid/view/ViewGroup;

.field protected loadDataTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private needToReload:Z

.field protected rootView:Landroid/view/ViewGroup;

.field protected tabId:Ljava/lang/String;

.field private useV2Api:Z

.field private wasAnyCommentAdded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fan_wall/FanWallFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanWallFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->wasAnyCommentAdded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/fan_wall/FanWallFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanWallFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->wasAnyCommentAdded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/fan_wall/FanWallFragment;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanWallFragment;
    .param p1, "x1"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/biznessapps/fan_wall/FanWallFragment;->addComment(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fan_wall/FanWallFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanWallFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fan_wall/FanWallFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanWallFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->useV2Api:Z

    return v0
.end method

.method static synthetic access$402(Lcom/biznessapps/fan_wall/FanWallFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanWallFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->needToReload:Z

    return p1
.end method

.method static synthetic access$500(Lcom/biznessapps/fan_wall/FanWallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanWallFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->loadData()V

    return-void
.end method

.method private addComment(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 26
    .param p1, "socialNetworkHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "comment":Ljava/lang/String;
    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/biznessapps/fan_wall/FanWallFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "appCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "tabId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "userId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v5

    .line 282
    .local v5, "userType":I
    invoke-virtual/range {p1 .. p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "userName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->useV2Api:Z

    if-eqz v1, :cond_1

    .line 284
    const-wide/16 v13, 0x0

    .line 285
    .local v13, "latitude":D
    const-wide/16 v11, 0x0

    .line 286
    .local v11, "longitude":D
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentParentId:Ljava/lang/String;

    .line 287
    .local v10, "parentId":Ljava/lang/String;
    const-string v1, "comment986%sbizapps%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v4, v15

    const/4 v15, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v15

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 289
    .local v25, "stringToHash":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/biznessapps/utils/CommonUtils;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "hash":Ljava/lang/String;
    const-string v1, "comment_post.php"

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getResultCallback()Lcom/biznessapps/api/AsyncCallback;

    move-result-object v16

    invoke-static/range {v1 .. v16}, Lcom/biznessapps/api/AppHttpUtils;->postCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V

    .line 300
    .end local v10    # "parentId":Ljava/lang/String;
    .end local v11    # "longitude":D
    .end local v13    # "latitude":D
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfPosts()V

    goto :goto_0

    .line 295
    .end local v9    # "hash":Ljava/lang/String;
    .end local v25    # "stringToHash":Ljava/lang/String;
    :cond_1
    const-string v4, "fan713%s"

    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v1, 0x3

    if-ne v5, v1, :cond_2

    const-string v1, ""

    :goto_2
    aput-object v1, v15, v16

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 296
    .restart local v25    # "stringToHash":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/biznessapps/utils/CommonUtils;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 297
    .restart local v9    # "hash":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getResultCallback()Lcom/biznessapps/api/AsyncCallback;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentParentId:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v2

    invoke-static/range {v15 .. v24}, Lcom/biznessapps/api/AppHttpUtils;->postCommentAsync(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .end local v9    # "hash":Ljava/lang/String;
    .end local v25    # "stringToHash":Ljava/lang/String;
    :cond_2
    move-object v1, v6

    .line 295
    goto :goto_2
.end method

.method private getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/biznessapps/fan_wall/FanWallFragment$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/fan_wall/FanWallFragment$5;-><init>(Lcom/biznessapps/fan_wall/FanWallFragment;)V

    return-object v0
.end method

.method private getResultCallback()Lcom/biznessapps/api/AsyncCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/biznessapps/fan_wall/FanWallFragment$6;

    invoke-direct {v0, p0}, Lcom/biznessapps/fan_wall/FanWallFragment$6;-><init>(Lcom/biznessapps/fan_wall/FanWallFragment;)V

    return-object v0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAN_WALL_INFO_PROPERTY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentParentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fan_wall/FanWallEntity;

    sput-object v1, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    .line 345
    sget-object v1, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->needToReload:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 346
    .local v0, "canUseCache":Z
    :goto_0
    iput-boolean v2, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->needToReload:Z

    .line 347
    return v0

    .end local v0    # "canUseCache":Z
    :cond_0
    move v0, v2

    .line 345
    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "bgUrl":Ljava/lang/String;
    sget-object v1, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    if-eqz v1, :cond_0

    .line 384
    sget-object v1, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/FanWallEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 386
    :cond_0
    return-object v0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 223
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 224
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "parent_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 329
    const-string v1, ""

    .line 330
    .local v1, "request":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "YOUTUBE_MODE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 332
    .local v0, "hasYoutubeFormat":Z
    if-eqz v0, :cond_1

    .line 333
    const-string v3, "fan_wall.php?app_code=%s&yt_id=%s&tab_id=%s&show_all=1"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentParentId:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->tabId:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .end local v0    # "hasYoutubeFormat":Z
    :cond_0
    :goto_0
    return-object v1

    .line 335
    .restart local v0    # "hasYoutubeFormat":Z
    :cond_1
    iget-boolean v3, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->useV2Api:Z

    if-eqz v3, :cond_2

    const-string v2, "comment_list.php?app_code=%s&parent_id=%s&tab_id=%s&show_all=1"

    .line 336
    .local v2, "requestFormat":Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentParentId:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->tabId:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 335
    .end local v2    # "requestFormat":Ljava/lang/String;
    :cond_2
    const-string v2, "fan_wall.php?app_code=%s&parent_id=%s&tab_id=%s&show_all=1"

    goto :goto_1
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->fanWallContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->initAdsWithAlpha()V

    .line 219
    return-void
.end method

.method protected initSettingsData()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->initSettingsData()V

    .line 118
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USE_V2_API"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->useV2Api:Z

    .line 119
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 20
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    sget v17, Lcom/biznessapps/layout/R$id;->choose_accounts_content:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/fan_wall/FanWallFragment;->accountsContentView:Landroid/view/ViewGroup;

    .line 124
    sget v17, Lcom/biznessapps/layout/R$id;->comments_list_view:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/fan_wall/FanWallFragment;->commentsListView:Landroid/widget/ListView;

    .line 125
    sget v17, Lcom/biznessapps/layout/R$id;->fan_wall_root_layout:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/fan_wall/FanWallFragment;->rootView:Landroid/view/ViewGroup;

    .line 126
    sget v17, Lcom/biznessapps/layout/R$id;->comments_list_header:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 127
    .local v4, "commentAddContainer":Landroid/view/ViewGroup;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/UiSettings;->getEvenRowColor()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 129
    sget v17, Lcom/biznessapps/layout/R$id;->comment_text:I

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/fan_wall/FanWallFragment;->commentTextView:Landroid/widget/EditText;

    .line 130
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v6, v0, [Landroid/text/InputFilter;

    .line 131
    .local v6, "fArray":[Landroid/text/InputFilter;
    const/16 v17, 0x0

    new-instance v18, Landroid/text/InputFilter$LengthFilter;

    const/16 v19, 0xfa

    invoke-direct/range {v18 .. v19}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v18, v6, v17

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentTextView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 134
    sget v17, Lcom/biznessapps/layout/R$id;->event_comment_button:I

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 136
    .local v3, "addCommentButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentTextView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    sget v18, Lcom/biznessapps/layout/R$string;->comment_hint:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(I)V

    .line 137
    sget v17, Lcom/biznessapps/layout/R$string;->submit:I

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v17

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 142
    new-instance v13, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v17

    new-instance v18, Lcom/biznessapps/fan_wall/FanWallFragment$2;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/fan_wall/FanWallFragment$2;-><init>(Lcom/biznessapps/fan_wall/FanWallFragment;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v13, v0, v1, v2}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/common/social/OnSocialLoginListener;)V

    .line 149
    .local v13, "socialPopupView":Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    new-instance v17, Lcom/biznessapps/fan_wall/FanWallFragment$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/biznessapps/fan_wall/FanWallFragment$3;-><init>(Lcom/biznessapps/fan_wall/FanWallFragment;Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "ITEM_EXTRA"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 167
    .local v7, "fanWallItem":Lcom/biznessapps/fan_wall/CommentEntity;
    if-eqz v7, :cond_0

    .line 168
    sget v17, Lcom/biznessapps/layout/R$id;->parent_item_container:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 169
    .local v12, "parentItemContainer":Landroid/view/ViewGroup;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    sget v17, Lcom/biznessapps/layout/R$id;->fan_wall_name:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 172
    .local v10, "nameView":Landroid/widget/TextView;
    sget v17, Lcom/biznessapps/layout/R$id;->fan_wall_comment:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 173
    .local v5, "commentView":Landroid/widget/TextView;
    sget v17, Lcom/biznessapps/layout/R$id;->fan_wall_time_ago:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 174
    .local v14, "timeAgoView":Landroid/widget/TextView;
    sget v17, Lcom/biznessapps/layout/R$id;->fan_wall_comment_item_image:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 175
    .local v8, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanWallFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v17

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 176
    sget v17, Lcom/biznessapps/layout/R$id;->fan_wall_uploaded_image:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 177
    .local v16, "uploadImageView":Landroid/widget/ImageView;
    invoke-virtual {v7}, Lcom/biznessapps/fan_wall/CommentEntity;->getTitle()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v7}, Lcom/biznessapps/fan_wall/CommentEntity;->getComment()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v7}, Lcom/biznessapps/fan_wall/CommentEntity;->getDate()Ljava/util/Date;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/utils/DateUtils;->getStringInterval(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v11, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 182
    .local v11, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v11, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 183
    invoke-virtual {v7}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 184
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 185
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 186
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 188
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v9

    .line 189
    .local v9, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v9, v11}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 190
    invoke-virtual {v7}, Lcom/biznessapps/fan_wall/CommentEntity;->getUploadImageUrl()Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, "uploadImageUrl":Ljava/lang/String;
    invoke-static {v15}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 192
    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;)V

    .line 193
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    new-instance v17, Lcom/biznessapps/fan_wall/FanWallFragment$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v7}, Lcom/biznessapps/fan_wall/FanWallFragment$4;-><init>(Lcom/biznessapps/fan_wall/FanWallFragment;Ljava/lang/String;Lcom/biznessapps/fan_wall/CommentEntity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .end local v5    # "commentView":Landroid/widget/TextView;
    .end local v8    # "iconView":Landroid/widget/ImageView;
    .end local v9    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v10    # "nameView":Landroid/widget/TextView;
    .end local v11    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v12    # "parentItemContainer":Landroid/view/ViewGroup;
    .end local v14    # "timeAgoView":Landroid/widget/TextView;
    .end local v15    # "uploadImageUrl":Ljava/lang/String;
    .end local v16    # "uploadImageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v5    # "commentView":Landroid/widget/TextView;
    .restart local v8    # "iconView":Landroid/widget/ImageView;
    .restart local v9    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v10    # "nameView":Landroid/widget/TextView;
    .restart local v11    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .restart local v12    # "parentItemContainer":Landroid/view/ViewGroup;
    .restart local v14    # "timeAgoView":Landroid/widget/TextView;
    .restart local v15    # "uploadImageUrl":Ljava/lang/String;
    .restart local v16    # "uploadImageView":Landroid/widget/ImageView;
    :cond_1
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    packed-switch p2, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 109
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->needToReload:Z

    .line 110
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->loadData()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    sget v0, Lcom/biznessapps/layout/R$layout;->fan_wall_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->root:Landroid/view/ViewGroup;

    .line 84
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->fan_root_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->fanWallContainer:Landroid/view/ViewGroup;

    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->initSettingsData()V

    .line 86
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->loadData()V

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 89
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->openCustomDialogs()V

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/fan_wall/FanWallFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/FanWallFragment$1;-><init>(Lcom/biznessapps/fan_wall/FanWallFragment;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 101
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected plugListView(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 230
    sget-object v6, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    if-eqz v6, :cond_0

    .line 231
    sget-object v6, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    invoke-virtual {v6}, Lcom/biznessapps/fan_wall/FanWallEntity;->getComments()Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    invoke-static {v0}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v2

    .line 233
    .local v2, "hasNoData":Z
    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/fan_wall/FanWallFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    .end local v0    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    .end local v2    # "hasNoData":Z
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v0    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    .restart local v2    # "hasNoData":Z
    :cond_1
    iget-object v6, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentParentId:Ljava/lang/String;

    if-nez v6, :cond_2

    move v3, v4

    .line 237
    .local v3, "isParentAdapter":Z
    :goto_1
    new-instance v1, Lcom/biznessapps/fan_wall/NewFanWallAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, v6, v0, v3, v7}, Lcom/biznessapps/fan_wall/NewFanWallAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/biznessapps/api/UiSettings;)V

    .line 238
    .local v1, "ex":Lcom/biznessapps/fan_wall/NewFanWallAdapter;
    iget-object v6, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentsListView:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 239
    iget-object v5, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentsListView:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "HAS_CHILDS"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentsListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .end local v1    # "ex":Lcom/biznessapps/fan_wall/NewFanWallAdapter;
    .end local v3    # "isParentAdapter":Z
    :cond_2
    move v3, v5

    .line 236
    goto :goto_1
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parent_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentParentId:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->tabId:Ljava/lang/String;

    .line 325
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-boolean v2, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->useV2Api:Z

    if-eqz v2, :cond_2

    .line 353
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseFanComments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 354
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    new-instance v2, Lcom/biznessapps/fan_wall/FanWallEntity;

    invoke-direct {v2}, Lcom/biznessapps/fan_wall/FanWallEntity;-><init>()V

    sput-object v2, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    .line 356
    :cond_0
    sget-object v2, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    invoke-virtual {v2, v0}, Lcom/biznessapps/fan_wall/FanWallEntity;->setComments(Ljava/util/List;)V

    .line 357
    sget-object v4, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getBackground()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/biznessapps/fan_wall/FanWallEntity;->setImageUrl(Ljava/lang/String;)V

    .line 366
    .end local v0    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    :cond_1
    :goto_0
    sget-object v2, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 360
    :cond_2
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseFanWallData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 361
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/FanWallEntity;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fan_wall/FanWallEntity;

    sput-object v2, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    .line 363
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAN_WALL_INFO_PROPERTY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/fan_wall/FanWallFragment;->commentParentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/biznessapps/fan_wall/FanWallFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    invoke-virtual {v2, v4, v5}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/FanWallEntity;>;"
    :cond_3
    move v2, v3

    .line 366
    goto :goto_1
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 372
    invoke-virtual {p0, p1}, Lcom/biznessapps/fan_wall/FanWallFragment;->plugListView(Landroid/app/Activity;)V

    .line 373
    return-void
.end method
