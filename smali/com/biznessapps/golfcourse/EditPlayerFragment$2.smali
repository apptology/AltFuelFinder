.class Lcom/biznessapps/golfcourse/EditPlayerFragment$2;
.super Ljava/lang/Object;
.source "EditPlayerFragment.java"

# interfaces
.implements Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/EditPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/EditPlayerFragment;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide(Lcom/biznessapps/common/components/WheelDelegate;Landroid/view/View;)V
    .locals 1
    .param p1, "delegate"    # Lcom/biznessapps/common/components/WheelDelegate;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$2;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mETPlayerName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$100(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 390
    return-void
.end method

.method public onShow(Lcom/biznessapps/common/components/WheelDelegate;Landroid/view/View;)V
    .locals 0
    .param p1, "delegate"    # Lcom/biznessapps/common/components/WheelDelegate;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 384
    return-void
.end method
