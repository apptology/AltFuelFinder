.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$8;
.super Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
.source "CategoryItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->checkAvailability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$8;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->goToNextStep(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1500(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/app/Activity;)V

    .line 398
    return-void
.end method
