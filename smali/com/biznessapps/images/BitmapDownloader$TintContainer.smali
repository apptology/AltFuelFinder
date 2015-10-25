.class public Lcom/biznessapps/images/BitmapDownloader$TintContainer;
.super Ljava/lang/Object;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/images/BitmapDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TintContainer"
.end annotation


# instance fields
.field private tintColor:Ljava/lang/String;

.field private tintOpacity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTintColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$TintContainer;->tintColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTintOpacity()F
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/biznessapps/images/BitmapDownloader$TintContainer;->tintOpacity:F

    return v0
.end method

.method public setTintColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "tintColor"    # Ljava/lang/String;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/biznessapps/images/BitmapDownloader$TintContainer;->tintColor:Ljava/lang/String;

    .line 773
    return-void
.end method

.method public setTintOpacity(F)V
    .locals 0
    .param p1, "tintOpacity"    # F

    .prologue
    .line 780
    iput p1, p0, Lcom/biznessapps/images/BitmapDownloader$TintContainer;->tintOpacity:F

    .line 781
    return-void
.end method
