.class Lcom/biznessapps/api/navigation/NavigationManager$1;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/navigation/NavigationManager;->addNewTab(Lcom/biznessapps/more/Tab;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/navigation/NavigationManager;

.field final synthetic val$comingIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/navigation/NavigationManager;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationManager$1;->this$0:Lcom/biznessapps/api/navigation/NavigationManager;

    iput-object p2, p0, Lcom/biznessapps/api/navigation/NavigationManager$1;->val$comingIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager$1;->this$0:Lcom/biznessapps/api/navigation/NavigationManager;

    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationManager$1;->val$comingIntent:Landroid/content/Intent;

    # invokes: Lcom/biznessapps/api/navigation/NavigationManager;->onViewChanged(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/biznessapps/api/navigation/NavigationManager;->access$000(Lcom/biznessapps/api/navigation/NavigationManager;Landroid/content/Intent;)V

    .line 228
    return-void
.end method
