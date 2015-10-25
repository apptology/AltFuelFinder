.class Lcom/biznessapps/real_estate/RealEstateDetailActivity$7;
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
    .line 385
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$7;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$7;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$7;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$7;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-static {v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method
