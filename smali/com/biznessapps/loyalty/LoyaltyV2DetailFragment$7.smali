.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRedeemClickListener(Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V
    .locals 7
    .param p1, "perk"    # Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .prologue
    .line 443
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$layout;->loyalty_dialog:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 445
    .local v1, "contentView":Landroid/view/ViewGroup;
    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_title_view:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 446
    .local v4, "titleView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->loyalty_redeem_dialog_message:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_secret_edittext:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 449
    .local v3, "secretEditText":Landroid/widget/EditText;
    sget v5, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$1;

    invoke-direct {v6, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    sget v5, Lcom/biznessapps/layout/R$string;->redeem:I

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;

    invoke-direct {v6, p0, p1, v3}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;Lcom/biznessapps/loyalty/LoyaltyV2Perk;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 478
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->loyalty_dialog_title:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 479
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 480
    return-void
.end method
