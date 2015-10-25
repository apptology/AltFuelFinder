.class public Lcom/biznessapps/api/ParseStateEntity;
.super Ljava/lang/Object;
.source "ParseStateEntity.java"


# instance fields
.field private isCorrectState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCorrectState()Z
    .locals 1

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/biznessapps/api/ParseStateEntity;->isCorrectState:Z

    return v0
.end method

.method public setCorrectState(Z)V
    .locals 0
    .param p1, "isCorrectState"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/biznessapps/api/ParseStateEntity;->isCorrectState:Z

    .line 12
    return-void
.end method
