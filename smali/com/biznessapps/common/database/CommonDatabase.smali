.class public abstract Lcom/biznessapps/common/database/CommonDatabase;
.super Ljava/lang/Object;
.source "CommonDatabase.java"


# instance fields
.field protected mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

.field protected mLocker:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/biznessapps/storage/StorageAccessor$DbHelper;Ljava/lang/Object;)V
    .locals 0
    .param p1, "helper"    # Lcom/biznessapps/storage/StorageAccessor$DbHelper;
    .param p2, "locker"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/biznessapps/common/database/CommonDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    .line 16
    iput-object p2, p0, Lcom/biznessapps/common/database/CommonDatabase;->mLocker:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    .prologue
    .line 20
    iget-object v1, p0, Lcom/biznessapps/common/database/CommonDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 22
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 23
    return-void
.end method

.method public abstract createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract dropDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/common/database/CommonDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 107
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "columnIndex":I
    move v1, p3

    .line 110
    .local v1, "value":Z
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 111
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v1, v3

    .line 114
    :cond_0
    :goto_1
    return v1

    .end local v0    # "columnIndex":I
    .end local v1    # "value":Z
    :cond_1
    move v2, v4

    .line 106
    goto :goto_0

    .restart local v0    # "columnIndex":I
    .restart local v1    # "value":Z
    :cond_2
    move v1, v4

    .line 111
    goto :goto_1
.end method

.method public getFloat(Landroid/database/Cursor;Ljava/lang/String;)F
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/common/database/CommonDatabase;->getFloat(Landroid/database/Cursor;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Landroid/database/Cursor;Ljava/lang/String;F)F
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 90
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 91
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "columnIndex":I
    move v1, p3

    .line 94
    .local v1, "value":F
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 95
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 98
    :cond_0
    return v1

    .line 90
    .end local v0    # "columnIndex":I
    .end local v1    # "value":F
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/common/database/CommonDatabase;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 58
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 59
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "columnIndex":I
    move v1, p3

    .line 62
    .local v1, "value":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 63
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 66
    :cond_0
    return v1

    .line 58
    .end local v0    # "columnIndex":I
    .end local v1    # "value":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/common/database/CommonDatabase;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 74
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 75
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "columnIndex":I
    move-wide v1, p3

    .line 78
    .local v1, "value":J
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 79
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 82
    :cond_0
    return-wide v1

    .line 74
    .end local v0    # "columnIndex":I
    .end local v1    # "value":J
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/common/database/CommonDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 43
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "columnIndex":I
    move-object v1, p3

    .line 46
    .local v1, "value":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 47
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_0
    return-object v1

    .line 42
    .end local v0    # "columnIndex":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stopTransaction()V
    .locals 2

    .prologue
    .line 26
    iget-object v1, p0, Lcom/biznessapps/common/database/CommonDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 28
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 29
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 30
    return-void
.end method

.method public abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;FF)Z
.end method
