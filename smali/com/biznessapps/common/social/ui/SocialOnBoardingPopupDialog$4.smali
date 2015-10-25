.class Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$4;
.super Ljava/lang/Object;
.source "SocialOnBoardingPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$4;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$4;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->dismiss()V

    .line 132
    return-void
.end method
