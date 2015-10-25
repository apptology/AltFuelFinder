.class Lcom/biznessapps/home_screen/components/ModernAnimationComponent$2;
.super Ljava/lang/Object;
.source "ModernAnimationComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 56
    iput-object p1, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$2;->this$0:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$2;->this$0:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    # getter for: Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;
    invoke-static {v1}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->access$100(Lcom/biznessapps/home_screen/components/ModernAnimationComponent;)Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->getCurrentPosition()I

    move-result v0

    .line 61
    .local v0, "position":I
    iget-object v1, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$2;->this$0:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    # getter for: Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->access$000(Lcom/biznessapps/home_screen/components/ModernAnimationComponent;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/TabUtils;->openLinkedTab(ILandroid/app/Activity;)V

    .line 62
    return-void
.end method
