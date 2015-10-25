.class public Lcom/biznessapps/phone/PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/phone/PhoneStateReceiver$1;,
        Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$200()Lcom/biznessapps/player/PlayerServiceAccessor;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    return-object v0
.end method

.method private static getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 27
    .local v2, "telManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->getInstance()Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;

    move-result-object v1

    .line 28
    .local v1, "phoneListener":Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;
    if-eqz v1, :cond_0

    .line 29
    const/16 v3, 0x20

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "phoneListener":Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;
    .end local v2    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TAG!!!"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
