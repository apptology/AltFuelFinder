.class public final Lcom/biznessapps/utils/HardwareUtils;
.super Ljava/lang/Object;
.source "HardwareUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "telephonyId"    # Ljava/lang/String;
    .param p1, "googleDeviceId"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "telephoneHashCode":I
    const/4 v1, 0x0

    .line 46
    .local v1, "googleHashCode":I
    invoke-static {p0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 52
    :cond_1
    new-instance v0, Ljava/util/UUID;

    int-to-long v3, v2

    int-to-long v5, v1

    invoke-direct {v0, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    .line 53
    .local v0, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getExternalPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/utils/HardwareUtils;->hasExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 36
    .local v1, "path":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .end local v1    # "path":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method public static hasExternalStorage()Z
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "extStorageState":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
