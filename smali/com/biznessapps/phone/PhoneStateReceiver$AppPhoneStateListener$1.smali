.class Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$1;
.super Ljava/lang/Object;
.source "PhoneStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;


# direct methods
.method constructor <init>(Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$1;->this$0:Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    # invokes: Lcom/biznessapps/phone/PhoneStateReceiver;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->getCurrentSong()Lcom/biznessapps/player/MusicItem;

    move-result-object v0

    .line 82
    .local v0, "currentSong":Lcom/biznessapps/player/MusicItem;
    # invokes: Lcom/biznessapps/phone/PhoneStateReceiver;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-static {}, Lcom/biznessapps/phone/PhoneStateReceiver;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    .line 83
    return-void
.end method
