.class Lcom/biznessapps/food_ordering/ConfirmationFragment$2;
.super Ljava/lang/Object;
.source "ConfirmationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/ConfirmationFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/ConfirmationFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$2;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$2;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/food_ordering/FOUtils;->openCartView(Landroid/app/Activity;)V

    .line 94
    return-void
.end method
