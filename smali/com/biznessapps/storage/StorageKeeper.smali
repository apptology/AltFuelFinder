.class public Lcom/biznessapps/storage/StorageKeeper;
.super Ljava/lang/Object;
.source "StorageKeeper.java"


# static fields
.field private static instance:Lcom/biznessapps/storage/StorageKeeper;


# instance fields
.field private dbAccessor:Lcom/biznessapps/storage/StorageAccessor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/biznessapps/storage/StorageAccessor;

    invoke-direct {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    .line 36
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/biznessapps/storage/StorageKeeper;->instance:Lcom/biznessapps/storage/StorageKeeper;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/biznessapps/storage/StorageKeeper;

    invoke-direct {v0, p0}, Lcom/biznessapps/storage/StorageKeeper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/storage/StorageKeeper;->instance:Lcom/biznessapps/storage/StorageKeeper;

    .line 32
    :cond_0
    return-void
.end method

.method public static instance()Lcom/biznessapps/storage/StorageKeeper;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/biznessapps/storage/StorageKeeper;->instance:Lcom/biznessapps/storage/StorageKeeper;

    return-object v0
.end method


# virtual methods
.method public addCoupons(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "couponsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->addCoupons(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public addFOAccount(Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 1
    .param p1, "account"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;->addFO_Account(Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    .line 64
    return-void
.end method

.method public addMessage(Lcom/biznessapps/messages/MessageEntity;)V
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->addMessage(Lcom/biznessapps/messages/MessageEntity;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public addNotes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/notepad/NotepadEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "noteList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->addNote(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public addPhotos(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->savePhoto(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public delNote(Lcom/biznessapps/notepad/NotepadEntity;)V
    .locals 3
    .param p1, "currentNote"    # Lcom/biznessapps/notepad/NotepadEntity;

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {p1}, Lcom/biznessapps/notepad/NotepadEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/storage/StorageAccessor;->delNote(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFOAccount(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;->deleteFOAccount(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public deleteQrCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->deleteQrCode(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    .line 209
    const-string v1, ""

    goto :goto_0
.end method

.method public getAllLoyaltyItems()[Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->getAllLoyaltyItems()[Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v0

    return-object v0
.end method

.method public getCachedItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;->getCachedItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->getAllComments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCouponData(Ljava/lang/String;)Lcom/biznessapps/coupons/CouponEntity;
    .locals 1
    .param p1, "couponId"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;->getCoupon(Ljava/lang/String;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    return-object v0
.end method

.method public getEmailedPhotos()Ljava/util/List;
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
    .line 100
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->getPhotos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFOAccouns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/account/AccountEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->getFOAccounts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoyaltyItem(Ljava/lang/String;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;->getLoyaltyItem(Ljava/lang/String;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v0

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/messages/MessageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->requestAllMessages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesIds()Ljava/util/List;
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
    .line 47
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->getMessagesIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/notepad/NotepadEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->requestAllNotes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQrCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/qr/QRCodeEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->getQrCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "dataToSave":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1, p2}, Lcom/biznessapps/storage/StorageAccessor;->putConfig(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAllLoyaltyItems()V
    .locals 2

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor;->removeAllLoyaltyItems()V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeMessage(Lcom/biznessapps/messages/MessageEntity;)V
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 92
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/biznessapps/messages/MessageEntity;->setDeleted(Z)V

    .line 93
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->addMessage(Lcom/biznessapps/messages/MessageEntity;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public removePhotos(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->removePhotos(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveCacheItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1, p2}, Lcom/biznessapps/storage/StorageAccessor;->saveCacheData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveComment(Lcom/biznessapps/fan_wall/CommentEntity;)V
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/fan_wall/CommentEntity;

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->addComment(Lcom/biznessapps/fan_wall/CommentEntity;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveLoyaltyItem(Lcom/biznessapps/loyalty/LoyaltyV1Entity;)V
    .locals 2
    .param p1, "loyaltyItem"    # Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->saveLoayltyItem(Lcom/biznessapps/loyalty/LoyaltyV1Entity;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveQrCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "qrCode"    # Ljava/lang/String;

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->addQrCode(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method
