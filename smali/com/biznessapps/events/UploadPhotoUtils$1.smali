.class final Lcom/biznessapps/events/UploadPhotoUtils$1;
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
.field final synthetic val$captionEditText:Landroid/widget/EditText;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$listener:Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/events/UploadPhotoUtils$1;->val$captionEditText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/biznessapps/events/UploadPhotoUtils$1;->val$listener:Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;

    iput-object p3, p0, Lcom/biznessapps/events/UploadPhotoUtils$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/biznessapps/events/UploadPhotoUtils$1;->val$captionEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "caption":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/events/UploadPhotoUtils$1;->val$listener:Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;

    invoke-interface {v1, v0}, Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;->onCaptionSelected(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/biznessapps/events/UploadPhotoUtils$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/biznessapps/events/UploadPhotoUtils$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 34
    :cond_0
    return-void
.end method
