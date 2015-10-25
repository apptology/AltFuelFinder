.class Lcom/biznessapps/golfcourse/SmartTableView$3;
.super Ljava/lang/Object;
.source "SmartTableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 278
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SmartTableView$3;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v1, p0, Lcom/biznessapps/golfcourse/SmartTableView$3;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    # getter for: Lcom/biznessapps/golfcourse/SmartTableView;->mViewPositionMap:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/SmartTableView;->access$100(Lcom/biznessapps/golfcourse/SmartTableView;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 282
    .local v0, "position":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/biznessapps/golfcourse/SmartTableView$3;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    # getter for: Lcom/biznessapps/golfcourse/SmartTableView;->mCellClickListener:Lcom/biznessapps/golfcourse/OnCellClickListener;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/SmartTableView;->access$200(Lcom/biznessapps/golfcourse/SmartTableView;)Lcom/biznessapps/golfcourse/OnCellClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/biznessapps/golfcourse/SmartTableView$3;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    # getter for: Lcom/biznessapps/golfcourse/SmartTableView;->mCellClickListener:Lcom/biznessapps/golfcourse/OnCellClickListener;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/SmartTableView;->access$200(Lcom/biznessapps/golfcourse/SmartTableView;)Lcom/biznessapps/golfcourse/OnCellClickListener;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lcom/biznessapps/golfcourse/OnCellClickListener;->onCellClicked(II)V

    .line 285
    :cond_0
    return-void
.end method
