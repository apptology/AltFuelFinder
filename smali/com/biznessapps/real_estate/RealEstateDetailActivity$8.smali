.class Lcom/biznessapps/real_estate/RealEstateDetailActivity$8;
.super Ljava/lang/Object;
.source "RealEstateDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$8;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$8;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$8;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$8;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-static {v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getLongitude()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$8;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-static {v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/real_estate/RealEstateEntity;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    return-void
.end method
