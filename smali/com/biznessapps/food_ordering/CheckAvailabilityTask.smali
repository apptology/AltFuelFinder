.class public Lcom/biznessapps/food_ordering/CheckAvailabilityTask;
.super Lcom/biznessapps/api/UnModalAsyncTask;
.source "CheckAvailabilityTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/UnModalAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
        ">;>;"
    }
.end annotation


# instance fields
.field private appCode:Ljava/lang/String;

.field private cancelRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

.field private customHandler:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

.field private locationId:Ljava/lang/String;

.field private orderedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private successRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

.field private tabId:Ljava/lang/String;

.field private timeStamp:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "locationId"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J
    .param p7, "successRunnable"    # Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
    .param p8, "cancelRunnable"    # Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
    .param p9, "tabId"    # Ljava/lang/String;
    .param p10, "appCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;",
            "Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;",
            "Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "refOfViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    .local p6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/api/UnModalAsyncTask;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 43
    iput-object p6, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->orderedItems:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->locationId:Ljava/lang/String;

    .line 45
    iput-wide p4, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->timeStamp:J

    .line 46
    iput-object p7, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->successRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    .line 47
    iput-object p8, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->cancelRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    .line 48
    iput-object p9, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->tabId:Ljava/lang/String;

    .line 49
    iput-object p10, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->appCode:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private formCheckItemsMap(JLjava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 11
    .param p1, "timestamp"    # J
    .param p3, "locationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "location_id"

    invoke-interface {v5, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "categoryId":Ljava/lang/String;
    const-string v7, "[%s]"

    .line 110
    .local v7, "rootJson":Ljava/lang/String;
    const/4 v0, 0x0

    .line 111
    .local v0, "categories":Ljava/lang/String;
    const-string v2, "{\"category_id\":\"%s\",\"item_id\":\"%s\",\"size_id\":\"%s\",\"options\":[%s],\"quantity\":\"%d\",\"note\":\"%s\"}"

    .line 112
    .local v2, "format":Ljava/lang/String;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 113
    .local v4, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    if-nez v1, :cond_0

    .line 114
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getSizeValue()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getOptionsIds()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getNote()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 118
    move-object v0, v6

    goto :goto_0

    .line 120
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    .end local v4    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v6    # "result":Ljava/lang/String;
    :cond_2
    const-string v8, "items"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v8, "timestamp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v8, "app_code"

    iget-object v9, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->appCode:Ljava/lang/String;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v8, "tab_id"

    iget-object v9, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->tabId:Ljava/lang/String;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v8, "app_id"

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v8, 0x0

    invoke-static {v8, v5}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 129
    return-object v5
.end method

.method private synchItems(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity;>;"
    .local p3, "orderedPreviously":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v18, "updatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 136
    .local v7, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/biznessapps/food_ordering/entities/OrderEntity;

    .line 138
    .local v11, "order":Lcom/biznessapps/food_ordering/entities/OrderEntity;
    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getCategoryId()Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "oldCategoryId":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 141
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->isTaxExempted()Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setTaxExempted(Z)V

    .line 142
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getPrice()F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setPrice(F)V

    .line 143
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getTitle()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setTitle(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getThumbnail()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setImageUrl(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getSizeValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 148
    const/4 v6, 0x0

    .line 149
    .local v6, "isSizeExist":Z
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getSizes()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 150
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getSizes()Ljava/util/List;

    move-result-object v17

    .line 151
    .local v17, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;

    .line 152
    .local v14, "size":Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getSizeValue()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 153
    invoke-virtual {v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->getPrice()F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setPrice(F)V

    .line 154
    invoke-virtual {v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->getSizeName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setSize(Ljava/lang/String;)V

    .line 155
    const/4 v6, 0x1

    goto :goto_1

    .line 160
    .end local v14    # "size":Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    .end local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;>;"
    :cond_3
    if-eqz v6, :cond_0

    .line 164
    .end local v6    # "isSizeExist":Z
    :cond_4
    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getSize()Ljava/lang/String;

    move-result-object v15

    .line 165
    .local v15, "sizeLabel":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getSizeValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    const-string v20, "%s: %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget v23, Lcom/biznessapps/layout/R$string;->fo_size:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v15, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 166
    .local v16, "sizeText":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v20

    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPriceWithoutOptions()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "itemPrice":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1, v8}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getOptions()Ljava/util/List;

    move-result-object v13

    .line 170
    .local v13, "orderedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_9

    .line 172
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v19, "updatedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getOptions()Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "allOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    .line 176
    .local v12, "orderedOption":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    .line 177
    .local v10, "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    invoke-virtual {v12}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 178
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v2    # "allOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "itemPrice":Ljava/lang/String;
    .end local v10    # "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .end local v12    # "orderedOption":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .end local v13    # "orderedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .end local v16    # "sizeText":Ljava/lang/String;
    .end local v19    # "updatedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v16, v15

    .line 165
    goto :goto_2

    .line 183
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local v2    # "allOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .restart local v8    # "itemPrice":Ljava/lang/String;
    .restart local v13    # "orderedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .restart local v16    # "sizeText":Ljava/lang/String;
    .restart local v19    # "updatedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setOptions(Ljava/util/List;)V

    .line 187
    .end local v2    # "allOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .end local v19    # "updatedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    :cond_9
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 192
    .end local v7    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v8    # "itemPrice":Ljava/lang/String;
    .end local v9    # "oldCategoryId":Ljava/lang/String;
    .end local v11    # "order":Lcom/biznessapps/food_ordering/entities/OrderEntity;
    .end local v13    # "orderedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .end local v15    # "sizeLabel":Ljava/lang/String;
    .end local v16    # "sizeText":Ljava/lang/String;
    :cond_a
    return-object v18
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 63
    iget-wide v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->timeStamp:J

    iget-object v4, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->locationId:Ljava/lang/String;

    iget-object v5, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->orderedItems:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->formCheckItemsMap(JLjava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 64
    .local v1, "loadParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v2

    const-string v3, "food_ordering_check_items.php"

    new-array v4, v6, [Ljava/util/Map;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v6, v4}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z[Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "data":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->parseOrders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->orderedItems:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->synchItems(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "availableItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/api/UnModalAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 72
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->activity:Landroid/app/Activity;

    check-cast v2, Lcom/biznessapps/api/LoadingDataInterface;

    invoke-interface {v2}, Lcom/biznessapps/api/LoadingDataInterface;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->customHandler:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->customHandler:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    invoke-virtual {v2, p1}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;->setResulItems(Ljava/util/List;)V

    .line 77
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->customHandler:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;->run()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->orderedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 80
    .local v1, "orderedSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 83
    .local v0, "availableSize":I
    if-ne v1, v0, :cond_2

    .line 84
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->successRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    invoke-virtual {v2, p1}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;->setResulItems(Ljava/util/List;)V

    .line 85
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->successRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;->run()V

    goto :goto_0

    .line 88
    :cond_2
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->activity:Landroid/app/Activity;

    sget v4, Lcom/biznessapps/layout/R$string;->fo_one_or_more_no_available_items:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->successRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    invoke-virtual {v2, p1}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;->setResulItems(Ljava/util/List;)V

    .line 92
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->successRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;->run()V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->cancelRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    if-eqz v2, :cond_4

    .line 95
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->cancelRunnable:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;->run()V

    goto :goto_0

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->activity:Landroid/app/Activity;

    sget v4, Lcom/biznessapps/layout/R$string;->fo_no_available_items:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected placeProgressBar()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/api/LoadingDataInterface;

    invoke-interface {v0}, Lcom/biznessapps/api/LoadingDataInterface;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public setCustomHandling(Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;)V
    .locals 0
    .param p1, "runnable"    # Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->customHandler:Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;

    .line 54
    return-void
.end method
