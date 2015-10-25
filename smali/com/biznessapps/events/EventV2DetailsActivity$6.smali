.class Lcom/biznessapps/events/EventV2DetailsActivity$6;
.super Ljava/lang/Object;
.source "EventV2DetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$6;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$6;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-virtual {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/events/EventEntity;

    .line 245
    .local v0, "item":Lcom/biznessapps/events/EventEntity;
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$6;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-static {v1, v0}, Lcom/biznessapps/events/EventDetailsFragment;->addEvent(Landroid/app/Activity;Lcom/biznessapps/events/EventEntity;)V

    .line 246
    return-void
.end method
