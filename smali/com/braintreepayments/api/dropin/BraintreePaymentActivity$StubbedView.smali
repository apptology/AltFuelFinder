.class final enum Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;
.super Ljava/lang/Enum;
.source "BraintreePaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StubbedView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

.field public static final enum CARD_FORM:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

.field public static final enum LOADING_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

.field public static final enum SELECT_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

.field private static mAnimationDuration:I


# instance fields
.field private mCurrentView:Z

.field private final mInflatedViewId:I

.field private final mStubbedViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    new-instance v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    const-string v1, "LOADING_VIEW"

    sget v2, Lcom/braintreepayments/api/dropin/R$id;->bt_stub_loading_view:I

    sget v3, Lcom/braintreepayments/api/dropin/R$id;->bt_inflated_loading_view:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->LOADING_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    .line 461
    new-instance v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    const-string v1, "SELECT_VIEW"

    sget v2, Lcom/braintreepayments/api/dropin/R$id;->bt_stub_payment_methods_list:I

    sget v3, Lcom/braintreepayments/api/dropin/R$id;->bt_inflated_payment_methods_list:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->SELECT_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    .line 462
    new-instance v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    const-string v1, "CARD_FORM"

    sget v2, Lcom/braintreepayments/api/dropin/R$id;->bt_stub_payment_method_form:I

    sget v3, Lcom/braintreepayments/api/dropin/R$id;->bt_inflated_payment_method_form:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->CARD_FORM:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    .line 459
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    sget-object v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->LOADING_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    aput-object v1, v0, v4

    sget-object v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->SELECT_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    aput-object v1, v0, v5

    sget-object v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->CARD_FORM:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    aput-object v1, v0, v6

    sput-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->$VALUES:[Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p3, "stubbedViewId"    # I
    .param p4, "inflatedViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 471
    iput p3, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mStubbedViewId:I

    .line 472
    iput p4, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mInflatedViewId:I

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mCurrentView:Z

    .line 474
    return-void
.end method

.method static synthetic access$000(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mCurrentView:Z

    return v0
.end method

.method private getDuration(Landroid/content/Context;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 532
    sget v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mAnimationDuration:I

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mAnimationDuration:I

    .line 537
    :cond_0
    sget v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mAnimationDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 459
    const-class v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    return-object v0
.end method

.method public static values()[Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->$VALUES:[Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    invoke-virtual {v0}, [Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    return-object v0
.end method


# virtual methods
.method hide(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    .prologue
    .line 523
    iget v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mStubbedViewId:I

    # invokes: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->findView(I)Landroid/view/View;
    invoke-static {p1, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->access$200(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 524
    .local v0, "stub":Landroid/view/ViewStub;
    if-nez v0, :cond_0

    .line 525
    iget v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mInflatedViewId:I

    # invokes: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->findView(I)Landroid/view/View;
    invoke-static {p1, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->access$200(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mCurrentView:Z

    .line 529
    return-void
.end method

.method inflateOrFind(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;
    .locals 2
    .param p1, "activity"    # Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 482
    iget v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mStubbedViewId:I

    # invokes: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->findView(I)Landroid/view/View;
    invoke-static {p1, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->access$200(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 483
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 486
    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mInflatedViewId:I

    # invokes: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->findView(I)Landroid/view/View;
    invoke-static {p1, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->access$200(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method show(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;
    .locals 8
    .param p1, "activity"    # Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 497
    invoke-static {}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->values()[Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    move-result-object v0

    .local v0, "arr$":[Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 498
    .local v4, "value":Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;
    if-eq p0, v4, :cond_0

    .line 499
    invoke-virtual {v4, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->hide(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)V

    .line 497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v4    # "value":Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->inflateOrFind(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    move-result-object v2

    .line 504
    .local v2, "inflated":Landroid/view/View;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_2

    .line 505
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 506
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 507
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->getDuration(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 514
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mCurrentView:Z

    .line 516
    return-object v2

    .line 511
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
