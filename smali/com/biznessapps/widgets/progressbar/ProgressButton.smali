.class public Lcom/biznessapps/widgets/progressbar/ProgressButton;
.super Landroid/widget/FrameLayout;
.source "ProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/progressbar/ProgressButton$1;,
        Lcom/biznessapps/widgets/progressbar/ProgressButton$States;
    }
.end annotation


# instance fields
.field private defaultColor:I

.field private imagePause:Landroid/widget/ImageView;

.field private imagePlay:Landroid/widget/ImageView;

.field private pendingView:Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;

.field private progressBar:Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const v1, -0x5f000001

    iput v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->defaultColor:I

    .line 35
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/biznessapps/layout/R$layout;->progress_button_view:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePlay:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p0, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePause:Landroid/widget/ImageView;

    .line 41
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;

    iput-object v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->progressBar:Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;

    .line 42
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;

    iput-object v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->pendingView:Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;

    .line 44
    sget-object v1, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->WAITING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    .line 45
    iget v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->defaultColor:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setProgressColor(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public setImageColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePause:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->progressBar:Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;

    invoke-virtual {v0, p1}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->setProgress(F)V

    .line 83
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->progressBar:Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;

    invoke-virtual {v0, p1}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->pendingView:Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;

    invoke-virtual {v0, p1}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->setColor(I)V

    .line 93
    return-void
.end method

.method public setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V
    .locals 4
    .param p1, "state"    # Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 49
    sget-object v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$1;->$SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States:[I

    invoke-virtual {p1}, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->progressBar:Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->pendingView:Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->progressBar:Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->pendingView:Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->progressBar:Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;

    invoke-virtual {v0, v3}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->pendingView:Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->imagePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->progressBar:Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;

    invoke-virtual {v0, v3}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButton;->pendingView:Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
