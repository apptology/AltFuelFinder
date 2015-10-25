.class final Lcom/biznessapps/reservation/ReservationUtils$1;
.super Ljava/lang/Object;
.source "ReservationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationUtils;->showInvalidTokenDialog(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$holdActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    sget v2, Lcom/biznessapps/layout/R$string;->token_issue:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationUtils$1;->val$holdActivity:Landroid/app/Activity;

    sget v3, Lcom/biznessapps/layout/R$string;->login_again:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/reservation/ReservationUtils$1$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/reservation/ReservationUtils$1$1;-><init>(Lcom/biznessapps/reservation/ReservationUtils$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 36
    :cond_0
    return-void
.end method
