.class public Lcom/devicecollector/AsyncTransmissionTask;
.super Landroid/os/AsyncTask;
.source "AsyncTransmissionTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/devicecollector/DataCollection;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, [Lcom/devicecollector/DataCollection;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/devicecollector/AsyncTransmissionTask;->doInBackground([Lcom/devicecollector/DataCollection;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/devicecollector/DataCollection;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Lcom/devicecollector/DataCollection;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    array-length v10, p1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 47
    const/4 v10, 0x0

    aget-object v0, p1, v10

    .line 48
    .local v0, "dc":Lcom/devicecollector/DataCollection;
    const-string v4, "Transmitter"

    .line 49
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/devicecollector/DataCollection;->getServerUrl()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 50
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 51
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/devicecollector/DataCollection;->getServerUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/m.html"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "url":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending to:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 54
    .local v7, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v6, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/devicecollector/DataCollection;->getPostData()Ljava/util/HashMap;

    move-result-object v8

    .line 57
    .local v8, "postData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    .local v5, "name":Ljava/lang/String;
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v5, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "postData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "dc":Lcom/devicecollector/DataCollection;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v10, 0x0

    return-object v10

    .line 60
    .restart local v0    # "dc":Lcom/devicecollector/DataCollection;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v6    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "postData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v10, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 61
    invoke-interface {v2, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 67
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "postData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "url":Ljava/lang/String;
    :cond_2
    const-string v10, "No Server URL to send data to, skipping send"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
