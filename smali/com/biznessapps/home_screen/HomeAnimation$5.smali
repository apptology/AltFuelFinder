.class Lcom/biznessapps/home_screen/HomeAnimation$5;
.super Landroid/os/Handler;
.source "HomeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeAnimation;->initEventHandler(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeAnimation;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeAnimation;Landroid/os/Looper;Ljava/util/List;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    iput-object p3, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->val$urls:Ljava/util/List;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "newMessage"    # Landroid/os/Message;

    .prologue
    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeAnimation;->access$000(Lcom/biznessapps/home_screen/HomeAnimation;)I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->val$urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # operator++ for: Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeAnimation;->access$008(Lcom/biznessapps/home_screen/HomeAnimation;)I

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->useFadeAnimation:Z
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeAnimation;->access$400(Lcom/biznessapps/home_screen/HomeAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I
    invoke-static {v2}, Lcom/biznessapps/home_screen/HomeAnimation;->access$000(Lcom/biznessapps/home_screen/HomeAnimation;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->pagerAdapter:Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;
    invoke-static {v2}, Lcom/biznessapps/home_screen/HomeAnimation;->access$700(Lcom/biznessapps/home_screen/HomeAnimation;)Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->getCurrentView()Landroid/view/ViewGroup;

    move-result-object v2

    # invokes: Lcom/biznessapps/home_screen/HomeAnimation;->setImage(Ljava/lang/String;Landroid/view/ViewGroup;)V
    invoke-static {v1, v0, v2}, Lcom/biznessapps/home_screen/HomeAnimation;->access$200(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 210
    :goto_2
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    const/16 v1, 0x1770

    # invokes: Lcom/biznessapps/home_screen/HomeAnimation;->sendChangeImageMessage(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$900(Lcom/biznessapps/home_screen/HomeAnimation;I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I
    invoke-static {v0, v1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$002(Lcom/biznessapps/home_screen/HomeAnimation;I)I

    goto :goto_1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->pager:Lcom/biznessapps/widgets/ExtendedViewPager;
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeAnimation;->access$800(Lcom/biznessapps/home_screen/HomeAnimation;)Lcom/biznessapps/widgets/ExtendedViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$5;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$000(Lcom/biznessapps/home_screen/HomeAnimation;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/ExtendedViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
