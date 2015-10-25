.class Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;
.super Ljava/lang/Object;
.source "SelectPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/SelectPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;
    invoke-static {v6}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)Lcom/biznessapps/common/adapters/AbstractAdapter;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 280
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    invoke-virtual {v6}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v5, "selectedPlayers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;
    invoke-static {v6}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->access$300(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)Lcom/biznessapps/common/adapters/AbstractAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/common/adapters/AbstractAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 283
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/SelectPlayerFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;
    invoke-static {v6}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->access$400(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)Lcom/biznessapps/common/adapters/AbstractAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/biznessapps/common/adapters/AbstractAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 284
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/golfcourse/model/Player;

    .line 286
    .local v4, "player":Lcom/biznessapps/golfcourse/model/Player;
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getImageId()I

    move-result v6

    iget-object v7, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/SelectPlayerFragment;->mSelectedIconResId:I
    invoke-static {v7}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->access$500(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 287
    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v4    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 292
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [J

    .line 293
    .local v1, "ids":[J
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 294
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_2
    const-string v6, "selected_players_id"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 298
    .end local v1    # "ids":[J
    :cond_3
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v2}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->finishFragment(ILandroid/content/Intent;)V

    .line 302
    .end local v0    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "selectedPlayers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_2
    return-void

    .line 300
    :cond_4
    iget-object v6, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    invoke-virtual {v6}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->finishFragment()V

    goto :goto_2
.end method
