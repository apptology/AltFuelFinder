.class Lcom/biznessapps/loyalty/LoyaltyAdapter$1;
.super Ljava/lang/Object;
.source "LoyaltyAdapter.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyAdapter;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyAdapter$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyAdapter;

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
    .line 62
    move-object v0, p3

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "orgUrl":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 66
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
