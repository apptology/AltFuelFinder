.class Lcom/biznessapps/car_finder/CarFinderActivity$11;
.super Ljava/lang/Object;
.source "CarFinderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/car_finder/CarFinderActivity;->emailPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/car_finder/CarFinderActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$11;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 362
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "extStorageState":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$11;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "email_photo_image.jpg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # setter for: Lcom/biznessapps/car_finder/CarFinderActivity;->photoImage:Ljava/io/File;
    invoke-static {v2, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1502(Lcom/biznessapps/car_finder/CarFinderActivity;Ljava/io/File;)Ljava/io/File;

    .line 367
    const-string v2, "output"

    iget-object v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity$11;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->photoImage:Ljava/io/File;
    invoke-static {v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1500(Lcom/biznessapps/car_finder/CarFinderActivity;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$11;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$11;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-virtual {v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity$11;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    sget v4, Lcom/biznessapps/layout/R$string;->sdcard_missed:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/car_finder/CarFinderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
