.class Lcom/biznessapps/golfcourse/HoleDetailFragment$1;
.super Ljava/lang/Object;
.source "HoleDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 595
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$1;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    .line 600
    .local v0, "tag":Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;
    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$1;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$1;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "EditScore"

    invoke-static {v2, v3, v4}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->newInstance(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ljava/lang/String;)Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    move-result-object v2

    # setter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mScorePuttsDialogFragment:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$002(Lcom/biznessapps/golfcourse/HoleDetailFragment;Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    .line 601
    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$1;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mScorePuttsDialogFragment:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$000(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$1;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mScorePuttsSelectedListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$100(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->setOnScorePuttsSelectedListener(Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;)V

    .line 602
    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$1;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mScorePuttsDialogFragment:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$000(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->setHoleScore(Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;)V

    .line 603
    return-void
.end method
