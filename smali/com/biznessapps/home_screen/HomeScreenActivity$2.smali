.class Lcom/biznessapps/home_screen/HomeScreenActivity$2;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$2;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 232
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "selectedPage"    # I

    .prologue
    .line 213
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$2;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$200(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$2;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$200(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 215
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 216
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$2;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$200(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 217
    .local v0, "child":Landroid/widget/ImageView;
    if-ne v2, p1, :cond_0

    .line 218
    sget v3, Lcom/biznessapps/layout/R$drawable;->selected_circle:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_0
    sget v3, Lcom/biznessapps/layout/R$drawable;->unselected_circle:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 224
    .end local v0    # "child":Landroid/widget/ImageView;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
