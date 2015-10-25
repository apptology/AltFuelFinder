.class Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ReservationLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reservation/ReservationLocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field distanceView:Landroid/widget/TextView;

.field iconImage:Landroid/widget/ImageView;

.field nameView:Landroid/widget/TextView;

.field placeView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/reservation/ReservationLocationAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/reservation/ReservationLocationAdapter$1;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;-><init>()V

    return-void
.end method
