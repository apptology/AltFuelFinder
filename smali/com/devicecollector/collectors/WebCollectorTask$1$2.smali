.class Lcom/devicecollector/collectors/WebCollectorTask$1$2;
.super Landroid/webkit/WebChromeClient;
.source "WebCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devicecollector/collectors/WebCollectorTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/devicecollector/collectors/WebCollectorTask$1;


# direct methods
.method constructor <init>(Lcom/devicecollector/collectors/WebCollectorTask$1;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$2;->this$1:Lcom/devicecollector/collectors/WebCollectorTask$1;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "cmsg"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$2;->this$1:Lcom/devicecollector/collectors/WebCollectorTask$1;

    iget-object v0, v0, Lcom/devicecollector/collectors/WebCollectorTask$1;->this$0:Lcom/devicecollector/collectors/WebCollectorTask;

    # invokes: Lcom/devicecollector/collectors/WebCollectorTask;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    invoke-static {v0, p1}, Lcom/devicecollector/collectors/WebCollectorTask;->access$600(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method
