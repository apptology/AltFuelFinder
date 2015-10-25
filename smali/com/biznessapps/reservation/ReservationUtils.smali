.class public Lcom/biznessapps/reservation/ReservationUtils;
.super Ljava/lang/Object;
.source "ReservationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showInvalidTokenDialog(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 17
    new-instance v0, Lcom/biznessapps/reservation/ReservationUtils$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/reservation/ReservationUtils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method
