.class Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;
.super Ljava/lang/Object;
.source "EditPlayerScorePuttsDialogFragment.java"

# interfaces
.implements Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;


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
    .line 192
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/biznessapps/widgets/wheel/WheelView;)V
    .locals 4
    .param p1, "wheel"    # Lcom/biznessapps/widgets/wheel/WheelView;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScoreAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$100(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getValueFromIndex(I)I

    move-result v2

    # setter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$002(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;I)I

    .line 197
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$200(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$200(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mScore:I
    invoke-static {v2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$000(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->setMaxValue(I)V

    .line 199
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$300(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$200(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 201
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$300(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$200(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getMaxIndex()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 202
    .local v0, "currentPuttsIdx":I
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$300(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/WheelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 203
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsStateChangedListener:Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$400(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mWVPutts:Lcom/biznessapps/widgets/wheel/WheelView;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$300(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/WheelView;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;->onStateChanged(Lcom/biznessapps/widgets/wheel/WheelView;)V

    .line 206
    .end local v0    # "currentPuttsIdx":I
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # invokes: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->updateUI()V
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$500(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V

    .line 207
    return-void
.end method
