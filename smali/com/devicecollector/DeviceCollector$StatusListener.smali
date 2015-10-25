.class public interface abstract Lcom/devicecollector/DeviceCollector$StatusListener;
.super Ljava/lang/Object;
.source "DeviceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devicecollector/DeviceCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusListener"
.end annotation


# virtual methods
.method public abstract onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V
.end method

.method public abstract onCollectorStart()V
.end method

.method public abstract onCollectorSuccess()V
.end method
