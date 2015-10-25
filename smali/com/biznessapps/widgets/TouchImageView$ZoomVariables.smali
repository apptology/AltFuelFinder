.class Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomVariables"
.end annotation


# instance fields
.field public focusX:F

.field public focusY:F

.field public scale:F

.field public scaleType:Landroid/widget/ImageView$ScaleType;

.field final synthetic this$0:Lcom/biznessapps/widgets/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/biznessapps/widgets/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p2, "scale"    # F
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    iput p2, p0, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->scale:F

    .line 1245
    iput p3, p0, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->focusX:F

    .line 1246
    iput p4, p0, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->focusY:F

    .line 1247
    iput-object p5, p0, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 1248
    return-void
.end method
