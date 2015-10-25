.class final Lcom/biznessapps/utils/ViewUtils$17;
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
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$takePhotoRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$17;->val$takePhotoRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/biznessapps/utils/ViewUtils$17;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$17;->val$takePhotoRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1394
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$17;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$17;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1397
    :cond_0
    return-void
.end method
