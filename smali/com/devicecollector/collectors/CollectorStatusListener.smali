.class public interface abstract Lcom/devicecollector/collectors/CollectorStatusListener;
.super Ljava/lang/Object;
.source "CollectorStatusListener.java"


# virtual methods
.method public abstract onCollectorError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V
.end method

.method public abstract onCollectorStart(Lcom/devicecollector/collectors/CollectorEnum;)V
.end method

.method public abstract onCollectorSuccess(Lcom/devicecollector/collectors/CollectorEnum;)V
.end method
