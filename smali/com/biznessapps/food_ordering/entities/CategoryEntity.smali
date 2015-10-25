.class public Lcom/biznessapps/food_ordering/entities/CategoryEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "CategoryEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x44cfcf1071fa2f93L


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private totalItems:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->items:Ljava/util/List;

    return-object v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->totalItems:I

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->items:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setTotalItems(I)V
    .locals 0
    .param p1, "totalItems"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->totalItems:I

    .line 26
    return-void
.end method
