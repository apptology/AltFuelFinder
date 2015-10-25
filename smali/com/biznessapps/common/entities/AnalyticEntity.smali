.class public Lcom/biznessapps/common/entities/AnalyticEntity;
.super Ljava/lang/Object;
.source "AnalyticEntity.java"


# instance fields
.field private accountId:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private catId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private itemId:Ljava/lang/String;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->catId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->accountId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->appId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setCatId(Ljava/lang/String;)V
    .locals 0
    .param p1, "catId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->catId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->context:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->itemId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/biznessapps/common/entities/AnalyticEntity;->tabId:Ljava/lang/String;

    .line 25
    return-void
.end method
