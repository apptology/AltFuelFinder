.class Lcom/biznessapps/golfcourse/HoleDetailFragment$7;
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
    .line 723
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$7;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$7;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    # setter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I
    invoke-static {v0, v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$1202(Lcom/biznessapps/golfcourse/HoleDetailFragment;I)I

    .line 728
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$7;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentTabId:I
    invoke-static {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$1200(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I

    move-result v0

    sget v1, Lcom/biznessapps/layout/R$id;->btGPS:I

    if-ne v0, v1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$7;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->checkGpsEnabling(Landroid/app/Activity;)Z

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$7;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # invokes: Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$800(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    .line 732
    return-void
.end method
