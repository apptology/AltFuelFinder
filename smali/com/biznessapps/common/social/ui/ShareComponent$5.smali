.class final Lcom/biznessapps/common/social/ui/ShareComponent$5;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;->_showSharingOptionDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$5;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$5;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$5;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-interface {v0}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingCanceled()V

    .line 214
    :cond_0
    return-void
.end method
