.class Lcom/biznessapps/gallery/GalleryPreviewActivity$4;
.super Landroid/os/Handler;
.source "GalleryPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity;->initSlideShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "newMessage"    # Landroid/os/Message;

    .prologue
    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$200(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Lcom/biznessapps/widgets/ExtendedViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I
    invoke-static {v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$500(Lcom/biznessapps/gallery/GalleryPreviewActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/ExtendedViewPager;->setCurrentItem(I)V

    .line 267
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    const/16 v1, 0x1388

    # invokes: Lcom/biznessapps/gallery/GalleryPreviewActivity;->sendChangeImageMessage(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$600(Lcom/biznessapps/gallery/GalleryPreviewActivity;I)V

    .line 268
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$500(Lcom/biznessapps/gallery/GalleryPreviewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->galleryItems:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$300(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # operator++ for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$508(Lcom/biznessapps/gallery/GalleryPreviewActivity;)I

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I
    invoke-static {v0, v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$502(Lcom/biznessapps/gallery/GalleryPreviewActivity;I)I

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
