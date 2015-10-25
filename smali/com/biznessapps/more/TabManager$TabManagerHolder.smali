.class Lcom/biznessapps/more/TabManager$TabManagerHolder;
.super Ljava/lang/Object;
.source "TabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/more/TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/biznessapps/more/TabManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/biznessapps/more/TabManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/biznessapps/more/TabManager;-><init>(Lcom/biznessapps/more/TabManager$1;)V

    sput-object v0, Lcom/biznessapps/more/TabManager$TabManagerHolder;->instance:Lcom/biznessapps/more/TabManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/biznessapps/more/TabManager;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/biznessapps/more/TabManager$TabManagerHolder;->instance:Lcom/biznessapps/more/TabManager;

    return-object v0
.end method
