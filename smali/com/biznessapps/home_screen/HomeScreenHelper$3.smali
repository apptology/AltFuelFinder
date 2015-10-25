.class final Lcom/biznessapps/home_screen/HomeScreenHelper$3;
.super Ljava/lang/Object;
.source "HomeScreenHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenHelper;->updateHomeButtons(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V
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
    .line 123
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$3;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/biznessapps/home_screen/HomeScreenHelper;->showDirections(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeScreenHelper;->access$100(Landroid/app/Activity;)V

    .line 127
    return-void
.end method
