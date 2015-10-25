.class Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;
.super Ljava/lang/Object;
.source "ScoreBoardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ScoreBoardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    new-instance v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;)V

    # invokes: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->captureScoreBoardScreen(Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V
    invoke-static {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$400(Lcom/biznessapps/golfcourse/ScoreBoardFragment;Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V

    .line 374
    return-void
.end method
