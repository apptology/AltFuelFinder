.class public Lcom/biznessapps/food_ordering/entities/CommonInfo;
.super Ljava/lang/Object;
.source "CommonInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;
    }
.end annotation


# static fields
.field private static final GRID_VIEW_MODE:Ljava/lang/String; = "grid"


# instance fields
.field private allowTips:Z

.field private background:Ljava/lang/String;

.field private hasNavigationBar:Z

.field private paymentGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private viewMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public allowTips()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->allowTips:Z

    return v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentGateways()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->paymentGateways:Ljava/util/List;

    return-object v0
.end method

.method public hasNavigationBar(Z)V
    .locals 0
    .param p1, "hasNavigationBar"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->hasNavigationBar:Z

    .line 25
    return-void
.end method

.method public isGridViewMode()Z
    .locals 2

    .prologue
    .line 28
    const-string v0, "grid"

    iget-object v1, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->viewMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHasNavigationBar()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->hasNavigationBar:Z

    return v0
.end method

.method public setAllowTips(Z)V
    .locals 0
    .param p1, "allowTips"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->allowTips:Z

    .line 41
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->background:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPaymentGateways(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "paymentGateways":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->paymentGateways:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setViewMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewMode"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo;->viewMode:Ljava/lang/String;

    .line 33
    return-void
.end method
