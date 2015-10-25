.class Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;
.super Landroid/os/AsyncTask;
.source "C2DMMessagesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->checkAndSendNotification(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/biznessapps/messages/MessageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$detailsIndex:I

.field final synthetic val$detailsText:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

    iput-object p2, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$message:Ljava/lang/String;

    iput p4, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$detailsIndex:I

    iput-object p5, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$detailsText:Ljava/lang/String;

    iput-object p6, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/biznessapps/messages/MessageEntity;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push_message_details.php?push_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "messageDetailUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "dataToParse":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->parseRichNotification(Ljava/lang/String;)Lcom/biznessapps/messages/MessageEntity;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->doInBackground([Ljava/lang/Void;)Lcom/biznessapps/messages/MessageEntity;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/biznessapps/messages/MessageEntity;)V
    .locals 5
    .param p1, "result"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$message:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$detailsIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "messageText":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/biznessapps/messages/MessageEntity;->setTitle(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$detailsText:Ljava/lang/String;

    const-string v3, "gf=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getPaths()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/biznessapps/messages/MessageEntity;->setGeoFencingEnabled(Z)V

    .line 157
    iget-object v2, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

    iget-object v3, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendForSpecificArea(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    invoke-static {v2, v3, v1, p1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$000(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    .line 169
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$detailsText:Ljava/lang/String;

    const-string v3, "la"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "locationIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

    iget-object v3, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$message:Ljava/lang/String;

    # invokes: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendForCircledArea(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    invoke-static {v2, v3, v4, v1, p1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$100(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

    iget-object v3, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    invoke-static {v2, v3, v1, p1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$200(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, Lcom/biznessapps/messages/MessageEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;->onPostExecute(Lcom/biznessapps/messages/MessageEntity;)V

    return-void
.end method
