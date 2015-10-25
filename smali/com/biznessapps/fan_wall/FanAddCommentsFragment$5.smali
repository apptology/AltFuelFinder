.class Lcom/biznessapps/fan_wall/FanAddCommentsFragment$5;
.super Ljava/lang/Object;
.source "FanAddCommentsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$5;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$5;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$000(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$5;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # invokes: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->setMessageCounterText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$300(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 177
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
