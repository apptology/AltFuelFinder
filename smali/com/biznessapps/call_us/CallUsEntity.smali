.class public Lcom/biznessapps/call_us/CallUsEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "CallUsEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x388214ba1efc0598L


# instance fields
.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/biznessapps/call_us/CallUsEntity;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/biznessapps/call_us/CallUsEntity;->phone:Ljava/lang/String;

    .line 17
    return-void
.end method
