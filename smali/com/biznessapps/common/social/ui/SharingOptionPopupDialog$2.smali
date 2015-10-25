.class Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$2;
.super Ljava/lang/Object;
.source "SharingOptionPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$2;->this$0:Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$2;->this$0:Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    # getter for: Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->access$000(Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    .local v0, "selectedOptionId":I
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$2;->this$0:Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    # getter for: Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->access$100(Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;)Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$2;->this$0:Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    # getter for: Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->access$100(Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;)Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->onSharingOptionSelected(I)V

    .line 128
    :cond_0
    return-void
.end method
