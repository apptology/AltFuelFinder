.class public Lcom/biznessapps/qr/QRCodeEntity;
.super Ljava/lang/Object;
.source "QRCodeEntity.java"


# instance fields
.field public id:Ljava/lang/String;

.field public string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/biznessapps/qr/QRCodeEntity;->id:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/biznessapps/qr/QRCodeEntity;->string:Ljava/lang/String;

    .line 10
    return-void
.end method
