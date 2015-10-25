.class Lcom/biznessapps/car_finder/ChooseTimerActivity$2;
.super Ljava/lang/Object;
.source "ChooseTimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/car_finder/ChooseTimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

.field final synthetic val$hours:Lcom/biznessapps/widgets/wheel/WheelView;

.field final synthetic val$mins:Lcom/biznessapps/widgets/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/biznessapps/car_finder/ChooseTimerActivity;Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    iput-object p2, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->val$hours:Lcom/biznessapps/widgets/wheel/WheelView;

    iput-object p3, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->val$mins:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, "newIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    iget-object v2, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->val$hours:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v2

    # setter for: Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfHours:I
    invoke-static {v1, v2}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->access$002(Lcom/biznessapps/car_finder/ChooseTimerActivity;I)I

    .line 61
    iget-object v1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    iget-object v2, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->val$mins:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v2

    # setter for: Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfMinutes:I
    invoke-static {v1, v2}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->access$102(Lcom/biznessapps/car_finder/ChooseTimerActivity;I)I

    .line 62
    const-string v1, "HOURS_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    # getter for: Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfHours:I
    invoke-static {v2}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->access$000(Lcom/biznessapps/car_finder/ChooseTimerActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "MINUTES_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    # getter for: Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfMinutes:I
    invoke-static {v2}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->access$100(Lcom/biznessapps/car_finder/ChooseTimerActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->setResult(ILandroid/content/Intent;)V

    .line 65
    iget-object v1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    invoke-virtual {v1}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->finish()V

    .line 66
    return-void
.end method
