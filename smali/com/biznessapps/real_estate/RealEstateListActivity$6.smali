.class Lcom/biznessapps/real_estate/RealEstateListActivity$6;
.super Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
.source "RealEstateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateListActivity;->initViews()V
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
    .line 211
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$6;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-direct {p0}, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$6;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$6;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$902(Lcom/biznessapps/real_estate/RealEstateListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$6;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # invokes: Lcom/biznessapps/real_estate/RealEstateListActivity;->loadContent()V
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$800(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    .line 215
    return-void
.end method
