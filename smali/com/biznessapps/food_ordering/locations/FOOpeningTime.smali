.class public Lcom/biznessapps/food_ordering/locations/FOOpeningTime;
.super Ljava/lang/Object;
.source "FOOpeningTime.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    }
.end annotation


# static fields
.field public static final FRIDAY:I = 0x6

.field public static final MONDAY:I = 0x2

.field public static final SATURDAY:I = 0x7

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final WEDNESDAY:I = 0x4

.field private static final serialVersionUID:J = 0x3a68114c07aa8591L


# instance fields
.field private map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->map:Landroid/util/SparseArray;

    .line 30
    return-void
.end method


# virtual methods
.method public addIntervals(ILjava/util/List;)V
    .locals 1
    .param p1, "day"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "intervals":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;>;"
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->map:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    return-void
.end method

.method public getInterval(I)Ljava/util/List;
    .locals 1
    .param p1, "day"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->map:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
