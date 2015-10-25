.class Lcom/biznessapps/layout/MainController$2;
.super Ljava/lang/Object;
.source "MainController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/layout/MainController;->loadMusicData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/layout/MainController;


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/MainController;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/biznessapps/layout/MainController$2;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/biznessapps/layout/MainController$2;->this$0:Lcom/biznessapps/layout/MainController;

    # invokes: Lcom/biznessapps/layout/MainController;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-static {v0}, Lcom/biznessapps/layout/MainController;->access$1200(Lcom/biznessapps/layout/MainController;)Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    .line 351
    return-void
.end method
