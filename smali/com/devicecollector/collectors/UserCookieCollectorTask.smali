.class public Lcom/devicecollector/collectors/UserCookieCollectorTask;
.super Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
.source "UserCookieCollectorTask.java"


# static fields
.field private static COOKIE_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "kaptcha_id"

    sput-object v0, Lcom/devicecollector/collectors/UserCookieCollectorTask;->COOKIE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/devicecollector/collectors/CollectorStatusListener;
    .param p3, "data"    # Lcom/devicecollector/DataCollection;
    .param p4, "timeout"    # J

    .prologue
    .line 31
    sget-object v4, Lcom/devicecollector/collectors/CollectorEnum;->USER_COOKIE:Lcom/devicecollector/collectors/CollectorEnum;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;-><init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;Lcom/devicecollector/collectors/CollectorEnum;J)V

    .line 34
    return-void
.end method

.method private getUserCookieFromPreferences(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cookieIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    const-string v2, "getting the cookie[%s] from the cloud user preferences:"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/UserCookieCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "userCookie":Ljava/lang/String;
    iget-object v2, p0, Lcom/devicecollector/collectors/UserCookieCollectorTask;->activity:Landroid/app/Activity;

    const-string v3, "dc_prefs"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "preferences":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/devicecollector/collectors/UserCookieCollectorTask;->COOKIE_ID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "Found this [%s]:[%s] in user preferences"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/UserCookieCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-object v1
.end method

.method private setUserCookieInPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cookieIdentifier"    # Ljava/lang/String;
    .param p2, "userCookie"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 73
    const-string v2, "Setting this [%s]:[%s] in user preferences"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/UserCookieCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v2, p0, Lcom/devicecollector/collectors/UserCookieCollectorTask;->activity:Landroid/app/Activity;

    const-string v3, "dc_prefs"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    const-string v2, "user preference setting complete."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/UserCookieCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-void
.end method


# virtual methods
.method public collectUserCookie()V
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "userCookie":Ljava/lang/String;
    sget-object v1, Lcom/devicecollector/collectors/UserCookieCollectorTask;->COOKIE_ID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/devicecollector/collectors/UserCookieCollectorTask;->getUserCookieFromPreferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/devicecollector/collectors/UserCookieCollectorTask;->COOKIE_ID:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/devicecollector/collectors/UserCookieCollectorTask;->setUserCookieInPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/devicecollector/collectors/UserCookieCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->USER_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    invoke-virtual {v1, v2, v0}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected run()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/devicecollector/collectors/UserCookieCollectorTask;->collectUserCookie()V

    .line 87
    return-void
.end method
