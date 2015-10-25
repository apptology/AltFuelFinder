.class Lcom/biznessapps/fan_wall/FanAddCommentsFragment$6;
.super Ljava/lang/Object;
.source "FanAddCommentsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 180
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 194
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 190
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$000(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    # invokes: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->setMessageCounterText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$300(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;Ljava/lang/String;)V

    .line 186
    return-void
.end method
