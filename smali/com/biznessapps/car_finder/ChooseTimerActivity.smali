.class public Lcom/biznessapps/car_finder/ChooseTimerActivity;
.super Lcom/biznessapps/common/activities/CommonFragmentActivity;
.source "ChooseTimerActivity.java"


# instance fields
.field private numberOfHours:I

.field private numberOfMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/car_finder/ChooseTimerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/ChooseTimerActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfHours:I

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/car_finder/ChooseTimerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/ChooseTimerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfHours:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/car_finder/ChooseTimerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/ChooseTimerActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfMinutes:I

    return v0
.end method

.method static synthetic access$102(Lcom/biznessapps/car_finder/ChooseTimerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/ChooseTimerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity;->numberOfMinutes:I

    return p1
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/biznessapps/layout/R$layout;->choose_time_layout:I

    return v0
.end method

.method protected hasNavigationMenu()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v7, Lcom/biznessapps/layout/R$id;->set_timer_button:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 27
    .local v4, "setTimerButton":Landroid/widget/Button;
    sget v7, Lcom/biznessapps/layout/R$id;->stop_timer_button:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 28
    .local v5, "stopTimerButton":Landroid/widget/Button;
    sget v7, Lcom/biznessapps/layout/R$id;->hour:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/wheel/WheelView;

    .line 29
    .local v0, "hours":Lcom/biznessapps/widgets/wheel/WheelView;
    new-instance v7, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    const/16 v8, 0x17

    invoke-direct {v7, p0, v10, v8}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v7}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 31
    sget v7, Lcom/biznessapps/layout/R$id;->mins:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/wheel/WheelView;

    .line 32
    .local v2, "mins":Lcom/biznessapps/widgets/wheel/WheelView;
    new-instance v7, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;

    const/16 v8, 0x3b

    const-string v9, "%02d"

    invoke-direct {v7, p0, v10, v8, v9}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 33
    invoke-virtual {v2, v11}, Lcom/biznessapps/widgets/wheel/WheelView;->setCyclic(Z)V

    .line 35
    invoke-virtual {v0, v10}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 36
    invoke-virtual {v2, v11}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 38
    sget v7, Lcom/biznessapps/layout/R$id;->hours_label_view:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, "hoursView":Landroid/widget/TextView;
    sget v7, Lcom/biznessapps/layout/R$id;->mins_label_view:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "minsView":Landroid/widget/TextView;
    sget v7, Lcom/biznessapps/layout/R$string;->hours:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 42
    sget v7, Lcom/biznessapps/layout/R$string;->mins:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 43
    sget v7, Lcom/biznessapps/layout/R$string;->set_timer:I

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 44
    sget v7, Lcom/biznessapps/layout/R$string;->stop_timer:I

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 46
    new-instance v6, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;

    invoke-direct {v6, p0, v0, v2}, Lcom/biznessapps/car_finder/ChooseTimerActivity$1;-><init>(Lcom/biznessapps/car_finder/ChooseTimerActivity;Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;)V

    .line 53
    .local v6, "wheelListener":Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;
    invoke-virtual {v0, v6}, Lcom/biznessapps/widgets/wheel/WheelView;->addChangingListener(Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;)V

    .line 54
    invoke-virtual {v2, v6}, Lcom/biznessapps/widgets/wheel/WheelView;->addChangingListener(Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;)V

    .line 56
    new-instance v7, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;

    invoke-direct {v7, p0, v0, v2}, Lcom/biznessapps/car_finder/ChooseTimerActivity$2;-><init>(Lcom/biznessapps/car_finder/ChooseTimerActivity;Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v7, Lcom/biznessapps/car_finder/ChooseTimerActivity$3;

    invoke-direct {v7, p0}, Lcom/biznessapps/car_finder/ChooseTimerActivity$3;-><init>(Lcom/biznessapps/car_finder/ChooseTimerActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method
