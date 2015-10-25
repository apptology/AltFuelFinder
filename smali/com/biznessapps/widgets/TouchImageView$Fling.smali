.class Lcom/biznessapps/widgets/TouchImageView$Fling;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

.field final synthetic this$0:Lcom/biznessapps/widgets/TouchImageView;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/TouchImageView;II)V
    .locals 9
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    sget-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->FLING:Lcom/biznessapps/widgets/TouchImageView$State;

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->setState(Lcom/biznessapps/widgets/TouchImageView$State;)V
    invoke-static {p1, v0}, Lcom/biznessapps/widgets/TouchImageView;->access$1200(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$State;)V

    .line 1100
    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$2600(Lcom/biznessapps/widgets/TouchImageView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/biznessapps/widgets/TouchImageView$CompatScroller;-><init>(Lcom/biznessapps/widgets/TouchImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    .line 1101
    # getter for: Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1800(Lcom/biznessapps/widgets/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->m:[F
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$2700(Lcom/biznessapps/widgets/TouchImageView;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1103
    # getter for: Lcom/biznessapps/widgets/TouchImageView;->m:[F
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$2700(Lcom/biznessapps/widgets/TouchImageView;)[F

    move-result-object v0

    const/4 v3, 0x2

    aget v0, v0, v3

    float-to-int v1, v0

    .line 1104
    .local v1, "startX":I
    # getter for: Lcom/biznessapps/widgets/TouchImageView;->m:[F
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$2700(Lcom/biznessapps/widgets/TouchImageView;)[F

    move-result-object v0

    const/4 v3, 0x5

    aget v0, v0, v3

    float-to-int v2, v0

    .line 1107
    .local v2, "startY":I
    # invokes: Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1400(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v0

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1300(Lcom/biznessapps/widgets/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 1108
    # getter for: Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1300(Lcom/biznessapps/widgets/TouchImageView;)I

    move-result v0

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1400(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v3

    float-to-int v3, v3

    sub-int v5, v0, v3

    .line 1109
    .local v5, "minX":I
    const/4 v6, 0x0

    .line 1115
    .local v6, "maxX":I
    :goto_0
    # invokes: Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1700(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v0

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1600(Lcom/biznessapps/widgets/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 1116
    # getter for: Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1600(Lcom/biznessapps/widgets/TouchImageView;)I

    move-result v0

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F
    invoke-static {p1}, Lcom/biznessapps/widgets/TouchImageView;->access$1700(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v3

    float-to-int v3, v3

    sub-int v7, v0, v3

    .line 1117
    .local v7, "minY":I
    const/4 v8, 0x0

    .line 1123
    .local v8, "maxY":I
    :goto_1
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/biznessapps/widgets/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    .line 1125
    iput v1, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->currX:I

    .line 1126
    iput v2, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->currY:I

    .line 1127
    return-void

    .line 1112
    .end local v5    # "minX":I
    .end local v6    # "maxX":I
    .end local v7    # "minY":I
    .end local v8    # "maxY":I
    :cond_0
    move v6, v1

    .restart local v6    # "maxX":I
    move v5, v1

    .restart local v5    # "minX":I
    goto :goto_0

    .line 1120
    :cond_1
    move v8, v2

    .restart local v8    # "maxY":I
    move v7, v2

    .restart local v7    # "minY":I
    goto :goto_1
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    sget-object v1, Lcom/biznessapps/widgets/TouchImageView$State;->NONE:Lcom/biznessapps/widgets/TouchImageView$State;

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->setState(Lcom/biznessapps/widgets/TouchImageView$State;)V
    invoke-static {v0, v1}, Lcom/biznessapps/widgets/TouchImageView;->access$1200(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$State;)V

    .line 1132
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/TouchImageView$CompatScroller;->forceFinished(Z)V

    .line 1134
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1138
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;
    invoke-static {v4}, Lcom/biznessapps/widgets/TouchImageView;->access$2100(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1139
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;
    invoke-static {v4}, Lcom/biznessapps/widgets/TouchImageView;->access$2100(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 1142
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    invoke-virtual {v4}, Lcom/biznessapps/widgets/TouchImageView$CompatScroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1143
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    .line 1159
    :cond_1
    :goto_0
    return-void

    .line 1147
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    invoke-virtual {v4}, Lcom/biznessapps/widgets/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1148
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    invoke-virtual {v4}, Lcom/biznessapps/widgets/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    .line 1149
    .local v0, "newX":I
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->scroller:Lcom/biznessapps/widgets/TouchImageView$CompatScroller;

    invoke-virtual {v4}, Lcom/biznessapps/widgets/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    .line 1150
    .local v1, "newY":I
    iget v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v4

    .line 1151
    .local v2, "transX":I
    iget v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v4

    .line 1152
    .local v3, "transY":I
    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->currX:I

    .line 1153
    iput v1, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->currY:I

    .line 1154
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/biznessapps/widgets/TouchImageView;->access$1800(Lcom/biznessapps/widgets/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1155
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->fixTrans()V
    invoke-static {v4}, Lcom/biznessapps/widgets/TouchImageView;->access$1900(Lcom/biznessapps/widgets/TouchImageView;)V

    .line 1156
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    iget-object v5, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/biznessapps/widgets/TouchImageView;->access$1800(Lcom/biznessapps/widgets/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1157
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$Fling;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V
    invoke-static {v4, p0}, Lcom/biznessapps/widgets/TouchImageView;->access$500(Lcom/biznessapps/widgets/TouchImageView;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
