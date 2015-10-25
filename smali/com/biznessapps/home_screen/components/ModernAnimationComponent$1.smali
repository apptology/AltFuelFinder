.class Lcom/biznessapps/home_screen/components/ModernAnimationComponent$1;
.super Ljava/lang/Object;
.source "ModernAnimationComponent.java"

# interfaces
.implements Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->init(ILjava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/components/ModernAnimationComponent;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$1;->this$0:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$1;->this$0:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    # getter for: Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->access$000(Lcom/biznessapps/home_screen/components/ModernAnimationComponent;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/biznessapps/utils/TabUtils;->openLinkedTab(ILandroid/app/Activity;)V

    .line 51
    return-void
.end method
