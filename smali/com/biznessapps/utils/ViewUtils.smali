.class public Lcom/biznessapps/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;
    }
.end annotation


# static fields
.field public static final DRAWABLE_PACKAGE:Ljava/lang/String; = "drawable/"

.field private static final MAX_ALPHA_VALUE:F = 255.0f

.field private static final MAX_ALPHA_VALUE_FROM_WEB_PART:F = 100.0f

.field private static final SHADOW_VALUE:F = 1.2f

.field private static final VIEW_PADDING:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/biznessapps/utils/ViewUtils;->choseFromLibrary(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/biznessapps/utils/ViewUtils;->choseFromLibrary(Landroid/app/Activity;)V

    return-void
.end method

.method public static addAlpha(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 1363
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 1364
    .local v2, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 1365
    .local v1, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 1366
    .local v0, "blue":I
    invoke-static {p1, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static addUpDownGestureListener(Landroid/view/View;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "whatToRun"    # Ljava/lang/Runnable;
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 1440
    new-instance v1, Lcom/biznessapps/utils/ViewUtils$20;

    invoke-direct {v1, p1}, Lcom/biznessapps/utils/ViewUtils$20;-><init>(Ljava/lang/Runnable;)V

    .line 1456
    .local v1, "sgl":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1457
    .local v0, "gestureListener":Landroid/view/GestureDetector;
    new-instance v2, Lcom/biznessapps/utils/ViewUtils$21;

    invoke-direct {v2, v0}, Lcom/biznessapps/utils/ViewUtils$21;-><init>(Landroid/view/GestureDetector;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1464
    return-void
.end method

.method public static call(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "telephoneNumber"    # Ljava/lang/String;

    .prologue
    .line 677
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 679
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->isPhoneDisabled()Z

    move-result v1

    .line 680
    .local v1, "isPhoneDisabled":Z
    if-eqz v1, :cond_0

    .line 681
    sget v4, Lcom/biznessapps/layout/R$string;->phone_number:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "title":Ljava/lang/String;
    invoke-static {p0, v3, p1}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .end local v1    # "isPhoneDisabled":Z
    .end local v3    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 686
    .restart local v1    # "isPhoneDisabled":Z
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 691
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isPhoneDisabled":Z
    :cond_1
    sget v4, Lcom/biznessapps/layout/R$string;->phone_call_not_available:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "message":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p0, v4, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static canGoBack(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/widgets/SmartWebView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "webViewList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/widgets/SmartWebView;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/SmartWebView;

    .line 123
    .local v1, "webView":Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Landroid/webkit/WebView;)Z

    goto :goto_0

    .line 125
    .end local v1    # "webView":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public static canGoBack(Landroid/webkit/WebView;)Z
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "canGoBack":Z
    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    const-string v1, "about:blank"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static changeDefaultCursorColor(Landroid/widget/TextView;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 1320
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 1322
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1323
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1324
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkGpsEnabling(Landroid/app/Activity;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 948
    const/4 v2, 0x1

    .line 949
    .local v2, "isGPSEnabled":Z
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->useStreamMode()Z

    move-result v4

    .line 951
    .local v4, "useStreamMode":Z
    if-nez v4, :cond_0

    .line 952
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 953
    .local v3, "locManager":Landroid/location/LocationManager;
    const-string v5, "gps"

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 956
    if-nez v2, :cond_0

    .line 957
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 958
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lcom/biznessapps/layout/R$string;->gps_disabled_info:I

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->location_service_disabled:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->ok:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/biznessapps/utils/ViewUtils$16;

    invoke-direct {v7}, Lcom/biznessapps/utils/ViewUtils$16;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 967
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 968
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 971
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "locManager":Landroid/location/LocationManager;
    :cond_0
    return v2
.end method

.method private static choseFromLibrary(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1425
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    sget v1, Lcom/biznessapps/layout/R$string;->chose_from_library:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1429
    return-void
.end method

.method private static choseFromLibrary(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1432
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1433
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    sget v1, Lcom/biznessapps/layout/R$string;->chose_from_library:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1437
    return-void
.end method

.method public static closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edittext"    # Landroid/widget/EditText;

    .prologue
    .line 932
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 933
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 934
    return-void
.end method

.method public static closeKeyboardAndClearFocus(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edittext"    # Landroid/widget/EditText;

    .prologue
    .line 937
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 938
    invoke-static {p0, p1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 939
    return-void
.end method

.method public static email(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "emailTo"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "emailText"    # Ljava/lang/String;
    .param p4, "fileToSend"    # Ljava/io/File;

    .prologue
    .line 650
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/ApiUtils;->getAppSubject(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 653
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 655
    const-string v3, "plain/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 657
    const-string v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    :cond_1
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 666
    .local v0, "fileUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 669
    return-void
.end method

.method public static email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ApiUtils;->getAppSubject(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public static email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 637
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    :cond_0
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    :cond_1
    invoke-static {p3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 643
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    :cond_2
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 646
    const-string v1, "Email"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 647
    return-void
.end method

.method public static getBottomTabDrawable(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p0, "selectedColor"    # I
    .param p1, "unSelectedColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1211
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1212
    .local v0, "listItemDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v2, 0x10100a1

    .line 1213
    .local v2, "stateFocused":I
    const v3, 0x10100a7

    .line 1214
    .local v3, "statePressed":I
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1215
    .local v4, "unselectedState":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1217
    .local v1, "selectedState":Landroid/graphics/drawable/ColorDrawable;
    const/4 v5, 0x2

    new-array v5, v5, [I

    neg-int v6, v3

    aput v6, v5, v7

    neg-int v6, v2

    aput v6, v5, v8

    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1220
    new-array v5, v8, [I

    aput v3, v5, v7

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1223
    new-array v5, v8, [I

    aput v2, v5, v7

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1226
    return-object v0
.end method

.method public static getBottomTextListener(II)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "selectedTextColor"    # I
    .param p1, "unSelectedTextColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1194
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v8, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v5, [I

    const v3, -0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v6

    new-array v2, v5, [I

    const v3, -0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v7

    new-array v2, v8, [I

    aput p0, v2, v4

    aput p0, v2, v5

    aput p1, v2, v6

    aput p1, v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1206
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 148
    const/high16 v0, -0x1000000

    .line 150
    .local v0, "colorValue":I
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getColor(Ljava/lang/String;I)I
    .locals 3
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "defaultColor"    # I

    .prologue
    .line 159
    move v0, p1

    .line 161
    .local v0, "colorValue":I
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getColorBrightness(I)F
    .locals 10
    .param p0, "color"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 1259
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .line 1260
    .local v3, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    .line 1261
    .local v2, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    .line 1263
    .local v0, "b":F
    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    float-to-double v6, v3

    mul-double/2addr v4, v6

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    float-to-double v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 1264
    .local v1, "brightness":F
    return v1
.end method

.method public static getExtraKey(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 764
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static getImageProgressBar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 7
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x5

    .line 462
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 463
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 465
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 466
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 467
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    return-object v0
.end method

.method public static getImageStateDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "primaryDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "selectedColor"    # I
    .param p2, "unSelectedColor"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1230
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1231
    .local v0, "activeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1233
    .local v1, "inctiveDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1234
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1236
    const v3, 0x10100a1

    .line 1237
    .local v3, "stateFocused":I
    const v4, 0x10100a7

    .line 1238
    .local v4, "statePressed":I
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1240
    .local v2, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x2

    new-array v5, v5, [I

    neg-int v6, v4

    aput v6, v5, v7

    neg-int v6, v3

    aput v6, v5, v8

    invoke-virtual {v2, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1243
    new-array v5, v8, [I

    aput v4, v5, v7

    invoke-virtual {v2, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1246
    new-array v5, v8, [I

    aput v3, v5, v7

    invoke-virtual {v2, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1249
    return-object v2
.end method

.method public static getOnEditorListener(Landroid/widget/Button;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1
    .param p0, "buttonToClick"    # Landroid/widget/Button;

    .prologue
    .line 486
    new-instance v0, Lcom/biznessapps/utils/ViewUtils$10;

    invoke-direct {v0, p0}, Lcom/biznessapps/utils/ViewUtils$10;-><init>(Landroid/widget/Button;)V

    return-object v0
.end method

.method public static getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 507
    new-instance v0, Lcom/biznessapps/utils/ViewUtils$11;

    invoke-direct {v0, p0}, Lcom/biznessapps/utils/ViewUtils$11;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static getOpacity(F)I
    .locals 1
    .param p0, "opacity"    # F

    .prologue
    .line 477
    const v0, 0x40233333    # 2.55f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static getProgressBar(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 10
    .param p0, "activityContext"    # Landroid/app/Activity;

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    const v7, 0x3f99999a    # 1.2f

    const/4 v6, 0x5

    .line 415
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 416
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 418
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 419
    sget v3, Lcom/biznessapps/layout/R$drawable;->progress_bar_bg:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 420
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 422
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 426
    .local v2, "textView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 427
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 429
    sget v3, Lcom/biznessapps/layout/R$color;->red_black:I

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 430
    invoke-virtual {v2, v6, v8, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 431
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 432
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 434
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    return-object v0
.end method

.method public static getProgressBar(Landroid/app/Activity;I)Landroid/view/ViewGroup;
    .locals 10
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "messageResourceId"    # I

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    const v7, 0x3f99999a    # 1.2f

    const/4 v6, 0x5

    .line 439
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 442
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 443
    sget v3, Lcom/biznessapps/layout/R$drawable;->progress_bar_bg:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 445
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 446
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 450
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 451
    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    sget v3, Lcom/biznessapps/layout/R$color;->red_black:I

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 453
    invoke-virtual {v2, v6, v8, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 454
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 455
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 457
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    return-object v0
.end method

.method public static getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 795
    sget v0, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-static {p0, v0}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static getProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I

    .prologue
    .line 806
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;IZ)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static getProgressDialog(Landroid/content/Context;IZ)Landroid/app/ProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I
    .param p2, "cancelable"    # Z

    .prologue
    .line 818
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 819
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 821
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 822
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 823
    return-object v0
.end method

.method public static getStaticMapUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "latitude"    # Ljava/lang/String;
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 1077
    const-string v0, "http://maps.googleapis.com/maps/api/staticmap?center=%s,%s&zoom=14&size=200x200&sensor=false"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleBg(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 9
    .param p0, "navigationBarColor"    # I

    .prologue
    .line 1118
    move v3, p0

    .line 1119
    .local v3, "originalColor":I
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1120
    .local v4, "redPart":I
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1121
    .local v2, "greenPart":I
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 1122
    .local v0, "bluePart":I
    const/16 v6, 0x96

    invoke-static {v6, v4, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 1124
    .local v5, "topColor":I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p0, v7, v8

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-direct {v1, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1130
    .local v1, "gradientBg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1131
    return-object v1
.end method

.method public static getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;
    .locals 1
    .param p1, "index"    # I
    .param p2, "uiSettings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">(TT;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;Z)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v0

    return-object v0
.end method

.method public static getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;Z)Lcom/biznessapps/common/entities/CommonListEntity;
    .locals 3
    .param p1, "index"    # I
    .param p2, "uiSettings"    # Lcom/biznessapps/api/UiSettings;
    .param p3, "useTransparency"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">(TT;I",
            "Lcom/biznessapps/api/UiSettings;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->isHasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "bgColor":I
    const/4 v1, 0x0

    .line 173
    .local v1, "textColor":I
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_2

    .line 174
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v0

    .line 175
    :goto_0
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v1

    .line 180
    :goto_1
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/entities/CommonListEntity;->setItemColor(I)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/biznessapps/common/entities/CommonListEntity;->setItemTextColor(I)V

    .line 183
    .end local v0    # "bgColor":I
    .end local v1    # "textColor":I
    :cond_0
    return-object p0

    .line 174
    .restart local v0    # "bgColor":I
    .restart local v1    # "textColor":I
    :cond_1
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getOddRowColor()I

    move-result v0

    goto :goto_0

    .line 177
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getEvenRowColorTransparent()I

    move-result v0

    .line 178
    :goto_2
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v1

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getEvenRowColor()I

    move-result v0

    goto :goto_2
.end method

.method public static getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;
    .locals 2
    .param p2, "uiSettings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">(TT;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/biznessapps/api/UiSettings;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    .local p1, "itemsList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p2, v1}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;Z)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v0

    return-object v0
.end method

.method public static getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;Z)Lcom/biznessapps/common/entities/CommonListEntity;
    .locals 1
    .param p2, "uiSettings"    # Lcom/biznessapps/api/UiSettings;
    .param p3, "useTransparency"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">(TT;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/biznessapps/api/UiSettings;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    .local p1, "itemsList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0, p2, p3}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;Z)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v0

    return-object v0
.end method

.method public static hasExtraValue(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extraKey"    # Ljava/lang/String;

    .prologue
    .line 776
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLongExtraValue(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extraKey"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 787
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initAds(Landroid/app/Activity;Landroid/view/ViewGroup;ZLjava/lang/String;ZZ)V
    .locals 8
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "rootContainer"    # Landroid/view/ViewGroup;
    .param p2, "isAdsContainer"    # Z
    .param p3, "adsId"    # Ljava/lang/String;
    .param p4, "useAlpha"    # Z
    .param p5, "isAdmob"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1275
    const/4 v4, 0x0

    .line 1276
    .local v4, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1277
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p5, :cond_2

    .line 1278
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 1279
    .local v0, "adView":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 1280
    sget-object v5, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 1281
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    new-instance v5, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 1283
    move-object v4, v0

    .line 1293
    .end local v0    # "adView":Lcom/google/android/gms/ads/AdView;
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    if-eqz p4, :cond_0

    .line 1294
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1296
    :cond_0
    if-eqz p2, :cond_3

    .line 1297
    if-eqz p1, :cond_1

    .line 1298
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1299
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1300
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1310
    :cond_1
    :goto_1
    return-void

    .line 1285
    :cond_2
    new-instance v3, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    .line 1286
    .local v3, "pAdV":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v3, p3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 1287
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/ads/AdSize;

    sget-object v6, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v6, v5, v7

    invoke-virtual {v3, v5}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 1288
    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    new-instance v5, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 1290
    move-object v4, v3

    goto :goto_0

    .line 1303
    .end local v3    # "pAdV":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :cond_3
    sget v5, Lcom/biznessapps/layout/R$id;->ads_layout_container:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1304
    .local v1, "adsLayout":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1305
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1306
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1307
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public static initTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;IIIFLjava/lang/String;)V
    .locals 13
    .param p0, "titleBarRoot"    # Landroid/view/ViewGroup;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "textColor"    # I
    .param p3, "textShadowColor"    # I
    .param p4, "barColor"    # I
    .param p5, "tintOpacity"    # F
    .param p6, "headerUrl"    # Ljava/lang/String;

    .prologue
    .line 1033
    if-eqz p0, :cond_3

    .line 1034
    sget v10, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1035
    .local v9, "titleTextView":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 1036
    const-string v10, "CHILDREN_TAB_LABEL_PRESENT"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1037
    .local v5, "isChildLabelPresent":Z
    if-eqz v5, :cond_4

    const-string v10, "CHILDREN_TAB_LABEL"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1039
    .local v7, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1040
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    :cond_0
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1043
    const v10, 0x3f99999a    # 1.2f

    const v11, 0x3f99999a    # 1.2f

    const v12, 0x3f99999a    # 1.2f

    move/from16 v0, p3

    invoke-virtual {v9, v10, v11, v12, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1044
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    .end local v5    # "isChildLabelPresent":Z
    .end local v7    # "text":Ljava/lang/String;
    :cond_1
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1049
    invoke-static/range {p6 .. p6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1050
    new-instance v8, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    invoke-direct {v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;-><init>()V

    .line 1051
    .local v8, "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    move/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintColor(I)V

    .line 1052
    move/from16 v0, p5

    invoke-virtual {v8, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintOpacity(F)V

    .line 1053
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v4

    .line 1054
    .local v4, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    move-object/from16 v0, p6

    invoke-virtual {v4, v0, p0, v8}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 1055
    const-string v10, "custom"

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1056
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1057
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v6, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v10, :cond_5

    move-object v10, v6

    .line 1058
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x10

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1062
    :cond_2
    :goto_1
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v3

    .line 1063
    .local v3, "headerWidth":I
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v2, 0x8

    .line 1065
    .local v2, "headerRatio":I
    :goto_2
    div-int v1, v3, v2

    .line 1066
    .local v1, "headerHeight":I
    const/4 v10, -0x1

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1074
    .end local v1    # "headerHeight":I
    .end local v2    # "headerRatio":I
    .end local v3    # "headerWidth":I
    .end local v4    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    .end local v9    # "titleTextView":Landroid/widget/TextView;
    :cond_3
    :goto_3
    return-void

    .line 1037
    .restart local v5    # "isChildLabelPresent":Z
    .restart local v9    # "titleTextView":Landroid/widget/TextView;
    :cond_4
    const-string v10, "TAB_LABEL"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1059
    .end local v5    # "isChildLabelPresent":Z
    .restart local v4    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v8    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_5
    instance-of v10, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v10, :cond_2

    move-object v10, v6

    .line 1060
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x10

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 1063
    .restart local v3    # "headerWidth":I
    :cond_6
    const/4 v2, 0x5

    goto :goto_2

    .line 1071
    .end local v3    # "headerWidth":I
    .end local v4    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_7
    invoke-static/range {p4 .. p4}, Lcom/biznessapps/utils/ViewUtils;->getTitleBg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public static loadLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 117
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 118
    .local v0, "inflator":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static openChoosePhotoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "takePhotoRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1370
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/biznessapps/utils/ViewUtils;->openChoosePhotoDialog(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/support/v4/app/Fragment;)V

    .line 1371
    return-void
.end method

.method public static openChoosePhotoDialog(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/support/v4/app/Fragment;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "takePhotoRunnable"    # Ljava/lang/Runnable;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1377
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$layout;->email_photo_dialog:I

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    .line 1378
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1379
    sget v6, Lcom/biznessapps/layout/R$string;->choose_photo:I

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1380
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1382
    .local v3, "dialog":Landroid/app/AlertDialog;
    sget v6, Lcom/biznessapps/layout/R$id;->take_photo_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1383
    .local v4, "takePhotoButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$id;->chose_from_library_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1384
    .local v2, "choseFromLibraryButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$id;->email_photo_cancel:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1386
    .local v1, "cancelButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$string;->take_photo:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1387
    sget v6, Lcom/biznessapps/layout/R$string;->chose_from_library:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    sget v6, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    new-instance v6, Lcom/biznessapps/utils/ViewUtils$17;

    invoke-direct {v6, p1, v3}, Lcom/biznessapps/utils/ViewUtils$17;-><init>(Ljava/lang/Runnable;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1399
    new-instance v6, Lcom/biznessapps/utils/ViewUtils$18;

    invoke-direct {v6, p2, p0, v3}, Lcom/biznessapps/utils/ViewUtils$18;-><init>(Landroid/support/v4/app/Fragment;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1412
    new-instance v6, Lcom/biznessapps/utils/ViewUtils$19;

    invoke-direct {v6, v3}, Lcom/biznessapps/utils/ViewUtils$19;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1420
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1421
    return-void
.end method

.method public static openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "longitude"    # Ljava/lang/String;
    .param p2, "latitude"    # Ljava/lang/String;

    .prologue
    .line 697
    const-string v3, "geo:0,0?q="

    .line 698
    .local v3, "mapsUrl":Ljava/lang/String;
    sget v5, Lcom/biznessapps/layout/R$string;->current_location:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "label":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 704
    .local v0, "currentLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 705
    const-string v4, "http://maps.google.com/maps?saddr=%s,%s&daddr=%s,%s"

    .line 706
    .local v4, "urlFormat":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 711
    .end local v4    # "urlFormat":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 712
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v5, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 717
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static openLinkInBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 535
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 537
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 540
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static plubWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v1, 0x1

    .line 565
    if-eqz p0, :cond_0

    .line 566
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 567
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 568
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 569
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 570
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method public static plubWebViewWithoutZooming(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v1, 0x1

    .line 548
    if-eqz p0, :cond_0

    .line 549
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 550
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 551
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 552
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 553
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 554
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 555
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 557
    :cond_0
    return-void
.end method

.method public static setBottomTabStyle(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tabView"    # Landroid/widget/TextView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1171
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;Z)V

    .line 1172
    return-void
.end method

.method public static setBottomTabStyle(Landroid/widget/TextView;Z)V
    .locals 8
    .param p0, "tabView"    # Landroid/widget/TextView;
    .param p1, "useTabTransparency"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v7, 0xb4

    .line 1176
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getAppUiSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v2

    .line 1177
    .local v2, "settings":Lcom/biznessapps/api/UiSettings;
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v6

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->addAlpha(II)I

    move-result v0

    .line 1179
    .local v0, "selectedBgColor":I
    :goto_0
    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    .line 1180
    .local v1, "selectedTextColor":I
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v6

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->addAlpha(II)I

    move-result v4

    .line 1182
    .local v4, "unSelectedBgColor":I
    :goto_1
    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v5

    .line 1183
    .local v5, "unSelectedTextColor":I
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1184
    const/4 v3, 0x1

    .line 1186
    .local v3, "topDrawableIndex":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {v5, v6}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 1188
    invoke-static {v0, v4}, Lcom/biznessapps/utils/ViewUtils;->getBottomTabDrawable(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    invoke-static {v1, v5}, Lcom/biznessapps/utils/ViewUtils;->getBottomTextListener(II)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1190
    return-void

    .line 1177
    .end local v0    # "selectedBgColor":I
    .end local v1    # "selectedTextColor":I
    .end local v3    # "topDrawableIndex":I
    .end local v4    # "unSelectedBgColor":I
    .end local v5    # "unSelectedTextColor":I
    :cond_0
    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    goto :goto_0

    .line 1180
    .restart local v0    # "selectedBgColor":I
    .restart local v1    # "selectedTextColor":I
    :cond_1
    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v4

    goto :goto_1
.end method

.method public static setGlobalBackgroundColor(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 1112
    if-eqz p0, :cond_0

    .line 1113
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getGlobalBgColor()I

    move-result v0

    invoke-static {v0, p0}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 1115
    :cond_0
    return-void
.end method

.method public static setGlobalBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 1081
    if-eqz p0, :cond_0

    .line 1082
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getGlobalBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1084
    :cond_0
    return-void
.end method

.method public static setOpacity(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "opacity"    # I

    .prologue
    .line 481
    int-to-float v0, p1

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getOpacity(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 482
    return-void
.end method

.method public static setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    const/4 v5, 0x1

    .line 1091
    if-eqz p0, :cond_0

    .line 1096
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->useBlurEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1098
    const/4 v2, 0x2

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 1099
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getGlobalBgColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    .line 1100
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v5

    .line 1101
    aget-object v2, v1, v5

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1102
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1103
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1109
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getGlobalBgColor()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public static setSpannableExtendedText(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 5
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "margin"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1135
    const/4 v0, 0x4

    .line 1136
    .local v0, "numberOfLines":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1137
    .local v1, "ss":Landroid/text/SpannableString;
    new-instance v2, Lcom/biznessapps/widgets/CustomLeadingMarginSpan;

    invoke-direct {v2, v0, p1}, Lcom/biznessapps/widgets/CustomLeadingMarginSpan;-><init>(II)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1138
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    return-void
.end method

.method public static showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "rootContainer"    # Landroid/view/ViewGroup;
    .param p2, "isAdsContainer"    # Z

    .prologue
    .line 981
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/biznessapps/utils/ViewUtils;->showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    .line 982
    return-void
.end method

.method public static showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V
    .locals 7
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "rootContainer"    # Landroid/view/ViewGroup;
    .param p2, "isAdsContainer"    # Z
    .param p3, "useAlpha"    # Z

    .prologue
    .line 991
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v6

    .line 998
    .local v6, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v6}, Lcom/biznessapps/common/entities/AppSettings;->getAdsId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/biznessapps/common/entities/AppSettings;->useAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v6}, Lcom/biznessapps/common/entities/AppSettings;->getAdsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/biznessapps/common/entities/AppSettings;->isAdmob()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/utils/ViewUtils;->initAds(Landroid/app/Activity;Landroid/view/ViewGroup;ZLjava/lang/String;ZZ)V

    .line 1002
    :cond_0
    return-void
.end method

.method public static showCustomToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 610
    sget v3, Lcom/biznessapps/layout/R$layout;->custom_toast_layout:I

    invoke-static {p0, v3}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 612
    .local v0, "contentView":Landroid/view/ViewGroup;
    sget v3, Lcom/biznessapps/layout/R$id;->toast_textview:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 613
    .local v2, "toastTextView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 617
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 618
    const/16 v3, 0x11

    invoke-virtual {v1, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 619
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 620
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 621
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "messageId"    # I

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 837
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 909
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 910
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "cancelable"    # Z

    .prologue
    .line 869
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 870
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 841
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 842
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 845
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 846
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 849
    :cond_0
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 850
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 852
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 853
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 854
    const/4 v2, -0x1

    sget v3, Lcom/biznessapps/layout/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/biznessapps/utils/ViewUtils$13;

    invoke-direct {v4, p3}, Lcom/biznessapps/utils/ViewUtils$13;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 862
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 863
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .param p4, "cancelable"    # Z

    .prologue
    .line 873
    sget v0, Lcom/biznessapps/layout/R$string;->yes:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .param p4, "cancelable"    # Z
    .param p5, "okMessage"    # Ljava/lang/String;
    .param p6, "cancelMessage"    # Ljava/lang/String;

    .prologue
    .line 878
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 879
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 880
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 882
    :cond_0
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 885
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 886
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 887
    const/4 v2, -0x1

    new-instance v3, Lcom/biznessapps/utils/ViewUtils$14;

    invoke-direct {v3, p3}, Lcom/biznessapps/utils/ViewUtils$14;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, p5, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 893
    if-eqz p4, :cond_2

    .line 894
    const/4 v2, -0x2

    new-instance v3, Lcom/biznessapps/utils/ViewUtils$15;

    invoke-direct {v3}, Lcom/biznessapps/utils/ViewUtils$15;-><init>()V

    invoke-virtual {v1, v2, p6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 901
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 902
    return-void
.end method

.method public static showEmailCollectPropmtIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 10
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    .line 275
    .local v1, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getEmailCollectInfo()Lcom/biznessapps/common/entities/EmailCollectInfo;

    move-result-object v5

    .line 278
    .local v5, "emailInfo":Lcom/biznessapps/common/entities/EmailCollectInfo;
    if-eqz v5, :cond_1

    .line 280
    invoke-virtual {v5, p1}, Lcom/biznessapps/common/entities/EmailCollectInfo;->showForTab(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$layout;->email_collect_layout:I

    invoke-static {v8, v9}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v7

    .line 285
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 286
    sget v8, Lcom/biznessapps/layout/R$string;->collect_email_title:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v5}, Lcom/biznessapps/common/entities/EmailCollectInfo;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 288
    invoke-virtual {v5}, Lcom/biznessapps/common/entities/EmailCollectInfo;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    :cond_0
    sget v8, Lcom/biznessapps/layout/R$id;->email_edit_text:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 291
    .local v4, "emailEditText":Landroid/widget/EditText;
    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->changeDefaultCursorColor(Landroid/widget/TextView;)V

    .line 292
    sget v8, Lcom/biznessapps/layout/R$string;->okay:I

    new-instance v9, Lcom/biznessapps/utils/ViewUtils$4;

    invoke-direct {v9}, Lcom/biznessapps/utils/ViewUtils$4;-><init>()V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    sget v8, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v9, Lcom/biznessapps/utils/ViewUtils$5;

    invoke-direct {v9}, Lcom/biznessapps/utils/ViewUtils$5;-><init>()V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 308
    .local v3, "dialog":Landroid/app/AlertDialog;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 309
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 311
    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 312
    .local v6, "okButton":Landroid/widget/Button;
    sget v8, Lcom/biznessapps/layout/R$string;->okay:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v8, Lcom/biznessapps/utils/ViewUtils$6;

    invoke-direct {v8, v4, v1, v3, p0}, Lcom/biznessapps/utils/ViewUtils$6;-><init>(Landroid/widget/EditText;Lcom/biznessapps/common/entities/AppSettings;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const/4 v8, -0x2

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 351
    .local v2, "cancelButton":Landroid/widget/Button;
    sget v8, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    new-instance v8, Lcom/biznessapps/utils/ViewUtils$7;

    invoke-direct {v8, v1, v3}, Lcom/biznessapps/utils/ViewUtils$7;-><init>(Lcom/biznessapps/common/entities/AppSettings;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelButton":Landroid/widget/Button;
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "emailEditText":Landroid/widget/EditText;
    .end local v6    # "okButton":Landroid/widget/Button;
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static showErrorToast(Landroid/app/Activity;Lcom/biznessapps/common/entities/NetworkResultEntity;)V
    .locals 3
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "networkResult"    # Lcom/biznessapps/common/entities/NetworkResultEntity;

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 581
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->getErrorCode()I

    move-result v1

    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 582
    sget v1, Lcom/biznessapps/layout/R$string;->network_error:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 588
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->getErrorCode()I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    .line 584
    sget v1, Lcom/biznessapps/layout/R$string;->error_occured:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_1
    sget v1, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isShow"    # Z

    .prologue
    const/4 v3, 0x2

    .line 913
    if-nez p1, :cond_0

    .line 924
    :goto_0
    return-void

    .line 916
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 917
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_1

    .line 918
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 919
    invoke-virtual {v0, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 921
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 922
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/EditText;

    .prologue
    .line 927
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 928
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 929
    return-void
.end method

.method public static showMailingListPropmt(Lcom/biznessapps/common/activities/CommonFragmentActivity;)V
    .locals 8
    .param p0, "holdActivity"    # Lcom/biznessapps/common/activities/CommonFragmentActivity;

    .prologue
    const/4 v7, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 233
    .local v2, "context":Landroid/content/Context;
    const-string v5, "ba.application.settings"

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 234
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    .line 235
    .local v1, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    const-string v5, "mailing_dialog"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->isMailingListPrompt()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "mailing_dialog"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v5, Lcom/biznessapps/layout/R$string;->mailing_list:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 240
    sget v5, Lcom/biznessapps/layout/R$string;->mailing_list_question:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 241
    sget v5, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v6, Lcom/biznessapps/utils/ViewUtils$2;

    invoke-direct {v6, v2, p0, v1}, Lcom/biznessapps/utils/ViewUtils$2;-><init>(Landroid/content/Context;Lcom/biznessapps/common/activities/CommonFragmentActivity;Lcom/biznessapps/common/entities/AppSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    sget v5, Lcom/biznessapps/layout/R$string;->no:I

    new-instance v6, Lcom/biznessapps/utils/ViewUtils$3;

    invoke-direct {v6}, Lcom/biznessapps/utils/ViewUtils$3;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 266
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 268
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public static showMoreTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;Lcom/biznessapps/api/UiSettings;)V
    .locals 8
    .param p0, "titleBarRoot"    # Landroid/view/ViewGroup;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 1005
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getMoreTab()Lcom/biznessapps/more/Tab;

    move-result-object v7

    .line 1007
    .local v7, "moreTab":Lcom/biznessapps/more/Tab;
    invoke-virtual {v7}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {v7}, Lcom/biznessapps/more/Tab;->getNavigBarTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 1009
    .local v2, "textColor":I
    invoke-virtual {v7}, Lcom/biznessapps/more/Tab;->getNavigBarTextShadowColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v3

    .line 1010
    .local v3, "textShadowColor":I
    invoke-virtual {v7}, Lcom/biznessapps/more/Tab;->getNavigBarColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v4

    .line 1011
    .local v4, "barColor":I
    invoke-virtual {v7}, Lcom/biznessapps/more/Tab;->getNavTintOpacity()F

    move-result v5

    .line 1012
    .local v5, "tintOpacity":F
    invoke-virtual {v7}, Lcom/biznessapps/more/Tab;->getGlobalHeaderUrl()Ljava/lang/String;

    move-result-object v6

    .local v6, "headerUrl":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    .line 1014
    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/ViewUtils;->initTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;IIIFLjava/lang/String;)V

    .line 1018
    .end local v2    # "textColor":I
    .end local v3    # "textShadowColor":I
    .end local v4    # "barColor":I
    .end local v5    # "tintOpacity":F
    .end local v6    # "headerUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 1016
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/biznessapps/utils/ViewUtils;->showTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;Lcom/biznessapps/api/UiSettings;)V

    goto :goto_0
.end method

.method public static showNetwortErrorToast(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activityContext"    # Landroid/app/Activity;

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->network_error:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public static showNoDataToast(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activityContext"    # Landroid/app/Activity;

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public static showOfflineCachingPropmt(Lcom/biznessapps/common/activities/CommonFragmentActivity;)V
    .locals 8
    .param p0, "holdActivity"    # Lcom/biznessapps/common/activities/CommonFragmentActivity;

    .prologue
    const/4 v7, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 382
    .local v2, "context":Landroid/content/Context;
    const-string v5, "ba.application.settings"

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 383
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    .line 384
    .local v1, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    const-string v5, "offline_caching_dialog"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->isOfflineCachingPrompt()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 386
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v5, Lcom/biznessapps/layout/R$string;->offline_caching_dialog_title:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 388
    sget v5, Lcom/biznessapps/layout/R$string;->offline_caching_dialog_message:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 389
    sget v5, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v6, Lcom/biznessapps/utils/ViewUtils$8;

    invoke-direct {v6}, Lcom/biznessapps/utils/ViewUtils$8;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    sget v5, Lcom/biznessapps/layout/R$string;->no:I

    new-instance v6, Lcom/biznessapps/utils/ViewUtils$9;

    invoke-direct {v6}, Lcom/biznessapps/utils/ViewUtils$9;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 408
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 409
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 410
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "offline_caching_dialog"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public static showShortToast(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "messageId"    # I

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public static showTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;Lcom/biznessapps/api/UiSettings;)V
    .locals 7
    .param p0, "titleBarRoot"    # Landroid/view/ViewGroup;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 1022
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    .line 1023
    .local v2, "textColor":I
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextShadowColor()I

    move-result v3

    .line 1024
    .local v3, "textShadowColor":I
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v4

    .line 1025
    .local v4, "barColor":I
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getNavTintOpacity()F

    move-result v5

    .line 1026
    .local v5, "tintOpacity":F
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getGlobalHeaderUrl()Ljava/lang/String;

    move-result-object v6

    .local v6, "headerUrl":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    .line 1028
    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/ViewUtils;->initTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;IIIFLjava/lang/String;)V

    .line 1029
    return-void
.end method

.method public static showWarningDialog(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "warningMessage"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static showWarningDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "warningMessage"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 215
    sget v2, Lcom/biznessapps/layout/R$string;->okay:I

    new-instance v3, Lcom/biznessapps/utils/ViewUtils$1;

    invoke-direct {v3}, Lcom/biznessapps/utils/ViewUtils$1;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 224
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 225
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 226
    return-void
.end method

.method public static showWebViewData(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "titleResourceId"    # I

    .prologue
    const/4 v3, 0x1

    .line 731
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 732
    .local v0, "dialog":Landroid/app/Dialog;
    sget v2, Lcom/biznessapps/layout/R$layout;->dialog:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 733
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setTitle(I)V

    .line 734
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 736
    sget v2, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 737
    .local v1, "webView":Landroid/webkit/WebView;
    new-instance v2, Lcom/biznessapps/utils/ViewUtils$12;

    invoke-direct {v2, v1}, Lcom/biznessapps/utils/ViewUtils$12;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 748
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 749
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 750
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 751
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 753
    return-void
.end method

.method public static varargs updateButtonsState(Lcom/biznessapps/api/UiSettings;[Landroid/widget/Button;)V
    .locals 5
    .param p0, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p1, "buttons"    # [Landroid/widget/Button;

    .prologue
    .line 1338
    array-length v2, p1

    .line 1340
    .local v2, "length":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1341
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 1342
    aget-object v0, p1, v1

    .line 1344
    .local v0, "button":Landroid/widget/Button;
    if-nez v1, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1346
    invoke-virtual {p0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 1341
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1350
    invoke-virtual {p0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1354
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static updateSearchBarWithColor(ILandroid/widget/ImageView;Landroid/widget/EditText;)V
    .locals 2
    .param p0, "sectionTextColor"    # I
    .param p1, "searchCloseView"    # Landroid/widget/ImageView;
    .param p2, "searchEditText"    # Landroid/widget/EditText;

    .prologue
    .line 103
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 104
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 105
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method public static varargs updateTextViewIconState([Landroid/widget/TextView;)V
    .locals 10
    .param p0, "views"    # [Landroid/widget/TextView;

    .prologue
    .line 1159
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getAppUiSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v1

    .line 1160
    .local v1, "commonSettings":Lcom/biznessapps/api/UiSettings;
    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v4

    .line 1161
    .local v4, "selectedTextColor":I
    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v6

    .line 1162
    .local v6, "unSelectedTextColor":I
    const/4 v5, 0x1

    .line 1163
    .local v5, "topDrawableIndex":I
    move-object v0, p0

    .local v0, "arr$":[Landroid/widget/TextView;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 1164
    .local v7, "view":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v4

    :goto_1
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-static {v8, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 1163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v8, v6

    .line 1164
    goto :goto_1

    .line 1167
    .end local v7    # "view":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public static updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V
    .locals 3
    .param p0, "isSelected"    # Z
    .param p1, "circleView"    # Landroid/widget/ImageView;
    .param p2, "turnView"    # Landroid/widget/ImageView;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    const/4 v2, 0x0

    .line 1142
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1143
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_1

    const/4 v1, 0x5

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1144
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1145
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    if-eqz p0, :cond_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1147
    if-eqz p0, :cond_2

    .line 1148
    sget v1, Lcom/biznessapps/layout/R$drawable;->turn_on:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1149
    invoke-virtual {p3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 1154
    :goto_1
    invoke-virtual {p3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 1155
    return-void

    .line 1143
    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    .line 1152
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;
    .locals 3
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/biznessapps/api/UiSettings;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 203
    .local v1, "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;ILcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    goto :goto_0

    .line 205
    .end local v1    # "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    :cond_0
    return-object p0
.end method
