.class Lcom/biznessapps/widgets/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/HorizontalListView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/biznessapps/widgets/HorizontalListView$1;->this$0:Lcom/biznessapps/widgets/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/biznessapps/widgets/HorizontalListView$1;->this$0:Lcom/biznessapps/widgets/HorizontalListView;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView$1;->this$0:Lcom/biznessapps/widgets/HorizontalListView;

    const/4 v2, 0x1

    # setter for: Lcom/biznessapps/widgets/HorizontalListView;->dataChanged:Z
    invoke-static {v0, v2}, Lcom/biznessapps/widgets/HorizontalListView;->access$002(Lcom/biznessapps/widgets/HorizontalListView;Z)Z

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView$1;->this$0:Lcom/biznessapps/widgets/HorizontalListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/HorizontalListView;->invalidate()V

    .line 77
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView$1;->this$0:Lcom/biznessapps/widgets/HorizontalListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/HorizontalListView;->requestLayout()V

    .line 78
    return-void

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView$1;->this$0:Lcom/biznessapps/widgets/HorizontalListView;

    # invokes: Lcom/biznessapps/widgets/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/biznessapps/widgets/HorizontalListView;->access$100(Lcom/biznessapps/widgets/HorizontalListView;)V

    .line 83
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView$1;->this$0:Lcom/biznessapps/widgets/HorizontalListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/HorizontalListView;->invalidate()V

    .line 84
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView$1;->this$0:Lcom/biznessapps/widgets/HorizontalListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/HorizontalListView;->requestLayout()V

    .line 85
    return-void
.end method
