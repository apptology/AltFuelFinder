.class Lcom/biznessapps/web/WebViewFragment$5;
.super Landroid/webkit/WebViewClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/web/WebViewFragment;->initControls(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/web/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/web/WebViewFragment;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->progressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/biznessapps/web/WebViewFragment;->access$500(Lcom/biznessapps/web/WebViewFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v5, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v5}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 289
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 290
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 291
    .local v4, "usernameInput":Landroid/widget/EditText;
    sget v5, Lcom/biznessapps/layout/R$string;->username:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 293
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 294
    .local v3, "passwordInput":Landroid/widget/EditText;
    sget v5, Lcom/biznessapps/layout/R$string;->password:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 295
    const/16 v5, 0x81

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 297
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 298
    .local v2, "ll":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v6}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/biznessapps/layout/R$string;->authentication:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->ok:I

    new-instance v7, Lcom/biznessapps/web/WebViewFragment$5$2;

    invoke-direct {v7, p0, p2, v4, v3}, Lcom/biznessapps/web/WebViewFragment$5$2;-><init>(Lcom/biznessapps/web/WebViewFragment$5;Landroid/webkit/HttpAuthHandler;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v7, Lcom/biznessapps/web/WebViewFragment$5$1;

    invoke-direct {v7, p0, p1}, Lcom/biznessapps/web/WebViewFragment$5$1;-><init>(Lcom/biznessapps/web/WebViewFragment$5;Landroid/webkit/WebView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 319
    .local v1, "authDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 321
    .end local v1    # "authDialog":Landroid/app/AlertDialog$Builder;
    .end local v2    # "ll":Landroid/widget/LinearLayout;
    .end local v3    # "passwordInput":Landroid/widget/EditText;
    .end local v4    # "usernameInput":Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 228
    if-nez p2, :cond_0

    .line 278
    :goto_0
    return v3

    .line 231
    :cond_0
    const-string v5, "https://dl.dropboxusercontent.com/content_link"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_1

    .line 233
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    const-string v5, "dropbox_download_file.pdf"

    # invokes: Lcom/biznessapps/web/WebViewFragment;->downloadDropboxFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, p2, v5}, Lcom/biznessapps/web/WebViewFragment;->access$400(Lcom/biznessapps/web/WebViewFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v3, v4

    .line 237
    goto :goto_0

    .line 238
    :cond_2
    const-string v5, "mailto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 239
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v2

    .line 240
    .local v2, "mt":Landroid/net/MailTo;
    iget-object v5, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v5}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v3, v7}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 241
    goto :goto_0

    .line 242
    .end local v2    # "mt":Landroid/net/MailTo;
    :cond_3
    const-string v3, "maps://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 244
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "maps://"

    const-string v5, "http://"

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 246
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 247
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v3, v1}, Lcom/biznessapps/web/WebViewFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 248
    goto :goto_0

    .line 249
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    move v3, v4

    .line 250
    goto :goto_0

    .line 252
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 254
    :try_start_1
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v5}, Lcom/biznessapps/web/WebViewFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 255
    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v3}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    sget v5, Lcom/biznessapps/layout/R$string;->phone_call_not_available:I

    invoke-static {v3, v5}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    move v3, v4

    .line 258
    goto/16 :goto_0

    .line 260
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    const-string v3, ".pdf"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://docs.google.com/gview?embedded%3Dtrue&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 272
    :cond_6
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "=&c=0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 273
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_7
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/web/WebViewFragment;->access$200(Lcom/biznessapps/web/WebViewFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/web/WebViewFragment;->access$200(Lcom/biznessapps/web/WebViewFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 276
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/web/WebViewFragment;->access$200(Lcom/biznessapps/web/WebViewFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 262
    :cond_9
    const-string v3, "market://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "intent://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 264
    :cond_a
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    iget-object v3, p0, Lcom/biznessapps/web/WebViewFragment$5;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v3, v1}, Lcom/biznessapps/web/WebViewFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v4

    .line 267
    goto/16 :goto_0

    .line 268
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move v3, v4

    .line 269
    goto/16 :goto_0
.end method
