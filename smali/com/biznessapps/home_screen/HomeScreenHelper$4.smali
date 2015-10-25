.class final Lcom/biznessapps/home_screen/HomeScreenHelper$4;
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
    .line 129
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 133
    return-void
.end method
