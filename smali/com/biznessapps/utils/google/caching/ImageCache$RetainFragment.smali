.class public Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainFragment"
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;->setRetainInstance(Z)V

    .line 534
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    .line 543
    return-void
.end method
