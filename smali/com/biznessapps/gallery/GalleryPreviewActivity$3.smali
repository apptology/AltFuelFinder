.class Lcom/biznessapps/gallery/GalleryPreviewActivity$3;
.super Ljava/lang/Object;
.source "GalleryPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity;->setImage(Lcom/biznessapps/gallery/GalleryData$Item;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

.field final synthetic val$imageTextWebView:Lcom/biznessapps/widgets/SmartWebView;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;Lcom/biznessapps/widgets/SmartWebView;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$3;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    iput-object p2, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$3;->val$imageTextWebView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 246
    .local v0, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryData$Item;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$3;->val$imageTextWebView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-virtual {v1}, Lcom/biznessapps/widgets/SmartWebView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 247
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$3;->val$imageTextWebView:Lcom/biznessapps/widgets/SmartWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/SmartWebView;->setVisibility(I)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$3;->val$imageTextWebView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/SmartWebView;->setVisibility(I)V

    goto :goto_0
.end method
