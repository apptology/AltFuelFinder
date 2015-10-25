.class public Lcom/biznessapps/email_photo/EmailPhotoEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "EmailPhotoEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x443dab90097f7ba6L


# instance fields
.field private email:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoEntity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/email_photo/EmailPhotoEntity;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/email_photo/EmailPhotoEntity;->email:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/biznessapps/email_photo/EmailPhotoEntity;->subject:Ljava/lang/String;

    .line 28
    return-void
.end method
