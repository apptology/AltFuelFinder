.class public Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMRegistrationReceiver.java"


# static fields
.field private static final GCM_EXTRA_KEY:Ljava/lang/String; = "GCM_ID"

.field private static final PARAM_ACC_ID:Ljava/lang/String; = "deviceid"

.field private static final PARAM_APPNAME:Ljava/lang/String; = "package_name"

.field private static final PARAM_REG_ID:Ljava/lang/String; = "registrationid"

.field private static final PUSH_NOTIFICATIONS_SEND_PART_URL:Ljava/lang/String; = "http://%s:8080/notification/TokenReceiver"

.field private static final REGISTRACTION_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final REGISTRATION_ID:Ljava/lang/String; = "registration_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "registration_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "registrationId":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/biznessapps/common/entities/AppSettings;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;-><init>(Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 61
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v2    # "registrationId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public sendDataToServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v6, 0x0

    .line 67
    .local v6, "pushingUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/common/entities/AppSettings;->getPushingIp()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "pushingIp":Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 69
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "appCode":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v8

    const-string v9, "init.php?app_code=%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "result":Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/utils/json/JsonParser;->updateInitStateWithData(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/common/entities/AppSettings;->getPushingIp()Ljava/lang/String;

    move-result-object v5

    .line 75
    .end local v0    # "appCode":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/String;
    :cond_0
    const-string v8, "http://%s:8080/notification/TokenReceiver"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 76
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 77
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v3, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "deviceid"

    invoke-direct {v8, v9, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "registrationid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "GCM_ID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 87
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v3    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
