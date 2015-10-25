.class public Lcom/biznessapps/common/social/twitter/TwitterOAuthView;
.super Landroid/webkit/WebView;
.source "TwitterOAuthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/social/twitter/TwitterOAuthView$1;,
        Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;,
        Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;,
        Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TwitterOAuthView"


# instance fields
.field private cancelOnDetachedFromWindow:Z

.field private isDebugEnabled:Z

.field private twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->cancelOnDetachedFromWindow:Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled:Z

    .line 305
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->init()V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->cancelOnDetachedFromWindow:Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled:Z

    .line 291
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->init()V

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 272
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->cancelOnDetachedFromWindow:Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled:Z

    .line 275
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->init()V

    .line 276
    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;)Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView;
    .param p1, "x1"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    return-object p1
.end method

.method private cancelTask(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)V
    .locals 2
    .param p1, "task"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    const-string v0, "TwitterOAuthView"

    const-string v1, "Cancelling a task."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->cancel(Z)Z

    .line 457
    :cond_2
    monitor-enter p1

    .line 459
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    const-string v0, "TwitterOAuthView"

    const-string v1, "Notifying a task of cancellation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 466
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 314
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 317
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 320
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 323
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 326
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->setScrollBarStyle(I)V

    .line 327
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 424
    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .line 428
    .local v0, "task":Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .line 429
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-direct {p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->cancelTask(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)V

    .line 433
    return-void

    .line 429
    .end local v0    # "task":Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isCancelOnDetachedFromWindow()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->cancelOnDetachedFromWindow:Z

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 540
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 542
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isCancelOnDetachedFromWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->cancel()V

    .line 546
    :cond_0
    return-void
.end method

.method public setCancelOnDetachedFromWindow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->cancelOnDetachedFromWindow:Z

    .line 525
    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled:Z

    .line 496
    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;)V
    .locals 5
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "callbackUrl"    # Ljava/lang/String;
    .param p4, "dummyCallbackUrl"    # Z
    .param p5, "listener"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;

    .prologue
    .line 382
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 384
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 389
    :cond_1
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 394
    .local v0, "dummy":Ljava/lang/Boolean;
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .line 398
    .local v2, "oldTask":Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    new-instance v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;-><init>(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;Lcom/biznessapps/common/social/twitter/TwitterOAuthView$1;)V

    .line 399
    .local v1, "newTask":Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    iput-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .line 400
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-direct {p0, v2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->cancelTask(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)V

    .line 406
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v1, v3}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 407
    return-void

    .line 400
    .end local v1    # "newTask":Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    .end local v2    # "oldTask":Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
