.class final Lcom/biznessapps/utils/ViewUtils$18;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils;->openChoosePhotoDialog(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$18;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/biznessapps/utils/ViewUtils$18;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/biznessapps/utils/ViewUtils$18;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$18;->val$fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 1403
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$18;->val$fragment:Landroid/support/v4/app/Fragment;

    # invokes: Lcom/biznessapps/utils/ViewUtils;->choseFromLibrary(Landroid/support/v4/app/Fragment;)V
    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->access$000(Landroid/support/v4/app/Fragment;)V

    .line 1407
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$18;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$18;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1410
    :cond_0
    return-void

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$18;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/biznessapps/utils/ViewUtils;->choseFromLibrary(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->access$100(Landroid/app/Activity;)V

    goto :goto_0
.end method
