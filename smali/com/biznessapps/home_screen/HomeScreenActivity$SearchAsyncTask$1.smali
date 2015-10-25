.class Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;
.super Landroid/os/Handler;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$newsFeedView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;Landroid/os/Looper;Ljava/util/List;Landroid/widget/TextView;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->this$1:Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

    iput-object p3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->val$items:Ljava/util/List;

    iput-object p4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->val$newsFeedView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "newMessage"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 621
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 641
    :goto_0
    return-void

    .line 623
    :pswitch_0
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->this$1:Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

    iget-object v2, v2, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I
    invoke-static {v2}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1700(Lcom/biznessapps/home_screen/HomeScreenActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->val$items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 624
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->this$1:Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

    iget-object v2, v2, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # setter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I
    invoke-static {v2, v6}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1702(Lcom/biznessapps/home_screen/HomeScreenActivity;I)I

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->val$items:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->this$1:Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

    iget-object v3, v3, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I
    invoke-static {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1700(Lcom/biznessapps/home_screen/HomeScreenActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/news/SearchEntity;

    .line 627
    .local v0, "searchItem":Lcom/biznessapps/news/SearchEntity;
    const-string v2, "%s:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/biznessapps/news/SearchEntity;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->val$newsFeedView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->val$newsFeedView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 631
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->this$1:Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

    iget-object v2, v2, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const/16 v3, 0xfa0

    # invokes: Lcom/biznessapps/home_screen/HomeScreenActivity;->sendMessageToHandler(II)V
    invoke-static {v2, v7, v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1800(Lcom/biznessapps/home_screen/HomeScreenActivity;II)V

    .line 632
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->this$1:Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

    iget-object v2, v2, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # operator++ for: Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I
    invoke-static {v2}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1708(Lcom/biznessapps/home_screen/HomeScreenActivity;)I

    goto :goto_0

    .line 636
    .end local v0    # "searchItem":Lcom/biznessapps/news/SearchEntity;
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;->this$1:Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

    iget-object v2, v2, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const/16 v3, 0x7d0

    # invokes: Lcom/biznessapps/home_screen/HomeScreenActivity;->sendMessageToHandler(II)V
    invoke-static {v2, v5, v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1800(Lcom/biznessapps/home_screen/HomeScreenActivity;II)V

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
