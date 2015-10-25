.class Lcom/biznessapps/events/EventV2DetailsActivity$15;
.super Ljava/lang/Object;
.source "EventV2DetailsActivity.java"

# interfaces
.implements Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity;->sendPhoto([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

.field final synthetic val$imageToSend:[B


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity;[B)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    iput-object p2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15;->val$imageToSend:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->progressPhotoContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$2200(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 481
    return-void
.end method

.method public onCaptionSelected(Ljava/lang/String;)V
    .locals 6
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v5, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity$15;)V

    .line 475
    .local v5, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15;->val$imageToSend:[B

    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # invokes: Lcom/biznessapps/events/EventV2DetailsActivity;->cacher()Lcom/biznessapps/api/CachingManager;
    invoke-static {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$2300(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$2400(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1100(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/api/AppHttpUtils;->sendPhotoAsync([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 476
    return-void
.end method
