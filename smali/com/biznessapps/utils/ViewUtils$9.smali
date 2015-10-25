.class final Lcom/biznessapps/utils/ViewUtils$9;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils;->showOfflineCachingPropmt(Lcom/biznessapps/common/activities/CommonFragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 401
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->setUseOfflineMode(Z)V

    .line 402
    if-eqz p1, :cond_0

    .line 403
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 405
    :cond_0
    return-void
.end method
