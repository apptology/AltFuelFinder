.class public Lcom/biznessapps/widgets/animation/kenburns/IncompatibleRatioException;
.super Ljava/lang/RuntimeException;
.source "IncompatibleRatioException.java"


# static fields
.field private static final serialVersionUID:J = 0x35951203a2a5bde6L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "Can\'t perform Ken Burns effect on rects with distinct aspect ratios!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
