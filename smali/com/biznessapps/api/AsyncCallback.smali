.class public abstract Lcom/biznessapps/api/AsyncCallback;
.super Ljava/lang/Object;
.source "AsyncCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private meta:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "meta"    # Ljava/lang/Object;

    .prologue
    .line 17
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/biznessapps/api/AsyncCallback;->setMeta(Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getMeta()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/api/AsyncCallback;->meta:Ljava/lang/Object;

    return-object v0
.end method

.method public onError(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    return-void
.end method

.method public onResult()V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/api/AsyncCallback;->onResult()V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "Results is null"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 33
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/biznessapps/api/AsyncCallback;->onResult(Ljava/lang/Object;)V

    .line 39
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/api/AsyncCallback;->onResult()V

    goto :goto_0
.end method

.method public setMeta(Ljava/lang/Object;)V
    .locals 0
    .param p1, "meta"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<TT;>;"
    iput-object p1, p0, Lcom/biznessapps/api/AsyncCallback;->meta:Ljava/lang/Object;

    .line 23
    return-void
.end method
