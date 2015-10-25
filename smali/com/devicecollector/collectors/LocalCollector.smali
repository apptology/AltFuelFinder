.class public Lcom/devicecollector/collectors/LocalCollector;
.super Ljava/lang/Object;
.source "LocalCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;
    }
.end annotation


# static fields
.field private static final KOUNT_KEY:Ljava/lang/String; = "lic"

.field private static final KOUNT_PREF_FILE:Ljava/lang/String; = "k_prefs"


# instance fields
.field private context:Landroid/content/Context;

.field private dataCollection:Lcom/devicecollector/DataCollection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/devicecollector/DataCollection;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dc"    # Lcom/devicecollector/DataCollection;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/devicecollector/collectors/LocalCollector;->context:Landroid/content/Context;

    .line 89
    return-void
.end method

.method private getPersistedDeviceCookies()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "persistedCookie":Ljava/lang/String;
    iget-object v2, p0, Lcom/devicecollector/collectors/LocalCollector;->context:Landroid/content/Context;

    const-string v3, "k_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 203
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 204
    const-string v2, "lic"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method

.method private getProxyPeircingInfo()Ljava/util/HashMap;
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    const-string v6, "PROXY_PEIRCE"

    .line 279
    .local v6, "logkey":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x8

    if-le v13, v14, :cond_2

    .line 281
    const-string v13, "[LocalCollector]Newer API..."

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v4, "network_mac"

    .line 284
    .local v4, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v10

    .line 286
    .local v10, "niEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 287
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/NetworkInterface;

    .line 288
    .local v9, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 289
    const-string v13, "NETWORK"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[LocalCollector]NETWORK:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v7

    .line 292
    .local v7, "mac":[B
    if-eqz v7, :cond_0

    .line 293
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v11, "sb":Ljava/lang/StringBuffer;
    move-object v1, v7

    .local v1, "arr$":[B
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-byte v2, v1, v3

    .line 295
    .local v2, "b":B
    const-string v13, "%02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 297
    .end local v2    # "b":B
    :cond_1
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 301
    .end local v1    # "arr$":[B
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "mac":[B
    .end local v9    # "ni":Ljava/net/NetworkInterface;
    .end local v10    # "niEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v12

    .line 303
    .local v12, "se":Ljava/net/SocketException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v14, Lcom/devicecollector/collectors/CollectorEnum;->MAC_ADDRESS:Lcom/devicecollector/collectors/CollectorEnum;

    sget-object v15, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {v13, v14, v15}, Lcom/devicecollector/DataCollection;->addError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;)V

    .line 305
    const-string v13, "[LocalCollector]Bad socket connection, skipping"

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v4    # "key":Ljava/lang/String;
    .end local v12    # "se":Ljava/net/SocketException;
    :cond_2
    :goto_2
    return-object v8

    .line 306
    .restart local v4    # "key":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 307
    .local v12, "se":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v14, Lcom/devicecollector/collectors/CollectorEnum;->MAC_ADDRESS:Lcom/devicecollector/collectors/CollectorEnum;

    sget-object v15, Lcom/devicecollector/collectors/SoftErrorCode;->PERMISSION_DENIED:Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {v13, v14, v15}, Lcom/devicecollector/DataCollection;->addError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;)V

    .line 309
    const-string v13, "[LocalCollector]Permission Denied, skipping"

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getWifiMacInfo()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "wifi_mac"

    .line 255
    .local v0, "key":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/devicecollector/collectors/LocalCollector;->context:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 257
    .local v4, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 258
    .local v3, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 260
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .end local v3    # "wifi":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wm":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 262
    .restart local v3    # "wifi":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v5, "[LocalCollector]WIFI not enabled, skipping"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    .end local v3    # "wifi":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v2

    .line 266
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v5, "[LocalCollector]WIFI PERMISSION DENIED"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveDeviceCookies(Ljava/lang/String;)V
    .locals 5
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v2, p0, Lcom/devicecollector/collectors/LocalCollector;->context:Landroid/content/Context;

    const-string v3, "k_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 218
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "lic"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    return-void
.end method


# virtual methods
.method public collectDeviceId()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocalCollector;->getPersistedDeviceCookies()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "propertyData":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v1, "deviceCookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/devicecollector/collectors/LocalCollector;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "android_id":Ljava/lang/String;
    const-string v8, "LocalCollector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ANDROID_ID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v8, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->ANDROID_ID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v8}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->ANDROID_ID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v10}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/devicecollector/util/HashUtils;->convertToSha256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x8

    if-le v8, v9, :cond_0

    .line 140
    sget-object v8, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->ANDROID_SERIAL:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v8}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->ANDROID_SERIAL:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v10}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/devicecollector/util/HashUtils;->convertToSha256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/devicecollector/collectors/LocalCollector;->getMacArray()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "macArray":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 148
    sget-object v8, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->MAC_HASH:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v8}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->MAC_HASH:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v10}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/devicecollector/util/HashUtils;->convertToSha256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    const/4 v7, 0x0

    .line 155
    .local v7, "uid":Ljava/lang/String;
    if-eqz v5, :cond_2

    sget-object v8, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->UID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v8}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    :try_start_0
    sget-object v8, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->UID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v8}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->UID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v9}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v6, v8, 0x3

    .line 160
    .local v6, "start":I
    const/16 v8, 0x22

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 161
    .local v2, "end":I
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 167
    .end local v2    # "end":I
    .end local v6    # "start":I
    :cond_2
    :goto_0
    if-nez v7, :cond_3

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->UID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v9}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/devicecollector/util/HashUtils;->convertToSha256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    :cond_3
    sget-object v8, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->UID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v8}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 175
    iget-object v8, p0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v9, Lcom/devicecollector/collectors/CollectorEnum;->DEVICE_COOKIE:Lcom/devicecollector/collectors/CollectorEnum;

    sget-object v10, Lcom/devicecollector/collectors/SoftErrorCode;->UNEXPECTED:Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {v8, v9, v10}, Lcom/devicecollector/DataCollection;->addError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;)V

    .line 192
    :goto_1
    return-void

    .line 180
    :cond_4
    invoke-static {v1}, Lcom/devicecollector/util/JSONUtils;->JSONifyMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "newData":Ljava/lang/String;
    iget-object v8, p0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v9, Lcom/devicecollector/DataCollection$PostElement;->DEVICE_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    invoke-virtual {v8, v9, v4}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 185
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 186
    iget-object v8, p0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v9, Lcom/devicecollector/DataCollection$PostElement;->OLD_DEVICE_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    invoke-virtual {v8, v9, v5}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 191
    :cond_5
    invoke-direct {p0, v4}, Lcom/devicecollector/collectors/LocalCollector;->saveDeviceCookies(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    .end local v4    # "newData":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public collectOptionalInfo()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->OS_VERSION:Lcom/devicecollector/DataCollection$PostElement;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public collectRequiredInfo()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->SDK_TYPE:Lcom/devicecollector/DataCollection$PostElement;

    const-string v2, "A"

    invoke-virtual {v0, v1, v2}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->SDK_VERSION:Lcom/devicecollector/DataCollection$PostElement;

    const-string v2, "2.5"

    invoke-virtual {v0, v1, v2}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/devicecollector/collectors/LocalCollector;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->MOBILE_MODEL:Lcom/devicecollector/DataCollection$PostElement;

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public getMacArray()Ljava/lang/String;
    .locals 7

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocalCollector;->getWifiMacInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 229
    .local v0, "addresses":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocalCollector;->getProxyPeircingInfo()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 231
    new-instance v3, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 233
    .local v3, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, "macList":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 236
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "macList":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
