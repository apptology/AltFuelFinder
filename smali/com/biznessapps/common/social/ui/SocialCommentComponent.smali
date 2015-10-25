.class public Lcom/biznessapps/common/social/ui/SocialCommentComponent;
.super Ljava/lang/Object;
.source "SocialCommentComponent.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private commentActionListener:Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;

.field private commentId:Ljava/lang/String;

.field private commentsLabel:Landroid/widget/TextView;

.field private enableListViewScroll:Z

.field private rootContainer:Landroid/view/ViewGroup;

.field private settings:Lcom/biznessapps/api/UiSettings;

.field private socialLoginPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

.field private tabId:Ljava/lang/String;

.field private timestampType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;I)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootContainer"    # Landroid/view/ViewGroup;
    .param p3, "commentId"    # Ljava/lang/String;
    .param p4, "tabId"    # Ljava/lang/String;
    .param p5, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p6, "timestampType"    # I

    .prologue
    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLcom/biznessapps/api/UiSettings;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLcom/biznessapps/api/UiSettings;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootContainer"    # Landroid/view/ViewGroup;
    .param p3, "commentId"    # Ljava/lang/String;
    .param p4, "tabId"    # Ljava/lang/String;
    .param p5, "enabledTopHeader"    # Z
    .param p6, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p7, "timestampType"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->enableListViewScroll:Z

    .line 78
    iput-object p6, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->settings:Lcom/biznessapps/api/UiSettings;

    .line 79
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    .line 80
    iput-object p3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentId:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->tabId:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->rootContainer:Landroid/view/ViewGroup;

    .line 83
    iput p7, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->timestampType:I

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "postButton":Landroid/widget/Button;
    if-eqz p5, :cond_1

    .line 87
    sget v3, Lcom/biznessapps/layout/R$id;->comments_list_top_header:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 88
    .local v1, "commentAddTopContainer":Landroid/view/ViewGroup;
    invoke-virtual {p6}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 89
    if-eqz p5, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 90
    sget v3, Lcom/biznessapps/layout/R$id;->comments_label:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentsLabel:Landroid/widget/TextView;

    .line 91
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentsLabel:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentsLabel:Landroid/widget/TextView;

    invoke-virtual {p6}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    sget v3, Lcom/biznessapps/layout/R$id;->post_comment_button:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "postButton":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 99
    .end local v1    # "commentAddTopContainer":Landroid/view/ViewGroup;
    .restart local v2    # "postButton":Landroid/widget/Button;
    :goto_1
    sget v3, Lcom/biznessapps/layout/R$string;->post_comment:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p6}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 101
    invoke-virtual {p6}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 103
    new-instance v3, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;-><init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void

    .line 89
    .restart local v1    # "commentAddTopContainer":Landroid/view/ViewGroup;
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 95
    .end local v1    # "commentAddTopContainer":Landroid/view/ViewGroup;
    :cond_1
    sget v3, Lcom/biznessapps/layout/R$id;->comments_list_header:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 96
    .local v0, "commentAddContainer":Landroid/view/ViewGroup;
    invoke-virtual {p6}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 97
    sget v3, Lcom/biznessapps/layout/R$id;->post_comment_button:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "postButton":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .restart local v2    # "postButton":Landroid/widget/Button;
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->socialLoginPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    .param p1, "x1"    # Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->socialLoginPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    .param p1, "x1"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->addComment(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentActionListener:Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->timestampType:I

    return v0
.end method

.method static synthetic access$600(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentsLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->enableListViewScroll:Z

    return v0
.end method

.method static synthetic access$800(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/common/social/ui/SocialCommentComponent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->closeActivityWithResult(I)V

    return-void
.end method

.method private addComment(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;)V
    .locals 9
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "appCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "tabId":Ljava/lang/String;
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    sget v2, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    .end local v5    # "appCode":Ljava/lang/String;
    .end local v6    # "tabId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v5    # "appCode":Ljava/lang/String;
    .restart local v6    # "tabId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    const-string v3, "comment_post.php"

    const-string v4, "comment986%sbizapps%s"

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->getResultCallback(Lcom/biznessapps/fan_wall/CommentEntity;)Lcom/biznessapps/api/AsyncCallback;

    move-result-object v8

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->postComment(Landroid/app/Activity;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    goto :goto_0

    .line 196
    :cond_2
    sget v0, Lcom/biznessapps/layout/R$string;->error_occured:I

    invoke-direct {p0, v0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->closeActivityWithResult(I)V

    goto :goto_0
.end method

.method private cacher()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method private closeActivityWithResult(I)V
    .locals 2
    .param p1, "toastResId"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method private getResultCallback(Lcom/biznessapps/fan_wall/CommentEntity;)Lcom/biznessapps/api/AsyncCallback;
    .locals 1
    .param p1, "comment"    # Lcom/biznessapps/fan_wall/CommentEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ")",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;-><init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)V

    .line 249
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Lcom/biznessapps/api/AsyncCallback;->setMeta(Ljava/lang/Object;)V

    .line 251
    return-object v0
.end method

.method private postComment(Landroid/app/Activity;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 24
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "md5rule"    # Ljava/lang/String;
    .param p5, "appCode"    # Ljava/lang/String;
    .param p6, "tabId"    # Ljava/lang/String;
    .param p7, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/biznessapps/common/social/CommonSocialNetworkHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p8, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentId:Ljava/lang/String;

    .line 205
    .local v10, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v12

    .line 206
    .local v12, "userId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "userName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "profileUrl":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v11

    .line 209
    .local v11, "userType":I
    const-wide/16 v19, 0x0

    .line 210
    .local v19, "latitude":D
    const-wide/16 v17, 0x0

    .line 211
    .local v17, "longitude":D
    const/16 v16, 0x0

    .line 212
    .local v16, "parentId":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 213
    .local v23, "stringToHash":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/biznessapps/utils/CommonUtils;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 215
    .local v15, "hash":Ljava/lang/String;
    new-instance v1, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/biznessapps/fan_wall/CommentEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v1, "commentItem":Lcom/biznessapps/fan_wall/CommentEntity;
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AsyncCallback;->setMeta(Ljava/lang/Object;)V

    .line 217
    const/16 v21, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object v13, v4

    move-object/from16 v14, p7

    move-object/from16 v22, p8

    invoke-static/range {v7 .. v22}, Lcom/biznessapps/api/AppHttpUtils;->postCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V

    .line 222
    .end local v1    # "commentItem":Lcom/biznessapps/fan_wall/CommentEntity;
    .end local v4    # "userName":Ljava/lang/String;
    .end local v6    # "profileUrl":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "userType":I
    .end local v12    # "userId":Ljava/lang/String;
    .end local v15    # "hash":Ljava/lang/String;
    .end local v16    # "parentId":Ljava/lang/String;
    .end local v17    # "longitude":D
    .end local v19    # "latitude":D
    .end local v23    # "stringToHash":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSocialLoginPopupView()Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->socialLoginPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    return-object v0
.end method

.method public loadCommentsData()V
    .locals 5

    .prologue
    .line 128
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "appContext":Landroid/content/Context;
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->rootContainer:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->comments_list_view:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/RefreshableListView;

    .line 130
    .local v2, "listView":Lcom/biznessapps/widgets/RefreshableListView;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    .line 131
    .local v1, "cacher":Lcom/biznessapps/api/CachingManager;
    new-instance v3, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;-><init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Lcom/biznessapps/api/CachingManager;Landroid/content/Context;Lcom/biznessapps/widgets/RefreshableListView;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method

.method public setCommentActionListener(Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;)V
    .locals 0
    .param p1, "commentActionListener"    # Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentActionListener:Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;

    .line 64
    return-void
.end method

.method public setEnableListViewScroll(Z)V
    .locals 0
    .param p1, "enableListViewScroll"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->enableListViewScroll:Z

    .line 60
    return-void
.end method

.method public showCommentDialog(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 6
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/biznessapps/common/social/ui/SocialCommentComponent$2;

    invoke-direct {v1, p0, p1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$2;-><init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    sget v2, Lcom/biznessapps/layout/R$string;->post_comment:I

    sget v3, Lcom/biznessapps/layout/R$string;->done:I

    const/4 v4, 0x0

    const/16 v5, 0xfa

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;IILjava/lang/String;I)V

    .line 125
    return-void
.end method
