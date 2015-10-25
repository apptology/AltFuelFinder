.class public Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TintContainer"
.end annotation


# instance fields
.field private tintColor:I

.field private tintOpacity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->tintColor:I

    return-void
.end method


# virtual methods
.method public getTintColor()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->tintColor:I

    return v0
.end method

.method public getTintOpacity()F
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->tintOpacity:F

    return v0
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "tintColor"    # I

    .prologue
    .line 717
    iput p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->tintColor:I

    .line 718
    return-void
.end method

.method public setTintOpacity(F)V
    .locals 0
    .param p1, "tintOpacity"    # F

    .prologue
    .line 725
    iput p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->tintOpacity:F

    .line 726
    return-void
.end method
