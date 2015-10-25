.class public Lcom/biznessapps/storage/StorageAccessor$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StorageAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/storage/StorageAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 1398
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1399
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 1403
    const-string v2, "DbHelper"

    const-string v3, "creating base"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1406
    const-string v2, "CREATE TABLE \"cache_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"key\" TEXT,\"value\" BLOB)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1407
    const-string v2, "CREATE TABLE \"coupons_table\" (\"id\" INTEGER PRIMARY KEY,\"checkinTarget\" INTEGER,\"lastCheckinTime\" LONG,\"lastRedeemedTime\" LONG)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1408
    const-string v2, "CREATE TABLE \"notepad_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"title\" TEXT,\"content\" TEXT,\"date\" LONG)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1409
    const-string v2, "CREATE TABLE \"loyalty_table\" (\"id\" INTEGER PRIMARY KEY,\"loyaltyItemId\" TEXT,\"loyaltyCouponId\" TEXT,\"loyaltyImageUrl\" TEXT,\"loyaltyCouponCode\" TEXT,\"loyaltyCouponLocked\" INTEGER,\"loyaltyCouponApproved\" INTEGER,\"loyaltyCouponAlreadyUnLocked\" INTEGER)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    const-string v2, "CREATE TABLE IF NOT EXISTS \"preference_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"key\" VARCHAR(64),\"value\" TEXT,\"app_code\" TEXT)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1411
    const-string v2, "CREATE TABLE \"message_table\" (\"id\" INTEGER,\"type\" INTEGER,\"url\" TEXT,\"tabId\" TEXT,\"categoryId\" TEXT,\"detailId\" TEXT,\"date\" INTEGER,\"paths\" TEXT,\"message_text\" TEXT, \"gfEnabled\" INTEGER,\"isDeleted\" INTEGER,\"activeTill\" INTEGER)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1412
    const-string v2, "CREATE TABLE \"qr_codes_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"content\" TEXT)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1413
    const-string v2, "CREATE TABLE \"photos_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"path\" TEXT)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1414
    const-string v2, "CREATE TABLE \"comments_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"url\" TEXT,\"title\" TEXT,\"comment\" TEXT,\"time_ago\" INTEGER)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    const-string v2, "CREATE TABLE \"fo_account_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"nickname\" TEXT,\"first_name\" TEXT,\"last_name\" TEXT,\"address1\" TEXT,\"address2\" TEXT,\"phone\" TEXT,\"email\" TEXT,\"zipcode\" TEXT,\"latitude\" TEXT,\"longitude\" TEXT)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1418
    # getter for: Lcom/biznessapps/storage/StorageAccessor;->databaseModuleList:Ljava/util/List;
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/database/CommonDatabase;

    .line 1419
    .local v1, "moduleDatabase":Lcom/biznessapps/common/database/CommonDatabase;
    invoke-virtual {v1, p1}, Lcom/biznessapps/common/database/CommonDatabase;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1423
    .end local v1    # "moduleDatabase":Lcom/biznessapps/common/database/CommonDatabase;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1427
    const-string v2, "DbHelper"

    const-string v3, "initialized"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    return-void

    .line 1425
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1432
    const-string v2, "DROP TABLE IF EXISTS loyalty_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1433
    const-string v2, "DROP TABLE IF EXISTS coupons_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1434
    const-string v2, "DROP TABLE IF EXISTS notepad_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1435
    const-string v2, "DROP TABLE IF EXISTS preference_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1436
    const-string v2, "DROP TABLE IF EXISTS cache_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1437
    const-string v2, "DROP TABLE IF EXISTS message_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1438
    const-string v2, "DROP TABLE IF EXISTS qr_codes_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1439
    const-string v2, "DROP TABLE IF EXISTS profile_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1440
    const-string v2, "DROP TABLE IF EXISTS photos_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1441
    const-string v2, "DROP TABLE IF EXISTS comments_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1442
    const-string v2, "DROP TABLE IF EXISTS fo_account_table"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1445
    # getter for: Lcom/biznessapps/storage/StorageAccessor;->databaseModuleList:Ljava/util/List;
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/database/CommonDatabase;

    .line 1447
    .local v1, "moduleDatabase":Lcom/biznessapps/common/database/CommonDatabase;
    const/4 v2, 0x0

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, p1, v2, v3}, Lcom/biznessapps/common/database/CommonDatabase;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;FF)Z

    goto :goto_0

    .line 1450
    .end local v1    # "moduleDatabase":Lcom/biznessapps/common/database/CommonDatabase;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1451
    return-void
.end method
