.class final Lcom/biznessapps/common/social/ui/ShareComponent$7;
.super Lcom/biznessapps/api/AsyncCallback;
.source "ShareComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;->shareImageViaEmail(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

.field final synthetic val$orgPath:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    iput-object p4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$orgPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/biznessapps/common/social/ui/ShareComponent$7;->getMeta()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$activity:Landroid/app/Activity;

    sget v3, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$activity:Landroid/app/Activity;

    sget v4, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 254
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/ui/ShareComponent$7;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    iget-object v4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$orgPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/biznessapps/common/social/ui/ShareComponent$7;->val$bitmap:Landroid/graphics/Bitmap;

    move-object v1, p1

    # invokes: Lcom/biznessapps/common/social/ui/ShareComponent;->formAndSendEmailIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 258
    return-void
.end method
