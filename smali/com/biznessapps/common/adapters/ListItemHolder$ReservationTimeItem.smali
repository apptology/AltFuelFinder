.class public Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReservationTimeItem"
.end annotation


# instance fields
.field private timeFromView:Landroid/widget/TextView;

.field private timeToView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeFromView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->timeFromView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimeToView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->timeToView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTimeFromView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "timeFromView"    # Landroid/widget/TextView;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->timeFromView:Landroid/widget/TextView;

    .line 826
    return-void
.end method

.method public setTimeToView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "timeToView"    # Landroid/widget/TextView;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->timeToView:Landroid/widget/TextView;

    .line 834
    return-void
.end method
