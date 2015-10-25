.class Lcom/biznessapps/real_estate/RealEstateDetailActivity$9;
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
    .line 401
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$9;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-static {v3}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method
