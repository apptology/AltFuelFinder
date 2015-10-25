.class public Lcom/biznessapps/player/PlayerServiceAccessor;
.super Lcom/biznessapps/player/BaseServiceAccessor;
.source "PlayerServiceAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/player/BaseServiceAccessor",
        "<",
        "Lcom/biznessapps/player/IPlayerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMON_EXCEPTION:Ljava/lang/String; = "Exception"

.field private static final REMOTE_EXCEPTION:Ljava/lang/String; = "RemoteException"

.field private static final TAG:Ljava/lang/String; = "ServiceAccessor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/biznessapps/player/BaseServiceAccessor;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addUrlQueue(Lcom/biznessapps/player/MusicItem;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1, p1}, Lcom/biznessapps/player/IPlayerService;->addUrlQueue(Lcom/biznessapps/player/MusicItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addUrlsQueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1, p1}, Lcom/biznessapps/player/IPlayerService;->addUrlsQueue(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1}, Lcom/biznessapps/player/IPlayerService;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearQueue()V
    .locals 3

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1}, Lcom/biznessapps/player/IPlayerService;->clearQueue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic createServiceStub(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "x0"    # Landroid/os/IBinder;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/biznessapps/player/PlayerServiceAccessor;->createServiceStub(Landroid/os/IBinder;)Lcom/biznessapps/player/IPlayerService;

    move-result-object v0

    return-object v0
.end method

.method protected createServiceStub(Landroid/os/IBinder;)Lcom/biznessapps/player/IPlayerService;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 269
    invoke-static {p1}, Lcom/biznessapps/player/IPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/biznessapps/player/IPlayerService;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "currentPosition":I
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v2}, Lcom/biznessapps/player/IPlayerService;->getCurrentPosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ServiceAccessor"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ServiceAccessor"

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentSong()Lcom/biznessapps/player/MusicItem;
    .locals 4

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "result":Lcom/biznessapps/player/MusicItem;
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v2}, Lcom/biznessapps/player/IPlayerService;->getCurrentSong()Lcom/biznessapps/player/MusicItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 52
    :cond_0
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ServiceAccessor"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServiceAccessor"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDuration()J
    .locals 5

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    .line 75
    .local v0, "duration":J
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v3}, Lcom/biznessapps/player/IPlayerService;->duration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 83
    :cond_0
    :goto_0
    return-wide v0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ServiceAccessor"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ServiceAccessor"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPlayerState()Lcom/biznessapps/player/PlayerState;
    .locals 4

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "playerState":Lcom/biznessapps/player/PlayerState;
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v2}, Lcom/biznessapps/player/IPlayerService;->getState()Lcom/biznessapps/player/PlayerState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 138
    :cond_0
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ServiceAccessor"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServiceAccessor"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPosition()J
    .locals 5

    .prologue
    .line 146
    const-wide/16 v1, 0x0

    .line 148
    .local v1, "position":J
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v3}, Lcom/biznessapps/player/IPlayerService;->position()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 156
    :cond_0
    :goto_0
    return-wide v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ServiceAccessor"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ServiceAccessor"

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 274
    const-class v0, Lcom/biznessapps/player/PlayerService;

    return-object v0
.end method

.method public getSongs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "songs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v2}, Lcom/biznessapps/player/IPlayerService;->getSongs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ServiceAccessor"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServiceAccessor"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isCurrentSong(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getCurrentSong()Lcom/biznessapps/player/MusicItem;

    move-result-object v0

    .line 60
    .local v0, "musicItem":Lcom/biznessapps/player/MusicItem;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isInState(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 258
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v2, p1}, Lcom/biznessapps/player/IPlayerService;->isInState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ServiceAccessor"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServiceAccessor"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1}, Lcom/biznessapps/player/IPlayerService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public play(Lcom/biznessapps/player/MusicItem;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1, p1}, Lcom/biznessapps/player/IPlayerService;->play(Lcom/biznessapps/player/MusicItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 33
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1, p1, p2}, Lcom/biznessapps/player/IPlayerService;->seek(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentPosition(I)V
    .locals 3
    .param p1, "currentPosition"    # I

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1, p1}, Lcom/biznessapps/player/IPlayerService;->setCurrentPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/IPlayerService;

    invoke-interface {v1}, Lcom/biznessapps/player/IPlayerService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceAccessor"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceAccessor"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
