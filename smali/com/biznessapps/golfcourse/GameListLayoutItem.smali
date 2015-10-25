.class public Lcom/biznessapps/golfcourse/GameListLayoutItem;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "GameListLayoutItem.java"


# static fields
.field private static final serialVersionUID:J = -0x373c0941c0005c01L


# instance fields
.field public game:Lcom/biznessapps/golfcourse/model/Game;


# direct methods
.method public constructor <init>(Lcom/biznessapps/golfcourse/model/Game;)V
    .locals 0
    .param p1, "game"    # Lcom/biznessapps/golfcourse/model/Game;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/biznessapps/golfcourse/GameListLayoutItem;->game:Lcom/biznessapps/golfcourse/model/Game;

    .line 27
    return-void
.end method
