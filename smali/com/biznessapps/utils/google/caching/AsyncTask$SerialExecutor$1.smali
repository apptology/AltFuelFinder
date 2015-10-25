.class Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor$1;->this$0:Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;

    iput-object p2, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor$1;->this$0:Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->scheduleNext()V

    .line 259
    return-void

    .line 257
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor$1;->this$0:Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;

    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->scheduleNext()V

    throw v0
.end method
