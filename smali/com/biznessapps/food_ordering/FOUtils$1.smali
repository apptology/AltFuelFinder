.class final Lcom/biznessapps/food_ordering/FOUtils$1;
.super Ljava/lang/Object;
.source "FOUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/FOUtils;->initCartButton(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FOUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FOUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/biznessapps/food_ordering/FOUtils;->openCartView(Landroid/app/Activity;)V

    .line 69
    return-void
.end method
