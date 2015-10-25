.class final Lcom/biznessapps/events/EventGoingTabUtils$2;
.super Landroid/os/AsyncTask;
.source "EventGoingTabUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventGoingTabUtils;->postEventData(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# instance fields
.field final synthetic val$appCode:Ljava/lang/String;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$goingView:Landroid/widget/TextView;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$isUpcomingEvent:Z

.field final synthetic val$md5rule:Ljava/lang/String;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$rootContainer:Landroid/view/ViewGroup;

.field final synthetic val$settings:Lcom/biznessapps/api/UiSettings;

.field final synthetic val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

.field final synthetic val$tabId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    iput-object p2, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$md5rule:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$appCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$tabId:Ljava/lang/String;

    iput-object p6, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$id:Ljava/lang/String;

    iput-object p7, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$comment:Ljava/lang/String;

    iput-object p8, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$parentId:Ljava/lang/String;

    iput-object p9, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$appContext:Landroid/content/Context;

    iput-object p10, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$rootContainer:Landroid/view/ViewGroup;

    iput-object p11, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$settings:Lcom/biznessapps/api/UiSettings;

    iput-boolean p12, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$isUpcomingEvent:Z

    iput-object p13, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$goingView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventGoingTabUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "userId":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "userName":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "profileUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "userType":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$md5rule:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "stringToHash":Ljava/lang/String;
    invoke-static {v11}, Lcom/biznessapps/utils/CommonUtils;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "hash":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$appCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$tabId:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$id:Ljava/lang/String;

    iget-object v7, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$comment:Ljava/lang/String;

    iget-object v9, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$parentId:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/biznessapps/api/AppHttpUtils;->postEventDataSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventGoingTabUtils$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$rootContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$tabId:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$settings:Lcom/biznessapps/api/UiSettings;

    iget-boolean v5, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$isUpcomingEvent:Z

    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$2;->val$goingView:Landroid/widget/TextView;

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/events/EventGoingTabUtils;->loadGoingData(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V

    .line 97
    return-void
.end method
