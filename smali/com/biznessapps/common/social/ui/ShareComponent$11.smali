.class final Lcom/biznessapps/common/social/ui/ShareComponent$11;
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
    .line 402
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharingOptionSelected(I)V
    .locals 3
    .param p1, "sharingOptionId"    # I

    .prologue
    .line 405
    sparse-switch p1, :sswitch_data_0

    .line 425
    :goto_0
    return-void

    .line 407
    :sswitch_0
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareTextViaEmail(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 410
    :sswitch_1
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareTextViaSMS(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 413
    :sswitch_2
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareTextViaFacebook(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 416
    :sswitch_3
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareTextViaTwitter(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 419
    :sswitch_4
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$11;->listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/common/social/ui/ShareComponent;->shareTextViaGooglePlus(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    goto :goto_0

    .line 422
    :sswitch_5
    const-string v0, "It must be image sharing!"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 405
    nop

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
