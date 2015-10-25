.class public Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RssItem"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private rightArrowView:Landroid/widget/ImageView;

.field private textViewDate:Landroid/widget/TextView;

.field private textViewSummary:Landroid/widget/TextView;

.field private textViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightArrowView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->rightArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextViewDate()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->textViewDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewSummary()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->textViewSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->textViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->imageView:Landroid/widget/ImageView;

    .line 102
    return-void
.end method

.method public setRightArrowView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rightArrowView"    # Landroid/widget/ImageView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->rightArrowView:Landroid/widget/ImageView;

    .line 86
    return-void
.end method

.method public setTextViewDate(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewDate"    # Landroid/widget/TextView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->textViewDate:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method public setTextViewSummary(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewSummary"    # Landroid/widget/TextView;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->textViewSummary:Landroid/widget/TextView;

    .line 118
    return-void
.end method

.method public setTextViewTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewTitle"    # Landroid/widget/TextView;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->textViewTitle:Landroid/widget/TextView;

    .line 110
    return-void
.end method
