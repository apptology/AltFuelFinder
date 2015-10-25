.class Lcom/biznessapps/events/EventsV2ListFragment$3;
.super Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
.source "EventsV2ListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventsV2ListFragment;->initSearchBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventsV2ListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventsV2ListFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/biznessapps/events/EventsV2ListFragment$3;->this$0:Lcom/biznessapps/events/EventsV2ListFragment;

    invoke-direct {p0}, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment$3;->this$0:Lcom/biznessapps/events/EventsV2ListFragment;

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment$3;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/biznessapps/events/EventsV2ListFragment;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/events/EventsV2ListFragment;->access$402(Lcom/biznessapps/events/EventsV2ListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment$3;->this$0:Lcom/biznessapps/events/EventsV2ListFragment;

    # invokes: Lcom/biznessapps/events/EventsV2ListFragment;->loadData()V
    invoke-static {v0}, Lcom/biznessapps/events/EventsV2ListFragment;->access$500(Lcom/biznessapps/events/EventsV2ListFragment;)V

    .line 79
    return-void
.end method
