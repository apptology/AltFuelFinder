.class public Lcom/biznessapps/player/MusicPlayer;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# static fields
.field private static instance:Lcom/biznessapps/player/MusicPlayer;

.field private static playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/biznessapps/player/MusicPlayer;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/biznessapps/player/MusicPlayer;->instance:Lcom/biznessapps/player/MusicPlayer;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/biznessapps/player/MusicPlayer;

    invoke-direct {v0}, Lcom/biznessapps/player/MusicPlayer;-><init>()V

    sput-object v0, Lcom/biznessapps/player/MusicPlayer;->instance:Lcom/biznessapps/player/MusicPlayer;

    .line 17
    :cond_0
    sget-object v0, Lcom/biznessapps/player/MusicPlayer;->instance:Lcom/biznessapps/player/MusicPlayer;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/biznessapps/player/MusicPlayer;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    .line 37
    return-void
.end method

.method public getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/biznessapps/player/MusicPlayer;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/biznessapps/player/MusicPlayer;->context:Landroid/content/Context;

    .line 22
    sget-object v0, Lcom/biznessapps/player/MusicPlayer;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/biznessapps/player/PlayerServiceAccessor;

    invoke-direct {v0, p1}, Lcom/biznessapps/player/PlayerServiceAccessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/player/MusicPlayer;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    .line 25
    :cond_0
    return-void
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/player/MusicPlayer;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/biznessapps/player/MusicPlayer;->playerServiceAccessor:Lcom/biznessapps/player/PlayerServiceAccessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
