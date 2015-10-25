.class public abstract Lcom/biznessapps/api/CommonTask;
.super Landroid/os/AsyncTask;
.source "CommonTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TParams:",
        "Ljava/lang/Object;",
        "TProgress:",
        "Ljava/lang/Object;",
        "TResult:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TTParams;TTProgress;TTResult;>;"
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/biznessapps/api/CommonTask;->activity:Landroid/app/Activity;

    .line 21
    return-void
.end method


# virtual methods
.method protected onActivityAttached()V
    .locals 0

    .prologue
    .line 33
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    return-void
.end method

.method protected onActivityDetached()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    .local p0, "this":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<TTParams;TTProgress;TTResult;>;"
    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/biznessapps/api/CommonTask;->onActivityDetached()V

    .line 26
    iput-object p1, p0, Lcom/biznessapps/api/CommonTask;->activity:Landroid/app/Activity;

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/api/CommonTask;->activity:Landroid/app/Activity;

    .line 29
    invoke-virtual {p0}, Lcom/biznessapps/api/CommonTask;->onActivityAttached()V

    goto :goto_0
.end method
