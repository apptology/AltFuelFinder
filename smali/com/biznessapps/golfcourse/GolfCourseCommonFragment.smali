.class public Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "GolfCourseCommonFragment.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;


# instance fields
.field private mAttachedToScoreBoard:Z

.field private mIntent:Landroid/content/Intent;

.field private mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mAttachedToScoreBoard:Z

    return-void
.end method


# virtual methods
.method public finishFragment()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->finishFragment(ILandroid/content/Intent;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public finishFragment(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->finishFragment(ILandroid/content/Intent;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public getFragmentArgments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isAttachedToScoreBoard()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mAttachedToScoreBoard:Z

    return v0
.end method

.method protected loadUniversalStrings(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mAttachedToScoreBoard:Z

    .line 20
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mIntent:Landroid/content/Intent;

    .line 23
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public popupFragment(I)V
    .locals 1
    .param p1, "topFragmentId"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-virtual {v0, p1}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->popupFragment(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public startFragment(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "fragmentId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    if-eqz p2, :cond_0

    .end local p2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    .line 63
    :goto_1
    return-void

    .line 59
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, p2}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public startFragment(ILandroid/content/Intent;I)V
    .locals 1
    .param p1, "fragmentId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->isAttachedToScoreBoard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->mScoreBoardActivity:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    if-eqz p2, :cond_0

    .end local p2    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    .line 54
    :goto_1
    return-void

    .line 50
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/biznessapps/golfcourse/GolfCourseCommonFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
