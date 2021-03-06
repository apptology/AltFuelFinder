.class public Lcom/biznessapps/player/MusicItem;
.super Ljava/lang/Object;
.source "MusicItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumName:Ljava/lang/String;

.field private isSingle:B

.field private songInfo:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/biznessapps/player/MusicItem$1;

    invoke-direct {v0}, Lcom/biznessapps/player/MusicItem$1;-><init>()V

    sput-object v0, Lcom/biznessapps/player/MusicItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/player/MusicItem;->url:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/player/MusicItem;->songInfo:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/player/MusicItem;->albumName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/biznessapps/player/MusicItem;->isSingle:B

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/player/MusicItem;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/player/MusicItem;->songInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/player/MusicItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSingle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-byte v1, p0, Lcom/biznessapps/player/MusicItem;->isSingle:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/player/MusicItem;->albumName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSingle()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/biznessapps/player/MusicItem;->isSingle:B

    .line 77
    return-void
.end method

.method public setSongInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "songInfo"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/player/MusicItem;->songInfo:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/player/MusicItem;->url:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/player/MusicItem;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/biznessapps/player/MusicItem;->songInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/biznessapps/player/MusicItem;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-byte v0, p0, Lcom/biznessapps/player/MusicItem;->isSingle:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    return-void
.end method
