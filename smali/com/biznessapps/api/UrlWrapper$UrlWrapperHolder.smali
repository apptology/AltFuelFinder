.class Lcom/biznessapps/api/UrlWrapper$UrlWrapperHolder;
.super Ljava/lang/Object;
.source "UrlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/api/UrlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UrlWrapperHolder"
.end annotation


# static fields
.field private static final instance:Lcom/biznessapps/api/UrlWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/biznessapps/api/UrlWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/biznessapps/api/UrlWrapper;-><init>(Lcom/biznessapps/api/UrlWrapper$1;)V

    sput-object v0, Lcom/biznessapps/api/UrlWrapper$UrlWrapperHolder;->instance:Lcom/biznessapps/api/UrlWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/biznessapps/api/UrlWrapper;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/biznessapps/api/UrlWrapper$UrlWrapperHolder;->instance:Lcom/biznessapps/api/UrlWrapper;

    return-object v0
.end method
