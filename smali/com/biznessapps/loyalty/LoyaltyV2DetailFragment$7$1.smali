.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$1;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->onRedeemClickListener(Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 452
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 453
    return-void
.end method
