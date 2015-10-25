.class Lcom/biznessapps/real_estate/RealEstateListActivity$8;
.super Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.source "RealEstateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateListActivity;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$8;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$8;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # invokes: Lcom/biznessapps/real_estate/RealEstateListActivity;->handleInBackground()V
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1100(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    .line 253
    return-void
.end method
