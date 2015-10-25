.class Lcom/biznessapps/car_finder/CarFinderActivity$4;
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

.field final synthetic val$hybModeButton:Landroid/widget/Button;

.field final synthetic val$mapModeButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/biznessapps/car_finder/CarFinderActivity;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$4;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    iput-object p2, p0, Lcom/biznessapps/car_finder/CarFinderActivity$4;->val$hybModeButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/biznessapps/car_finder/CarFinderActivity$4;->val$mapModeButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$4;->val$hybModeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 294
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$4;->val$mapModeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 295
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$4;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$300(Lcom/biznessapps/car_finder/CarFinderActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 296
    return-void
.end method
