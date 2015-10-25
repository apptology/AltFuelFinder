.class public Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
.super Ljava/lang/Object;
.source "OrderEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/entities/OrderEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private price:F

.field private sizeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->price:F

    return v0
.end method

.method public getSizeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->sizeName:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->id:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .param p1, "price"    # F

    .prologue
    .line 112
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->price:F

    .line 113
    return-void
.end method

.method public setSizeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->sizeName:Ljava/lang/String;

    .line 107
    return-void
.end method
