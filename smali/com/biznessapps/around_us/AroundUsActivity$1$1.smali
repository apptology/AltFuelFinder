.class Lcom/biznessapps/around_us/AroundUsActivity$1$1;
.super Ljava/lang/Object;
.source "AroundUsActivity.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsActivity$1;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/around_us/AroundUsActivity$1;

.field final synthetic val$marker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsActivity$1;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$1$1;->this$1:Lcom/biznessapps/around_us/AroundUsActivity$1;

    iput-object p2, p0, Lcom/biznessapps/around_us/AroundUsActivity$1$1;->val$marker:Lcom/google/android/gms/maps/model/Marker;

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
    .line 157
    move-object v0, p3

    check-cast v0, Landroid/widget/ImageView;

    .line 158
    .local v0, "avatarView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$1$1;->this$1:Lcom/biznessapps/around_us/AroundUsActivity$1;

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity$1$1;->val$marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1, v2}, Lcom/biznessapps/around_us/AroundUsActivity$1;->getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    .line 160
    return-void
.end method
