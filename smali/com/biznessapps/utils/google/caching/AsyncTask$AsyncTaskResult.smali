.class Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/biznessapps/utils/google/caching/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/biznessapps/utils/google/caching/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/biznessapps/utils/google/caching/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/utils/google/caching/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;, "Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;->mTask:Lcom/biznessapps/utils/google/caching/AsyncTask;

    .line 688
    iput-object p2, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 689
    return-void
.end method
