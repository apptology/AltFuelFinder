.class Lcom/biznessapps/home_screen/HomeScreenActivity$3;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;->onBackPressed()V
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
    .line 285
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$3;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$3;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->exitToReseller:Z
    invoke-static {v0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$302(Lcom/biznessapps/home_screen/HomeScreenActivity;Z)Z

    .line 290
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$3;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->onBackPressed()V

    .line 291
    return-void
.end method
