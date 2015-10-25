.class Lcom/biznessapps/golfcourse/OverviewAdapter$1;
.super Ljava/lang/Object;
.source "OverviewAdapter.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/OverviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/OverviewAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/OverviewAdapter;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/biznessapps/golfcourse/OverviewAdapter$1;->this$0:Lcom/biznessapps/golfcourse/OverviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 87
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget-object v1, v0, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    check-cast p3, Landroid/widget/ImageView;

    .end local p3    # "view":Landroid/view/View;
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    :cond_0
    return-void
.end method
