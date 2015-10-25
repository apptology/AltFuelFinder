.class public Lcom/biznessapps/food_ordering/entities/TaxEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "TaxEntity.java"


# static fields
.field public static final FLAT_TAX:I = 0x1

.field public static final RATE_TAX:I = 0x0

.field private static final serialVersionUID:J = 0x3dc6de12cf7b2726L


# instance fields
.field private amount:F

.field private caclulatedTax:F

.field private currencySign:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/TaxEntity;->amount:F

    return v0
.end method

.method public getCaclulatedTax()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/TaxEntity;->caclulatedTax:F

    return v0
.end method

.method public getCurrencySign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/TaxEntity;->currencySign:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/TaxEntity;->type:I

    return v0
.end method

.method public setAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/TaxEntity;->amount:F

    .line 35
    return-void
.end method

.method public setCaclulatedTax(F)V
    .locals 0
    .param p1, "caclulatedTax"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/TaxEntity;->caclulatedTax:F

    .line 43
    return-void
.end method

.method public setCurrencySign(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencySign"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/TaxEntity;->currencySign:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/TaxEntity;->type:I

    .line 27
    return-void
.end method
