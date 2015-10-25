.class public Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.source "GolfCourseCommonListFragment.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">",
        "Lcom/biznessapps/common/fragments/CommonListFragmentNew",
        "<TT;>;",
        "Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;"
    }
.end annotation


# instance fields
.field private mAttachedToScoreBoard:Z

.field private mIntent:Landroid/content/Intent;

.field private mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mAttachedToScoreBoard:Z

    return-void
.end method


# virtual methods
.method public finishFragment()V
    .locals 3

    .prologue
    .line 78
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->finishFragment(ILandroid/content/Intent;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public finishFragment(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 68
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->finishFragment(ILandroid/content/Intent;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public getFragmentArgments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isAttachedToScoreBoard()Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mAttachedToScoreBoard:Z

    return v0
.end method

.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mAttachedToScoreBoard:Z

    .line 21
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mIntent:Landroid/content/Intent;

    .line 24
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public popupFragment(I)V
    .locals 1
    .param p1, "topFragmentId"    # I

    .prologue
    .line 87
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-virtual {v0, p1}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->popupFragment(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public startFragment(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "fragmentId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    if-eqz p2, :cond_0

    .end local p2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    .line 64
    :goto_1
    return-void

    .line 60
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0, p2}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public startFragment(ILandroid/content/Intent;I)V
    .locals 1
    .param p1, "fragmentId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 50
    .local p0, "this":Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;, "Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    if-eqz p2, :cond_0

    .end local p2    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    .line 55
    :goto_1
    return-void

    .line 51
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
