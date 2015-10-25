.class Lcom/biznessapps/messages/MessageListFragment$5;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/messages/MessageListFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V
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
    .line 181
    iput-object p1, p0, Lcom/biznessapps/messages/MessageListFragment$5;->this$0:Lcom/biznessapps/messages/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveItemClicked(Lcom/biznessapps/messages/MessageEntity;I)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/messages/MessageEntity;
    .param p2, "position"    # I

    .prologue
    .line 190
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageKeeper;->removeMessage(Lcom/biznessapps/messages/MessageEntity;)V

    .line 191
    iget-object v0, p0, Lcom/biznessapps/messages/MessageListFragment$5;->this$0:Lcom/biznessapps/messages/MessageListFragment;

    # invokes: Lcom/biznessapps/messages/MessageListFragment;->loadData()V
    invoke-static {v0}, Lcom/biznessapps/messages/MessageListFragment;->access$200(Lcom/biznessapps/messages/MessageListFragment;)V

    .line 192
    return-void
.end method

.method public onShareIconClicked(Lcom/biznessapps/messages/MessageEntity;I)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/messages/MessageEntity;
    .param p2, "position"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/biznessapps/messages/MessageListFragment$5;->this$0:Lcom/biznessapps/messages/MessageListFragment;

    invoke-virtual {v0}, Lcom/biznessapps/messages/MessageListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 186
    return-void
.end method
