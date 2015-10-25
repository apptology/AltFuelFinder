.class public final Lcom/biznessapps/localization/StringsSource;
.super Ljava/lang/Object;
.source "StringsSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/localization/StringsSource$1;,
        Lcom/biznessapps/localization/StringsSource$LocalizationListener;,
        Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;,
        Lcom/biznessapps/localization/StringsSource$LanguageSourceHolder;
    }
.end annotation


# instance fields
.field private currentLanguage:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/localization/StringsSource$LocalizationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/localization/StringsSource;->listeners:Ljava/util/List;

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/localization/StringsSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/localization/StringsSource$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/biznessapps/localization/StringsSource;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/localization/StringsSource;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/localization/StringsSource;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/biznessapps/localization/StringsSource;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/biznessapps/localization/StringsSource;
    .locals 1

    .prologue
    .line 25
    # getter for: Lcom/biznessapps/localization/StringsSource$LanguageSourceHolder;->instance:Lcom/biznessapps/localization/StringsSource;
    invoke-static {}, Lcom/biznessapps/localization/StringsSource$LanguageSourceHolder;->access$100()Lcom/biznessapps/localization/StringsSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/biznessapps/localization/StringsSource$LocalizationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/biznessapps/localization/StringsSource$LocalizationListener;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/localization/StringsSource;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/localization/StringsSource;->currentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 47
    if-nez p2, :cond_1

    .line 48
    const/4 v0, 0x0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/localization/StringsSource;->currentLanguage:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {p1, v1, v2}, Lcom/biznessapps/localization/StringsHandler;->getValues(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v3

    .line 52
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 53
    move-object v0, p2

    goto :goto_0
.end method

.method public removeListener(Lcom/biznessapps/localization/StringsSource$LocalizationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/biznessapps/localization/StringsSource$LocalizationListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/localization/StringsSource;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "langCode"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p2, p0, Lcom/biznessapps/localization/StringsSource;->currentLanguage:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;-><init>(Lcom/biznessapps/localization/StringsSource;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method
