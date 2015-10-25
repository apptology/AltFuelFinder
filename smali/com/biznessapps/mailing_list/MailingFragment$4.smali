.class Lcom/biznessapps/mailing_list/MailingFragment$4;
.super Lcom/biznessapps/api/UnModalAsyncTask;
.source "MailingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/mailing_list/MailingFragment;->calculate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/UnModalAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/mailing_list/MailingFragment;

.field final synthetic val$tabParam:Ljava/lang/String;

.field final synthetic val$userBirthday:Ljava/lang/String;

.field final synthetic val$userComments:Ljava/lang/String;

.field final synthetic val$userCountry:Ljava/lang/String;

.field final synthetic val$userEmail:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;

.field final synthetic val$userZip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/mailing_list/MailingFragment;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 259
    .local p3, "x1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    iput-object p1, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    iput-object p4, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userName:Ljava/lang/String;

    iput-object p5, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userEmail:Ljava/lang/String;

    iput-object p6, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$tabParam:Ljava/lang/String;

    iput-object p7, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userBirthday:Ljava/lang/String;

    iput-object p8, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userZip:Ljava/lang/String;

    iput-object p9, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userCountry:Ljava/lang/String;

    iput-object p10, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userComments:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/biznessapps/api/UnModalAsyncTask;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userName:Ljava/lang/String;

    iget-object v1, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    invoke-virtual {v2}, Lcom/biznessapps/mailing_list/MailingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$tabParam:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    iget-object v5, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    # getter for: Lcom/biznessapps/mailing_list/MailingFragment;->categories:Ljava/util/List;
    invoke-static {v5}, Lcom/biznessapps/mailing_list/MailingFragment;->access$300(Lcom/biznessapps/mailing_list/MailingFragment;)Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/biznessapps/mailing_list/MailingFragment;->getSelectedCategories(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/biznessapps/mailing_list/MailingFragment;->access$400(Lcom/biznessapps/mailing_list/MailingFragment;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userBirthday:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userZip:Ljava/lang/String;

    iget-object v7, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userCountry:Ljava/lang/String;

    iget-object v8, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->val$userComments:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/biznessapps/api/AppHttpUtils;->addToMailingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, "result":Ljava/lang/String;
    invoke-static {v9}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 259
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/mailing_list/MailingFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/biznessapps/api/UnModalAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 275
    iget-object v2, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    invoke-virtual {v2}, Lcom/biznessapps/mailing_list/MailingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 276
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 277
    check-cast v2, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 278
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v1, Lcom/biznessapps/layout/R$string;->mailing_list_add_success:I

    .line 279
    .local v1, "messageResId":I
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    invoke-virtual {v2}, Lcom/biznessapps/mailing_list/MailingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    invoke-virtual {v3, v1}, Lcom/biznessapps/mailing_list/MailingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    .end local v1    # "messageResId":I
    :cond_0
    return-void

    .line 278
    :cond_1
    sget v1, Lcom/biznessapps/layout/R$string;->error_occured:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 259
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/mailing_list/MailingFragment$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected placeProgressBar()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/mailing_list/MailingFragment$4;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    return-void
.end method
