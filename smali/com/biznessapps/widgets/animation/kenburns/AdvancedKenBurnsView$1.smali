.class Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;
.super Ljava/lang/Object;
.source "AdvancedKenBurnsView.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->showImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

.field final synthetic val$newIndex:I


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;I)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;->this$0:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    iput p2, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;->val$newIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;->this$0:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;->this$0:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    # getter for: Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->items:[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;
    invoke-static {v2}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->access$000(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;)[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    move-result-object v2

    iget v3, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;->val$newIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;->getDirection()Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    .line 76
    return-void
.end method
