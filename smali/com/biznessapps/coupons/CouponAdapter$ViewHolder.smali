.class Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CouponAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/coupons/CouponAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field checkinView:Landroid/widget/TextView;

.field clockView:Landroid/widget/TextView;

.field dateView:Landroid/widget/TextView;

.field distanceView:Landroid/widget/TextView;

.field iconClockView:Landroid/widget/ImageView;

.field iconCountView:Landroid/widget/ImageView;

.field locationIcon:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/coupons/CouponAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/coupons/CouponAdapter$1;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;-><init>()V

    return-void
.end method
