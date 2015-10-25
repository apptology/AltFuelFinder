.class Lcom/biznessapps/messages/MessageAdapter$2;
.super Ljava/lang/Object;
.source "MessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/messages/MessageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/messages/MessageAdapter;

.field final synthetic val$item:Lcom/biznessapps/messages/MessageEntity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/biznessapps/messages/MessageAdapter;Lcom/biznessapps/messages/MessageEntity;I)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/biznessapps/messages/MessageAdapter$2;->this$0:Lcom/biznessapps/messages/MessageAdapter;

    iput-object p2, p0, Lcom/biznessapps/messages/MessageAdapter$2;->val$item:Lcom/biznessapps/messages/MessageEntity;

    iput p3, p0, Lcom/biznessapps/messages/MessageAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/messages/MessageAdapter$2;->this$0:Lcom/biznessapps/messages/MessageAdapter;

    # getter for: Lcom/biznessapps/messages/MessageAdapter;->itemListener:Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;
    invoke-static {v0}, Lcom/biznessapps/messages/MessageAdapter;->access$000(Lcom/biznessapps/messages/MessageAdapter;)Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/biznessapps/messages/MessageAdapter$2;->this$0:Lcom/biznessapps/messages/MessageAdapter;

    # getter for: Lcom/biznessapps/messages/MessageAdapter;->itemListener:Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;
    invoke-static {v0}, Lcom/biznessapps/messages/MessageAdapter;->access$000(Lcom/biznessapps/messages/MessageAdapter;)Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/messages/MessageAdapter$2;->val$item:Lcom/biznessapps/messages/MessageEntity;

    iget v2, p0, Lcom/biznessapps/messages/MessageAdapter$2;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/biznessapps/messages/MessageListFragment$MessageItemListener;->onRemoveItemClicked(Lcom/biznessapps/messages/MessageEntity;I)V

    .line 78
    :cond_0
    return-void
.end method
