.class Lcom/biznessapps/home_screen/HomeScreenActivity$4;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;->defineShortLinks()V
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
    .line 452
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$4;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$4;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$500(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->toggleMenu()V

    .line 456
    return-void
.end method
