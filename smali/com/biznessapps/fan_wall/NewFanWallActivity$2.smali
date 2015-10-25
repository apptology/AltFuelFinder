.class Lcom/biznessapps/fan_wall/NewFanWallActivity$2;
.super Ljava/lang/Object;
.source "NewFanWallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/NewFanWallActivity;->initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

.field final synthetic val$socialAccessor:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$2;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    iput-object p2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$2;->val$socialAccessor:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$2;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->checkGpsEnabling(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$2;->val$socialAccessor:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    .line 242
    :cond_0
    return-void
.end method
