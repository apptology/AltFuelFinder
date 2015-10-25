.class final Lcom/biznessapps/events/UploadPhotoUtils$2;
.super Ljava/lang/Object;
.source "UploadPhotoUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/UploadPhotoUtils;->showCaptionDialog(Landroid/app/Activity;Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$listener:Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/events/UploadPhotoUtils$2;->val$listener:Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;

    iput-object p2, p0, Lcom/biznessapps/events/UploadPhotoUtils$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/events/UploadPhotoUtils$2;->val$listener:Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;

    invoke-interface {v0}, Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;->onCancel()V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/events/UploadPhotoUtils$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/biznessapps/events/UploadPhotoUtils$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 43
    :cond_0
    return-void
.end method
