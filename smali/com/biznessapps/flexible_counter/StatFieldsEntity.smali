.class public Lcom/biznessapps/flexible_counter/StatFieldsEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "StatFieldsEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x4f2d236996d52e9L


# instance fields
.field private email:Ljava/lang/String;

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->email:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->fields:Ljava/util/List;

    .line 22
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->message:Ljava/lang/String;

    .line 38
    return-void
.end method
