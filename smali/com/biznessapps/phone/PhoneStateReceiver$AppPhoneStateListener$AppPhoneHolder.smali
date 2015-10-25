.class Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$AppPhoneHolder;
.super Ljava/lang/Object;
.source "PhoneStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppPhoneHolder"
.end annotation


# static fields
.field private static final instance:Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;-><init>(Lcom/biznessapps/phone/PhoneStateReceiver$1;)V

    sput-object v0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$AppPhoneHolder;->instance:Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener$AppPhoneHolder;->instance:Lcom/biznessapps/phone/PhoneStateReceiver$AppPhoneStateListener;

    return-object v0
.end method
