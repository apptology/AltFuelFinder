.class public Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShoppingCartCheckoutItem"
.end annotation


# instance fields
.field private productImageView:Landroid/widget/ImageView;

.field private productNameView:Landroid/widget/TextView;

.field private productPriceView:Landroid/widget/TextView;

.field private quantityView:Landroid/widget/EditText;

.field private removeButton:Landroid/widget/Button;

.field private updateButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProductNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductPriceView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getQuantityView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->quantityView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getRemoveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->removeButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getUpdateButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->updateButton:Landroid/widget/Button;

    return-object v0
.end method

.method public setProductNameView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productNameView"    # Landroid/widget/TextView;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productNameView:Landroid/widget/TextView;

    .line 709
    return-void
.end method

.method public setProductPriceView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "productPriceView"    # Landroid/widget/TextView;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productPriceView:Landroid/widget/TextView;

    .line 723
    return-void
.end method

.method public setQuantityView(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "quantityView"    # Landroid/widget/EditText;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->quantityView:Landroid/widget/EditText;

    .line 751
    return-void
.end method

.method public setRemoveButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "removeButton"    # Landroid/widget/Button;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->removeButton:Landroid/widget/Button;

    .line 779
    return-void
.end method

.method public setSmallImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "smallImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->productImageView:Landroid/widget/ImageView;

    .line 737
    return-void
.end method

.method public setUpdateButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "updateButton"    # Landroid/widget/Button;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCheckoutItem;->updateButton:Landroid/widget/Button;

    .line 765
    return-void
.end method
