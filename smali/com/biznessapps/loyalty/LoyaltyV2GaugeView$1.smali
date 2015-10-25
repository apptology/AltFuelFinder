.class Lcom/biznessapps/loyalty/LoyaltyV2GaugeView$1;
.super Ljava/lang/Object;
.source "LoyaltyV2GaugeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->relayoutGauge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->requestLayout()V

    .line 122
    return-void
.end method
