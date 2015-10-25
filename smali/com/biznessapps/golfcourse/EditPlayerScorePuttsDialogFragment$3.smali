.class Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;
.super Ljava/lang/Object;
.source "EditPlayerScorePuttsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->dismiss()V

    .line 224
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$700(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mListener:Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$700(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mTag:Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$800(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I
    invoke-static {v2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$000(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$3;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I
    invoke-static {v3}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$600(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/golfcourse/OnScorePuttsSelectedListener;->onSelected(Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;II)V

    .line 227
    :cond_0
    return-void
.end method
