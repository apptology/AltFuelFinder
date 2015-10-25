.class Lcom/biznessapps/reservation/ReservationDetailFragment$3;
.super Ljava/lang/Object;
.source "ReservationDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelAppointment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationDetailFragment;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 243
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    invoke-virtual {v3}, Lcom/biznessapps/reservation/ReservationDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "tabId":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationDetailFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-static {v3}, Lcom/biznessapps/reservation/ReservationDetailFragment;->access$200(Lcom/biznessapps/reservation/ReservationDetailFragment;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "token":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 247
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "app_code"

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    invoke-virtual {v4}, Lcom/biznessapps/reservation/ReservationDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v3, "tab_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v3, "action"

    const-string v4, "4"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v3, "tk"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v3, "id"

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationDetailFragment;->access$300(Lcom/biznessapps/reservation/ReservationDetailFragment;)Lcom/biznessapps/reservation/entities/ReservationEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationDetailFragment;->loadPostData(Ljava/util/Map;)V
    invoke-static {v3, v0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->access$400(Lcom/biznessapps/reservation/ReservationDetailFragment;Ljava/util/Map;)V

    .line 253
    return-void
.end method
