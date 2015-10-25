.class public abstract Lcom/devicecollector/AbstractCollectorProcess;
.super Landroid/os/AsyncTask;
.source "AbstractCollectorProcess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected finished:Z

.field protected lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

.field protected skipList:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/devicecollector/collectors/CollectorEnum;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:J

.field private timeoutOverridden:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/devicecollector/DeviceCollector$StatusListener;Ljava/util/EnumSet;)V
    .locals 3
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/devicecollector/DeviceCollector$StatusListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/devicecollector/DeviceCollector$StatusListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/devicecollector/collectors/CollectorEnum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "list":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/devicecollector/collectors/CollectorEnum;>;"
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->finished:Z

    .line 46
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->timeout:J

    .line 48
    iput-boolean v2, p0, Lcom/devicecollector/AbstractCollectorProcess;->timeoutOverridden:Z

    .line 59
    iput-object p2, p0, Lcom/devicecollector/AbstractCollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    .line 60
    iput-object p1, p0, Lcom/devicecollector/AbstractCollectorProcess;->activity:Landroid/app/Activity;

    .line 61
    iput-object p3, p0, Lcom/devicecollector/AbstractCollectorProcess;->skipList:Ljava/util/EnumSet;

    .line 62
    iput-boolean v2, p0, Lcom/devicecollector/AbstractCollectorProcess;->finished:Z

    .line 63
    return-void
.end method


# virtual methods
.method varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/devicecollector/AbstractCollectorProcess;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end method

.method public getTimeoutMs()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->timeout:J

    return-wide v0
.end method

.method public getTimeoutOverridden()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->timeoutOverridden:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->finished:Z

    return v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    invoke-interface {v0}, Lcom/devicecollector/DeviceCollector$StatusListener;->onCollectorStart()V

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->finished:Z

    .line 73
    return-void
.end method

.method public setListener(Lcom/devicecollector/DeviceCollector$StatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devicecollector/DeviceCollector$StatusListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/devicecollector/AbstractCollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    .line 97
    return-void
.end method

.method public setTimoutMs(J)V
    .locals 2
    .param p1, "timeoutMs"    # J

    .prologue
    .line 119
    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 120
    iput-wide p1, p0, Lcom/devicecollector/AbstractCollectorProcess;->timeout:J

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devicecollector/AbstractCollectorProcess;->timeoutOverridden:Z

    .line 123
    :cond_0
    return-void
.end method
