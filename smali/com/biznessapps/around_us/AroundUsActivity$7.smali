.class Lcom/biznessapps/around_us/AroundUsActivity$7;
.super Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
.source "AroundUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$7;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-direct {p0}, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$7;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity$7;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/biznessapps/around_us/AroundUsActivity;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$902(Lcom/biznessapps/around_us/AroundUsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$7;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # invokes: Lcom/biznessapps/around_us/AroundUsActivity;->loadData()V
    invoke-static {v0}, Lcom/biznessapps/around_us/AroundUsActivity;->access$1000(Lcom/biznessapps/around_us/AroundUsActivity;)V

    .line 244
    return-void
.end method
