.class Lcom/biznessapps/golfcourse/HoleDetailFragment$3;
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
    .line 647
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # operator-- for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I
    invoke-static {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$410(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I

    .line 651
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I
    invoke-static {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$400(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 653
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$600(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I
    invoke-static {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$400(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v1

    # setter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;
    invoke-static {v0, v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$502(Lcom/biznessapps/golfcourse/HoleDetailFragment;Lcom/biznessapps/golfcourse/model/Hole;)Lcom/biznessapps/golfcourse/model/Hole;

    .line 654
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # invokes: Lcom/biznessapps/golfcourse/HoleDetailFragment;->rebuildTabs()V
    invoke-static {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$700(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    .line 655
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$3;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # invokes: Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$800(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    .line 656
    return-void

    .line 651
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
