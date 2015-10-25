.class Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;
.super Ljava/lang/Object;
.source "LoopPagerAdapter.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->createViewPagerItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

.field final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    iput-object p2, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 122
    if-eqz p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;-><init>(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_0
    return-void
.end method
