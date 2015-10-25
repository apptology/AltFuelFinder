.class public Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;
.super Lcom/biznessapps/common/entities/MapEntity;
.source "CarFinderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/car_finder/CarFinderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarFinderItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d73b5bbb2927decL


# instance fields
.field private isCarItem:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/biznessapps/common/entities/MapEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneralInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCarItem()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->isCarItem:Z

    return v0
.end method

.method public setCarItem(Z)V
    .locals 0
    .param p1, "isCarItem"    # Z

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->isCarItem:Z

    .line 579
    return-void
.end method
