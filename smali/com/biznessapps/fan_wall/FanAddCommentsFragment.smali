.class public Lcom/biznessapps/fan_wall/FanAddCommentsFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "FanAddCommentsFragment.java"


# static fields
.field public static final MESSAGE_TEXT_LIMIT:I = 0xfa


# instance fields
.field private buttonsContainer:Landroid/view/ViewGroup;

.field private cancelButton:Landroid/widget/Button;

.field private clearButton:Landroid/widget/Button;

.field private commentEditView:Landroid/widget/EditText;

.field private commentParentId:Ljava/lang/String;

.field private imageToSend:[B

.field private imageUri:Landroid/net/Uri;

.field private mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

.field private messageCounterView:Landroid/widget/TextView;

.field private postButton:Landroid/widget/Button;

.field private progressContainer:Landroid/view/ViewGroup;

.field private takePhotoButton:Landroid/widget/ImageView;

.field private usePhotoOption:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->postComment()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->takePhoto()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanAddCommentsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->setMessageCounterText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanAddCommentsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->closeActivityWithResult(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/FanAddCommentsFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method private closeActivityWithResult(II)V
    .locals 3
    .param p1, "toastResId"    # I
    .param p2, "resultCode"    # I

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 292
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 295
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 297
    :cond_0
    return-void
.end method

.method private defineViewsAccessOnLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->buttonsContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->progressContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->progressContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getProgressBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$1;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->clearButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$2;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->postButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$3;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->takePhotoButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$4;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$5;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 180
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$6;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    return-void
.end method

.method private postComment()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "comment":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "appCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "tabId":Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->defineViewsAccessOnLoading()V

    .line 209
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USE_SPECIAL_MD5_HASH_EXTRA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v1, "comment_post.php"

    const-string v2, "comment986%sbizapps%s"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0, v3, v4, v5}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    sget v0, Lcom/biznessapps/layout/R$string;->error_occured:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->closeActivityWithResult(II)V

    goto :goto_0
.end method

.method private postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "appCode"    # Ljava/lang/String;
    .param p2, "tabId"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 227
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "userName":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v10

    .line 235
    .local v10, "profileUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v1

    .line 236
    .local v1, "userType":I
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "userID":Ljava/lang/String;
    const-string v0, "fan713%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 238
    .local v11, "stringToHash":Ljava/lang/String;
    invoke-static {v11}, Lcom/biznessapps/utils/CommonUtils;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "hash":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "YOUTUBE_MODE"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 240
    .local v9, "hasYoutubeFormat":Z
    new-instance v0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$7;

    invoke-direct {v0, p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$7;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    iget-object v8, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentParentId:Ljava/lang/String;

    move-object v4, p2

    move-object v6, p3

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/biznessapps/api/AppHttpUtils;->postCommentAsync(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "md5rule"    # Ljava/lang/String;
    .param p3, "appCode"    # Ljava/lang/String;
    .param p4, "tabId"    # Ljava/lang/String;
    .param p5, "comment"    # Ljava/lang/String;

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    if-nez v2, :cond_0

    .line 288
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "userName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v18

    .line 267
    .local v18, "profileUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v6

    .line 268
    .local v6, "userType":I
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "latitude"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v14

    .line 269
    .local v14, "latitude":D
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "longitude"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v12

    .line 270
    .local v12, "longitude":D
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "parent_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 271
    .local v11, "parentId":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 272
    .local v19, "stringToHash":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/biznessapps/utils/CommonUtils;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "hash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageToSend:[B

    move-object/from16 v16, v0

    new-instance v17, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$8;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v17}, Lcom/biznessapps/api/AppHttpUtils;->postCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V

    goto/16 :goto_0
.end method

.method private setMessageCounterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->messageCounterView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int v2, v2, 0xfa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->messageCounterView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->messageCounterView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private takePhoto()V
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;-><init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    invoke-static {v0, v1, p0}, Lcom/biznessapps/utils/ViewUtils;->openChoosePhotoDialog(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/support/v4/app/Fragment;)V

    .line 313
    return-void
.end method


# virtual methods
.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 114
    sget v1, Lcom/biznessapps/layout/R$id;->comment_edit_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    .line 115
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 116
    .local v0, "fArray":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 117
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 119
    sget v1, Lcom/biznessapps/layout/R$id;->message_countdown:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->messageCounterView:Landroid/widget/TextView;

    .line 120
    sget v1, Lcom/biznessapps/layout/R$id;->comments_cancel:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->cancelButton:Landroid/widget/Button;

    .line 121
    sget v1, Lcom/biznessapps/layout/R$id;->comments_clear:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->clearButton:Landroid/widget/Button;

    .line 122
    sget v1, Lcom/biznessapps/layout/R$id;->comments_post:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->postButton:Landroid/widget/Button;

    .line 124
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->cancelButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 125
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->clearButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->reset:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 126
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->postButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->done:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 128
    sget v1, Lcom/biznessapps/layout/R$id;->comments_take_photo:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->takePhotoButton:Landroid/widget/ImageView;

    .line 129
    iget-boolean v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->usePhotoOption:Z

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->takePhotoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->setMessageCounterText(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageToSend:[B

    .line 96
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageUri:Landroid/net/Uri;

    invoke-static {v4, v5, p3}, Lcom/biznessapps/utils/CommonUtils;->getScaledPhoto(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/biznessapps/utils/CommonUtils;->convertImageToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageToSend:[B

    .line 109
    .end local v1    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 100
    if-eqz p3, :cond_0

    .line 101
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 102
    .local v3, "selectedImageUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->getPath(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "selectedImagePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "picture":Ljava/io/File;
    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->convertFileToBytes(Ljava/io/File;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageToSend:[B

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SELECTED_SOCIAL_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "socialNetworkType":I
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->getSocialNetworkHandler(I)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 78
    iget-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->mSelectedSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 80
    sget v2, Lcom/biznessapps/layout/R$layout;->add_comments_layout:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->root:Landroid/view/ViewGroup;

    .line 81
    iget-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->buttonsContainer:Landroid/view/ViewGroup;

    .line 82
    iget-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->progressContainer:Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->initSettingsData()V

    .line 84
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "parent_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentParentId:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "FAN_WALL_USE_PHOTO_OPTION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->usePhotoOption:Z

    .line 86
    iget-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 87
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->initListeners()V

    .line 88
    iget-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->root:Landroid/view/ViewGroup;

    return-object v2

    .line 78
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
