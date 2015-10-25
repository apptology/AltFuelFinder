.class Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$1;
.super Ljava/lang/Object;
.source "SharingOptionPopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->initUI()V
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
    .line 58
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$1;->this$0:Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 64
    :cond_0
    return-void
.end method
