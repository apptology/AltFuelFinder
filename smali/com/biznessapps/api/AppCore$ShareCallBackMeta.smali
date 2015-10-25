.class Lcom/biznessapps/api/AppCore$ShareCallBackMeta;
.super Ljava/lang/Object;
.source "AppCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/api/AppCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareCallBackMeta"
.end annotation


# instance fields
.field callback:Lcom/biznessapps/api/AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field orgUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/biznessapps/api/AppCore;


# direct methods
.method public constructor <init>(Lcom/biznessapps/api/AppCore;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V
    .locals 0
    .param p3, "orgUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;->this$0:Lcom/biznessapps/api/AppCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;->callback:Lcom/biznessapps/api/AsyncCallback;

    .line 252
    iput-object p3, p0, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;->orgUrl:Ljava/lang/String;

    .line 253
    return-void
.end method
