.class Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;
.super Ljava/lang/Object;
.source "SocialCommentComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialCommentComponent;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLcom/biznessapps/api/UiSettings;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$rootContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    iput-object p2, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->val$rootContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    new-instance v1, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->val$rootContainer:Landroid/view/ViewGroup;

    new-instance v4, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1$1;

    iget-object v5, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1$1;-><init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/common/social/OnSocialLoginListener;)V

    # setter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->socialLoginPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$002(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    .line 112
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->socialLoginPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    invoke-static {v0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$000(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    .line 113
    return-void
.end method
