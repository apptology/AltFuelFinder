.class Lcom/biznessapps/real_estate/RealEstateListActivity$9;
.super Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.source "RealEstateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateListActivity;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 259
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->getDataToParse()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/json/JsonParser;->parseRealEstateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1202(Lcom/biznessapps/real_estate/RealEstateListActivity;Ljava/util/List;)Ljava/util/List;

    .line 260
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1200(Lcom/biznessapps/real_estate/RealEstateListActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1200(Lcom/biznessapps/real_estate/RealEstateListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->getDataToParse()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/json/JsonParser;->getBackground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->bgUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1302(Lcom/biznessapps/real_estate/RealEstateListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # invokes: Lcom/biznessapps/real_estate/RealEstateListActivity;->cacher()Lcom/biznessapps/api/CachingManager;
    invoke-static {v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1500(Lcom/biznessapps/real_estate/RealEstateListActivity;)Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REAL_ESTATE_LIST_PROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->tabId:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1400(Lcom/biznessapps/real_estate/RealEstateListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1200(Lcom/biznessapps/real_estate/RealEstateListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 265
    .local v0, "result":Z
    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateListActivity$9;->setCorrectData(Z)V

    .line 266
    return-void
.end method
