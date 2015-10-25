.class Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;
.super Ljava/lang/Object;
.source "AnalyticsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/models/AnalyticsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Meta"
.end annotation


# instance fields
.field private mAndroidId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "androidId"
    .end annotation
.end field

.field private mDeviceAppGeneratedPersistentUuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceAppGeneratedPersistentUuid"
    .end annotation
.end field

.field private mDeviceManufacturer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceManufacturer"
    .end annotation
.end field

.field private mDeviceModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceModel"
    .end annotation
.end field

.field private mDeviceNetworkType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceNetworkType"
    .end annotation
.end field

.field private mDeviceRooted:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceRooted"
    .end annotation
.end field

.field private mDeviceScreenOrientation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceScreenOrientation"
    .end annotation
.end field

.field private mIntegrationType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "integrationType"
    .end annotation
.end field

.field private mIsSimulator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSimulator"
    .end annotation
.end field

.field private mMerchantAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "merchantAppId"
    .end annotation
.end field

.field private mMerchantAppName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "merchantAppName"
    .end annotation
.end field

.field private mMerchantAppVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "merchantAppVersion"
    .end annotation
.end field

.field private mPlatform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field private mPlatformVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platformVersion"
    .end annotation
.end field

.field private mSdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkVersion"
    .end annotation
.end field

.field private mUserInterfaceOrientation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userInterfaceOrientation"
    .end annotation
.end field

.field final synthetic this$0:Lcom/braintreepayments/api/models/AnalyticsRequest;


# direct methods
.method protected constructor <init>(Lcom/braintreepayments/api/models/AnalyticsRequest;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "integrationType"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->this$0:Lcom/braintreepayments/api/models/AnalyticsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 70
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string v4, "Android"

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mPlatform:Ljava/lang/String;

    .line 76
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mPlatformVersion:Ljava/lang/String;

    .line 77
    const-string v4, "1.6.5"

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mSdkVersion:Ljava/lang/String;

    .line 78
    iput-object v3, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mMerchantAppId:Ljava/lang/String;

    .line 79
    invoke-direct {p0, v0, v2}, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->getAppName(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mMerchantAppName:Ljava/lang/String;

    .line 80
    invoke-direct {p0, v2, v3}, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->getAppVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mMerchantAppVersion:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->isDeviceRooted()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mDeviceRooted:Ljava/lang/String;

    .line 82
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mDeviceManufacturer:Ljava/lang/String;

    .line 83
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mDeviceModel:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p2}, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mDeviceNetworkType:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mAndroidId:Ljava/lang/String;

    .line 86
    invoke-direct {p0, p2}, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mDeviceAppGeneratedPersistentUuid:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->detectEmulator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mIsSimulator:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mIntegrationType:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p2}, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->getUserOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;->mUserInterfaceOrientation:Ljava/lang/String;

    .line 90
    return-void

    .line 71
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0
.end method

.method private detectEmulator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Genymotion"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    const-string v0, "true"

    .line 161
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method private getAppName(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ApplicationNameUnknown"

    goto :goto_0
.end method

.method private getAppVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "VersionUnknown"

    goto :goto_0
.end method

.method private getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 139
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const-string v2, "BraintreeApi"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "braintreeUUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "uuid":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "braintreeUUID"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    :cond_0
    return-object v1
.end method

.method private getUserOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 167
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 173
    const-string v1, "Unknown"

    :goto_0
    return-object v1

    .line 169
    :pswitch_0
    const-string v1, "Portrait"

    goto :goto_0

    .line 171
    :pswitch_1
    const-string v1, "Landscape"

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDeviceRooted()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 109
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 110
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v10, "test-keys"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v1, v8

    .line 114
    .local v1, "check1":Z
    :goto_0
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v10, "/system/app/Superuser.apk"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 122
    .end local v5    # "file":Ljava/io/File;
    .local v2, "check2":Z
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "/system/xbin/which"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "su"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 123
    .local v7, "process":Ljava/lang/Process;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    .local v6, "in":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    if-eqz v10, :cond_3

    .line 125
    const/4 v3, 0x1

    .line 133
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "process":Ljava/lang/Process;
    .local v3, "check3":Z
    :goto_2
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v9, v8

    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1    # "check1":Z
    .end local v2    # "check2":Z
    .end local v3    # "check3":Z
    :cond_2
    move v1, v9

    .line 110
    goto :goto_0

    .line 116
    .restart local v1    # "check1":Z
    :catch_0
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "check2":Z
    goto :goto_1

    .line 127
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "process":Ljava/lang/Process;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "check3":Z
    goto :goto_2

    .line 129
    .end local v3    # "check3":Z
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v4

    .line 130
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "check3":Z
    goto :goto_2
.end method
