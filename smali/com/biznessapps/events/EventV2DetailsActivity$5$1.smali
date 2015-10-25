.class Lcom/biznessapps/events/EventV2DetailsActivity$5$1;
.super Ljava/lang/Object;
.source "EventV2DetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/events/EventV2DetailsActivity$5;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity$5;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$5$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$5$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$5;

    iget-object v1, v1, Lcom/biznessapps/events/EventV2DetailsActivity$5;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$5$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$5;

    iget-object v2, v2, Lcom/biznessapps/events/EventV2DetailsActivity$5;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-virtual {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/CommonUtils;->createEmptyImageFile(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/biznessapps/events/EventV2DetailsActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$902(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 230
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$5$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$5;

    iget-object v1, v1, Lcom/biznessapps/events/EventV2DetailsActivity$5;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$900(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "output"

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$5$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$5;

    iget-object v2, v2, Lcom/biznessapps/events/EventV2DetailsActivity$5;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$900(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$5$1;->this$1:Lcom/biznessapps/events/EventV2DetailsActivity$5;

    iget-object v1, v1, Lcom/biznessapps/events/EventV2DetailsActivity$5;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    return-void
.end method
