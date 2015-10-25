.class Lcom/biznessapps/food_ordering/FOMainActivity$1;
.super Lcom/biznessapps/api/AsyncCallback;
.source "FOMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/FOMainActivity;->getClientToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/FOMainActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/FOMainActivity;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FOMainActivity$1;->this$0:Lcom/biznessapps/food_ordering/FOMainActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/FOMainActivity$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "clientToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "clientToken":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/food_ordering/FOMainActivity$1;->this$0:Lcom/biznessapps/food_ordering/FOMainActivity;

    # invokes: Lcom/biznessapps/food_ordering/FOMainActivity;->initBraintreeAndTest(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/biznessapps/food_ordering/FOMainActivity;->access$000(Lcom/biznessapps/food_ordering/FOMainActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "clientToken":Ljava/lang/String;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
