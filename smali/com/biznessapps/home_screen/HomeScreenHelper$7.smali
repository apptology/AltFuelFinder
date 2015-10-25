.class final Lcom/biznessapps/home_screen/HomeScreenHelper$7;
.super Ljava/lang/Object;
.source "HomeScreenHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenHelper;->callUs(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    .line 233
    .local v0, "item":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getTelephone()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "tel":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$7;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/biznessapps/utils/ViewUtils;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 235
    return-void
.end method
