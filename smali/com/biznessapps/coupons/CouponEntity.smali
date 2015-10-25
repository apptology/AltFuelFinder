.class public Lcom/biznessapps/coupons/CouponEntity;
.super Lcom/biznessapps/common/entities/MapEntity;
.source "CouponEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x28a41ecca2d1c5afL


# instance fields
.field private checkinInterval:I

.field private checkinTarget:I

.field private checkinTargetMax:I

.field private code:Ljava/lang/String;

.field private couponClockViewId:I

.field private couponCountViewId:I

.field private enabled:Z

.field private endDate:Ljava/util/Date;

.field private lastCheckinTime:J

.field private lastRedeemedTime:J

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private radius:F

.field private reusable:Z

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/biznessapps/common/entities/MapEntity;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/coupons/CouponEntity;->enabled:Z

    .line 155
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/biznessapps/coupons/CouponEntity;)V
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/coupons/CouponEntity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/biznessapps/coupons/CouponEntity;->lastCheckinTime:J

    invoke-virtual {p1, v0, v1}, Lcom/biznessapps/coupons/CouponEntity;->setLastCheckinTime(J)V

    .line 36
    iget-wide v0, p0, Lcom/biznessapps/coupons/CouponEntity;->lastRedeemedTime:J

    invoke-virtual {p1, v0, v1}, Lcom/biznessapps/coupons/CouponEntity;->setLastRedeemedTime(J)V

    .line 37
    iget v0, p0, Lcom/biznessapps/coupons/CouponEntity;->checkinTarget:I

    invoke-virtual {p1, v0}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinTarget(I)V

    .line 38
    return-void
.end method

.method public getCheckinInterval()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/biznessapps/coupons/CouponEntity;->checkinInterval:I

    return v0
.end method

.method public getCheckinTarget()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/biznessapps/coupons/CouponEntity;->checkinTarget:I

    return v0
.end method

.method public getCheckinTargetMax()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/biznessapps/coupons/CouponEntity;->checkinTargetMax:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponEntity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponClockViewId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/biznessapps/coupons/CouponEntity;->couponClockViewId:I

    return v0
.end method

.method public getCouponCountViewId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/biznessapps/coupons/CouponEntity;->couponCountViewId:I

    return v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponEntity;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLastCheckinTime()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/biznessapps/coupons/CouponEntity;->lastCheckinTime:J

    return-wide v0
.end method

.method public getLastRedeemedTime()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/biznessapps/coupons/CouponEntity;->lastRedeemedTime:J

    return-wide v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponEntity;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/biznessapps/coupons/CouponEntity;->radius:F

    return v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponEntity;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/biznessapps/coupons/CouponEntity;->enabled:Z

    return v0
.end method

.method public isReusable()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/biznessapps/coupons/CouponEntity;->reusable:Z

    return v0
.end method

.method public setCheckinInterval(I)V
    .locals 0
    .param p1, "checkinInterval"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/biznessapps/coupons/CouponEntity;->checkinInterval:I

    .line 78
    return-void
.end method

.method public setCheckinTarget(I)V
    .locals 0
    .param p1, "checkinTarget"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/biznessapps/coupons/CouponEntity;->checkinTarget:I

    .line 62
    return-void
.end method

.method public setCheckinTargetMax(I)V
    .locals 0
    .param p1, "checkinTargetMax"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/biznessapps/coupons/CouponEntity;->checkinTargetMax:I

    .line 70
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponEntity;->code:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setCouponClockViewId(I)V
    .locals 0
    .param p1, "couponClockViewId"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/biznessapps/coupons/CouponEntity;->couponClockViewId:I

    .line 86
    return-void
.end method

.method public setCouponCountViewId(I)V
    .locals 0
    .param p1, "couponCountViewId"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/biznessapps/coupons/CouponEntity;->couponCountViewId:I

    .line 94
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/biznessapps/coupons/CouponEntity;->enabled:Z

    .line 142
    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponEntity;->endDate:Ljava/util/Date;

    .line 54
    return-void
.end method

.method public setLastCheckinTime(J)V
    .locals 0
    .param p1, "lastCheckinTime"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/biznessapps/coupons/CouponEntity;->lastCheckinTime:J

    .line 118
    return-void
.end method

.method public setLastRedeemedTime(J)V
    .locals 0
    .param p1, "lastRedeemedTime"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/biznessapps/coupons/CouponEntity;->lastRedeemedTime:J

    .line 110
    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponEntity;->locations:Ljava/util/List;

    .line 126
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 149
    iput p1, p0, Lcom/biznessapps/coupons/CouponEntity;->radius:F

    .line 150
    return-void
.end method

.method public setReusable(Z)V
    .locals 0
    .param p1, "reusable"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/biznessapps/coupons/CouponEntity;->reusable:Z

    .line 134
    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponEntity;->startDate:Ljava/util/Date;

    .line 46
    return-void
.end method
