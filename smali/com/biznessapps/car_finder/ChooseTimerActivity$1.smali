.class Lcom/biznessapps/car_finder/ChooseTimerActivity$1;
.super Ljava/lang/Object;
.source "ChooseTimerActivity.java"

# interfaces
.implements Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;


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
    .line 46
    iput-object p1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    iput-object p2, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;->val$hours:Lcom/biznessapps/widgets/wheel/WheelView;

    iput-object p3, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;->val$mins:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/biznessapps/widgets/wheel/WheelView;)V
    .locals 2
    .param p1, "wheel"    # Lcom/biznessapps/widgets/wheel/WheelView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    iget-object v1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;->val$hours:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v1

    # setter for: Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfHours:I
    invoke-static {v0, v1}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->access$002(Lcom/biznessapps/car_finder/ChooseTimerActivity;I)I

    .line 50
    iget-object v0, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    iget-object v1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;->val$mins:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v1

    # setter for: Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfMinutes:I
    invoke-static {v0, v1}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->access$102(Lcom/biznessapps/car_finder/ChooseTimerActivity;I)I

    .line 51
    return-void
.end method
