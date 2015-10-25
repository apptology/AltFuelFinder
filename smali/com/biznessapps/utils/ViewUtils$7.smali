.class final Lcom/biznessapps/utils/ViewUtils$7;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils;->showEmailCollectPropmtIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appSettings:Lcom/biznessapps/common/entities/AppSettings;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/entities/AppSettings;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$7;->val$appSettings:Lcom/biznessapps/common/entities/AppSettings;

    iput-object p2, p0, Lcom/biznessapps/utils/ViewUtils$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$7;->val$appSettings:Lcom/biznessapps/common/entities/AppSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AppSettings;->setEmailCollectInfo(Lcom/biznessapps/common/entities/EmailCollectInfo;)V

    .line 357
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/biznessapps/utils/ViewUtils$7$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/utils/ViewUtils$7$1;-><init>(Lcom/biznessapps/utils/ViewUtils$7;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 368
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$7;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 371
    :cond_0
    return-void
.end method
