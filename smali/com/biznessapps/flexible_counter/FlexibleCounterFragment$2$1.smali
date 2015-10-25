.class Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;
.super Ljava/lang/Object;
.source "FlexibleCounterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;


# direct methods
.method constructor <init>(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;->this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 122
    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;->this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    iget-object v1, v1, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$100(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;->this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    iget-object v1, v1, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$100(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;->this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    iget-object v1, v1, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$100(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;->this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    iget-object v1, v1, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    # getter for: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->fieldsCounters:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$100(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;->this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    iget-object v1, v1, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    iget-object v2, p0, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2$1;->this$1:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;

    iget-object v2, v2, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment$2;->this$0:Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    invoke-virtual {v2}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    # invokes: Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->initFieldsCounters(Landroid/app/Activity;)V
    invoke-static {v1, v2}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;->access$200(Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;Landroid/app/Activity;)V

    .line 128
    return-void
.end method
