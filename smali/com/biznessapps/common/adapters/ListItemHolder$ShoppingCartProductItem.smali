.class public Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShoppingCartProductItem"
.end annotation


# instance fields
.field private productNameView:Landroid/widget/TextView;

.field private productPriceLabelView:Landroid/widget/TextView;

.field private productPriceView:Landroid/widget/TextView;

.field private smallImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;->productNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductPriceLabelView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;->productPriceLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductPriceView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;->productPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductSmallImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;->smallImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setProductNameView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productNameView"    # Landroid/widget/TextView;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;->productNameView:Landroid/widget/TextView;

    .line 654
    return-void
.end method

.method public setProductPriceLabelView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productPriceLabelView"    # Landroid/widget/TextView;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;->productPriceLabelView:Landroid/widget/TextView;

    .line 647
    return-void
.end method

.method public setProductPriceView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productPriceView"    # Landroid/widget/TextView;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;->productPriceView:Landroid/widget/TextView;

    .line 668
    return-void
.end method

.method public setProductSmallImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "smallimage"    # Landroid/widget/ImageView;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartProductItem;->smallImageView:Landroid/widget/ImageView;

    .line 679
    return-void
.end method
