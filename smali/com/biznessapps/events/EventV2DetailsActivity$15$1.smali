.class Lcom/biznessapps/events/EventV2DetailsActivity$15$1;
.super Lcom/biznessapps/api/AsyncCallback;
.source "EventV2DetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity$15;->onCaptionSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity$15;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 468
    invoke-super {p0, p1, p2}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v0, v1, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    .line 470
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v1, v1, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->progressPhotoContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$2200(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 473
    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 454
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v0, v1, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    .line 459
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 460
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v1, v1, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->photosTabContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$800(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v2, v2, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1100(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v3, v3, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1900(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v4, v4, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v4}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$2000(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/api/UiSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v5, v5, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->photosView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$2100(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/events/EventPhotosTabUtils;->loadPhotosData(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;Landroid/widget/TextView;)V

    .line 462
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$15$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$15;

    iget-object v1, v1, Lcom/biznessapps/events/EventV2DetailsActivity$15;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->progressPhotoContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$2200(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 464
    :cond_0
    return-void
.end method
