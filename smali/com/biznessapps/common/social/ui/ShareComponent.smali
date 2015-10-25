.class public Lcom/biznessapps/common/social/ui/ShareComponent;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARACTER_LIMIT:I = 0xfa

.field private static final LOG_TAG:Ljava/lang/String; = "ShareComponent"

.field public static final SHARE_OPTION_ALL:I = 0xef

.field public static final SHARE_OPTION_ALL_EXCEPT_IMAGE:I = 0xcf

.field public static final SHARE_OPTION_EMAIL:I = 0x1

.field public static final SHARE_OPTION_FACEBOOK:I = 0x4

.field public static final SHARE_OPTION_GOOGLEPLUS:I = 0x10

.field public static final SHARE_OPTION_NONE:I = 0x0

.field public static final SHARE_OPTION_SAVETOPHOTOALBUM:I = 0x20

.field public static final SHARE_OPTION_SMS:I = 0x2

.field public static final SHARE_OPTION_TWITTER:I = 0x8

.field private static mImageSharingOptionSelectedListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

.field private static mTextSharingOptionSelectedListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/biznessapps/common/social/ui/ShareComponent$6;

    invoke-direct {v0}, Lcom/biznessapps/common/social/ui/ShareComponent$6;-><init>()V

    sput-object v0, Lcom/biznessapps/common/social/ui/ShareComponent;->mImageSharingOptionSelectedListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    .line 402
    new-instance v0, Lcom/biznessapps/common/social/ui/ShareComponent$11;

    invoke-direct {v0}, Lcom/biznessapps/common/social/ui/ShareComponent$11;-><init>()V

    sput-object v0, Lcom/biznessapps/common/social/ui/ShareComponent;->mTextSharingOptionSelectedListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private static _showSharingOptionDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 4
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "visibleOptions"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "bitmapPath"    # Landroid/net/Uri;
    .param p5, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "dialog":Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;
    const/4 v1, 0x0

    .line 195
    .local v1, "optionSelectedListener":Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;
    if-nez p3, :cond_1

    .line 196
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 198
    new-instance v0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    .end local v0    # "dialog":Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;
    sget-object v2, Lcom/biznessapps/common/social/ui/ShareComponent;->mTextSharingOptionSelectedListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    invoke-direct {v0, p0, p1, v2}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;-><init>(Landroid/content/Context;ILcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;)V

    .line 199
    .restart local v0    # "dialog":Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;
    sget-object v1, Lcom/biznessapps/common/social/ui/ShareComponent;->mTextSharingOptionSelectedListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    .line 204
    :goto_1
    iput-object p0, v1, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->activity:Landroid/app/Activity;

    .line 205
    iput-object p2, v1, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->text:Ljava/lang/String;

    .line 206
    iput-object p3, v1, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->bitmap:Landroid/graphics/Bitmap;

    .line 207
    iput-object p4, v1, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->bitmapPath:Landroid/net/Uri;

    .line 208
    iput-object p5, v1, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .line 210
    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/common/social/ui/ShareComponent$5;

    invoke-direct {v3, p5}, Lcom/biznessapps/common/social/ui/ShareComponent$5;-><init>(Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 216
    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 218
    return-void

    .line 196
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    .end local v0    # "dialog":Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;
    sget-object v2, Lcom/biznessapps/common/social/ui/ShareComponent;->mImageSharingOptionSelectedListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    invoke-direct {v0, p0, p1, v2}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;-><init>(Landroid/content/Context;ILcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;)V

    .line 202
    .restart local v0    # "dialog":Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;
    sget-object v1, Lcom/biznessapps/common/social/ui/ShareComponent;->mImageSharingOptionSelectedListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    goto :goto_1
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/biznessapps/common/social/ui/ShareComponent;->setMessageCounterText(Ljava/lang/String;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/graphics/Bitmap;
    .param p4, "x4"    # Landroid/net/Uri;
    .param p5, "x5"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 54
    invoke-static/range {p0 .. p5}, Lcom/biznessapps/common/social/ui/ShareComponent;->_showSharingOptionDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    invoke-static/range {p0 .. p5}, Lcom/biznessapps/common/social/ui/ShareComponent;->formAndSendEmailIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static formAndSendEmailIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;
    .param p4, "bitmapPath"    # Ljava/lang/String;
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x1

    .line 278
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    .line 281
    .local v0, "cacher":Lcom/biznessapps/api/CachingManager;
    if-eqz p1, :cond_1

    .line 282
    sget v6, Lcom/biznessapps/layout/R$string;->share_image_url_with_app_description:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "description":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "emailIntent":Landroid/content/Intent;
    const-string v6, "text/html"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    if-nez p1, :cond_2

    .line 295
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v3, "file":Ljava/io/File;
    const-string v6, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 297
    const-string v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    const-string v6, ""

    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 307
    invoke-static {p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfShares()V

    .line 308
    if-eqz p3, :cond_0

    .line 309
    invoke-interface {p3, v9}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingCompleted(I)V

    .line 311
    :cond_0
    return-void

    .line 285
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "emailIntent":Landroid/content/Intent;
    :cond_1
    move-object v1, p2

    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_0

    .line 299
    .restart local v2    # "emailIntent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "Attachment"

    const/4 v8, 0x0

    invoke-static {v6, p5, v7, v8}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 301
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 302
    const-string v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static saveImageToGallery(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapPath"    # Landroid/net/Uri;
    .param p4, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 391
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v2, "mediaScanIntent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/biznessapps/utils/CommonUtils;->createImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 395
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    if-eqz p4, :cond_0

    const/16 v3, 0x20

    invoke-interface {p4, v3}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingCompleted(I)V

    .line 399
    :cond_0
    return-void
.end method

.method private static setMessageCounterText(Ljava/lang/String;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "limit"    # I

    .prologue
    .line 147
    if-eqz p0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 150
    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static shareImageViaEmail(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapPath"    # Landroid/net/Uri;
    .param p4, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 248
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "orgPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 250
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "scheme":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v0, "http"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    invoke-static {p0}, Lcom/biznessapps/common/BitlyManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/BitlyManager;

    move-result-object v8

    new-instance v0, Lcom/biznessapps/common/social/ui/ShareComponent$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent$7;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v4, v0}, Lcom/biznessapps/common/BitlyManager;->getShortURL(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)Z

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->formAndSendEmailIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static shareImageViaFacebook(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapPath"    # Landroid/net/Uri;
    .param p4, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 334
    invoke-static {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/biznessapps/common/social/ui/ShareComponent$8;

    invoke-direct {v2, p0, p4}, Lcom/biznessapps/common/social/ui/ShareComponent$8;-><init>(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    .line 351
    return-void
.end method

.method public static shareImageViaGooglePlus(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapPath"    # Landroid/net/Uri;
    .param p4, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 375
    invoke-static {p0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/common/social/ui/ShareComponent$10;

    invoke-direct {v1, p0, p4}, Lcom/biznessapps/common/social/ui/ShareComponent$10;-><init>(Landroid/content/Context;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    .line 388
    return-void
.end method

.method public static shareImageViaSMS(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapPath"    # Landroid/net/Uri;
    .param p4, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 316
    :try_start_0
    const-string v2, "biz-"

    const-string v3, ".png"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 317
    .local v1, "tempFile":Ljava/io/File;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 318
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 323
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "tempFile":Ljava/io/File;
    :goto_0
    invoke-static {p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfShares()V

    .line 330
    if-eqz p4, :cond_0

    const/4 v2, 0x2

    invoke-interface {p4, v2}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingCompleted(I)V

    .line 331
    :cond_0
    return-void

    .line 325
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static shareImageViaTwitter(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapPath"    # Landroid/net/Uri;
    .param p4, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 354
    invoke-static {p0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/biznessapps/common/social/ui/ShareComponent$9;

    invoke-direct {v2, p0, p4}, Lcom/biznessapps/common/social/ui/ShareComponent$9;-><init>(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    .line 372
    return-void
.end method

.method public static shareTextViaEmail(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfShares()V

    .line 432
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingCompleted(I)V

    .line 433
    :cond_0
    return-void
.end method

.method public static shareTextViaFacebook(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 453
    invoke-static {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/common/social/ui/ShareComponent$12;

    invoke-direct {v1, p0, p2, p0, p1}, Lcom/biznessapps/common/social/ui/ShareComponent$12;-><init>(Landroid/content/Context;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    .line 488
    return-void
.end method

.method public static shareTextViaGooglePlus(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 529
    invoke-static {p0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/common/social/ui/ShareComponent$14;

    invoke-direct {v1, p0, p0, p2, p1}, Lcom/biznessapps/common/social/ui/ShareComponent$14;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    .line 565
    return-void
.end method

.method public static shareTextViaSMS(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 437
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 448
    :goto_0
    invoke-static {p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfShares()V

    .line 449
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingCompleted(I)V

    .line 450
    :cond_0
    return-void

    .line 443
    .end local v0    # "sendIntent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .restart local v0    # "sendIntent":Landroid/content/Intent;
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static shareTextViaTwitter(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 491
    invoke-static {p0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/common/social/ui/ShareComponent$13;

    invoke-direct {v1, p0, p0, p2, p1}, Lcom/biznessapps/common/social/ui/ShareComponent$13;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    .line 526
    return-void
.end method

.method public static showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;)V
    .locals 6
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;

    .prologue
    .line 75
    sget v2, Lcom/biznessapps/layout/R$string;->sharing:I

    sget v3, Lcom/biznessapps/layout/R$string;->post:I

    const/4 v4, 0x0

    const/16 v5, 0xfa

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;IILjava/lang/String;I)V

    .line 76
    return-void
.end method

.method public static showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;I)V
    .locals 6
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;
    .param p2, "txtLimit"    # I

    .prologue
    .line 83
    sget v2, Lcom/biznessapps/layout/R$string;->sharing:I

    sget v3, Lcom/biznessapps/layout/R$string;->post:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;IILjava/lang/String;I)V

    .line 84
    return-void
.end method

.method public static showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;IILjava/lang/String;I)V
    .locals 10
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;
    .param p2, "dialogTitleResId"    # I
    .param p3, "buttonPostTitleResId"    # I
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "txtLimit"    # I

    .prologue
    .line 92
    const/16 v8, 0xfa

    invoke-static {p5, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 93
    .local v6, "textLimit":I
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v8, Lcom/biznessapps/layout/R$layout;->sharing_text_dialog:I

    invoke-static {v2, v8}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v7

    .line 96
    .local v7, "view":Landroid/view/View;
    sget v8, Lcom/biznessapps/layout/R$id;->comment_edit_text:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 97
    .local v1, "commentEditView":Landroid/widget/EditText;
    if-eqz p4, :cond_0

    .line 98
    invoke-virtual {v1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    sget v8, Lcom/biznessapps/layout/R$id;->message_countdown:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 102
    .local v5, "messageCounterView":Landroid/widget/TextView;
    const/4 v8, 0x1

    new-array v4, v8, [Landroid/text/InputFilter;

    .line 103
    .local v4, "fArray":[Landroid/text/InputFilter;
    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v4, v8

    .line 104
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 105
    new-instance v8, Lcom/biznessapps/common/social/ui/ShareComponent$1;

    invoke-direct {v8, v1, v5, v6}, Lcom/biznessapps/common/social/ui/ShareComponent$1;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 124
    new-instance v8, Lcom/biznessapps/common/social/ui/ShareComponent$2;

    invoke-direct {v8, v1, p1}, Lcom/biznessapps/common/social/ui/ShareComponent$2;-><init>(Landroid/widget/EditText;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;)V

    invoke-virtual {v0, p3, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    sget v8, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v9, Lcom/biznessapps/common/social/ui/ShareComponent$3;

    invoke-direct {v9}, Lcom/biznessapps/common/social/ui/ShareComponent$3;-><init>()V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5, v6}, Lcom/biznessapps/common/social/ui/ShareComponent;->setMessageCounterText(Ljava/lang/String;Landroid/widget/TextView;I)V

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 143
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 144
    return-void
.end method

.method public static showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;Ljava/lang/String;)V
    .locals 6
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 79
    sget v2, Lcom/biznessapps/layout/R$string;->sharing:I

    sget v3, Lcom/biznessapps/layout/R$string;->post:I

    const/16 v5, 0xfa

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;IILjava/lang/String;I)V

    .line 80
    return-void
.end method

.method public static showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;Ljava/lang/String;I)V
    .locals 6
    .param p0, "holdActivity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "txtLimit"    # I

    .prologue
    .line 87
    sget v2, Lcom/biznessapps/layout/R$string;->sharing:I

    sget v3, Lcom/biznessapps/layout/R$string;->post:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;IILjava/lang/String;I)V

    .line 88
    return-void
.end method

.method public static showSharingOptionDialog(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    .line 160
    return-void
.end method

.method public static showSharingOptionDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "visibleOptions"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "bitmapPath"    # Landroid/net/Uri;
    .param p5, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 188
    invoke-static/range {p0 .. p5}, Lcom/biznessapps/common/social/ui/ShareComponent;->_showSharingOptionDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    .line 189
    return-void
.end method

.method public static showSharingOptionDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 164
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 167
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/common/social/ui/ShareComponent$4;

    invoke-direct {v2, v0, p0, p1}, Lcom/biznessapps/common/social/ui/ShareComponent$4;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    invoke-virtual {v1, p0, v2}, Lcom/biznessapps/api/AppCore;->getAppSharingText(Landroid/content/Context;Lcom/biznessapps/api/AsyncCallback;)V

    .line 184
    return-void
.end method
