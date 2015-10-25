.class Lcom/biznessapps/layout/MainController$1$2;
.super Ljava/lang/Object;
.source "MainController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/layout/MainController$1;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/layout/MainController$1;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/MainController$1;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/biznessapps/layout/MainController$1$2;->this$1:Lcom/biznessapps/layout/MainController$1;

    iput-object p2, p0, Lcom/biznessapps/layout/MainController$1$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/UrlWrapper;->clearState()V

    .line 287
    iget-object v0, p0, Lcom/biznessapps/layout/MainController$1$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 288
    return-void
.end method
