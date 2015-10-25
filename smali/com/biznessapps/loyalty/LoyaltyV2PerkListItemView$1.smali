.class Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;
.super Ljava/lang/Object;
.source "LoyaltyV2PerkListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->access$000(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 136
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerkItemRedeemClickListener:Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->access$100(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerkItemRedeemClickListener:Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->access$100(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    invoke-static {v1}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->access$000(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;->onRedeemClickListener(Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V

    .line 139
    :cond_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
