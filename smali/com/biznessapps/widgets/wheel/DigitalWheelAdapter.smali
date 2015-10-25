.class public Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
.super Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;
.source "DigitalWheelAdapter.java"


# instance fields
.field private format:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 38
    sget v0, Lcom/biznessapps/layout/R$layout;->wheel_item_row:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/biznessapps/widgets/wheel/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 39
    sget v0, Lcom/biznessapps/layout/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->setItemTextResource(I)V

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->setRange(II)V

    .line 42
    iput-object p4, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->format:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getIndexFromValue(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->minValue:I

    sub-int v0, p1, v0

    return v0
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 80
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 81
    iget v1, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->minValue:I

    add-int v0, v1, p1

    .line 82
    .local v0, "value":I
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->format:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->format:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .end local v0    # "value":I
    :goto_0
    return-object v1

    .line 82
    .restart local v0    # "value":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 84
    .end local v0    # "value":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getMaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getIndexFromValue(I)I

    move-result v0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->maxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->minValue:I

    return v0
.end method

.method public getValueFromIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 71
    iget v0, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->minValue:I

    add-int/2addr v0, p1

    return v0
.end method

.method public setMaxValue(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->maxValue:I

    .line 64
    return-void
.end method

.method public setMinValue(I)V
    .locals 0
    .param p1, "minValue"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->minValue:I

    .line 60
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->minValue:I

    .line 47
    iput p2, p0, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->maxValue:I

    .line 48
    return-void
.end method
