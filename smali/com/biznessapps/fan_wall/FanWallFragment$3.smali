.class Lcom/biznessapps/fan_wall/FanWallFragment$3;
.super Ljava/lang/Object;
.source "FanWallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanWallFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

.field final synthetic val$socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanWallFragment;Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanWallFragment$3;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    iput-object p2, p0, Lcom/biznessapps/fan_wall/FanWallFragment$3;->val$socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$3;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanWallFragment$3;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanWallFragment;->commentTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$200(Lcom/biznessapps/fan_wall/FanWallFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 154
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$3;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanWallFragment;->useV2Api:Z
    invoke-static {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$300(Lcom/biznessapps/fan_wall/FanWallFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$3;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->checkGpsEnabling(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$3;->val$socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$3;->val$socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    goto :goto_0
.end method
