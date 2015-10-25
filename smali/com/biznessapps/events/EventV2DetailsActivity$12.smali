.class Lcom/biznessapps/events/EventV2DetailsActivity$12;
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
    .line 325
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$12;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$12;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity$12;->getDataToParse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/json/JsonParser;->parseEventDetail(Ljava/lang/String;)Lcom/biznessapps/events/EventEntity;

    move-result-object v1

    # setter for: Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;
    invoke-static {v0, v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1602(Lcom/biznessapps/events/EventV2DetailsActivity;Lcom/biznessapps/events/EventEntity;)Lcom/biznessapps/events/EventEntity;

    .line 329
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$12;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # invokes: Lcom/biznessapps/events/EventV2DetailsActivity;->cacher()Lcom/biznessapps/api/CachingManager;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1700(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$12;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1100(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$12;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;
    invoke-static {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$1600(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/events/EventEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$12;->setCorrectData(Z)V

    .line 330
    return-void
.end method
