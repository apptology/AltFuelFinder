.class Lcom/biznessapps/events/EventV2DetailsActivity$9;
.super Ljava/lang/Object;
.source "EventV2DetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

.field final synthetic val$socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity;Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$9;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    iput-object p2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$9;->val$socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$9;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$500(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 291
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$9;->val$socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    .line 292
    return-void
.end method
