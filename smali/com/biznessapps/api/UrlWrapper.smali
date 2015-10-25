.class public Lcom/biznessapps/api/UrlWrapper;
.super Ljava/lang/Object;
.source "UrlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/api/UrlWrapper$1;,
        Lcom/biznessapps/api/UrlWrapper$UrlWrapperHolder;
    }
.end annotation


# static fields
.field private static final DEV:Ljava/lang/String; = "dev"

.field public static final LIVE_HOST_URL:Ljava/lang/String; = "https://www.cdnstabletransit.com/"

.field private static final PHP_PAGE_PATH:Ljava/lang/String; = "iphone/1.1.1/"

.field public static final SANDBOX_HOST_URL:Ljava/lang/String; = "https://dev.biznessapps.com/"

.field private static final STAGING:Ljava/lang/String; = "staging"

.field public static final STAGING_HOST_URL:Ljava/lang/String; = "https://staging.biznessapps.com/"


# instance fields
.field private useSandbox:Z

.field private useStaging:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/biznessapps/api/UrlWrapper;->useSandbox:Z

    .line 38
    iput-boolean v0, p0, Lcom/biznessapps/api/UrlWrapper;->useStaging:Z

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/api/UrlWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/api/UrlWrapper$1;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/biznessapps/api/UrlWrapper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/biznessapps/api/UrlWrapper;
    .locals 1

    .prologue
    .line 19
    # getter for: Lcom/biznessapps/api/UrlWrapper$UrlWrapperHolder;->instance:Lcom/biznessapps/api/UrlWrapper;
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper$UrlWrapperHolder;->access$100()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/biznessapps/api/UrlWrapper;->useSandbox:Z

    .line 50
    iput-boolean v0, p0, Lcom/biznessapps/api/UrlWrapper;->useStaging:Z

    .line 51
    return-void
.end method

.method public getFullUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urlName"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/biznessapps/api/UrlWrapper;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iphone/1.1.1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGalleryPrevewUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/biznessapps/api/UrlWrapper;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gallery_thumbnails/%s.%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGalleryThumbplayUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/biznessapps/api/UrlWrapper;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gallery_thumbnails/%s.%s?width=400"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "host":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/biznessapps/api/UrlWrapper;->useSandbox:Z

    if-eqz v1, :cond_0

    .line 72
    const-string v0, "https://dev.biznessapps.com/"

    .line 78
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-boolean v1, p0, Lcom/biznessapps/api/UrlWrapper;->useStaging:Z

    if-eqz v1, :cond_1

    .line 74
    const-string v0, "https://staging.biznessapps.com/"

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "https://www.cdnstabletransit.com/"

    goto :goto_0
.end method

.method public isUseSandbox()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/biznessapps/api/UrlWrapper;->useSandbox:Z

    return v0
.end method

.method public setPredefinedHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 84
    const-string v0, "staging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/api/UrlWrapper;->useStaging()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v0, "dev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/api/UrlWrapper;->useSandbox()V

    goto :goto_0
.end method

.method public useSandbox()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/api/UrlWrapper;->useSandbox:Z

    .line 42
    return-void
.end method

.method public useStaging()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/api/UrlWrapper;->useStaging:Z

    .line 46
    return-void
.end method
