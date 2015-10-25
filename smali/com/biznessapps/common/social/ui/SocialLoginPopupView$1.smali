.class Lcom/biznessapps/common/social/ui/SocialLoginPopupView$1;
.super Ljava/lang/Object;
.source "SocialLoginPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;ZLcom/biznessapps/common/social/OnSocialLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$1;->this$0:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$1;->this$0:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    .line 65
    return-void
.end method
