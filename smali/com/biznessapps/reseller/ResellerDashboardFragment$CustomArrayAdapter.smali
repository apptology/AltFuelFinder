.class Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ResellerDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reseller/ResellerDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .line 452
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 453
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 457
    .local v0, "view":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->type:I
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$500(Lcom/biznessapps/reseller/ResellerDashboardFragment;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$400(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/reseller/ResellerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerInfo;->getHeaderBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    :goto_0
    return-object v0

    .line 460
    :cond_0
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
