.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$3;
.super Ljava/lang/Object;
.source "PastOrdersDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->showLocationNotAvailableDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$3;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 184
    return-void
.end method
