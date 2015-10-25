.class Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;
.super Ljava/lang/Object;
.source "FanAddCommentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->takePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    iget-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/CommonUtils;->createEmptyImageFile(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$502(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 307
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$500(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "output"

    iget-object v2, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$500(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$9;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    return-void
.end method
