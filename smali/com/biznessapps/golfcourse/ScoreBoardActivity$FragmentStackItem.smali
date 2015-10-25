.class Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;
.super Ljava/lang/Object;
.source "ScoreBoardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ScoreBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentStackItem"
.end annotation


# instance fields
.field fragment:Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;

.field fragmentId:I

.field intent:Landroid/content/Intent;

.field requestCode:I

.field final synthetic this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;


# direct methods
.method public constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardActivity;ILcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;ILandroid/content/Intent;)V
    .locals 1
    .param p2, "fragmentId"    # I
    .param p3, "fragment"    # Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;
    .param p4, "requestCode"    # I
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->requestCode:I

    .line 43
    iput p2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->fragmentId:I

    .line 44
    iput-object p3, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->fragment:Lcom/biznessapps/golfcourse/GolfCourseCommonFragmentInterface;

    .line 45
    iput p4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->requestCode:I

    .line 46
    iput-object p5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$FragmentStackItem;->intent:Landroid/content/Intent;

    .line 47
    return-void
.end method
