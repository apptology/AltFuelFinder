.class Lcom/biznessapps/golfcourse/AddGameFragment$2;
.super Ljava/lang/Object;
.source "AddGameFragment.java"

# interfaces
.implements Lcom/biznessapps/common/components/OnTargetChangedListener;


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
    .line 281
    iput-object p1, p0, Lcom/biznessapps/golfcourse/AddGameFragment$2;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment$2;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/golfcourse/AddGameFragment$2;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/AddGameFragment$2;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$300(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/common/components/WheelDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/components/WheelDelegate;->getCalendarStringFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/biznessapps/utils/CommonUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    goto :goto_0
.end method
