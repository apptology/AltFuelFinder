.class Lcom/biznessapps/golfcourse/EditPlayerFragment$4;
.super Ljava/lang/Object;
.source "EditPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/EditPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/EditPlayerFragment;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mIsEditMode:Z
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$300(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Z

    move-result v1

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 412
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mGameId:J
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$400(Lcom/biznessapps/golfcourse/EditPlayerFragment;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mGameId:J
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$400(Lcom/biznessapps/golfcourse/EditPlayerFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v0

    .line 414
    .local v0, "game":Lcom/biznessapps/golfcourse/model/Game;
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/golfcourse/model/Game;->deletePlayer(J)V

    .line 416
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v0    # "game":Lcom/biznessapps/golfcourse/model/Game;
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->finishFragment(ILandroid/content/Intent;)V

    .line 424
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$4;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/biznessapps/golfcourse/model/Player;->deletePlayer(JZ)Z

    goto :goto_0

    .line 417
    .restart local v0    # "game":Lcom/biznessapps/golfcourse/model/Game;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
