.class Lcom/biznessapps/car_finder/CarFinderActivity$12;
.super Landroid/os/Handler;
.source "CarFinderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/car_finder/CarFinderActivity;->initTimers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/car_finder/CarFinderActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/car_finder/CarFinderActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "newMessage"    # Landroid/os/Message;

    .prologue
    .line 508
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 510
    :pswitch_0
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1600(Lcom/biznessapps/car_finder/CarFinderActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1700(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->alarmButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1800(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->alarm_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 518
    :goto_1
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1700(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    iget-object v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I
    invoke-static {v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1600(Lcom/biznessapps/car_finder/CarFinderActivity;)I

    move-result v2

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->getSecInTimeFormat(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$2000(Lcom/biznessapps/car_finder/CarFinderActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # operator-- for: Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1610(Lcom/biznessapps/car_finder/CarFinderActivity;)I

    .line 520
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    const/4 v1, 0x2

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->sendChangeTabMessage(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1400(Lcom/biznessapps/car_finder/CarFinderActivity;I)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->alarmButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1800(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->alarm_red:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 515
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1700(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 516
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->startAlarmSound()V
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1900(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    goto :goto_1

    .line 523
    :pswitch_1
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->timerTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$2200(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    iget-object v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I
    invoke-static {v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$2100(Lcom/biznessapps/car_finder/CarFinderActivity;)I

    move-result v2

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->getSecInTimeFormat(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$2000(Lcom/biznessapps/car_finder/CarFinderActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # operator++ for: Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$2108(Lcom/biznessapps/car_finder/CarFinderActivity;)I

    .line 525
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$12;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    const/4 v1, 0x1

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->sendChangeTabMessage(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1400(Lcom/biznessapps/car_finder/CarFinderActivity;I)V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
