.class Lcom/biznessapps/car_finder/CarFinderActivity$6;
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
    .line 307
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$6;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$6;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->emailPhoto()V
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$500(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    .line 311
    return-void
.end method
