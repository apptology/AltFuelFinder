.class Lcom/biznessapps/events/EventsV2ListFragment$2;
.super Ljava/lang/Object;
.source "EventsV2ListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventsV2ListFragment;->initViews(Landroid/view/ViewGroup;)V
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
    .line 61
    iput-object p1, p0, Lcom/biznessapps/events/EventsV2ListFragment$2;->this$0:Lcom/biznessapps/events/EventsV2ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment$2;->this$0:Lcom/biznessapps/events/EventsV2ListFragment;

    const/4 v1, 0x2

    # setter for: Lcom/biznessapps/events/EventsV2ListFragment;->searchType:I
    invoke-static {v0, v1}, Lcom/biznessapps/events/EventsV2ListFragment;->access$002(Lcom/biznessapps/events/EventsV2ListFragment;I)I

    .line 65
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment$2;->this$0:Lcom/biznessapps/events/EventsV2ListFragment;

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment$2;->this$0:Lcom/biznessapps/events/EventsV2ListFragment;

    # getter for: Lcom/biznessapps/events/EventsV2ListFragment;->searchType:I
    invoke-static {v1}, Lcom/biznessapps/events/EventsV2ListFragment;->access$000(Lcom/biznessapps/events/EventsV2ListFragment;)I

    move-result v1

    # invokes: Lcom/biznessapps/events/EventsV2ListFragment;->updateButtonState(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/events/EventsV2ListFragment;->access$100(Lcom/biznessapps/events/EventsV2ListFragment;I)V

    .line 66
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment$2;->this$0:Lcom/biznessapps/events/EventsV2ListFragment;

    # invokes: Lcom/biznessapps/events/EventsV2ListFragment;->loadData()V
    invoke-static {v0}, Lcom/biznessapps/events/EventsV2ListFragment;->access$300(Lcom/biznessapps/events/EventsV2ListFragment;)V

    .line 67
    return-void
.end method
