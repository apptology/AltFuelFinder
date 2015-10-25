.class Lcom/biznessapps/reservation/ReservationUtils$1$1;
.super Ljava/lang/Object;
.source "ReservationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationUtils$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationUtils$1;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationUtils$1$1;->this$0:Lcom/biznessapps/reservation/ReservationUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationUtils$1$1;->this$0:Lcom/biznessapps/reservation/ReservationUtils$1;

    iget-object v2, v2, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ReservationLoginViewController"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationUtils$1$1;->this$0:Lcom/biznessapps/reservation/ReservationUtils$1;

    iget-object v2, v2, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "tabId":Ljava/lang/String;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "ReservationLoginViewController"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v2, "TAB_LABEL"

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationUtils$1$1;->this$0:Lcom/biznessapps/reservation/ReservationUtils$1;

    iget-object v3, v3, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    sget v4, Lcom/biznessapps/layout/R$string;->login:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationUtils$1$1;->this$0:Lcom/biznessapps/reservation/ReservationUtils$1;

    iget-object v2, v2, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    return-void
.end method
