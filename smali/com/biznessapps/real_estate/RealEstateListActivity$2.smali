.class Lcom/biznessapps/real_estate/RealEstateListActivity$2;
.super Ljava/lang/Object;
.source "RealEstateListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 173
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$2;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$2;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # invokes: Lcom/biznessapps/real_estate/RealEstateListActivity;->setMapVisibility(Z)V
    invoke-static {v0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$100(Lcom/biznessapps/real_estate/RealEstateListActivity;Z)V

    .line 177
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$2;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$200(Lcom/biznessapps/real_estate/RealEstateListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$2;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->isListMode:Z
    invoke-static {v0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$302(Lcom/biznessapps/real_estate/RealEstateListActivity;Z)Z

    .line 179
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$2;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # invokes: Lcom/biznessapps/real_estate/RealEstateListActivity;->updateBottomTabsState()V
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    .line 180
    return-void
.end method
