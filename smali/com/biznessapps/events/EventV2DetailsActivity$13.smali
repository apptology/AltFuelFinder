.class Lcom/biznessapps/events/EventV2DetailsActivity$13;
.super Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.source "EventV2DetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity;->loadContent()V
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
    .line 333
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$13;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity$13;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$13;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1600(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/events/EventEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/events/EventEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/NetworkResultEntity;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$13;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity$13;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/biznessapps/events/EventV2DetailsActivity;->updateControlsWithData(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1800(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/app/Activity;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity$13;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$13;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;
    invoke-static {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1600(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/events/EventEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/events/EventEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showErrorToast(Landroid/app/Activity;Lcom/biznessapps/common/entities/NetworkResultEntity;)V

    goto :goto_0
.end method
