.class public Lcom/biznessapps/mailing_list/MailingListEntity$Category;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "MailingListEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/mailing_list/MailingListEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c1e34cd2f44b882L


# instance fields
.field private name:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->selected:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->selected:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->selected:Z

    .line 51
    return-void
.end method
