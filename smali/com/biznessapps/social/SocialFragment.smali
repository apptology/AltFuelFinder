.class public Lcom/biznessapps/social/SocialFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "SocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/social/SocialFragment$ViewHolder;,
        Lcom/biznessapps/social/SocialFragment$SocialAdapter;,
        Lcom/biznessapps/social/SocialFragment$SocialItem;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_SECTION_TYPE:I = 0x1

.field private static final COMMENTS_SECTION_TYPE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SocialFragment"

.field private static final USER_VALUE_FORMAT:Ljava/lang/String; = "{\"names\":[%s]}"


# instance fields
.field private accountsAdapter:Lcom/biznessapps/social/SocialFragment$SocialAdapter;

.field private accountsButton:Landroid/widget/Button;

.field private commentsAdapter:Lcom/biznessapps/events/EventCommentsAdapter;

.field private commentsButton:Landroid/widget/Button;

.field private commentsLabel:Landroid/widget/TextView;

.field private currentType:I

.field private descriptionView:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private shareButton:Landroid/widget/Button;

.field private updateStatusButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/social/SocialFragment;->currentType:I

    .line 635
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/social/SocialFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/social/SocialFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initProfileAndListData()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/social/SocialFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/social/SocialFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/social/SocialFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/social/SocialFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/biznessapps/social/SocialFragment;->currentType:I

    return v0
.end method

.method static synthetic access$202(Lcom/biznessapps/social/SocialFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/social/SocialFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/biznessapps/social/SocialFragment;->currentType:I

    return p1
.end method

.method static synthetic access$300(Lcom/biznessapps/social/SocialFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/social/SocialFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/biznessapps/social/SocialFragment;->updateViewsAndData(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/social/SocialFragment;Lcom/biznessapps/social/SocialFragment$SocialItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/social/SocialFragment;
    .param p1, "x1"    # Lcom/biznessapps/social/SocialFragment$SocialItem;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/biznessapps/social/SocialFragment;->checkSocialNetworks(Lcom/biznessapps/social/SocialFragment$SocialItem;)V

    return-void
.end method

.method public static addComment(Lcom/biznessapps/fan_wall/CommentEntity;)V
    .locals 1
    .param p0, "newComment"    # Lcom/biznessapps/fan_wall/CommentEntity;

    .prologue
    .line 401
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/storage/StorageKeeper;->saveComment(Lcom/biznessapps/fan_wall/CommentEntity;)V

    .line 402
    return-void
.end method

.method public static addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "profileUrl"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v0, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/fan_wall/CommentEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .local v0, "commentItem":Lcom/biznessapps/fan_wall/CommentEntity;
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->addComment(Lcom/biznessapps/fan_wall/CommentEntity;)V

    .line 407
    return-void
.end method

.method private checkSocialNetworks(Lcom/biznessapps/social/SocialFragment$SocialItem;)V
    .locals 5
    .param p1, "item"    # Lcom/biznessapps/social/SocialFragment$SocialItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 436
    invoke-virtual {p1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->getIconId()I

    move-result v0

    .line 439
    .local v0, "iconId":I
    sget v2, Lcom/biznessapps/layout/R$drawable;->facebook_icon:I

    if-ne v2, v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    move-result-object v1

    .line 448
    .local v1, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :goto_0
    if-eqz v1, :cond_3

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 450
    invoke-virtual {v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    new-instance v2, Lcom/biznessapps/social/SocialFragment$8;

    invoke-direct {v2, p0, v1}, Lcom/biznessapps/social/SocialFragment$8;-><init>(Lcom/biznessapps/social/SocialFragment;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    invoke-direct {p0, v2}, Lcom/biznessapps/social/SocialFragment;->promptAndLogout(Ljava/lang/Runnable;)V

    .line 470
    :goto_2
    return-void

    .line 441
    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_0
    sget v2, Lcom/biznessapps/layout/R$drawable;->twitter_icon:I

    if-ne v2, v0, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v1

    .restart local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    goto :goto_0

    .line 444
    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_1
    sget v2, Lcom/biznessapps/layout/R$drawable;->google_plus_icon:I

    if-ne v2, v0, :cond_2

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    move-result-object v1

    .restart local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    goto :goto_0

    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_2
    move v2, v4

    .line 444
    goto :goto_3

    .restart local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_3
    move v3, v4

    .line 448
    goto :goto_1

    .line 463
    :cond_4
    new-instance v2, Lcom/biznessapps/social/SocialFragment$9;

    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/biznessapps/social/SocialFragment$9;-><init>(Lcom/biznessapps/social/SocialFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    goto :goto_2
.end method

.method public static getComments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageKeeper;->getComments()Ljava/util/List;

    move-result-object v0

    .line 394
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .restart local v0    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    :cond_0
    return-object v0
.end method

.method private initAccountsData()V
    .locals 8

    .prologue
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, "accountsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/social/SocialFragment$SocialItem;>;"
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->isLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/biznessapps/layout/R$string;->logout:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "value":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/biznessapps/social/SocialFragment$SocialItem;

    sget v6, Lcom/biznessapps/layout/R$drawable;->facebook_icon:I

    sget v7, Lcom/biznessapps/layout/R$string;->facebook:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/biznessapps/social/SocialFragment$SocialItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->isLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/biznessapps/layout/R$string;->logout:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    :goto_1
    new-instance v5, Lcom/biznessapps/social/SocialFragment$SocialItem;

    sget v6, Lcom/biznessapps/layout/R$drawable;->twitter_icon:I

    sget v7, Lcom/biznessapps/layout/R$string;->twitter:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/biznessapps/social/SocialFragment$SocialItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 313
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/social/SocialFragment$SocialItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/social/SocialFragment$SocialItem;

    .line 314
    .local v2, "item":Lcom/biznessapps/social/SocialFragment$SocialItem;
    iget-object v5, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3, v5}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 308
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/biznessapps/social/SocialFragment$SocialItem;
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/social/SocialFragment$SocialItem;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    sget v5, Lcom/biznessapps/layout/R$string;->connect:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 310
    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    sget v5, Lcom/biznessapps/layout/R$string;->connect:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 316
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/social/SocialFragment$SocialItem;>;"
    :cond_2
    new-instance v5, Lcom/biznessapps/social/SocialFragment$SocialAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v5, p0, v6, v0, v7}, Lcom/biznessapps/social/SocialFragment$SocialAdapter;-><init>(Lcom/biznessapps/social/SocialFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v5, p0, Lcom/biznessapps/social/SocialFragment;->accountsAdapter:Lcom/biznessapps/social/SocialFragment$SocialAdapter;

    .line 317
    return-void
.end method

.method private initCommentsData()V
    .locals 9

    .prologue
    .line 320
    invoke-static {}, Lcom/biznessapps/social/SocialFragment;->getComments()Ljava/util/List;

    move-result-object v3

    .line 323
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    new-instance v0, Lcom/biznessapps/social/SocialFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/social/SocialFragment$3;-><init>(Lcom/biznessapps/social/SocialFragment;)V

    .line 330
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 332
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 333
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 334
    .local v2, "item":Lcom/biznessapps/fan_wall/CommentEntity;
    iget-object v5, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    .end local v2    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/social/SocialFragment;->commentsLabel:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    new-instance v5, Lcom/biznessapps/events/EventCommentsAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v5, v6, v7, v4, v8}, Lcom/biznessapps/events/EventCommentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v5, p0, Lcom/biznessapps/social/SocialFragment;->commentsAdapter:Lcom/biznessapps/events/EventCommentsAdapter;

    .line 338
    return-void
.end method

.method private initListData()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initAccountsData()V

    .line 270
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initCommentsData()V

    .line 271
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/social/SocialFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/social/SocialFragment$4;-><init>(Lcom/biznessapps/social/SocialFragment;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->setOnSocialStatusChangeListener(Lcom/biznessapps/common/social/OnSocialStatusChangeListener;)V

    .line 368
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->accountsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/social/SocialFragment$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/social/SocialFragment$5;-><init>(Lcom/biznessapps/social/SocialFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->commentsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/social/SocialFragment$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/social/SocialFragment$6;-><init>(Lcom/biznessapps/social/SocialFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/biznessapps/social/SocialFragment$7;

    invoke-direct {v1, p0}, Lcom/biznessapps/social/SocialFragment$7;-><init>(Lcom/biznessapps/social/SocialFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 390
    return-void
.end method

.method private initProfileAndListData()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initProfileData()V

    .line 264
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initListData()V

    .line 265
    iget v0, p0, Lcom/biznessapps/social/SocialFragment;->currentType:I

    invoke-direct {p0, v0}, Lcom/biznessapps/social/SocialFragment;->updateViewsAndData(I)V

    .line 266
    return-void
.end method

.method private initProfileData()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 233
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v7, Lcom/biznessapps/layout/R$id;->profile_container:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 234
    .local v0, "profileContainer":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v7, Lcom/biznessapps/layout/R$id;->social_description:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/biznessapps/social/SocialFragment;->descriptionView:Landroid/widget/TextView;

    .line 235
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v7, Lcom/biznessapps/layout/R$id;->profile_name_view:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 236
    .local v3, "profileNameView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v7, Lcom/biznessapps/layout/R$id;->profile_label_view:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 237
    .local v2, "profileLabelView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v7, Lcom/biznessapps/layout/R$id;->profile_icon_image:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 238
    .local v1, "profileIconView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->descriptionView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    sget v6, Lcom/biznessapps/layout/R$string;->connected_to_network:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->descriptionView:Landroid/widget/TextView;

    sget v7, Lcom/biznessapps/layout/R$string;->social_networks_label:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 245
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler()Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v4

    .line 246
    .local v4, "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 248
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    invoke-virtual {v4}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    sget v6, Lcom/biznessapps/layout/R$string;->connected_to_network:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "textFormat":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v6

    invoke-virtual {v4}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 259
    .end local v5    # "textFormat":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initProfileStatisticsData()V

    .line 260
    return-void

    .line 255
    :cond_0
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    iget-object v6, p0, Lcom/biznessapps/social/SocialFragment;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initProfileStatisticsData()V
    .locals 12

    .prologue
    .line 274
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->messages_value_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 275
    .local v1, "messagesValueView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->posts_value_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 276
    .local v3, "postsValueView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->shares_value_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 277
    .local v8, "sharesValueView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->rewards_value_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 279
    .local v6, "rewardsValueView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->messages_text_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 280
    .local v0, "messagesTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->posts_text_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 281
    .local v2, "postsTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->shares_text_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 282
    .local v7, "sharesTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->rewards_text_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 284
    .local v5, "rewardsTextView":Landroid/widget/TextView;
    sget v10, Lcom/biznessapps/layout/R$string;->messages:I

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    .line 285
    sget v10, Lcom/biznessapps/layout/R$string;->fan_wall_posts:I

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 286
    sget v10, Lcom/biznessapps/layout/R$string;->shares_number:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 287
    sget v10, Lcom/biznessapps/layout/R$string;->rewards:I

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 289
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v4

    .line 290
    .local v4, "profile":Lcom/biznessapps/common/social/stats/UserStatsProfile;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfMessages()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfPosts()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfShares()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfRewards()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v10, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    .line 296
    .local v9, "textColor":I
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 147
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/biznessapps/social/SocialFragment;->listView:Landroid/widget/ListView;

    .line 148
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->accounts_button:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/social/SocialFragment;->accountsButton:Landroid/widget/Button;

    .line 149
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->comments_button:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/social/SocialFragment;->commentsButton:Landroid/widget/Button;

    .line 150
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->comments_label:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biznessapps/social/SocialFragment;->commentsLabel:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->update_status_button:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/social/SocialFragment;->updateStatusButton:Landroid/widget/Button;

    .line 153
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->updateStatusButton:Landroid/widget/Button;

    new-instance v3, Lcom/biznessapps/social/SocialFragment$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/social/SocialFragment$1;-><init>(Lcom/biznessapps/social/SocialFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/social/SocialFragment;->shareButton:Landroid/widget/Button;

    .line 183
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->shareButton:Landroid/widget/Button;

    new-instance v3, Lcom/biznessapps/social/SocialFragment$2;

    invoke-direct {v3, p0}, Lcom/biznessapps/social/SocialFragment$2;-><init>(Lcom/biznessapps/social/SocialFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 208
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 210
    .local v0, "buttonsContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->commentsLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->commentsLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 213
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->accountsButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 214
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->commentsButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 215
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->updateStatusButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 216
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->shareButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 217
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->updateStatusButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->shareButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 220
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->shouldHideComments()Z

    move-result v1

    .line 221
    .local v1, "shouldHideComments":Z
    if-eqz v1, :cond_0

    .line 222
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->commentsButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->updateStatusButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->update_status:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 226
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->shareButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->share:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 227
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->accountsButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->accounts:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 228
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->commentsButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 229
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->commentsLabel:Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 230
    return-void
.end method

.method private postNewData()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 481
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v5

    .line 484
    .local v5, "profile":Lcom/biznessapps/common/social/stats/UserStatsProfile;
    invoke-virtual {v5}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfMessages()I

    move-result v2

    .line 485
    .local v2, "messages":I
    invoke-virtual {v5}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfPosts()I

    move-result v4

    .line 486
    .local v4, "posts":I
    invoke-virtual {v5}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfShares()I

    move-result v7

    .line 487
    .local v7, "shares":I
    invoke-virtual {v5}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfRewards()I

    move-result v6

    .line 490
    .local v6, "rewards":I
    new-instance v0, Lcom/biznessapps/social/SocialFragment$10;

    invoke-direct {v0, p0}, Lcom/biznessapps/social/SocialFragment$10;-><init>(Lcom/biznessapps/social/SocialFragment;)V

    .line 513
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler()Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v8

    .line 514
    .local v8, "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    if-nez v8, :cond_0

    .line 538
    :goto_0
    return-void

    .line 519
    :cond_0
    const-string v10, "\"%s\""

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 521
    .local v9, "userValues":Ljava/lang/String;
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 523
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "app_code"

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v10, "messages"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v10, "shares"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v10, "rewards"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v10, "fanwallposts"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v10, "device"

    const-string v11, "android"

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    if-eqz v9, :cond_1

    .line 530
    const-string v10, "{\"names\":[%s]}"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v9, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 531
    const-string v10, "user"

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_1
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v10

    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/common/entities/AppSettings;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "deviceId":Ljava/lang/String;
    const-string v10, "device_token"

    invoke-interface {v3, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v10, "post_stat.php"

    invoke-static {v10, v3, v0, v13}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/biznessapps/api/AsyncCallback;Z)V

    goto/16 :goto_0
.end method

.method private promptAndLogout(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "logoutAction"    # Ljava/lang/Runnable;

    .prologue
    .line 473
    sget v1, Lcom/biznessapps/layout/R$string;->logout_message:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

.method private setAdapter(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initListeners()V

    .line 427
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/biznessapps/social/SocialFragment;->accountsAdapter:Lcom/biznessapps/social/SocialFragment$SocialAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/biznessapps/social/SocialFragment;->commentsAdapter:Lcom/biznessapps/events/EventCommentsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private updateButtonSelection(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->accountsButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 416
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->commentsButton:Landroid/widget/Button;

    if-ne p1, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 417
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->commentsLabel:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    return-void

    :cond_0
    move v0, v2

    .line 415
    goto :goto_0

    :cond_1
    move v1, v2

    .line 416
    goto :goto_1

    .line 417
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initProfileAndListData()V

    .line 422
    return-void
.end method

.method private updateViewsAndData(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/biznessapps/social/SocialFragment;->updateButtonSelection(I)V

    .line 411
    invoke-direct {p0, p1}, Lcom/biznessapps/social/SocialFragment;->setAdapter(I)V

    .line 412
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserStatsViewController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/biznessapps/social/SocialFragment;->bgUrl:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->bgUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    const-string v0, "user_stats.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->social_root:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    sget v1, Lcom/biznessapps/layout/R$layout;->social_layout:I

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->initSettingsData()V

    .line 91
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initViews()V

    .line 92
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initListeners()V

    .line 93
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->initProfileAndListData()V

    .line 94
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->loadData()V

    .line 95
    invoke-direct {p0}, Lcom/biznessapps/social/SocialFragment;->postNewData()V

    .line 97
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->openCustomDialogs()V

    .line 99
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroy()V

    .line 112
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->setOnSocialStatusChangeListener(Lcom/biznessapps/common/social/OnSocialStatusChangeListener;)V

    .line 106
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroyView()V

    .line 107
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/social/SocialFragment;->tabId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseBackgroundData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/social/SocialFragment;->bgUrl:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/biznessapps/social/SocialFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserStatsViewController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
