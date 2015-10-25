.class Lcom/biznessapps/fan_wall/FanAddCommentsFragment$3;
.super Ljava/lang/Object;
.source "FanAddCommentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 148
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$3;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$3;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$000(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "comment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa

    if-gt v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$3;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # invokes: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->postComment()V
    invoke-static {v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$100(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V

    .line 155
    :cond_0
    return-void
.end method
