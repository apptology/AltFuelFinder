.class Lcom/biznessapps/golfcourse/EditPlayerFragment$3;
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
    .line 393
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->updateDataFromUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mPlayer:Lcom/biznessapps/golfcourse/model/Player;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addPlayer(Lcom/biznessapps/golfcourse/model/Player;)V

    .line 400
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->finishFragment()V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0
.end method
