.class public Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "CategoryEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/entities/CategoryEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x28f00bb1ee05ff57L


# instance fields
.field private categoryId:Ljava/lang/String;

.field private isTaxExempted:Z

.field private note:Ljava/lang/String;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private price:F

.field private quantity:I

.field private size:Ljava/lang/String;

.field private sizeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->sizeValue:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->note:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsIds()Ljava/lang/String;
    .locals 6

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v1, "ids":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    iget-object v4, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 176
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 177
    iget-object v4, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    .line 178
    .local v2, "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_0

    .line 180
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    .end local v2    # "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .end local v3    # "size":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getOptionsListNames()Ljava/lang/String;
    .locals 5

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v1, "names":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 161
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 162
    iget-object v4, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    .line 163
    .local v2, "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_0

    .line 165
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    .end local v2    # "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .end local v3    # "size":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getOptionsPrice()F
    .locals 4

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "optionPrice":F
    iget-object v3, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    .line 60
    .local v1, "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->getCharges()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 63
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    :cond_0
    return v2
.end method

.method public getPrice()F
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->price:F

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getOptionsPrice()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPriceWithoutOptions()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->price:F

    return v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->quantity:I

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->sizeValue:Ljava/lang/String;

    return-object v0
.end method

.method public isTaxExempted()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->isTaxExempted:Z

    return v0
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->categoryId:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sizeText"    # Ljava/lang/String;
    .param p3, "itemPrice"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "textWithoutQuantity":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <br/> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/biznessapps/layout/R$string;->fo_item_price:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->description:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->note:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    .line 155
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .param p1, "price"    # F

    .prologue
    .line 75
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->price:F

    .line 76
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->quantity:I

    .line 84
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->size:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSizeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "sizeValue"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->sizeValue:Ljava/lang/String;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->sizeValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTaxExempted(Z)V
    .locals 0
    .param p1, "isTaxExempted"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->isTaxExempted:Z

    .line 130
    return-void
.end method

.method public updateOptions(Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;Z)V
    .locals 1
    .param p1, "option"    # Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .param p2, "shouldAdd"    # Z

    .prologue
    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->options:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
