.class public Lcom/biznessapps/events/UploadPhotoUtils;
.super Ljava/lang/Object;
.source "UploadPhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static showCaptionDialog(Landroid/app/Activity;Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;

    .prologue
    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$layout;->upload_photo_layout:I

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    .line 19
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 20
    sget v6, Lcom/biznessapps/layout/R$string;->photo_upload:I

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 21
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 23
    .local v3, "dialog":Landroid/app/AlertDialog;
    sget v6, Lcom/biznessapps/layout/R$id;->caption_edit_text:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 24
    .local v2, "captionEditText":Landroid/widget/EditText;
    sget v6, Lcom/biznessapps/layout/R$id;->upload_photo_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 25
    .local v4, "uploadButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$id;->cancel_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 26
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v6, Lcom/biznessapps/events/UploadPhotoUtils$1;

    invoke-direct {v6, v2, p1, v3}, Lcom/biznessapps/events/UploadPhotoUtils$1;-><init>(Landroid/widget/EditText;Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance v6, Lcom/biznessapps/events/UploadPhotoUtils$2;

    invoke-direct {v6, p1, v3}, Lcom/biznessapps/events/UploadPhotoUtils$2;-><init>(Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v6, Lcom/biznessapps/layout/R$string;->upload:I

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 46
    sget v6, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 47
    sget v6, Lcom/biznessapps/layout/R$string;->description:I

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 48
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 49
    return-void
.end method
