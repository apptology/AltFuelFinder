.class Lcom/biznessapps/around_us/AroundUsActivity$10;
.super Ljava/lang/Object;
.source "AroundUsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsActivity;->plugListView(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$10;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 435
    .local v0, "item":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$10;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # invokes: Lcom/biznessapps/around_us/AroundUsActivity;->openDetailScreen(Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;)V
    invoke-static {v1, v0}, Lcom/biznessapps/around_us/AroundUsActivity;->access$1400(Lcom/biznessapps/around_us/AroundUsActivity;Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;)V

    .line 436
    return-void
.end method
