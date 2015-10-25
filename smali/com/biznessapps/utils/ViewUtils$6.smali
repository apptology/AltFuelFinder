.class final Lcom/biznessapps/utils/ViewUtils$6;
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

.field final synthetic val$emailEditText:Landroid/widget/EditText;

.field final synthetic val$holdActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/biznessapps/common/entities/AppSettings;Landroid/app/AlertDialog;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$emailEditText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$appSettings:Lcom/biznessapps/common/entities/AppSettings;

    iput-object p3, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$holdActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 317
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$emailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "email":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$appSettings:Lcom/biznessapps/common/entities/AppSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/entities/AppSettings;->setEmailCollectInfo(Lcom/biznessapps/common/entities/EmailCollectInfo;)V

    .line 320
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isCorrectEmail(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/biznessapps/utils/ViewUtils$6$1;

    invoke-direct {v3, p0, v0}, Lcom/biznessapps/utils/ViewUtils$6$1;-><init>(Lcom/biznessapps/utils/ViewUtils$6;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 333
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$emailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$holdActivity:Landroid/app/Activity;

    sget v3, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$emailEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 341
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$holdActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
