.class Lcom/biznessapps/real_estate/RealEstateDetailActivity$5;
.super Ljava/lang/Object;
.source "RealEstateDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initViews()V
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
    .line 194
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$5;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$5;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 198
    return-void
.end method
