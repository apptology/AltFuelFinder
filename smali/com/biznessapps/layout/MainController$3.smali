.class Lcom/biznessapps/layout/MainController$3;
.super Ljava/lang/Object;
.source "MainController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/layout/MainController;->showNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/layout/MainController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/MainController;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/biznessapps/layout/MainController$3;->this$0:Lcom/biznessapps/layout/MainController;

    iput-object p2, p0, Lcom/biznessapps/layout/MainController$3;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/biznessapps/layout/MainController$3;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/biznessapps/layout/MainController$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/layout/MainController$3;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/biznessapps/layout/MainController$3;->val$resId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    return-void
.end method
