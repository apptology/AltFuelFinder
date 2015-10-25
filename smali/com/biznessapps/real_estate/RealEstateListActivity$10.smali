.class Lcom/biznessapps/real_estate/RealEstateListActivity$10;
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
    .line 269
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$10;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/biznessapps/real_estate/RealEstateListActivity;->updateControlsWithData(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$1600(Lcom/biznessapps/real_estate/RealEstateListActivity;Landroid/app/Activity;)V

    .line 273
    return-void
.end method
