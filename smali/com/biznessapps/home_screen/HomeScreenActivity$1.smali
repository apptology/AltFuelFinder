.class Lcom/biznessapps/home_screen/HomeScreenActivity$1;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Lcom/biznessapps/localization/StringsSource$LocalizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;
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
    .line 136
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$1;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageChanged()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$1;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    .line 141
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$1;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$000(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$1;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$000(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$1;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v2}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/biznessapps/home_screen/HomeScreenHelper;->updateHomeButtons(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 144
    :cond_0
    return-void
.end method
