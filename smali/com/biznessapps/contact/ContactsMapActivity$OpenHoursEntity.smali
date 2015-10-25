.class Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "ContactsMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/contact/ContactsMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenHoursEntity"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16c873fa7a609e1dL


# instance fields
.field private leftLabel:Ljava/lang/String;

.field private rightLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "leftLabel"    # Ljava/lang/String;
    .param p2, "rightLabel"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->leftLabel:Ljava/lang/String;

    .line 447
    iput-object p2, p0, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->rightLabel:Ljava/lang/String;

    .line 448
    return-void
.end method


# virtual methods
.method public getLeftLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->leftLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getRightLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->rightLabel:Ljava/lang/String;

    return-object v0
.end method
