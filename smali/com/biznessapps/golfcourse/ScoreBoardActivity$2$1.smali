.class Lcom/biznessapps/golfcourse/ScoreBoardActivity$2$1;
.super Ljava/lang/Object;
.source "ScoreBoardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->onMenuSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->setResult(I)V

    .line 423
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;

    sget v1, Lcom/biznessapps/layout/R$id;->tvMainMenu:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->onMenuSelected(I)V

    .line 424
    return-void
.end method
