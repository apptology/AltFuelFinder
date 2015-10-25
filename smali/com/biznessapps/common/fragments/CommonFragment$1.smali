.class Lcom/biznessapps/common/fragments/CommonFragment$1;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/fragments/CommonFragment;->loadBgUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/fragments/CommonFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v0, p2}, Lcom/biznessapps/common/fragments/CommonFragment;->onBackgroundLoaded(Landroid/graphics/Bitmap;)V

    .line 230
    return-void
.end method
