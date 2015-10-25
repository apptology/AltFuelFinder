.class final Lcom/biznessapps/common/social/ui/ShareComponent$4;
.super Lcom/biznessapps/api/AsyncCallback;
.source "ShareComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 179
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$activity:Landroid/app/Activity;

    sget v3, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$activity:Landroid/app/Activity;

    sget v4, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingError(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/ui/ShareComponent$4;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 172
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xcf

    iget-object v5, p0, Lcom/biznessapps/common/social/ui/ShareComponent$4;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    move-object v2, p1

    move-object v4, v3

    # invokes: Lcom/biznessapps/common/social/ui/ShareComponent;->_showSharingOptionDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->access$100(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    .line 173
    return-void
.end method
