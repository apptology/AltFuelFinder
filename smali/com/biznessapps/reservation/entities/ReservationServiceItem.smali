.class public Lcom/biznessapps/reservation/entities/ReservationServiceItem;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "ReservationServiceItem.java"


# static fields
.field private static final serialVersionUID:J = -0x7396aa966cfa14b0L


# instance fields
.field private currency:Ljava/lang/String;

.field private currencySign:Ljava/lang/String;

.field private mins:I

.field private name:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private price:F

.field private reserveFee:F

.field private restWeeks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 14
    const-string v0, "USD"

    iput-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->currency:Ljava/lang/String;

    .line 15
    const-string v0, "$"

    iput-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->currencySign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->currencySign:Ljava/lang/String;

    return-object v0
.end method

.method public getMins()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->mins:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->price:F

    return v0
.end method

.method public getReserveFee()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->reserveFee:F

    return v0
.end method

.method public getRestWeeks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->restWeeks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 1
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->currency:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method

.method public setCurrencySign(Ljava/lang/String;)V
    .locals 1
    .param p1, "currencySign"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->currencySign:Ljava/lang/String;

    .line 63
    :cond_0
    return-void
.end method

.method public setMins(I)V
    .locals 0
    .param p1, "mins"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->mins:I

    .line 35
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->note:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .param p1, "price"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->price:F

    .line 43
    return-void
.end method

.method public setReserveFee(F)V
    .locals 0
    .param p1, "reserveFee"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->reserveFee:F

    .line 79
    return-void
.end method

.method public setRestWeeks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "restWeeks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->restWeeks:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->thumbnail:Ljava/lang/String;

    .line 87
    return-void
.end method
