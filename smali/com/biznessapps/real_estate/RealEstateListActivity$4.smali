.class Lcom/biznessapps/real_estate/RealEstateListActivity$4;
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
    .line 191
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$4;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$4;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->categoryType:I
    invoke-static {v0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$602(Lcom/biznessapps/real_estate/RealEstateListActivity;I)I

    .line 195
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$4;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$4;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->categoryType:I
    invoke-static {v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$600(Lcom/biznessapps/real_estate/RealEstateListActivity;)I

    move-result v1

    # invokes: Lcom/biznessapps/real_estate/RealEstateListActivity;->updateTopButtonsState(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$700(Lcom/biznessapps/real_estate/RealEstateListActivity;I)V

    .line 196
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$4;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # invokes: Lcom/biznessapps/real_estate/RealEstateListActivity;->loadContent()V
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$800(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    .line 197
    return-void
.end method
