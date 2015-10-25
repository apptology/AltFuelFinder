.class final Lcom/biznessapps/utils/ViewUtils$3;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils;->showMailingListPropmt(Lcom/biznessapps/common/activities/CommonFragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 263
    :cond_0
    return-void
.end method
