.class Lcom/biznessapps/golfcourse/AddGameFragment$3;
.super Ljava/lang/Object;
.source "AddGameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/AddGameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/AddGameFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/AddGameFragment;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/biznessapps/golfcourse/AddGameFragment$3;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddGameFragment$3;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    iget-wide v2, v2, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddGameFragment$3;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->please_select_course:I

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 320
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 304
    .local v1, "newCourse":Lcom/biznessapps/golfcourse/model/Course;
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/AddGameFragment$3;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addCourse(Lcom/biznessapps/golfcourse/model/Course;)Lcom/biznessapps/golfcourse/model/Course;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 312
    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddGameFragment$3;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    iget-wide v3, v1, Lcom/biznessapps/golfcourse/model/Course;->courseId:J

    iput-wide v3, v2, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    .line 314
    :try_start_1
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/AddGameFragment$3;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addGame(Lcom/biznessapps/golfcourse/model/Game;)V

    .line 315
    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddGameFragment$3;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 316
    iget-object v2, p0, Lcom/biznessapps/golfcourse/AddGameFragment$3;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/AddGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_1
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v2

    goto :goto_0

    .line 305
    :catch_1
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
