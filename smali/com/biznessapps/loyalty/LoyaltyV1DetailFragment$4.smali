.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;
.super Ljava/lang/Object;
.source "LoyaltyV1DetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->initActivities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v1

    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setSelected(Z)V

    .line 337
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->isSelected()Z

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityCircleView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$500(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$600(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v3}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$700(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    .line 338
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
