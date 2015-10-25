.class public Lcom/biznessapps/storage/StorageAccessor;
.super Ljava/lang/Object;
.source "StorageAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/storage/StorageAccessor$DbHelper;
    }
.end annotation


# static fields
.field private static final CACHE_COLUMN_ID:Ljava/lang/String; = "id"

.field private static final CACHE_COLUMN_KEY:Ljava/lang/String; = "key"

.field private static final CACHE_COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final CACHE_TABLE:Ljava/lang/String; = "cache_table"

.field private static final COLUMN_CHECKIN_TARGET:Ljava/lang/String; = "checkinTarget"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_LAST_CHECKIN_TIME:Ljava/lang/String; = "lastCheckinTime"

.field private static final COLUMN_LAST_REDEEMED_TIME:Ljava/lang/String; = "lastRedeemedTime"

.field private static final COLUMN_LOYALTY_COUPON_ALREADY_UNLOCKED:Ljava/lang/String; = "loyaltyCouponAlreadyUnLocked"

.field private static final COLUMN_LOYALTY_COUPON_APPROVED:Ljava/lang/String; = "loyaltyCouponApproved"

.field private static final COLUMN_LOYALTY_COUPON_CODE:Ljava/lang/String; = "loyaltyCouponCode"

.field private static final COLUMN_LOYALTY_COUPON_ID:Ljava/lang/String; = "loyaltyCouponId"

.field private static final COLUMN_LOYALTY_COUPON_LOCKED:Ljava/lang/String; = "loyaltyCouponLocked"

.field private static final COLUMN_LOYALTY_IMAGE_URL:Ljava/lang/String; = "loyaltyImageUrl"

.field private static final COLUMN_LOYALTY_ITEM_ID:Ljava/lang/String; = "loyaltyItemId"

.field private static final COLUMN_MESSAGE_ACTIVE_TILL:Ljava/lang/String; = "activeTill"

.field private static final COLUMN_MESSAGE_CATEGORY_ID:Ljava/lang/String; = "categoryId"

.field private static final COLUMN_MESSAGE_DATE:Ljava/lang/String; = "date"

.field private static final COLUMN_MESSAGE_DETAIL_ID:Ljava/lang/String; = "detailId"

.field private static final COLUMN_MESSAGE_GF_ENABLED:Ljava/lang/String; = "gfEnabled"

.field private static final COLUMN_MESSAGE_IS_DELETED:Ljava/lang/String; = "isDeleted"

.field private static final COLUMN_MESSAGE_PATHS:Ljava/lang/String; = "paths"

.field private static final COLUMN_MESSAGE_TAB_ID:Ljava/lang/String; = "tabId"

.field private static final COLUMN_MESSAGE_TEXT:Ljava/lang/String; = "message_text"

.field private static final COLUMN_MESSAGE_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN_MESSAGE_URL:Ljava/lang/String; = "url"

.field private static final COMMENT:Ljava/lang/String; = "comment"

.field private static final COMMENTS_TABLE:Ljava/lang/String; = "comments_table"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final COUPONS_TABLE:Ljava/lang/String; = "coupons_table"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ba_storage1_5.db"

.field private static final DB_VERSION:I = 0xd

.field private static final FILE_PATH:Ljava/lang/String; = "path"

.field private static final FO_ACCOUNT_TABLE:Ljava/lang/String; = "fo_account_table"

.field private static final FO_ADDRESS1:Ljava/lang/String; = "address1"

.field private static final FO_ADDRESS2:Ljava/lang/String; = "address2"

.field private static final FO_EMAIL:Ljava/lang/String; = "email"

.field private static final FO_FIRST_NAME:Ljava/lang/String; = "first_name"

.field private static final FO_LAST_NAME:Ljava/lang/String; = "last_name"

.field private static final FO_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final FO_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final FO_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final FO_PHONE:Ljava/lang/String; = "phone"

.field private static final FO_ZIPCODE:Ljava/lang/String; = "zipcode"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOYALTY_TABLE:Ljava/lang/String; = "loyalty_table"

.field private static final MESSAGE_TABLE:Ljava/lang/String; = "message_table"

.field private static final NOTEPAD_COLUMN_CONTENT:Ljava/lang/String; = "content"

.field private static final NOTEPAD_COLUMN_DATE:Ljava/lang/String; = "date"

.field private static final NOTEPAD_COLUMN_ID:Ljava/lang/String; = "id"

.field private static final NOTEPAD_COLUMN_TITLE:Ljava/lang/String; = "title"

.field private static final NOTEPAD_TABLE:Ljava/lang/String; = "notepad_table"

.field private static final PHOTOS_TABLE:Ljava/lang/String; = "photos_table"

.field private static final PREFERENCES_COLUMN_APP_CODE:Ljava/lang/String; = "app_code"

.field private static final PREFERENCES_COLUMN_ID:Ljava/lang/String; = "id"

.field private static final PREFERENCES_COLUMN_KEY:Ljava/lang/String; = "key"

.field private static final PREFERENCES_COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final PREFERENCES_TABLE:Ljava/lang/String; = "preference_table"

.field private static final PROFILE_COMMENT_URL:Ljava/lang/String; = "url"

.field private static final PROFILE_TABLE:Ljava/lang/String; = "profile_table"

.field private static final QR_CODES_TABLE:Ljava/lang/String; = "qr_codes_table"

.field private static final REQUEST_CREATE_CACHE_TABLE:Ljava/lang/String; = "CREATE TABLE \"cache_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"key\" TEXT,\"value\" BLOB)"

.field private static final REQUEST_CREATE_COMMENTS_TABLE:Ljava/lang/String; = "CREATE TABLE \"comments_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"url\" TEXT,\"title\" TEXT,\"comment\" TEXT,\"time_ago\" INTEGER)"

.field private static final REQUEST_CREATE_COUPONS_CUT_TABLE:Ljava/lang/String; = "CREATE TABLE \"coupons_table\" (\"id\" INTEGER PRIMARY KEY,\"checkinTarget\" INTEGER,\"lastCheckinTime\" LONG,\"lastRedeemedTime\" LONG)"

.field private static final REQUEST_CREATE_FO_ACCOUNT_TABLE:Ljava/lang/String; = "CREATE TABLE \"fo_account_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"nickname\" TEXT,\"first_name\" TEXT,\"last_name\" TEXT,\"address1\" TEXT,\"address2\" TEXT,\"phone\" TEXT,\"email\" TEXT,\"zipcode\" TEXT,\"latitude\" TEXT,\"longitude\" TEXT)"

.field private static final REQUEST_CREATE_LOYALTY_TABLE:Ljava/lang/String; = "CREATE TABLE \"loyalty_table\" (\"id\" INTEGER PRIMARY KEY,\"loyaltyItemId\" TEXT,\"loyaltyCouponId\" TEXT,\"loyaltyImageUrl\" TEXT,\"loyaltyCouponCode\" TEXT,\"loyaltyCouponLocked\" INTEGER,\"loyaltyCouponApproved\" INTEGER,\"loyaltyCouponAlreadyUnLocked\" INTEGER)"

.field private static final REQUEST_CREATE_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE \"message_table\" (\"id\" INTEGER,\"type\" INTEGER,\"url\" TEXT,\"tabId\" TEXT,\"categoryId\" TEXT,\"detailId\" TEXT,\"date\" INTEGER,\"paths\" TEXT,\"message_text\" TEXT, \"gfEnabled\" INTEGER,\"isDeleted\" INTEGER,\"activeTill\" INTEGER)"

.field private static final REQUEST_CREATE_NOTEPAD_TABLE:Ljava/lang/String; = "CREATE TABLE \"notepad_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"title\" TEXT,\"content\" TEXT,\"date\" LONG)"

.field private static final REQUEST_CREATE_PHOTOS_TABLE:Ljava/lang/String; = "CREATE TABLE \"photos_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"path\" TEXT)"

.field private static final REQUEST_CREATE_PREFERENCES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS \"preference_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"key\" VARCHAR(64),\"value\" TEXT,\"app_code\" TEXT)"

.field private static final REQUEST_CREATE_QR_CODES_TABLE:Ljava/lang/String; = "CREATE TABLE \"qr_codes_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"content\" TEXT)"

.field private static final REQUEST_DROP_CACHE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS cache_table"

.field private static final REQUEST_DROP_COMMENTS_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS comments_table"

.field private static final REQUEST_DROP_COUPONS_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS coupons_table"

.field private static final REQUEST_DROP_FO_ACCOUNT_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS fo_account_table"

.field private static final REQUEST_DROP_LOYALTY_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS loyalty_table"

.field private static final REQUEST_DROP_MESSAGES_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS message_table"

.field private static final REQUEST_DROP_NOTEPAD_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS notepad_table"

.field private static final REQUEST_DROP_PHOTOS_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS photos_table"

.field private static final REQUEST_DROP_PREFERENCE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS preference_table"

.field private static final REQUEST_DROP_PROFILE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS profile_table"

.field private static final REQUEST_DROP_QR_CODES_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS qr_codes_table"

.field private static final TIME_AGO:Ljava/lang/String; = "time_ago"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static databaseModuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/database/CommonDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private static lockdb:Ljava/lang/Object;


# instance fields
.field private base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/biznessapps/storage/StorageAccessor;->databaseModuleList:Ljava/util/List;

    .line 859
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-direct {p0, p1}, Lcom/biznessapps/storage/StorageAccessor;->createDB(Landroid/content/Context;)V

    .line 416
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->initDatabaseModules()V

    .line 417
    return-void
.end method

.method private static final REQUEST_DELETE_ALL_LOYALTY_ITEMS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string v0, "DELETE FROM loyalty_table"

    return-object v0
.end method

.method private static final REQUEST_DELETE_CACHED_ITEM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM cache_table WHERE key = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_DELETE_COUPON(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "couponId"    # Ljava/lang/String;

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM coupons_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final REQUEST_DELETE_FO_ACCOUNT(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "nickName"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM fo_account_table WHERE nickname = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_DELETE_LOYALTY_ITEM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "loyaltyId"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM loyalty_table WHERE loyaltyItemId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final REQUEST_DELETE_MESSAGE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM message_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final REQUEST_DELETE_NOTE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "noteId"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM notepad_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final REQUEST_DELETE_PHOTOS(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM photos_table WHERE path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_DELETE_PREFERENCE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM preference_table WHERE key = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_ACCOUNT(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "nickname"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT id, nickname, first_name, last_name, address1, address2, phone, email, zipcode, latitude, longitude FROM fo_account_table WHERE nickname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_ACCOUNTS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "SELECT id, nickname, first_name, last_name, address1, address2, phone, email, zipcode, latitude, longitude FROM fo_account_table"

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_COMMENTS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-string v0, "SELECT url, title, comment, time_ago FROM comments_table"

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_LOYALTY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const-string v0, "SELECT * FROM loyalty_table"

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_MESSAGES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    const-string v0, "SELECT id, type, url, tabId, categoryId, detailId, date, paths, message_text, gfEnabled, isDeleted, activeTill FROM message_table"

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_MESSAGES_IDS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    const-string v0, "SELECT id FROM message_table"

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_NOTES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "SELECT id, title, content, date FROM notepad_table"

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_PHOTOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string v0, "SELECT path FROM photos_table"

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_QR_CODES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string v0, "SELECT * FROM qr_codes_table"

    return-object v0
.end method

.method private static final REQUEST_GET_CACHED_ITEM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT value FROM cache_table WHERE key = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_COUPON(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "couponId"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT id, checkinTarget, lastCheckinTime, lastRedeemedTime FROM coupons_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_LOYALTY_ITEM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT loyaltyItemId, loyaltyCouponId, loyaltyImageUrl, loyaltyCouponCode, loyaltyCouponLocked, loyaltyCouponApproved, loyaltyCouponAlreadyUnLocked FROM loyalty_table WHERE loyaltyItemId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_NOTE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "noteId"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT id, title, content, date FROM notepad_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_PREFERENCE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT key, value FROM preference_table WHERE key = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/biznessapps/storage/StorageAccessor;->databaseModuleList:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1388
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1389
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    :cond_0
    monitor-exit p0

    return-void

    .line 1388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createDB(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1376
    :try_start_0
    new-instance v1, Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    const-string v2, "ba_storage1_5.db"

    invoke-direct {v1, p1, v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    :goto_0
    return-void

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "DB"

    const-string v2, "Failed to open/create database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initDatabaseModules()V
    .locals 3

    .prologue
    .line 421
    iget-object v1, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    sget-object v2, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance(Lcom/biznessapps/storage/StorageAccessor$DbHelper;Ljava/lang/Object;)Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v0

    .line 422
    .local v0, "moduleDatabase":Lcom/biznessapps/common/database/CommonDatabase;
    sget-object v1, Lcom/biznessapps/storage/StorageAccessor;->databaseModuleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method


# virtual methods
.method public addComment(Lcom/biznessapps/fan_wall/CommentEntity;)V
    .locals 6
    .param p1, "comment"    # Lcom/biznessapps/fan_wall/CommentEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 1043
    iget-object v3, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1045
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1046
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1047
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "url"

    invoke-virtual {p1}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v3, "title"

    invoke-virtual {p1}, Lcom/biznessapps/fan_wall/CommentEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v3, "comment"

    invoke-virtual {p1}, Lcom/biznessapps/fan_wall/CommentEntity;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v3, "time_ago"

    invoke-virtual {p1}, Lcom/biznessapps/fan_wall/CommentEntity;->getTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1051
    const-string v3, "comments_table"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1052
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1053
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1058
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1060
    return-void

    .line 1054
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1055
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v4, "error with adding Comment\'s data to the storage"

    invoke-direct {v3, v4}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1058
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public addCoupons(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 1349
    .local p1, "couponsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1351
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 1369
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1370
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1372
    :goto_0
    return-void

    .line 1354
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1355
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1356
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/coupons/CouponEntity;

    .line 1357
    .local v3, "item":Lcom/biznessapps/coupons/CouponEntity;
    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_COUPON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1358
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v5, "checkinTarget"

    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTarget()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1360
    const-string v5, "lastCheckinTime"

    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getLastCheckinTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1361
    const-string v5, "lastRedeemedTime"

    invoke-virtual {v3}, Lcom/biznessapps/coupons/CouponEntity;->getLastRedeemedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1362
    const-string v5, "coupons_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1363
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1366
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1367
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding coupon\'s data to the storage"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1369
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1370
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 1365
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1369
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1370
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public addFO_Account(Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 5
    .param p1, "account"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 1175
    iget-object v3, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1177
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1179
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_FO_ACCOUNT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1180
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1181
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "nickname"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v3, "first_name"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v3, "last_name"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v3, "address1"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v3, "address2"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v3, "phone"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v3, "email"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v3, "zipcode"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getZipcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v3, "latitude"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v3, "longitude"

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v3, "fo_account_table"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1192
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1198
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1200
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1194
    :catch_0
    move-exception v1

    .line 1195
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1198
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1197
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1198
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public addMessage(Lcom/biznessapps/messages/MessageEntity;)V
    .locals 9
    .param p1, "message"    # Lcom/biznessapps/messages/MessageEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1012
    sget-object v6, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v6

    .line 1013
    :try_start_0
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1015
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1016
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1017
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_MESSAGE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1018
    const-string v5, "id"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v5, "type"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1020
    const-string v5, "url"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v5, "tabId"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getTabId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v5, "categoryId"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v5, "detailId"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getDetailId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v5, "date"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getTimeStamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1025
    const-string v5, "paths"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getPaths()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v5, "message_text"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v7, "gfEnabled"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->isGeoFencingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    const-string v5, "isDeleted"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->isDeleted()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    const-string v3, "activeTill"

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getActiveTill()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1030
    const-string v3, "message_table"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1031
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1032
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1036
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1037
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1039
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1040
    return-void

    :cond_0
    move v5, v4

    .line 1027
    goto :goto_0

    :cond_1
    move v3, v4

    .line 1028
    goto :goto_1

    .line 1033
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1034
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v4, "error with adding Note\'s data to the storage"

    invoke-direct {v3, v4}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1036
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1037
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    .line 1039
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public addNote(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/notepad/NotepadEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 1135
    .local p1, "notesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1136
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1141
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1142
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/notepad/NotepadEntity;

    .line 1143
    .local v3, "item":Lcom/biznessapps/notepad/NotepadEntity;
    invoke-virtual {v3}, Lcom/biznessapps/notepad/NotepadEntity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_NOTE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1144
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/biznessapps/notepad/NotepadEntity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v5, "title"

    invoke-virtual {v3}, Lcom/biznessapps/notepad/NotepadEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v5, "content"

    invoke-virtual {v3}, Lcom/biznessapps/notepad/NotepadEntity;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v5, "date"

    invoke-virtual {v3}, Lcom/biznessapps/notepad/NotepadEntity;->getNoteDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1148
    const-string v5, "notepad_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1149
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1152
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1153
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding Note\'s data to the storage"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1156
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 1151
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1155
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1156
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public addQrCode(Ljava/lang/String;)V
    .locals 5
    .param p1, "qrCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 1063
    iget-object v3, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1065
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1066
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1067
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "content"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v3, "qr_codes_table"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1069
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1070
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1075
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1077
    return-void

    .line 1071
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1072
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v4, "error with adding qr code to the storage"

    invoke-direct {v3, v4}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1075
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public delNote(Ljava/lang/String;)V
    .locals 4
    .param p1, "noteId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 995
    iget-object v2, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 996
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p1, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 1000
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1001
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_NOTE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1007
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v1

    .line 1004
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v3, "error with deleting Note\'s data from the storage"

    invoke-direct {v2, v3}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1007
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public deleteFOAccount(Ljava/lang/String;)V
    .locals 3
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 1161
    iget-object v2, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1163
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1164
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_FO_ACCOUNT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1170
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1172
    :goto_0
    return-void

    .line 1166
    :catch_0
    move-exception v1

    .line 1167
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1170
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1169
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1170
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public deleteQrCode(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1082
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1084
    const-string v2, "qr_codes_table"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1085
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1090
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1092
    return-void

    .line 1086
    :catch_0
    move-exception v1

    .line 1087
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v3, "error with adding qr code to the storage"

    invoke-direct {v2, v3}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1089
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1090
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public getAllComments()Ljava/util/List;
    .locals 9
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
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 586
    iget-object v6, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 588
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 589
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_COMMENTS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 591
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 592
    const-string v6, "DbHelper"

    const-string v7, "cursor = null"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    return-object v2

    .line 596
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    .line 597
    .local v5, "working":Z
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 599
    .local v4, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 600
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    if-eqz v5, :cond_1

    if-lez v4, :cond_1

    .line 601
    const/4 v3, 0x0

    .line 602
    .local v3, "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :goto_1
    if-eqz v5, :cond_1

    .line 603
    new-instance v3, Lcom/biznessapps/fan_wall/CommentEntity;

    .end local v3    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    invoke-direct {v3}, Lcom/biznessapps/fan_wall/CommentEntity;-><init>()V

    .line 604
    .restart local v3    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setImageUrl(Ljava/lang/String;)V

    .line 605
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setTitle(Ljava/lang/String;)V

    .line 606
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setComment(Ljava/lang/String;)V

    .line 607
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/biznessapps/fan_wall/CommentEntity;->setTimeStamp(J)V

    .line 608
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    goto :goto_1

    .line 613
    .end local v3    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 615
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 619
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 619
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
.end method

.method public getAllLoyaltyItems()[Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .locals 14

    .prologue
    .line 703
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 705
    .local v2, "entities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/biznessapps/loyalty/LoyaltyV1Entity;>;"
    sget-object v11, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v11

    .line 706
    :try_start_0
    iget-object v10, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v10}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 709
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 710
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_LOYALTY()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 712
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 713
    const-string v10, "DbHelper"

    const-string v12, "cursor = null"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    check-cast v10, [Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 753
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 760
    :goto_0
    return-object v10

    .line 717
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 718
    .local v4, "hasMore":Z
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 720
    .local v9, "size":I
    if-eqz v4, :cond_2

    if-lez v9, :cond_2

    .line 722
    :goto_1
    if-eqz v4, :cond_2

    .line 724
    new-instance v5, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    invoke-direct {v5}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;-><init>()V

    .line 725
    .local v5, "loyaltyCardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    const-string v10, "loyaltyItemId"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 726
    .local v7, "loyaltyId":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 727
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    .line 728
    .local v3, "entity":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v6

    .line 734
    .local v6, "loyaltyCardItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    :goto_2
    invoke-virtual {v3, v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setId(Ljava/lang/String;)V

    .line 736
    const-string v10, "loyaltyImageUrl"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setImageUrl(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0, v0, v5}, Lcom/biznessapps/storage/StorageAccessor;->parseLayaltyCardItem(Landroid/database/Cursor;Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;)V

    .line 741
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 744
    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 752
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "entity":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .end local v4    # "hasMore":Z
    .end local v5    # "loyaltyCardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .end local v6    # "loyaltyCardItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    .end local v7    # "loyaltyId":Ljava/lang/String;
    .end local v9    # "size":I
    :catchall_0
    move-exception v10

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 753
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v10

    .line 755
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 730
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "hasMore":Z
    .restart local v5    # "loyaltyCardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .restart local v7    # "loyaltyId":Ljava/lang/String;
    .restart local v9    # "size":I
    :cond_1
    :try_start_5
    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-direct {v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;-><init>()V

    .line 731
    .restart local v3    # "entity":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .restart local v6    # "loyaltyCardItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    invoke-virtual {v3, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setCoupons(Ljava/util/List;)V

    goto :goto_2

    .line 748
    .end local v3    # "entity":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .end local v5    # "loyaltyCardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .end local v6    # "loyaltyCardItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    .end local v7    # "loyaltyId":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 749
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 752
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 753
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 755
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 757
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v10

    new-array v8, v10, [Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    .line 758
    .local v8, "newEntities":[Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v10, v8

    .line 760
    goto :goto_0
.end method

.method public getCachedItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 895
    const/4 v3, 0x0

    .line 896
    .local v3, "value":Ljava/lang/String;
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v3

    .line 928
    .end local v3    # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 899
    .end local v4    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v7

    .line 900
    :try_start_0
    iget-object v6, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 904
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 905
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_CACHED_ITEM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 907
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 908
    const-string v6, "DbHelper"

    const-string v8, "cursor = null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 924
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v3

    .end local v3    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 912
    .end local v4    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    .line 914
    .local v5, "working":Z
    if-eqz v5, :cond_2

    .line 915
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 916
    .local v0, "blobValue":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .end local v3    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    move-object v3, v4

    .line 919
    .end local v0    # "blobValue":[B
    .end local v4    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 920
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 923
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 924
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 927
    monitor-exit v7

    move-object v4, v3

    .line 928
    .end local v3    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 923
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "working":Z
    .restart local v3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 924
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 927
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 1319
    const-string v3, ""

    .line 1320
    .local v3, "item":Ljava/lang/String;
    iget-object v6, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1323
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1324
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    .line 1325
    .local v0, "cache":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_PREFERENCE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1327
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 1328
    const-string v6, "DbHelper"

    const-string v7, "cursor = null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1343
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v4, v3

    .line 1345
    .end local v3    # "item":Ljava/lang/String;
    .local v4, "item":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1332
    .end local v4    # "item":Ljava/lang/String;
    .restart local v3    # "item":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    .line 1334
    .local v5, "working":Z
    if-eqz v5, :cond_1

    .line 1335
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1338
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1339
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1342
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1343
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v4, v3

    .line 1345
    .end local v3    # "item":Ljava/lang/String;
    .restart local v4    # "item":Ljava/lang/String;
    goto :goto_0

    .line 1342
    .end local v0    # "cache":Lcom/biznessapps/api/CachingManager;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "working":Z
    .restart local v3    # "item":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1343
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
.end method

.method public getCoupon(Ljava/lang/String;)Lcom/biznessapps/coupons/CouponEntity;
    .locals 9
    .param p1, "couponId"    # Ljava/lang/String;

    .prologue
    .line 957
    const/4 v2, 0x0

    .line 958
    .local v2, "item":Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 991
    .end local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .local v3, "item":Lcom/biznessapps/coupons/CouponEntity;
    :goto_0
    return-object v3

    .line 961
    .end local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    :cond_0
    sget-object v6, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v6

    .line 962
    :try_start_0
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 965
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 966
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_COUPON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 968
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 969
    const-string v5, "DbHelper"

    const-string v7, "cursor = null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 987
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 988
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v2

    .end local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    goto :goto_0

    .line 973
    .end local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 975
    .local v4, "working":Z
    if-eqz v4, :cond_2

    .line 976
    new-instance v3, Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {v3}, Lcom/biznessapps/coupons/CouponEntity;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 977
    .end local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    const/4 v5, 0x0

    :try_start_4
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/coupons/CouponEntity;->setId(Ljava/lang/String;)V

    .line 978
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinTarget(I)V

    .line 979
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/biznessapps/coupons/CouponEntity;->setLastCheckinTime(J)V

    .line 980
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/biznessapps/coupons/CouponEntity;->setLastRedeemedTime(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .line 983
    .end local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    :cond_2
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 984
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 987
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 988
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 990
    monitor-exit v6

    move-object v3, v2

    .line 991
    .end local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    goto :goto_0

    .line 987
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .end local v4    # "working":Z
    .restart local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 988
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 990
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 987
    .end local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v4    # "working":Z
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v2    # "item":Lcom/biznessapps/coupons/CouponEntity;
    goto :goto_1
.end method

.method public getFOAccountInfo()Lcom/biznessapps/food_ordering/account/AccountEntity;
    .locals 8

    .prologue
    .line 863
    new-instance v0, Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-direct {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;-><init>()V

    .line 864
    .local v0, "account":Lcom/biznessapps/food_ordering/account/AccountEntity;
    sget-object v6, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v6

    .line 865
    :try_start_0
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 869
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 870
    const-string v5, "first_name"

    invoke-static {v5}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_CACHED_ITEM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 872
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 873
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 875
    .local v4, "working":Z
    if-eqz v4, :cond_0

    .line 876
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 877
    .local v1, "blobValue":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setFirstName(Ljava/lang/String;)V

    .line 880
    .end local v1    # "blobValue":[B
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 882
    .end local v4    # "working":Z
    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 886
    invoke-direct {p0, v3}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 889
    monitor-exit v6

    .line 890
    return-object v0

    .line 885
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 886
    invoke-direct {p0, v3}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 889
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method public getFOAccounts()Ljava/util/List;
    .locals 11
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
    const/4 v6, 0x0

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    sget-object v7, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v7

    .line 1205
    :try_start_0
    iget-object v8, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1208
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1209
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_ACCOUNTS()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1211
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 1212
    const-string v8, "DbHelper"

    const-string v9, "cursor = null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    monitor-exit v7

    move-object v0, v6

    .line 1249
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    :goto_0
    return-object v0

    .line 1217
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    .line 1218
    .local v3, "hasMore":Z
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1220
    .local v5, "size":I
    if-eqz v3, :cond_1

    if-lez v5, :cond_1

    .line 1221
    :goto_1
    if-eqz v3, :cond_1

    .line 1222
    new-instance v4, Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-direct {v4}, Lcom/biznessapps/food_ordering/account/AccountEntity;-><init>()V

    .line 1223
    .local v4, "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setId(Ljava/lang/String;)V

    .line 1224
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setNickName(Ljava/lang/String;)V

    .line 1225
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setFirstName(Ljava/lang/String;)V

    .line 1226
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLastName(Ljava/lang/String;)V

    .line 1227
    const/4 v6, 0x4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress1(Ljava/lang/String;)V

    .line 1228
    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress2(Ljava/lang/String;)V

    .line 1229
    const/4 v6, 0x6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setPhone(Ljava/lang/String;)V

    .line 1230
    const/4 v6, 0x7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setEmail(Ljava/lang/String;)V

    .line 1231
    const/16 v6, 0x8

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setZipcode(Ljava/lang/String;)V

    .line 1232
    const/16 v6, 0x9

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLatitude(Ljava/lang/String;)V

    .line 1233
    const/16 v6, 0xa

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLongitude(Ljava/lang/String;)V

    .line 1235
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 1237
    goto :goto_1

    .line 1240
    .end local v4    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1245
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1246
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1248
    monitor-exit v7

    goto/16 :goto_0

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "hasMore":Z
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1245
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "hasMore":Z
    .restart local v5    # "size":I
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1246
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getFO_Account(Ljava/lang/String;)Lcom/biznessapps/food_ordering/account/AccountEntity;
    .locals 9
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 1253
    const/4 v2, 0x0

    .line 1254
    .local v2, "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    sget-object v6, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v6

    .line 1255
    :try_start_0
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1258
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1259
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ACCOUNT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1261
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1262
    const-string v5, "DbHelper"

    const-string v7, "cursor = null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1288
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v2

    .line 1291
    .end local v2    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .local v3, "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :goto_0
    return-object v3

    .line 1266
    .end local v3    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .restart local v2    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 1268
    .local v4, "working":Z
    if-eqz v4, :cond_1

    .line 1269
    new-instance v3, Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-direct {v3}, Lcom/biznessapps/food_ordering/account/AccountEntity;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1270
    .end local v2    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .restart local v3    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    const/4 v5, 0x0

    :try_start_4
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setId(Ljava/lang/String;)V

    .line 1271
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setNickName(Ljava/lang/String;)V

    .line 1272
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setFirstName(Ljava/lang/String;)V

    .line 1273
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLastName(Ljava/lang/String;)V

    .line 1274
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress1(Ljava/lang/String;)V

    .line 1275
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress2(Ljava/lang/String;)V

    .line 1276
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setPhone(Ljava/lang/String;)V

    .line 1277
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setEmail(Ljava/lang/String;)V

    .line 1278
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setZipcode(Ljava/lang/String;)V

    .line 1279
    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLatitude(Ljava/lang/String;)V

    .line 1280
    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLongitude(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .line 1283
    .end local v3    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .restart local v2    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :cond_1
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1284
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1287
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1288
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1290
    monitor-exit v6

    move-object v3, v2

    .line 1291
    .end local v2    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .restart local v3    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    goto :goto_0

    .line 1287
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .end local v4    # "working":Z
    .restart local v2    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1288
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 1290
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 1287
    .end local v2    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .restart local v4    # "working":Z
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    .restart local v2    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    goto :goto_1
.end method

.method public getLoyaltyItem(Ljava/lang/String;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .locals 12
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 764
    const/4 v3, 0x0

    .line 765
    .local v3, "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    sget-object v9, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v9

    .line 766
    :try_start_0
    iget-object v8, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 769
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 770
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_LOYALTY_ITEM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 772
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 773
    const-string v8, "DbHelper"

    const-string v10, "cursor = null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v3

    .line 805
    .end local v3    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .local v4, "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :goto_0
    return-object v4

    .line 777
    .end local v4    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .restart local v3    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 778
    .local v7, "working":Z
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 780
    .local v6, "size":I
    if-eqz v7, :cond_2

    if-lez v6, :cond_2

    .line 781
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v5, "loyaltyCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    new-instance v4, Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-direct {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 783
    .end local v3    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .restart local v4    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :goto_1
    if-eqz v7, :cond_1

    .line 784
    :try_start_4
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    invoke-direct {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;-><init>()V

    .line 785
    .local v0, "cardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setId(Ljava/lang/String;)V

    .line 786
    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setImageUrl(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/storage/StorageAccessor;->parseLayaltyCardItem(Landroid/database/Cursor;Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;)V

    .line 791
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 793
    goto :goto_1

    .line 794
    .end local v0    # "cardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    :cond_1
    invoke-virtual {v4, v5}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setCoupons(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v4

    .line 797
    .end local v4    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .end local v5    # "loyaltyCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    .restart local v3    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :cond_2
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 798
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 801
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 804
    monitor-exit v9

    move-object v4, v3

    .line 805
    .end local v3    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .restart local v4    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    goto :goto_0

    .line 801
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .end local v6    # "size":I
    .end local v7    # "working":Z
    .restart local v3    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    invoke-direct {p0, v2}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v8

    .line 804
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v8

    .line 801
    .end local v3    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .restart local v5    # "loyaltyCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    .restart local v6    # "size":I
    .restart local v7    # "working":Z
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .restart local v3    # "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    goto :goto_2
.end method

.method public getMessagesIds()Ljava/util/List;
    .locals 10
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
    const/4 v5, 0x0

    .line 466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v6

    .line 468
    :try_start_0
    iget-object v7, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v7}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 470
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 471
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_MESSAGES_IDS()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 473
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 474
    const-string v7, "DbHelper"

    const-string v8, "cursor = null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    monitor-exit v6

    move-object v2, v5

    .line 496
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 478
    .restart local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 479
    .local v4, "working":Z
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 480
    .local v3, "size":I
    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    .line 481
    :goto_1
    if-eqz v4, :cond_1

    .line 482
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    goto :goto_1

    .line 487
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 492
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 495
    monitor-exit v6

    goto :goto_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "size":I
    .end local v4    # "working":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 492
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "size":I
    .restart local v4    # "working":Z
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getNote(Ljava/lang/String;)Lcom/biznessapps/notepad/NotepadEntity;
    .locals 8
    .param p1, "noteId"    # Ljava/lang/String;

    .prologue
    .line 552
    const/4 v2, 0x0

    .line 553
    .local v2, "item":Lcom/biznessapps/notepad/NotepadEntity;
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 556
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 557
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_NOTE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 559
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 560
    const-string v5, "DbHelper"

    const-string v6, "cursor = null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 579
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v3, v2

    .line 582
    .end local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .local v3, "item":Lcom/biznessapps/notepad/NotepadEntity;
    :goto_0
    return-object v3

    .line 564
    .end local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .restart local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 566
    .local v4, "working":Z
    if-eqz v4, :cond_1

    .line 567
    new-instance v3, Lcom/biznessapps/notepad/NotepadEntity;

    invoke-direct {v3}, Lcom/biznessapps/notepad/NotepadEntity;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    .end local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .restart local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/notepad/NotepadEntity;->setId(Ljava/lang/String;)V

    .line 569
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/notepad/NotepadEntity;->setTitle(Ljava/lang/String;)V

    .line 570
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/notepad/NotepadEntity;->setContent(Ljava/lang/String;)V

    .line 571
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/biznessapps/notepad/NotepadEntity;->setNoteDate(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 574
    .end local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .restart local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 575
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 578
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 579
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v3, v2

    .line 582
    .end local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .restart local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    goto :goto_0

    .line 578
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .end local v4    # "working":Z
    .restart local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 579
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 578
    .end local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .restart local v4    # "working":Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    .restart local v2    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    goto :goto_1
.end method

.method public getPhotos()Ljava/util/List;
    .locals 7
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
    const/4 v2, 0x0

    .line 625
    iget-object v6, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 627
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 628
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_PHOTOS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 630
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 654
    :goto_0
    return-object v2

    .line 634
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    .line 635
    .local v5, "working":Z
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 637
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 638
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    if-lez v3, :cond_1

    .line 639
    :goto_1
    if-eqz v5, :cond_1

    .line 640
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "url":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 643
    goto :goto_1

    .line 646
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 648
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 652
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 652
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
.end method

.method public getQrCodes()Ljava/util/List;
    .locals 11
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
    const/4 v5, 0x0

    .line 1095
    iget-object v8, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1098
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1099
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_QR_CODES()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1101
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1102
    const-string v8, "DbHelper"

    const-string v9, "cursor = null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :goto_0
    return-object v5

    .line 1106
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .local v5, "qrCodeList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/qr/QRCodeEntity;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    .line 1108
    .local v2, "hasMore":Z
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1110
    .local v6, "size":I
    if-eqz v2, :cond_1

    if-lez v6, :cond_1

    .line 1111
    :goto_1
    if-eqz v2, :cond_1

    .line 1112
    const-string v8, "id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, "id":Ljava/lang/String;
    const-string v8, "content"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1115
    .local v7, "string":Ljava/lang/String;
    new-instance v4, Lcom/biznessapps/qr/QRCodeEntity;

    invoke-direct {v4, v3, v7}, Lcom/biznessapps/qr/QRCodeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    .local v4, "newItem":Lcom/biznessapps/qr/QRCodeEntity;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 1119
    goto :goto_1

    .line 1122
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "newItem":Lcom/biznessapps/qr/QRCodeEntity;
    .end local v7    # "string":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1124
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1128
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1127
    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1128
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v8
.end method

.method public parseLayaltyCardItem(Landroid/database/Cursor;Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cardItem"    # Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 691
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 692
    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 694
    const-string v0, "loyaltyCouponId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setCouponId(Ljava/lang/String;)V

    .line 695
    const-string v0, "loyaltyCouponCode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setCouponCode(Ljava/lang/String;)V

    .line 697
    const-string v0, "loyaltyCouponLocked"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setLocked(Z)V

    .line 698
    const-string v0, "loyaltyCouponApproved"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setApproved(Z)V

    .line 699
    const-string v0, "loyaltyCouponAlreadyUnLocked"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    invoke-virtual {p2, v1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setAlreadyUnLocked(Z)V

    .line 700
    return-void

    :cond_0
    move v0, v2

    .line 691
    goto :goto_0

    :cond_1
    move v0, v2

    .line 692
    goto :goto_1

    :cond_2
    move v0, v2

    .line 697
    goto :goto_2

    :cond_3
    move v0, v2

    .line 698
    goto :goto_3

    :cond_4
    move v1, v2

    .line 699
    goto :goto_4
.end method

.method public putConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 1295
    .local p2, "dataToSave":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v4}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1297
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_0

    .line 1313
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1314
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1316
    :goto_0
    return-void

    .line 1300
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1301
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1302
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    .line 1303
    .local v0, "cache":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_PREFERENCE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1304
    const-string v4, "key"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string v4, "value"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v4, "app_code"

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v4, "preference_table"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1308
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1309
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1314
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1310
    .end local v0    # "cache":Lcom/biznessapps/api/CachingManager;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 1311
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error with adding preference value to the storage"

    invoke-direct {v4, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1314
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
.end method

.method public removeAllLoyaltyItems()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 842
    sget-object v3, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v3

    .line 843
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 845
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 848
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_ALL_LOYALTY_ITEMS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 854
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 856
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 857
    return-void

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v4, "error with adding coupon\'s data to the storage"

    invoke-direct {v2, v4}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 853
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 854
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    .line 856
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public removePhotos(Ljava/lang/String;)V
    .locals 4
    .param p1, "photoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v2, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 660
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 661
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_PHOTOS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 667
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 669
    return-void

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v3, "error with deleting photo from the storage"

    invoke-direct {v2, v3}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 667
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public requestAllMessages()Ljava/util/List;
    .locals 12
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
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    sget-object v9, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v9

    .line 503
    :try_start_0
    iget-object v10, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v10}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 505
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 506
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_MESSAGES()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 508
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 509
    const-string v7, "DbHelper"

    const-string v8, "cursor = null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    monitor-exit v9

    move-object v2, v6

    .line 548
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    :goto_0
    return-object v2

    .line 513
    .restart local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    .line 514
    .local v5, "working":Z
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 516
    .local v4, "size":I
    if-eqz v5, :cond_4

    if-lez v4, :cond_4

    .line 517
    const/4 v3, 0x0

    .line 518
    .local v3, "item":Lcom/biznessapps/messages/MessageEntity;
    :goto_1
    if-eqz v5, :cond_4

    .line 519
    new-instance v3, Lcom/biznessapps/messages/MessageEntity;

    .end local v3    # "item":Lcom/biznessapps/messages/MessageEntity;
    invoke-direct {v3}, Lcom/biznessapps/messages/MessageEntity;-><init>()V

    .line 520
    .restart local v3    # "item":Lcom/biznessapps/messages/MessageEntity;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setId(Ljava/lang/String;)V

    .line 521
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setType(I)V

    .line 522
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setUrl(Ljava/lang/String;)V

    .line 523
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setTabId(Ljava/lang/String;)V

    .line 524
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setCategoryId(Ljava/lang/String;)V

    .line 525
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setDetailId(Ljava/lang/String;)V

    .line 526
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/biznessapps/messages/MessageEntity;->setTimeStamp(J)V

    .line 527
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setPaths(Ljava/lang/String;)V

    .line 528
    const/16 v6, 0x8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setTitle(Ljava/lang/String;)V

    .line 529
    const/16 v6, 0x9

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setGeoFencingEnabled(Z)V

    .line 530
    const/16 v6, 0xa

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_3
    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setDeleted(Z)V

    .line 531
    const/16 v6, 0xb

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/biznessapps/messages/MessageEntity;->setActiveTill(J)V

    .line 532
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 533
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    goto :goto_1

    :cond_2
    move v6, v8

    .line 529
    goto :goto_2

    :cond_3
    move v6, v8

    .line 530
    goto :goto_3

    .line 539
    .end local v3    # "item":Lcom/biznessapps/messages/MessageEntity;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 544
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 545
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 547
    monitor-exit v9

    goto/16 :goto_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "size":I
    .end local v5    # "working":Z
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 544
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "size":I
    .restart local v5    # "working":Z
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 545
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public requestAllNotes()Ljava/util/List;
    .locals 9
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
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 426
    iget-object v6, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 428
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 429
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_NOTES()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 431
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 432
    const-string v6, "DbHelper"

    const-string v7, "cursor = null"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    return-object v2

    .line 436
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    .line 437
    .local v5, "working":Z
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 439
    .local v4, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/notepad/NotepadEntity;>;"
    if-eqz v5, :cond_1

    if-lez v4, :cond_1

    .line 441
    const/4 v3, 0x0

    .line 442
    .local v3, "item":Lcom/biznessapps/notepad/NotepadEntity;
    :goto_1
    if-eqz v5, :cond_1

    .line 443
    new-instance v3, Lcom/biznessapps/notepad/NotepadEntity;

    .end local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    invoke-direct {v3}, Lcom/biznessapps/notepad/NotepadEntity;-><init>()V

    .line 444
    .restart local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/notepad/NotepadEntity;->setId(Ljava/lang/String;)V

    .line 445
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/notepad/NotepadEntity;->setTitle(Ljava/lang/String;)V

    .line 446
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/notepad/NotepadEntity;->setContent(Ljava/lang/String;)V

    .line 447
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/biznessapps/notepad/NotepadEntity;->setNoteDate(J)V

    .line 449
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    goto :goto_1

    .line 454
    .end local v3    # "item":Lcom/biznessapps/notepad/NotepadEntity;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 456
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
.end method

.method public saveCacheData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 932
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    sget-object v4, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v4

    .line 934
    :try_start_0
    iget-object v3, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 936
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 939
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_CACHED_ITEM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 940
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 941
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string v3, "value"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 943
    const-string v3, "cache_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 944
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 945
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 950
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 952
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 954
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 946
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 947
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error with saving caching data to the storage"

    invoke-direct {v3, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 949
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 950
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    .line 952
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public saveLoayltyItem(Lcom/biznessapps/loyalty/LoyaltyV1Entity;)V
    .locals 10
    .param p1, "loyaltyItem"    # Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 809
    sget-object v8, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v8

    .line 811
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 812
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 814
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 817
    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_LOYALTY_ITEM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 818
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 819
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 820
    .local v0, "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    const-string v5, "loyaltyItemId"

    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v5, "loyaltyCouponId"

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->getCouponId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v5, "loyaltyImageUrl"

    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v5, "loyaltyCouponCode"

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->getCouponCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v9, "loyaltyCouponLocked"

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    const-string v9, "loyaltyCouponApproved"

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v9, "loyaltyCouponAlreadyUnLocked"

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isAlreadyUnLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v5, "loyalty_table"

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 828
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 831
    .end local v0    # "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 832
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding coupon\'s data to the storage"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 835
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 838
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .restart local v0    # "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    move v5, v7

    .line 824
    goto :goto_1

    :cond_1
    move v5, v7

    .line 825
    goto :goto_2

    :cond_2
    move v5, v7

    .line 826
    goto :goto_3

    .line 830
    .end local v0    # "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 834
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 835
    invoke-direct {p0, v1}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 838
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_4
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 839
    return-void
.end method

.method public savePhoto(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 672
    sget-object v4, Lcom/biznessapps/storage/StorageAccessor;->lockdb:Ljava/lang/Object;

    monitor-enter v4

    .line 673
    :try_start_0
    iget-object v3, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 675
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 676
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 677
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "path"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v3, "photos_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 679
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 680
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 685
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 687
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 688
    return-void

    .line 681
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error with saving emailed photo to the storage"

    invoke-direct {v3, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 685
    invoke-direct {p0, v0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    .line 687
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method
