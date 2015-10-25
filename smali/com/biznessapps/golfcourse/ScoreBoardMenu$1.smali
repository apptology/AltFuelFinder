.class Lcom/biznessapps/golfcourse/ScoreBoardMenu$1;
.super Ljava/lang/Object;
.source "ScoreBoardMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ScoreBoardMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/ScoreBoardMenu;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardMenu;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->access$000(Lcom/biznessapps/golfcourse/ScoreBoardMenu;)Lcom/biznessapps/golfcourse/OnMenuSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardMenu$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardMenu;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardMenu;->mListener:Lcom/biznessapps/golfcourse/OnMenuSelectListener;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/ScoreBoardMenu;->access$000(Lcom/biznessapps/golfcourse/ScoreBoardMenu;)Lcom/biznessapps/golfcourse/OnMenuSelectListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/biznessapps/golfcourse/OnMenuSelectListener;->onMenuSelected(I)V

    .line 105
    :cond_0
    return-void
.end method
