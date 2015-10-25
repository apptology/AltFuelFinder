.class Lcom/biznessapps/home_screen/HomeAnimation$4;
.super Ljava/lang/Object;
.source "HomeAnimation.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeAnimation;->setImage(Ljava/lang/String;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeAnimation;

.field final synthetic val$imageView:Landroid/view/View;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$secondView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeAnimation;Landroid/view/View;Landroid/view/View;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->val$imageView:Landroid/view/View;

    iput-object p3, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->val$secondView:Landroid/view/View;

    iput-object p4, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->val$progressBar:Landroid/widget/ProgressBar;

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
    .line 176
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->useFadeAnimation:Z
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeAnimation;->access$400(Lcom/biznessapps/home_screen/HomeAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->val$imageView:Landroid/view/View;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->val$secondView:Landroid/view/View;

    # invokes: Lcom/biznessapps/home_screen/HomeAnimation;->setImageWithAnimation(Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2, p2}, Lcom/biznessapps/home_screen/HomeAnimation;->access$500(Lcom/biznessapps/home_screen/HomeAnimation;Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->urls:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$300(Lcom/biznessapps/home_screen/HomeAnimation;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/biznessapps/home_screen/HomeAnimation;->initEventHandler(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$600(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/util/List;)V

    .line 184
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->val$progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 186
    return-void

    .line 179
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$4;->val$imageView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
