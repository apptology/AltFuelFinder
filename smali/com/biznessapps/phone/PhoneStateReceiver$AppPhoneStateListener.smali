.class Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/phone/PhoneStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppPhoneStateListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$AppPhoneHolder;
    }
.end annotation


# static fields
.field private static final MUSIC_START_DELAY:I = 0x7d0


# instance fields
.field private volatile isCallActive:Z

.field private volatile wasPlayerActive:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->isCallActive:Z

    .line 48
    iput-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->wasPlayerActive:Z

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/phone/PhoneStateReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/phone/PhoneStateReceiver$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;
    .locals 1

    .prologue
    .line 55
    # getter for: Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$AppPhoneHolder;->instance:Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$AppPhoneHolder;->access$100()Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 64
    monitor-enter p0

    :try_start_0
    # invokes: Lcom/biznessapps/phone/PhoneStateReceiver;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->isCallActive:Z

    if-nez v0, :cond_1

    .line 68
    # invokes: Lcom/biznessapps/phone/PhoneStateReceiver;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->isInState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    # invokes: Lcom/biznessapps/phone/PhoneStateReceiver;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->pause()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->wasPlayerActive:Z

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->isCallActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_3
    if-nez p1, :cond_2

    .line 75
    :try_start_1
    iget-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->isCallActive:Z

    if-eqz v0, :cond_4

    .line 76
    # invokes: Lcom/biznessapps/phone/PhoneStateReceiver;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->isInState(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->wasPlayerActive:Z

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$1;-><init>(Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->wasPlayerActive:Z

    .line 88
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->isCallActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
