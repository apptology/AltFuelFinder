.class Lcom/biznessapps/email_photo/EmailPhotoFragment$3;
.super Ljava/lang/Object;
.source "EmailPhotoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/email_photo/EmailPhotoFragment;->emailPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/email_photo/EmailPhotoFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 178
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "extStorageState":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    const-string v3, "email_photo_image%s.jpg"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->access$102(Lcom/biznessapps/email_photo/EmailPhotoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    # getter for: Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoName:Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->access$100(Lcom/biznessapps/email_photo/EmailPhotoFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # setter for: Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoImage:Ljava/io/File;
    invoke-static {v2, v3}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->access$202(Lcom/biznessapps/email_photo/EmailPhotoFragment;Ljava/io/File;)Ljava/io/File;

    .line 184
    const-string v2, "output"

    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    # getter for: Lcom/biznessapps/email_photo/EmailPhotoFragment;->photoImage:Ljava/io/File;
    invoke-static {v3}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->access$200(Lcom/biznessapps/email_photo/EmailPhotoFragment;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    iget-object v2, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    invoke-virtual {v2}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$3;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    sget v4, Lcom/biznessapps/layout/R$string;->sdcard_missed:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
