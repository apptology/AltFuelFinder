.class Lcom/biznessapps/car_finder/CarFinderActivity$2;
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
    .line 275
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$2;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$2;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-virtual {v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/car_finder/ChooseTimerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$2;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method
