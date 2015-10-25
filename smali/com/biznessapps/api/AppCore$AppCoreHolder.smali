.class Lcom/biznessapps/api/AppCore$AppCoreHolder;
.super Ljava/lang/Object;
.source "AppCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/api/AppCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppCoreHolder"
.end annotation


# static fields
.field private static final instance:Lcom/biznessapps/api/AppCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/biznessapps/api/AppCore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/biznessapps/api/AppCore;-><init>(Lcom/biznessapps/api/AppCore$1;)V

    sput-object v0, Lcom/biznessapps/api/AppCore$AppCoreHolder;->instance:Lcom/biznessapps/api/AppCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/biznessapps/api/AppCore;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/biznessapps/api/AppCore$AppCoreHolder;->instance:Lcom/biznessapps/api/AppCore;

    return-object v0
.end method
