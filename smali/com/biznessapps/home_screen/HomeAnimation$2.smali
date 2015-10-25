.class Lcom/biznessapps/home_screen/HomeAnimation$2;
.super Ljava/lang/Object;
.source "HomeAnimation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeAnimation;->setImage(Ljava/lang/String;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeAnimation;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeAnimation$2;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeAnimation$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation$2;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->urls:Ljava/util/List;
    invoke-static {v0}, Lcom/biznessapps/home_screen/HomeAnimation;->access$300(Lcom/biznessapps/home_screen/HomeAnimation;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$2;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$100(Lcom/biznessapps/home_screen/HomeAnimation;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/TabUtils;->openLinkedTab(ILandroid/app/Activity;)V

    .line 153
    return-void
.end method
