.class Lcom/biznessapps/home_screen/HomeAnimation$6;
.super Ljava/lang/Object;
.source "HomeAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeAnimation;->setImageWithAnimation(Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeAnimation;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$firstView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeAnimation;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeAnimation$6;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeAnimation$6;->val$firstView:Landroid/view/View;

    iput-object p3, p0, Lcom/biznessapps/home_screen/HomeAnimation$6;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$6;->val$firstView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeAnimation$6;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$6;->val$firstView:Landroid/view/View;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$6;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    iget-object v1, v1, Lcom/biznessapps/home_screen/HomeAnimation;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 228
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 226
    return-void
.end method
