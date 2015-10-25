.class Lcom/biznessapps/car_finder/CarFinderActivity$7;
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
    .line 313
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$7;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 316
    iget-object v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$7;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    sget v3, Lcom/biznessapps/layout/R$string;->current_location:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "subject":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$7;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    sget v3, Lcom/biznessapps/layout/R$string;->car_finder_email_message:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "bodyMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "http://maps.google.com/maps?q=%f,%f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/biznessapps/car_finder/CarFinderActivity$7;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$600(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/biznessapps/car_finder/CarFinderActivity$7;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$600(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$7;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v8

    invoke-static {v2, v3, v1, v0}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method
