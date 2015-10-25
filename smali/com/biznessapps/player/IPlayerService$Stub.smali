.class public abstract Lcom/biznessapps/player/IPlayerService$Stub;
.super Landroid/os/Binder;
.source "IPlayerService.java"

# interfaces
.implements Lcom/biznessapps/player/IPlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/player/IPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/player/IPlayerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.biznessapps.player.IPlayerService"

.field static final TRANSACTION_addUrlQueue:I = 0xb

.field static final TRANSACTION_addUrlsQueue:I = 0xa

.field static final TRANSACTION_clear:I = 0x4

.field static final TRANSACTION_clearQueue:I = 0xd

.field static final TRANSACTION_duration:I = 0x7

.field static final TRANSACTION_getCurrentPosition:I = 0xe

.field static final TRANSACTION_getCurrentSong:I = 0x10

.field static final TRANSACTION_getSongs:I = 0xc

.field static final TRANSACTION_getState:I = 0x5

.field static final TRANSACTION_isInState:I = 0x6

.field static final TRANSACTION_pause:I = 0x2

.field static final TRANSACTION_play:I = 0x1

.field static final TRANSACTION_position:I = 0x8

.field static final TRANSACTION_seek:I = 0x9

.field static final TRANSACTION_setCurrentPosition:I = 0xf

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p0, p0, v0}, Lcom/biznessapps/player/IPlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/biznessapps/player/IPlayerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.biznessapps.player.IPlayerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/biznessapps/player/IPlayerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/biznessapps/player/IPlayerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/biznessapps/player/IPlayerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/biznessapps/player/IPlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    sget-object v6, Lcom/biznessapps/player/MusicItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/player/MusicItem;

    .line 55
    .local v0, "_arg0":Lcom/biznessapps/player/MusicItem;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/biznessapps/player/IPlayerService$Stub;->play(Lcom/biznessapps/player/MusicItem;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/biznessapps/player/MusicItem;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/biznessapps/player/MusicItem;
    goto :goto_1

    .line 61
    .end local v0    # "_arg0":Lcom/biznessapps/player/MusicItem;
    :sswitch_2
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->pause()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->stop()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->clear()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v8, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->getState()Lcom/biznessapps/player/PlayerState;

    move-result-object v3

    .line 84
    .local v3, "_result":Lcom/biznessapps/player/PlayerState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v3, p3, v7}, Lcom/biznessapps/player/PlayerState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v3    # "_result":Lcom/biznessapps/player/PlayerState;
    :sswitch_6
    const-string v8, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/biznessapps/player/IPlayerService$Stub;->isInState(I)Z

    move-result v3

    .line 100
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->duration()J

    move-result-wide v3

    .line 108
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 114
    .end local v3    # "_result":J
    :sswitch_8
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->position()J

    move-result-wide v3

    .line 116
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 122
    .end local v3    # "_result":J
    :sswitch_9
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 125
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/player/IPlayerService$Stub;->seek(J)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":J
    :sswitch_a
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    sget-object v6, Lcom/biznessapps/player/MusicItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 134
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    invoke-virtual {p0, v2}, Lcom/biznessapps/player/IPlayerService$Stub;->addUrlsQueue(Ljava/util/List;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    :sswitch_b
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    sget-object v6, Lcom/biznessapps/player/MusicItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/player/MusicItem;

    .line 148
    .local v0, "_arg0":Lcom/biznessapps/player/MusicItem;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/biznessapps/player/IPlayerService$Stub;->addUrlQueue(Lcom/biznessapps/player/MusicItem;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    .end local v0    # "_arg0":Lcom/biznessapps/player/MusicItem;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/biznessapps/player/MusicItem;
    goto :goto_2

    .line 154
    .end local v0    # "_arg0":Lcom/biznessapps/player/MusicItem;
    :sswitch_c
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->getSongs()Ljava/util/List;

    move-result-object v5

    .line 156
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 162
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    :sswitch_d
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->clearQueue()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    :sswitch_e
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->getCurrentPosition()I

    move-result v3

    .line 171
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v3    # "_result":I
    :sswitch_f
    const-string v6, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/biznessapps/player/IPlayerService$Stub;->setCurrentPosition(I)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v8, "com.biznessapps.player.IPlayerService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/biznessapps/player/IPlayerService$Stub;->getCurrentSong()Lcom/biznessapps/player/MusicItem;

    move-result-object v3

    .line 188
    .local v3, "_result":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v3, :cond_4

    .line 190
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v3, p3, v7}, Lcom/biznessapps/player/MusicItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 194
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
