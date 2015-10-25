.class public Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCategoryItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShoppingCartCategoryItem"
.end annotation


# instance fields
.field private catNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCatNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCategoryItem;->catNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setCatNameView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "catNameView"    # Landroid/widget/TextView;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ShoppingCartCategoryItem;->catNameView:Landroid/widget/TextView;

    .line 621
    return-void
.end method
