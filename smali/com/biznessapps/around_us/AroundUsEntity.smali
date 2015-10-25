.class public Lcom/biznessapps/around_us/AroundUsEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "AroundUsEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x52b633fbc7d61d1L


# instance fields
.field private greenColor:Ljava/lang/String;

.field private greenTextColor:Ljava/lang/String;

.field private greenTitle:Ljava/lang/String;

.field private poi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private purpleColor:Ljava/lang/String;

.field private purpleTextColor:Ljava/lang/String;

.field private purpleTitle:Ljava/lang/String;

.field private redColor:Ljava/lang/String;

.field private redTextColor:Ljava/lang/String;

.field private redTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->poi:Ljava/util/ArrayList;

    .line 27
    const-string v0, "00FF00"

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->greenColor:Ljava/lang/String;

    .line 28
    const-string v0, "000000"

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->greenTextColor:Ljava/lang/String;

    .line 29
    const-string v0, "800080"

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->purpleColor:Ljava/lang/String;

    .line 30
    const-string v0, "FFFFFF"

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->purpleTextColor:Ljava/lang/String;

    .line 31
    const-string v0, "FF0000"

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->redColor:Ljava/lang/String;

    .line 32
    const-string v0, "FFFFFF"

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->redTextColor:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public getGreenColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->greenColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGreenTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->greenTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGreenTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->greenTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPoi()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->poi:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPurpleColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->purpleColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPurpleTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->purpleTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPurpleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->purpleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRedColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->redColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRedTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->redTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsEntity;->redTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setGreenColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "greenColor"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->greenColor:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setGreenTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "greenTextColor"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->greenTextColor:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setGreenTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "greenTitle"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->greenTitle:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPoi(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "poi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->poi:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method public setPurpleColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpleColor"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->purpleColor:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPurpleTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpleTextColor"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->purpleTextColor:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPurpleTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpleTitle"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->purpleTitle:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRedColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "redColor"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->redColor:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setRedTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "redTextColor"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->redTextColor:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setRedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "redTitle"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsEntity;->redTitle:Ljava/lang/String;

    .line 56
    return-void
.end method
