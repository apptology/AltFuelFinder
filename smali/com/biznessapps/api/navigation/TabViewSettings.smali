.class public Lcom/biznessapps/api/navigation/TabViewSettings;
.super Ljava/lang/Object;
.source "TabViewSettings.java"


# instance fields
.field private showText:Z

.field private tabBgUrl:Ljava/lang/String;

.field private tabId:J

.field private tabImageId:I

.field private tabImageUrl:Ljava/lang/String;

.field private tabName:Ljava/lang/String;

.field private tabTextColor:Ljava/lang/String;

.field private tabTint:Ljava/lang/String;

.field private tabTintOpacity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabBgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabBgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabId:J

    return-wide v0
.end method

.method public getTabImageId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabImageId:I

    return v0
.end method

.method public getTabImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabName:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabTint:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTintOpacity()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabTintOpacity:F

    return v0
.end method

.method public isShowText()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->showText:Z

    return v0
.end method

.method public setShowText(Z)V
    .locals 0
    .param p1, "showText"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->showText:Z

    .line 29
    return-void
.end method

.method public setTabBgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabBgUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabBgUrl:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setTabId(J)V
    .locals 0
    .param p1, "tabId"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabId:J

    .line 85
    return-void
.end method

.method public setTabImageId(I)V
    .locals 0
    .param p1, "tabImageId"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabImageId:I

    .line 77
    return-void
.end method

.method public setTabImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabImageUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabImageUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTabTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabTextColor"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabTextColor:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTabTint(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabTint"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabTint:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTabTintOpacity(F)V
    .locals 0
    .param p1, "tabTintOpacity"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/biznessapps/api/navigation/TabViewSettings;->tabTintOpacity:F

    .line 45
    return-void
.end method
