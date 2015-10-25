.class public Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryAdapterItem"
.end annotation


# instance fields
.field private imageView:Lcom/biznessapps/widgets/LoaderImageView;

.field private textViewComments:Landroid/widget/TextView;

.field private textViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()Lcom/biznessapps/widgets/LoaderImageView;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->imageView:Lcom/biznessapps/widgets/LoaderImageView;

    return-object v0
.end method

.method public getTextViewComments()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->textViewComments:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->textViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setImageView(Lcom/biznessapps/widgets/LoaderImageView;)V
    .locals 0
    .param p1, "imageView"    # Lcom/biznessapps/widgets/LoaderImageView;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->imageView:Lcom/biznessapps/widgets/LoaderImageView;

    .line 607
    return-void
.end method

.method public setTextViewComments(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewComments"    # Landroid/widget/TextView;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->textViewComments:Landroid/widget/TextView;

    .line 600
    return-void
.end method

.method public setTextViewTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewTitle"    # Landroid/widget/TextView;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->textViewTitle:Landroid/widget/TextView;

    .line 594
    return-void
.end method
