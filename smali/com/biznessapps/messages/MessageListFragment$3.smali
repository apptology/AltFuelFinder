.class Lcom/biznessapps/messages/MessageListFragment$3;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/messages/MessageListFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/messages/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/messages/MessageListFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/biznessapps/messages/MessageListFragment$3;->this$0:Lcom/biznessapps/messages/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/messages/MessageListFragment$3;->this$0:Lcom/biznessapps/messages/MessageListFragment;

    const/4 v1, 0x2

    # setter for: Lcom/biznessapps/messages/MessageListFragment;->messageType:I
    invoke-static {v0, v1}, Lcom/biznessapps/messages/MessageListFragment;->access$002(Lcom/biznessapps/messages/MessageListFragment;I)I

    .line 92
    iget-object v0, p0, Lcom/biznessapps/messages/MessageListFragment$3;->this$0:Lcom/biznessapps/messages/MessageListFragment;

    iget-object v1, p0, Lcom/biznessapps/messages/MessageListFragment$3;->this$0:Lcom/biznessapps/messages/MessageListFragment;

    invoke-virtual {v1}, Lcom/biznessapps/messages/MessageListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/messages/MessageListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 93
    return-void
.end method
