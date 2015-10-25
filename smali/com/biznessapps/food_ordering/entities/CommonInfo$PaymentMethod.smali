.class public Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;
.super Ljava/lang/Object;
.source "CommonInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/entities/CommonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentMethod"
.end annotation


# static fields
.field public static final CARD_TYPE:I = 0x5

.field public static final CASH_TYPE:I = 0x4


# instance fields
.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;->type:I

    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;->title:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;->type:I

    .line 70
    return-void
.end method
