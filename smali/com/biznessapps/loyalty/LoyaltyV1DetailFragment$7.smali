.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;
.super Ljava/lang/Object;
.source "LoyaltyV1DetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->addRow(Landroid/view/ViewGroup;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

.field final synthetic val$card:Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

.field final synthetic val$columnImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$card:Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    iput-object p3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$columnImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 522
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$card:Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLocked()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$card:Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$card:Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLast()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    const/4 v6, 0x1

    # setter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z
    invoke-static {v5, v6}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$102(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Z)Z

    .line 524
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->tryToRedeem()V
    invoke-static {v5}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$200(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$card:Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLocked()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$card:Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved()Z

    move-result v5

    if-nez v5, :cond_0

    .line 527
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$layout;->loyalty_dialog:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 529
    .local v1, "contentView":Landroid/view/ViewGroup;
    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_title_view:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 530
    .local v4, "titleView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->loyalty_stamp_dialog_message:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_secret_edittext:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 533
    .local v3, "secretEditText":Landroid/widget/EditText;
    sget v5, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$1;

    invoke-direct {v6, p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    sget v5, Lcom/biznessapps/layout/R$string;->loyalty_dialog_yes_title:I

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

    invoke-direct {v6, p0, v3}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 571
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 572
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->loyalty_dialog_title:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 573
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
