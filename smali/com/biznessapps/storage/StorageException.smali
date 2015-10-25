.class public Lcom/biznessapps/storage/StorageException;
.super Ljava/lang/Exception;
.source "StorageException.java"


# static fields
.field private static final serialVersionUID:J = 0x72f563f1e09a6071L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
