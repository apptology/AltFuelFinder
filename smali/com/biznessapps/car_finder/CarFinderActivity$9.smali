.class Lcom/biznessapps/car_finder/CarFinderActivity$9;
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
    .line 337
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$9;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 340
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$9;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$600(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$9;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$600(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    # setter for: Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$402(Landroid/location/Location;)Landroid/location/Location;

    .line 342
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$9;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # setter for: Lcom/biznessapps/car_finder/CarFinderActivity;->isCarLocationSet:Z
    invoke-static {v0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1102(Lcom/biznessapps/car_finder/CarFinderActivity;Z)Z

    .line 343
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$9;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/biznessapps/car_finder/CarFinderActivity;->carSetTime:J
    invoke-static {v0, v1, v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$102(Lcom/biznessapps/car_finder/CarFinderActivity;J)J

    .line 344
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$9;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->initPois()V
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1200(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    .line 345
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$9;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->bottomContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1300(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$9;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->sendChangeTabMessage(I)V
    invoke-static {v0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1400(Lcom/biznessapps/car_finder/CarFinderActivity;I)V

    .line 348
    :cond_0
    return-void
.end method
