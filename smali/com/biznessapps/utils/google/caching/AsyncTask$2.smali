.class Lcom/biznessapps/utils/google/caching/AsyncTask$2;
.super Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/google/caching/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/google/caching/AsyncTask;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/google/caching/AsyncTask;)V
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask$2;, "Lcom/biznessapps/utils/google/caching/AsyncTask.2;"
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$2;->this$0:Lcom/biznessapps/utils/google/caching/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable;-><init>(Lcom/biznessapps/utils/google/caching/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask$2;, "Lcom/biznessapps/utils/google/caching/AsyncTask.2;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$2;->this$0:Lcom/biznessapps/utils/google/caching/AsyncTask;

    # getter for: Lcom/biznessapps/utils/google/caching/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/biznessapps/utils/google/caching/AsyncTask;->access$300(Lcom/biznessapps/utils/google/caching/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 310
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 312
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$2;->this$0:Lcom/biznessapps/utils/google/caching/AsyncTask;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$2;->this$0:Lcom/biznessapps/utils/google/caching/AsyncTask;

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/biznessapps/utils/google/caching/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/biznessapps/utils/google/caching/AsyncTask;->access$400(Lcom/biznessapps/utils/google/caching/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
