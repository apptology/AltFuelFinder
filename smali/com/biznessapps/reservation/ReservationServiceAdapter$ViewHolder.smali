.class Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ReservationServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reservation/ReservationServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field bookItButton:Landroid/widget/Button;

.field nameView:Landroid/widget/TextView;

.field priceView:Landroid/widget/TextView;

.field shareButton:Landroid/widget/Button;

.field thumbnailImage:Landroid/widget/ImageView;

.field timeView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/reservation/ReservationServiceAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/reservation/ReservationServiceAdapter$1;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;-><init>()V

    return-void
.end method
