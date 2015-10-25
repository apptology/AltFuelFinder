.class Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;
.super Ljava/lang/Object;
.source "HoleDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/HoleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerHoleScoreTag"
.end annotation


# instance fields
.field public holeNumber:I

.field public player:Lcom/biznessapps/golfcourse/model/Player;

.field public score:Lcom/biznessapps/golfcourse/model/Score;

.field final synthetic this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;Lcom/biznessapps/golfcourse/model/Player;ILcom/biznessapps/golfcourse/model/Score;)V
    .locals 0
    .param p2, "player"    # Lcom/biznessapps/golfcourse/model/Player;
    .param p3, "holeNumber"    # I
    .param p4, "score"    # Lcom/biznessapps/golfcourse/model/Score;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->player:Lcom/biznessapps/golfcourse/model/Player;

    .line 590
    iput p3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->holeNumber:I

    .line 591
    iput-object p4, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$PlayerHoleScoreTag;->score:Lcom/biznessapps/golfcourse/model/Score;

    .line 592
    return-void
.end method
