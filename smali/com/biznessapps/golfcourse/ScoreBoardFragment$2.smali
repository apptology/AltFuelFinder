.class Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;
.super Ljava/lang/Object;
.source "ScoreBoardFragment.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/ScoreBoardFragment;->shareScoreBoard(Lcom/biznessapps/golfcourse/model/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

.field final synthetic val$player:Lcom/biznessapps/golfcourse/model/Player;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;Lcom/biznessapps/golfcourse/model/Player;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    iput-object p2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->val$player:Lcom/biznessapps/golfcourse/model/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptured(Landroid/net/Uri;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 277
    if-nez p1, :cond_0

    .line 278
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v4, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 283
    :cond_0
    const-string v2, "%s: %s\n%s:%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v5, Lcom/biznessapps/layout/R$string;->course:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    aput-object v4, v3, v9

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->played_date:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v5

    iget-wide v5, v5, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    const-string v7, "MMM dd, yyyy"

    invoke-static {v5, v6, v7}, Lcom/biznessapps/utils/CommonUtils;->getDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "description":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->val$player:Lcom/biznessapps/golfcourse/model/Player;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/Player;->email:Ljava/lang/String;

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    const-string v2, "android.intent.extra.EMAIL"

    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->val$player:Lcom/biznessapps/golfcourse/model/Player;

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Player;->email:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    :cond_1
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v4, Lcom/biznessapps/layout/R$string;->score_card:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    const-string v3, "Email to player"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
