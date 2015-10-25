.class Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HomeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/home_screen/HomeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomPagerAdapter"
.end annotation


# instance fields
.field private currentView:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeAnimation;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->urls:Ljava/util/List;

    .line 110
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 126
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->currentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 114
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->urls:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/biznessapps/home_screen/HomeAnimation;->access$100(Lcom/biznessapps/home_screen/HomeAnimation;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$layout;->home_pager_item:I

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    .local v0, "itemContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # invokes: Lcom/biznessapps/home_screen/HomeAnimation;->setImage(Ljava/lang/String;Landroid/view/ViewGroup;)V
    invoke-static {v2, v1, v0}, Lcom/biznessapps/home_screen/HomeAnimation;->access$200(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 119
    invoke-virtual {p1, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 121
    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 131
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p3, Landroid/view/ViewGroup;

    .end local p3    # "object":Ljava/lang/Object;
    iput-object p3, p0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;->currentView:Landroid/view/ViewGroup;

    .line 137
    return-void
.end method
