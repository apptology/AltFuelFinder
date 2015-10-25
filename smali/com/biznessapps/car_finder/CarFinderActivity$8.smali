.class Lcom/biznessapps/car_finder/CarFinderActivity$8;
.super Ljava/lang/Object;
.source "CarFinderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/car_finder/CarFinderActivity;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/car_finder/CarFinderActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$8;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$8;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->stopTimer()V
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$700(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    .line 328
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$8;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->stopAlarmTimer()V
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$800(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    .line 329
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$8;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->reinitAlarm()V
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$900(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    .line 330
    const-wide/16 v0, 0x0

    # setter for: Lcom/biznessapps/car_finder/CarFinderActivity;->lastTimerValue:J
    invoke-static {v0, v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1002(J)J

    .line 331
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$8;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/car_finder/CarFinderActivity;->isCarLocationSet:Z
    invoke-static {v0, v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1102(Lcom/biznessapps/car_finder/CarFinderActivity;Z)Z

    .line 332
    const/4 v0, 0x0

    # setter for: Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$402(Landroid/location/Location;)Landroid/location/Location;

    .line 333
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$8;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->initPois()V
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1200(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    .line 334
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$8;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->bottomContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1300(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 335
    return-void
.end method
