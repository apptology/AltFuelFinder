.class Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "EntityEnclosingRequestWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntityWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    .line 89
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 90
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    # setter for: Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 96
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 97
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    # setter for: Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 102
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    # setter for: Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 108
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    return-void
.end method
