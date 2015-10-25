.class Lcom/biznessapps/coupons/CouponDetailFragment$3$1;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/coupons/CouponDetailFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/coupons/CouponDetailFragment$3;


# direct methods
.method constructor <init>(Lcom/biznessapps/coupons/CouponDetailFragment$3;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$3$1;->this$1:Lcom/biznessapps/coupons/CouponDetailFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 313
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    .line 314
    .local v0, "location":Lcom/biznessapps/location/entities/LocationEntity;
    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$3$1;->this$1:Lcom/biznessapps/coupons/CouponDetailFragment$3;

    iget-object v1, v1, Lcom/biznessapps/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method
