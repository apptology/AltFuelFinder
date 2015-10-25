.class public Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "OrderOptionEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x735ee2673135167cL


# instance fields
.field private charges:F

.field private group:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isRequired:Z

.field private isShown:Z

.field private max:I

.field private min:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharges()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->charges:F

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->min:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->isRequired:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->isShown:Z

    return v0
.end method

.method public setCharges(F)V
    .locals 0
    .param p1, "charges"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->charges:F

    .line 64
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->group:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->id:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->max:I

    .line 52
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->min:I

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .param p1, "isRequired"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->isRequired:Z

    .line 40
    return-void
.end method

.method public setShown(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->isShown:Z

    .line 46
    return-void
.end method
