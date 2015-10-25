.class Lcom/biznessapps/car_finder/ChooseTimerActivity$3;
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


# direct methods
.method constructor <init>(Lcom/biznessapps/car_finder/ChooseTimerActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$3;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$3;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->setResult(I)V

    .line 72
    iget-object v0, p0, Lcom/biznessapps/car_finder/ChooseTimerActivity$3;->this$0:Lcom/biznessapps/car_finder/ChooseTimerActivity;

    invoke-virtual {v0}, Lcom/biznessapps/car_finder/ChooseTimerActivity;->finish()V

    .line 73
    return-void
.end method
