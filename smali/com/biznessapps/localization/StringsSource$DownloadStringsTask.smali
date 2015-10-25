.class Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;
.super Landroid/os/AsyncTask;
.source "StringsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/localization/StringsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStringsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/biznessapps/localization/StringsSource;


# direct methods
.method public constructor <init>(Lcom/biznessapps/localization/StringsSource;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;->this$0:Lcom/biznessapps/localization/StringsSource;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;->context:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/biznessapps/localization/StringsHandler;->handleStringsRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/biznessapps/localization/StringsSource$DownloadStringsTask;->this$0:Lcom/biznessapps/localization/StringsSource;

    # getter for: Lcom/biznessapps/localization/StringsSource;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/localization/StringsSource;->access$200(Lcom/biznessapps/localization/StringsSource;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/localization/StringsSource$LocalizationListener;

    .line 76
    .local v1, "listener":Lcom/biznessapps/localization/StringsSource$LocalizationListener;
    invoke-interface {v1}, Lcom/biznessapps/localization/StringsSource$LocalizationListener;->onLanguageChanged()V

    goto :goto_0

    .line 79
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/biznessapps/localization/StringsSource$LocalizationListener;
    :cond_0
    return-void
.end method
