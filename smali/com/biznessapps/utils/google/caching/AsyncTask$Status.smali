.class public final enum Lcom/biznessapps/utils/google/caching/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/utils/google/caching/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

.field public static final enum FINISHED:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

.field public static final enum PENDING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

.field public static final enum RUNNING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    new-instance v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->PENDING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    .line 285
    new-instance v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->RUNNING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    .line 289
    new-instance v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->FINISHED:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    .line 277
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    sget-object v1, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->PENDING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->RUNNING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->FINISHED:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->$VALUES:[Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/utils/google/caching/AsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 277
    const-class v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/utils/google/caching/AsyncTask$Status;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->$VALUES:[Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    invoke-virtual {v0}, [Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    return-object v0
.end method
