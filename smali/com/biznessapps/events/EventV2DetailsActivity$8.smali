.class Lcom/biznessapps/events/EventV2DetailsActivity$8;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "EventV2DetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

.field final synthetic val$cacher:Lcom/biznessapps/api/CachingManager;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/content/Context;Lcom/biznessapps/api/CachingManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    iput-object p3, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 13
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 280
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v0

    const-string v2, "going_post.php"

    invoke-virtual {v0, v2}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "url":Ljava/lang/String;
    const-string v2, "going986%sbizapps%s"

    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1000(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1100(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-virtual {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->goingTabContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$600(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1200(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/api/UiSettings;

    move-result-object v10

    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->isUpcomingEvent:Z
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1300(Lcom/biznessapps/events/EventV2DetailsActivity;)Z

    move-result v11

    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->goingView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1400(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/TextView;

    move-result-object v12

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Lcom/biznessapps/events/EventGoingTabUtils;->postEventData(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V

    .line 283
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$500(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity$8;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->goingTabContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$600(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    # invokes: Lcom/biznessapps/events/EventV2DetailsActivity;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    invoke-static {v0, v2, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$200(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 284
    return-void
.end method
