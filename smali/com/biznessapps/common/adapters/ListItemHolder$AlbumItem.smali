.class public Lcom/biznessapps/common/adapters/ListItemHolder$AlbumItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumItem"
.end annotation


# instance fields
.field private arrowImageView:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrowImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$AlbumItem;->arrowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$AlbumItem;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setArrowImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "arrowImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$AlbumItem;->arrowImageView:Landroid/widget/ImageView;

    .line 502
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$AlbumItem;->titleView:Landroid/widget/TextView;

    .line 494
    return-void
.end method
