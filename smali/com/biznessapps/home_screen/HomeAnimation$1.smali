.class Lcom/biznessapps/home_screen/HomeAnimation$1;
.super Ljava/lang/Object;
.source "HomeAnimation.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeAnimation;-><init>(Landroid/app/Activity;Lcom/biznessapps/widgets/ExtendedViewPager;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeAnimation;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeAnimation;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeAnimation$1;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$1;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # setter for: Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I
    invoke-static {v0, p1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$002(Lcom/biznessapps/home_screen/HomeAnimation;I)I

    .line 72
    return-void
.end method
