.class final Lcom/biznessapps/utils/ViewUtils$10;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils;->getOnEditorListener(Landroid/widget/Button;)Landroid/widget/TextView$OnEditorActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buttonToClick:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$10;->val$buttonToClick:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 489
    const/4 v3, 0x6

    if-ne p2, v3, :cond_4

    move v0, v2

    .line 490
    .local v0, "actionDone":Z
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    :cond_0
    move v1, v2

    .line 492
    .local v1, "needToPost":Z
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 493
    :cond_2
    iget-object v3, p0, Lcom/biznessapps/utils/ViewUtils$10;->val$buttonToClick:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->performClick()Z

    .line 495
    :cond_3
    return v2

    .end local v0    # "actionDone":Z
    .end local v1    # "needToPost":Z
    :cond_4
    move v0, v1

    .line 489
    goto :goto_0
.end method
