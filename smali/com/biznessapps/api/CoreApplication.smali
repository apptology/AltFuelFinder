.class public Lcom/biznessapps/api/CoreApplication;
.super Landroid/app/Application;
.source "CoreApplication.java"


# instance fields
.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    .local v0, "oldResources":Landroid/content/res/Resources;
    invoke-super {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biznessapps/localization/CustomResources;->getInstance(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/biznessapps/localization/CustomResources;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/api/CoreApplication;->resources:Landroid/content/res/Resources;

    .line 37
    iget-object v1, p0, Lcom/biznessapps/api/CoreApplication;->resources:Landroid/content/res/Resources;

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/biznessapps/localization/LanguageHelper;->getUsedLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "langCode":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/api/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/localization/StringsSource;->update(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    invoke-virtual {p0}, Lcom/biznessapps/api/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/biznessapps/localization/LanguageHelper;->getUsedLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "langCode":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/api/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/localization/StringsSource;->update(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method
