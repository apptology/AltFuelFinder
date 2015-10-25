.class Lcom/biznessapps/golfcourse/SmartTableView$4;
.super Landroid/database/DataSetObserver;
.source "SmartTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/SmartTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/SmartTableView;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/SmartTableView;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SmartTableView$4;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView$4;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    # getter for: Lcom/biznessapps/golfcourse/SmartTableView;->mIsBuilt:Z
    invoke-static {v0}, Lcom/biznessapps/golfcourse/SmartTableView;->access$300(Lcom/biznessapps/golfcourse/SmartTableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView$4;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    # invokes: Lcom/biznessapps/golfcourse/SmartTableView;->updateTableView()V
    invoke-static {v0}, Lcom/biznessapps/golfcourse/SmartTableView;->access$400(Lcom/biznessapps/golfcourse/SmartTableView;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView$4;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    # invokes: Lcom/biznessapps/golfcourse/SmartTableView;->buildTableView()V
    invoke-static {v0}, Lcom/biznessapps/golfcourse/SmartTableView;->access$500(Lcom/biznessapps/golfcourse/SmartTableView;)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SmartTableView$4;->onChanged()V

    .line 300
    return-void
.end method
