.class public Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
.super Ljava/lang/Object;
.source "FOOpeningTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/locations/FOOpeningTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interval"
.end annotation


# static fields
.field public static final PERIOD:I = 0x1e


# instance fields
.field private from:I

.field private to:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->from:I

    return v0
.end method

.method public getTo()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->to:I

    return v0
.end method

.method public setFrom(I)V
    .locals 0
    .param p1, "from"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->from:I

    .line 44
    return-void
.end method

.method public setTo(I)V
    .locals 0
    .param p1, "to"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->to:I

    .line 52
    return-void
.end method
