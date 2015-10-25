.class Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;
.super Ljava/lang/Object;
.source "FlexibleCounterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "bodyText":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    invoke-static {v5}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$000(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v1, " "

    .line 91
    .local v1, "dataMessage":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v5, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    invoke-static {v5}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$000(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->getFields()Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 95
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 96
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 97
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$100(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "dataMessage":Ljava/lang/String;
    .end local v2    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    invoke-static {v5}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$000(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    .restart local v1    # "dataMessage":Ljava/lang/String;
    .restart local v2    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v5, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    invoke-virtual {v5}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->data:Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    invoke-static {v8}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$000(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->getEmail()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
