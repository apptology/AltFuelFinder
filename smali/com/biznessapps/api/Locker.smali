.class public Lcom/biznessapps/api/Locker;
.super Ljava/lang/Object;
.source "Locker.java"


# instance fields
.field private isLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/biznessapps/api/Locker;->isLocked:Z

    return v0
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "isLocked"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/biznessapps/api/Locker;->isLocked:Z

    .line 12
    return-void
.end method
