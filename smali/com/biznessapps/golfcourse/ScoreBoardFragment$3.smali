.class Lcom/biznessapps/golfcourse/ScoreBoardFragment$3;
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
    .line 336
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$3;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$3;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mIVEdit:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$300(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->showContextMenu()Z

    .line 340
    return-void
.end method
