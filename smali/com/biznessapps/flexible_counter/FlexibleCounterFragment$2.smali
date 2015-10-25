.class Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;
.super Ljava/lang/Object;
.source "FlexibleCounterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 110
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    invoke-virtual {v2}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->sport_stats_clear_text:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->no:I

    new-instance v4, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$2;

    invoke-direct {v4, p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$2;-><init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->ok:I

    new-instance v4, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;

    invoke-direct {v4, p0}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;-><init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    return-void
.end method
