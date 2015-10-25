.class public Lcom/biznessapps/player/PlayerStateListener;
.super Ljava/lang/Object;
.source "PlayerStateListener.java"


# instance fields
.field private musicItem:Lcom/biznessapps/player/MusicItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicItem()Lcom/biznessapps/player/MusicItem;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/biznessapps/player/PlayerStateListener;->musicItem:Lcom/biznessapps/player/MusicItem;

    return-object v0
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 40
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onStart(Lcom/biznessapps/player/MusicItem;)V
    .locals 0
    .param p1, "item"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/biznessapps/player/PlayerStateListener;->musicItem:Lcom/biznessapps/player/MusicItem;

    .line 22
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 47
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
