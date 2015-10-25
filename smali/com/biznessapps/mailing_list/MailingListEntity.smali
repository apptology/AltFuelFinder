.class public Lcom/biznessapps/mailing_list/MailingListEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "MailingListEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/mailing_list/MailingListEntity$Category;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16f948e1a82047ebL


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/mailing_list/MailingListEntity$Category;",
            ">;"
        }
    .end annotation
.end field

.field private logoImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/mailing_list/MailingListEntity$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingListEntity;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getLogoImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingListEntity;->logoImage:Ljava/lang/String;

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/mailing_list/MailingListEntity$Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/mailing_list/MailingListEntity$Category;>;"
    iput-object p1, p0, Lcom/biznessapps/mailing_list/MailingListEntity;->categories:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setLogoImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "logoImage"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/biznessapps/mailing_list/MailingListEntity;->logoImage:Ljava/lang/String;

    .line 25
    return-void
.end method
