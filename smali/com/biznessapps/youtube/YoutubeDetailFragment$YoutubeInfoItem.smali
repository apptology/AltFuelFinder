.class public Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "YoutubeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/youtube/YoutubeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YoutubeInfoItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6490b765348df028L


# instance fields
.field private labelValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "labelValue"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->title:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->labelValue:Ljava/lang/String;

    .line 322
    return-void
.end method


# virtual methods
.method public getLabelValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->labelValue:Ljava/lang/String;

    return-object v0
.end method

.method public setLabelValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelValue"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->labelValue:Ljava/lang/String;

    .line 330
    return-void
.end method
