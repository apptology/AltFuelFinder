.class Lcom/biznessapps/home_screen/HomeScreenActivity$7;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;->initHomeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

.field final synthetic val$searchEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$7;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$7;->val$searchEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$7;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$7;->val$searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 511
    return-void
.end method
