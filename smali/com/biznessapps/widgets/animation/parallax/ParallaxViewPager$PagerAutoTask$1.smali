.class Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask$1;
.super Ljava/lang/Object;
.source "ParallaxViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;

    iget-object v1, v1, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    # invokes: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setDefaultDuration()V
    invoke-static {v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$600(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)V

    .line 156
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;

    iget-object v1, v1, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->pager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
    invoke-static {v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$400(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->getCurrentItem()I

    move-result v0

    .line 157
    .local v0, "index":I
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;

    iget-object v1, v1, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->pager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
    invoke-static {v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$400(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setCurrentItem(I)V

    .line 158
    return-void
.end method
