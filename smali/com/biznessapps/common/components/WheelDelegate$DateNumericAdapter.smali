.class Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;
.super Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;
.source "WheelDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/components/WheelDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateNumericAdapter"
.end annotation


# instance fields
.field currentItem:I

.field currentValue:I

.field final synthetic this$0:Lcom/biznessapps/common/components/WheelDelegate;


# direct methods
.method public constructor <init>(Lcom/biznessapps/common/components/WheelDelegate;Landroid/content/Context;III)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "minValue"    # I
    .param p4, "maxValue"    # I
    .param p5, "current"    # I

    .prologue
    .line 210
    iput-object p1, p0, Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    .line 211
    invoke-direct {p0, p2, p3, p4}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 212
    iput p5, p0, Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;->currentValue:I

    .line 213
    return-void
.end method


# virtual methods
.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 217
    iput p1, p0, Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;->currentItem:I

    .line 218
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/widgets/wheel/DigitalWheelAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
