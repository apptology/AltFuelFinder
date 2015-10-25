.class public Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;
.super Lcom/biznessapps/utils/google/caching/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/utils/google/caching/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;


# direct methods
.method protected constructor <init>(Lcom/biznessapps/utils/google/caching/ImageWorker;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 529
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 543
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->clearCacheInternal()V

    goto :goto_0

    .line 534
    :pswitch_1
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->initDiskCacheInternal()V

    goto :goto_0

    .line 537
    :pswitch_2
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->flushCacheInternal()V

    goto :goto_0

    .line 540
    :pswitch_3
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->closeCacheInternal()V

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
