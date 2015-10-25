.class public Lcom/biznessapps/common/entities/AppInfoEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "AppInfoEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x3b02e19bad7bcf88L


# instance fields
.field private forIpadOnly:Z

.field private hasManyImages:Z

.field private imagesInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imagesLinkedTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private subTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->locations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getImagesInOrder()Ljava/util/List;
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
    .line 34
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->imagesInOrder:Ljava/util/List;

    return-object v0
.end method

.method public getImagesLinkedTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->imagesLinkedTabs:Ljava/util/List;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getSubTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->subTabs:Ljava/util/List;

    return-object v0
.end method

.method public hasManyImages()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->hasManyImages:Z

    return v0
.end method

.method public isForIpadOnly()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->forIpadOnly:Z

    return v0
.end method

.method public isHasManyImages()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->hasManyImages:Z

    return v0
.end method

.method public setForIpadOnly(Z)V
    .locals 0
    .param p1, "forIpadOnly"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->forIpadOnly:Z

    .line 75
    return-void
.end method

.method public setHasManyImages(Z)V
    .locals 0
    .param p1, "hasManyImages"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->hasManyImages:Z

    .line 31
    return-void
.end method

.method public setImagesInOrder(Ljava/util/List;)V
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
    .line 38
    .local p1, "imagesInOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->imagesInOrder:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setImagesLinkedTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "imagesLinkedTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->imagesLinkedTabs:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->locations:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setSubTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppInfoEntity;->subTabs:Ljava/util/List;

    .line 47
    return-void
.end method
