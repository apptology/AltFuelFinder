.class public Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
.super Lcom/biznessapps/common/entities/MapEntity;
.source "AroundUsEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/around_us/AroundUsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoiItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13f78aef7fdb5eddL


# instance fields
.field private categoryName:Ljava/lang/String;

.field private location:Lcom/biznessapps/location/entities/LocationEntity;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/biznessapps/common/entities/MapEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/biznessapps/location/entities/LocationEntity;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->location:Lcom/biznessapps/location/entities/LocationEntity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->categoryName:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setLocation(Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 0
    .param p1, "location"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->location:Lcom/biznessapps/location/entities/LocationEntity;

    .line 126
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->name:Ljava/lang/String;

    .line 134
    return-void
.end method
