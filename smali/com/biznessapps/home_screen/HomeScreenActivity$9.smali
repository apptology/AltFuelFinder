.class Lcom/biznessapps/home_screen/HomeScreenActivity$9;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$isListLayout:Z

.field final synthetic val$menuDrawerView:Landroid/view/View;

.field final synthetic val$menuSize:I

.field final synthetic val$searchEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/widget/EditText;Landroid/view/View;IZ)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$searchEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$menuDrawerView:Landroid/view/View;

    iput p4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$menuSize:I

    iput-boolean p5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$isListLayout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const-string v1, ""

    # setter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->searchText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$602(Lcom/biznessapps/home_screen/HomeScreenActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->searchText:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$600(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 531
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$menuDrawerView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$700(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$menuSize:I

    iget-boolean v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->val$isListLayout:Z

    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$900(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$9;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->searchText:Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$600(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/home_screen/HomeScreenHelper;->setTabsToSlider(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;IZLcom/biznessapps/api/UiSettings;Ljava/lang/String;)V

    .line 532
    return-void
.end method
