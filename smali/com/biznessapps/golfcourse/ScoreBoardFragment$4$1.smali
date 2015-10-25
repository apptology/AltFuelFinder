.class Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;
.super Ljava/lang/Object;
.source "ScoreBoardFragment.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptured(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 351
    const-string v0, "%s: %s\n%s:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v4, v4, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v5, Lcom/biznessapps/layout/R$string;->course:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v4, v4, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v4, v4, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v5, Lcom/biznessapps/layout/R$string;->played_date:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v4, v4, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    const-string v6, "MMM dd, yyyy"

    invoke-static {v4, v5, v6}, Lcom/biznessapps/utils/CommonUtils;->getDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xef

    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v3, v3, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mCapturedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$000(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;)V

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    .line 372
    return-void
.end method
