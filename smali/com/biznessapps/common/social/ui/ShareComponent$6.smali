.class final Lcom/biznessapps/common/social/ui/ShareComponent$6;
.super Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;
.source "ShareComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharingOptionSelected(I)V
    .locals 5
    .param p1, "sharingOptionId"    # I

    .prologue
    .line 224
    sparse-switch p1, :sswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 226
    :sswitch_0
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmapPath:Landroid/net/Uri;

    iget-object v4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareImageViaEmail(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 229
    :sswitch_1
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmapPath:Landroid/net/Uri;

    iget-object v4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareImageViaSMS(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 232
    :sswitch_2
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmapPath:Landroid/net/Uri;

    iget-object v4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareImageViaFacebook(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 235
    :sswitch_3
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmapPath:Landroid/net/Uri;

    iget-object v4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareImageViaTwitter(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 238
    :sswitch_4
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmapPath:Landroid/net/Uri;

    iget-object v4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareImageViaGooglePlus(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 241
    :sswitch_5
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->bitmapPath:Landroid/net/Uri;

    iget-object v4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$6;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/biznessapps/common/social/ui/ShareComponent;->saveImageToGallery(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 224
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
