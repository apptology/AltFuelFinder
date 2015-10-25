.class final Lcom/biznessapps/reservation/ReservationBookFragment$11;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment;->getOnClickListener(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arrowNavigation:Landroid/widget/ImageView;

.field final synthetic val$dataContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$11;->val$dataContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/biznessapps/reservation/ReservationBookFragment$11;->val$arrowNavigation:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 755
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment$11;->val$dataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 756
    .local v0, "isVisible":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 757
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$11;->val$dataContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 758
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$11;->val$arrowNavigation:Landroid/widget/ImageView;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_down:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    :goto_1
    return-void

    .end local v0    # "isVisible":Z
    :cond_0
    move v0, v1

    .line 755
    goto :goto_0

    .line 761
    .restart local v0    # "isVisible":Z
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment$11;->val$dataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 762
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$11;->val$arrowNavigation:Landroid/widget/ImageView;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_up:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
