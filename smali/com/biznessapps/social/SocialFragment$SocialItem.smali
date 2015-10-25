.class public Lcom/biznessapps/social/SocialFragment$SocialItem;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "SocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/social/SocialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6490b765348df028L


# instance fields
.field private iconId:I

.field private labelValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "iconId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "labelValue"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 552
    iput p1, p0, Lcom/biznessapps/social/SocialFragment$SocialItem;->iconId:I

    .line 553
    iput-object p2, p0, Lcom/biznessapps/social/SocialFragment$SocialItem;->title:Ljava/lang/String;

    .line 554
    iput-object p3, p0, Lcom/biznessapps/social/SocialFragment$SocialItem;->labelValue:Ljava/lang/String;

    .line 555
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "labelValue"    # Ljava/lang/String;

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/biznessapps/social/SocialFragment$SocialItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/biznessapps/social/SocialFragment$SocialItem;->iconId:I

    return v0
.end method

.method public getLabelValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$SocialItem;->labelValue:Ljava/lang/String;

    return-object v0
.end method

.method public setIconId(I)V
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 569
    iput p1, p0, Lcom/biznessapps/social/SocialFragment$SocialItem;->iconId:I

    .line 570
    return-void
.end method

.method public setLabelValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelValue"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$SocialItem;->labelValue:Ljava/lang/String;

    .line 563
    return-void
.end method
