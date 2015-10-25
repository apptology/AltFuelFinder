.class Lcom/biznessapps/fan_wall/NewFanWallAdapter$1;
.super Ljava/lang/Object;
.source "NewFanWallAdapter.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fan_wall/NewFanWallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/NewFanWallAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallAdapter;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$1;->this$0:Lcom/biznessapps/fan_wall/NewFanWallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 109
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 111
    .local v0, "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .end local v0    # "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_0
    return-void
.end method
