.class Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;
.super Ljava/util/TimerTask;
.source "ParallaxViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAutoTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;


# direct methods
.method private constructor <init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
    .param p2, "x1"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;-><init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->touchState:Z
    invoke-static {v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$200(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->pager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
    invoke-static {v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$400(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask$1;-><init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_0
    return-void
.end method
