.class Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$7;
.super Ljava/lang/Object;
.source "SocialOnBoardingPopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->registerListener()V
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
    .line 184
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$7;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$7;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # invokes: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->unregisterListener()V
    invoke-static {v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$300(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    .line 188
    return-void
.end method
