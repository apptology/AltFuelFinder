.class Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ReservationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reservation/ReservationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field billingAddressView:Landroid/widget/TextView;

.field dateView:Landroid/widget/TextView;

.field dayView:Landroid/widget/TextView;

.field monthView:Landroid/widget/TextView;

.field serviceNameView:Landroid/widget/TextView;

.field stateView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/reservation/ReservationAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/reservation/ReservationAdapter$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;-><init>()V

    return-void
.end method
