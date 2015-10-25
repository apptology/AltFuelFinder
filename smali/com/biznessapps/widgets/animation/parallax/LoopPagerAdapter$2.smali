.class Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$2;
.super Ljava/lang/Object;
.source "LoopPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;-><init>(Landroid/support/v4/view/ViewPager;Ljava/util/List;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$2;->this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$2;->this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->onItemClickListener:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->access$100(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;)Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$2;->this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->onItemClickListener:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;
    invoke-static {v0}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->access$100(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;)Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$2;->this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->currentPos:I
    invoke-static {v1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->access$000(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;->onClick(I)V

    .line 78
    :cond_0
    return-void
.end method
