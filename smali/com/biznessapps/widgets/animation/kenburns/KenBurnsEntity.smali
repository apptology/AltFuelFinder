.class public Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;
.super Ljava/lang/Object;
.source "KenBurnsEntity.java"


# instance fields
.field private direction:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;->url:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;->direction:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 11
    return-void
.end method


# virtual methods
.method public getDirection()Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;->direction:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDirection(Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V
    .locals 0
    .param p1, "direction"    # Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;->direction:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 18
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;->url:Ljava/lang/String;

    .line 26
    return-void
.end method
