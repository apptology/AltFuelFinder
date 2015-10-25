.class Lcom/biznessapps/home_screen/HomeScreenActivity$11;
.super Landroid/os/Handler;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;->initTabStartupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$11;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "newMessage"    # Landroid/os/Message;

    .prologue
    .line 760
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 764
    :pswitch_0
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$11;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->currentTabIndex:I
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1900(Lcom/biznessapps/home_screen/HomeScreenActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$11;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # operator-- for: Lcom/biznessapps/home_screen/HomeScreenActivity;->currentTabIndex:I
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1910(Lcom/biznessapps/home_screen/HomeScreenActivity;)I

    .line 766
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$11;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->tabViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$2000(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$11;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->currentTabIndex:I
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1900(Lcom/biznessapps/home_screen/HomeScreenActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 768
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$11;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$11;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->tabEventHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$2100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/biznessapps/home_screen/HomeScreenActivity;->sendChangeTabMessage(ILandroid/os/Handler;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$2200(Lcom/biznessapps/home_screen/HomeScreenActivity;ILandroid/os/Handler;I)V

    goto :goto_0

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
