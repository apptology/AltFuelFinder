.class Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$2;
.super Ljava/lang/Object;
.source "LocationDetailActivity.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->loadBgUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$2;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

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
    .line 137
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$2;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getViewForBg()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    return-void
.end method
