.class Lcom/biznessapps/widgets/wheel/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/biznessapps/widgets/wheel/WheelView$2;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView$2;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->invalidateWheel(Z)V

    .line 178
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView$2;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->invalidateWheel(Z)V

    .line 183
    return-void
.end method
