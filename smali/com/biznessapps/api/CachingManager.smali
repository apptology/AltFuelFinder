.class public Lcom/biznessapps/api/CachingManager;
.super Ljava/lang/Object;
.source "CachingManager.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# instance fields
.field private musicTabId:Ljava/lang/String;

.field private propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private reservationsDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/reservation/ReservationDataKeeper;",
            ">;"
        }
    .end annotation
.end field

.field private tabList:Ljava/util/List;
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/CachingManager;->tabList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/CachingManager;->reservationsDataMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->reservationsDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 41
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->tabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    return-void
.end method

.method public findTab(Ljava/lang/String;)Lcom/biznessapps/more/Tab;
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "tab":Lcom/biznessapps/more/Tab;
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/biznessapps/api/CachingManager;->tabList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/more/Tab;

    .line 219
    .local v1, "item":Lcom/biznessapps/more/Tab;
    invoke-virtual {v1}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    move-object v2, v1

    .line 225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/more/Tab;
    :cond_1
    return-object v2
.end method

.method public getAppCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "APP_CODE_PROPERTY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppInfo()Lcom/biznessapps/common/entities/AppInfoEntity;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "APP_INFO_PROPERTY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/AppInfoEntity;

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDataFromDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageKeeper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v1, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return v1

    .line 87
    :cond_0
    const-string v2, "ba.application.settings"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-object v1

    .line 78
    :cond_0
    const-string v2, "ba.application.settings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 97
    .end local p3    # "defaultValue":Z
    :goto_0
    return p3

    .line 96
    .restart local p3    # "defaultValue":Z
    :cond_0
    const-string v1, "ba.application.settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_0
.end method

.method public getMusicTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->musicTabId:Ljava/lang/String;

    return-object v0
.end method

.method public getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/biznessapps/api/CachingManager;->reservationsDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reservation/ReservationDataKeeper;

    .line 106
    .local v0, "dataKeeper":Lcom/biznessapps/reservation/ReservationDataKeeper;
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/biznessapps/reservation/ReservationDataKeeper;

    .end local v0    # "dataKeeper":Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-direct {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;-><init>()V

    .line 108
    .restart local v0    # "dataKeeper":Lcom/biznessapps/reservation/ReservationDataKeeper;
    iget-object v1, p0, Lcom/biznessapps/api/CachingManager;->reservationsDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    return-object v0
.end method

.method public getTabList()Ljava/util/List;
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
    .line 212
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->tabList:Ljava/util/List;

    return-object v0
.end method

.method public isDataDamaged()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 179
    iget-object v5, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 191
    :goto_0
    return v4

    .line 182
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 183
    .local v1, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "property":Ljava/lang/String;
    iget-object v5, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    goto :goto_0

    .line 191
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "dataToSave":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 125
    .local v0, "correctdata":Z
    if-eqz p2, :cond_0

    .line 126
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, p2

    .line 127
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 132
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_1
    return v0

    .line 127
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveDataToDB(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "dataToSave":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 155
    .local v0, "correctdata":Z
    if-eqz p2, :cond_0

    .line 156
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, p2

    .line 157
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 162
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/biznessapps/storage/StorageKeeper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :cond_1
    return v0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveInSharedPreferences(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataToSave"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v1, "ba.application.settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method

.method public saveInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataToSave"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v1, "ba.application.settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public saveInSharedPreferences(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataToSave"    # Z
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v1, "ba.application.settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "APP_CODE_PROPERTY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public setAppInfo(Lcom/biznessapps/common/entities/AppInfoEntity;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/biznessapps/common/entities/AppInfoEntity;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "APP_INFO_PROPERTY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setMusicTabId(Ljava/lang/String;)V
    .locals 0
    .param p1, "musicTabId"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/biznessapps/api/CachingManager;->musicTabId:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setReservationDataKeeper(Ljava/lang/String;Lcom/biznessapps/reservation/ReservationDataKeeper;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "dataKeeper"    # Lcom/biznessapps/reservation/ReservationDataKeeper;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->reservationsDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setTabList(Ljava/util/List;)V
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
    .line 229
    .local p1, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/api/CachingManager;->tabList:Ljava/util/List;

    .line 230
    return-void
.end method
