.class Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$3;
.super Ljava/lang/Object;
.source "ChooseLocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$3;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$3;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$400(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$3;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$3;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$400(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v1

    # invokes: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$500(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$3;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->location_missed_alert:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method
