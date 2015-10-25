.class Lcom/biznessapps/events/EventV2DetailsActivity$14;
.super Ljava/lang/Object;
.source "EventV2DetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity;->updateControlsWithData(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventV2DetailsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$14;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$14;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-virtual {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$14;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;
    invoke-static {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1600(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/events/EventEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/events/EventEntity;->getLongitude()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$14;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;
    invoke-static {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1600(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/events/EventEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method
