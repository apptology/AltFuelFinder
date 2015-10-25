.class Lcom/biznessapps/golfcourse/HoleDetailFragment$2;
.super Ljava/lang/Object;
.source "HoleDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/HoleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$2;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;II)V
    .locals 5
    .param p1, "tag"    # Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;
    .param p2, "score"    # I
    .param p3, "putts"    # I

    .prologue
    .line 609
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 611
    iget-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->player:Lcom/biznessapps/golfcourse/model/Player;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v1

    .line 612
    .local v1, "player":Lcom/biznessapps/golfcourse/model/Player;
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 613
    iget-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$2;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$200(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/PlayerScore;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    iget v3, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->holeNumber:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v2

    iget-object v3, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    invoke-virtual {v2, v3}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deleteScore(Lcom/biznessapps/golfcourse/model/Score;)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$2;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # invokes: Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateScoreLayout()V
    invoke-static {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$300(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    .line 643
    return-void

    .line 609
    .end local v1    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 619
    .restart local v1    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_1

    .line 624
    .end local v0    # "e":Lcom/biznessapps/storage/StorageException;
    :cond_2
    iget-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    if-nez v2, :cond_3

    .line 625
    new-instance v2, Lcom/biznessapps/golfcourse/model/Score;

    invoke-direct {v2}, Lcom/biznessapps/golfcourse/model/Score;-><init>()V

    iput-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    .line 626
    iget-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$2;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$200(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    iget-wide v3, v3, Lcom/biznessapps/golfcourse/model/Game;->id:J

    iput-wide v3, v2, Lcom/biznessapps/golfcourse/model/Score;->gameID:J

    .line 627
    iget-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    iget-object v3, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->player:Lcom/biznessapps/golfcourse/model/Player;

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/biznessapps/golfcourse/model/Score;->playerID:J

    .line 628
    iget-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    iget v3, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->holeNumber:I

    iput v3, v2, Lcom/biznessapps/golfcourse/model/Score;->holeNumber:I

    .line 630
    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$2;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$200(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/PlayerScore;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    iget v3, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->holeNumber:I

    iget-object v4, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    :cond_3
    iget-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    iput p2, v2, Lcom/biznessapps/golfcourse/model/Score;->score:I

    .line 633
    iget-object v2, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    iput p3, v2, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    .line 636
    :try_start_1
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v2

    iget-object v3, p1, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    invoke-virtual {v2, v3}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addScore(Lcom/biznessapps/golfcourse/model/Score;)V
    :try_end_1
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 637
    :catch_1
    move-exception v0

    .line 638
    .restart local v0    # "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_1
.end method
