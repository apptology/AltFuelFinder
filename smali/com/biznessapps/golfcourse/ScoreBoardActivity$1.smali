.class Lcom/biznessapps/golfcourse/ScoreBoardActivity$1;
.super Ljava/lang/Object;
.source "ScoreBoardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ScoreBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->toggleMenu()V

    .line 394
    return-void
.end method
