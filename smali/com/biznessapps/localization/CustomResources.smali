.class public Lcom/biznessapps/localization/CustomResources;
.super Landroid/content/res/Resources;
.source "CustomResources.java"


# static fields
.field private static instance:Lcom/biznessapps/localization/CustomResources;

.field private static latestResources:Landroid/content/res/Resources;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/biznessapps/localization/CustomResources;->instance:Lcom/biznessapps/localization/CustomResources;

    .line 12
    sput-object v0, Lcom/biznessapps/localization/CustomResources;->latestResources:Landroid/content/res/Resources;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;
    .param p4, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 36
    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 37
    iput-object p1, p0, Lcom/biznessapps/localization/CustomResources;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/biznessapps/localization/CustomResources;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 17
    sget-object v1, Lcom/biznessapps/localization/CustomResources;->latestResources:Landroid/content/res/Resources;

    if-eq v1, p1, :cond_1

    .line 18
    const-class v1, Lcom/biznessapps/localization/CustomResources;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Resource object is updated"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v1, Lcom/biznessapps/localization/CustomResources;->instance:Lcom/biznessapps/localization/CustomResources;

    if-eqz v1, :cond_0

    .line 22
    :try_start_0
    sget-object v1, Lcom/biznessapps/localization/CustomResources;->instance:Lcom/biznessapps/localization/CustomResources;

    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_0
    :goto_0
    new-instance v1, Lcom/biznessapps/localization/CustomResources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/biznessapps/localization/CustomResources;-><init>(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v1, Lcom/biznessapps/localization/CustomResources;->instance:Lcom/biznessapps/localization/CustomResources;

    .line 30
    :cond_1
    sput-object p1, Lcom/biznessapps/localization/CustomResources;->latestResources:Landroid/content/res/Resources;

    .line 32
    sget-object v1, Lcom/biznessapps/localization/CustomResources;->instance:Lcom/biznessapps/localization/CustomResources;

    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/biznessapps/localization/CustomResources;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 43
    invoke-static {p1}, Lcom/biznessapps/localization/KeysMap;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "remoteKey":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/localization/CustomResources;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "resultStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-nez v1, :cond_0

    .line 49
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find not String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-object v1
.end method
