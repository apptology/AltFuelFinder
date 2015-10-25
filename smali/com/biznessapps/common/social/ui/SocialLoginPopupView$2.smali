.class Lcom/biznessapps/common/social/ui/SocialLoginPopupView$2;
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
    .line 68
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$2;->this$0:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$2;->this$0:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$2;->this$0:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    # getter for: Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mSVAccountsContent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->access$000(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)Landroid/view/ViewGroup;

    move-result-object v1

    # invokes: Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->closeLoginAccountsDialog(Landroid/view/ViewGroup;)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->access$100(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;Landroid/view/ViewGroup;)V

    .line 72
    return-void
.end method
