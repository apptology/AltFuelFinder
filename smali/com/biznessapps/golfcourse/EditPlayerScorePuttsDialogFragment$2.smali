.class Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$2;
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
    .line 210
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$2;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/biznessapps/widgets/wheel/WheelView;)V
    .locals 3
    .param p1, "wheel"    # Lcom/biznessapps/widgets/wheel/WheelView;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$2;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$2;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPuttsAdapter:Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$200(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getValueFromIndex(I)I

    move-result v1

    # setter for: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->mPutts:I
    invoke-static {v0, v1}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$602(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;I)I

    .line 215
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment$2;->this$0:Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;

    # invokes: Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;->access$500(Lcom/biznessapps/golfcourse/EditPlayerScorePuttsDialogFragment;)V

    .line 216
    return-void
.end method
