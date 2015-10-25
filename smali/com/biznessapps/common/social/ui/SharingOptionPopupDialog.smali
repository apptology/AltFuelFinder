.class public Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;
.super Ljava/lang/Object;
.source "SharingOptionPopupDialog.java"


# instance fields
.field private mBTShareByEmail:Landroid/widget/Button;

.field private mBTShareByFacebook:Landroid/widget/Button;

.field private mBTShareByGooglePlus:Landroid/widget/Button;

.field private mBTShareBySMS:Landroid/widget/Button;

.field private mBTShareBySaveToPhotoAlbum:Landroid/widget/Button;

.field private mBTShareByTwitter:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

.field private mShareOptionClickListener:Landroid/view/View$OnClickListener;

.field private mVisibleOptions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visibleOptions"    # I
    .param p3, "listener"    # Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$2;-><init>(Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mShareOptionClickListener:Landroid/view/View$OnClickListener;

    .line 36
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    .line 38
    iput p2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mVisibleOptions:I

    .line 40
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->initUI()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;)Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mListener:Lcom/biznessapps/common/social/ui/OnSharingOptionSelectedListener;

    return-object v0
.end method

.method private initUI()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/biznessapps/layout/R$layout;->sharing_options_layout:I

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 57
    sget v2, Lcom/biznessapps/layout/R$string;->share:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 58
    sget v2, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v3, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog$1;-><init>(Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mDialog:Landroid/app/AlertDialog;

    .line 69
    sget v2, Lcom/biznessapps/layout/R$id;->share_by_email_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByEmail:Landroid/widget/Button;

    .line 70
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByEmail:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByEmail:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mShareOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v2, Lcom/biznessapps/layout/R$id;->share_by_sms_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySMS:Landroid/widget/Button;

    .line 74
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySMS:Landroid/widget/Button;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySMS:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mShareOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v2, Lcom/biznessapps/layout/R$id;->share_on_facebook_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByFacebook:Landroid/widget/Button;

    .line 78
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByFacebook:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByFacebook:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mShareOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v2, Lcom/biznessapps/layout/R$id;->share_on_twitter_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByTwitter:Landroid/widget/Button;

    .line 82
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByTwitter:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByTwitter:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mShareOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v2, Lcom/biznessapps/layout/R$id;->share_by_google_plus_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByGooglePlus:Landroid/widget/Button;

    .line 86
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByGooglePlus:Landroid/widget/Button;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByGooglePlus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mShareOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v2, Lcom/biznessapps/layout/R$id;->save_to_photo_album:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySaveToPhotoAlbum:Landroid/widget/Button;

    .line 90
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySaveToPhotoAlbum:Landroid/widget/Button;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySaveToPhotoAlbum:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mShareOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByEmail:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->share_by_email:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySMS:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->share_by_sms:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 95
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByFacebook:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->share_on_facebook:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 96
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByTwitter:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->share_on_twitter:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 97
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByGooglePlus:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->share_on_google_plus:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 98
    iget-object v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySaveToPhotoAlbum:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->save_to_album:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 100
    iget v2, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mVisibleOptions:I

    invoke-direct {p0, v2}, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->showOptions(I)V

    .line 101
    return-void
.end method

.method private showOptions(I)V
    .locals 5
    .param p1, "visibleOptions"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 104
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByEmail:Landroid/widget/Button;

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isPhoneDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySMS:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    :goto_1
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySMS:Landroid/widget/Button;

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isPhoneDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByFacebook:Landroid/widget/Button;

    and-int/lit8 v0, p1, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByTwitter:Landroid/widget/Button;

    and-int/lit8 v0, p1, 0x8

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v3, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareByGooglePlus:Landroid/widget/Button;

    and-int/lit8 v0, p1, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySaveToPhotoAlbum:Landroid/widget/Button;

    and-int/lit8 v3, p1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    return-void

    :cond_0
    move v0, v2

    .line 104
    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mBTShareBySMS:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 111
    goto :goto_2

    :cond_3
    move v0, v2

    .line 113
    goto :goto_3

    :cond_4
    move v0, v2

    .line 114
    goto :goto_4

    :cond_5
    move v0, v2

    .line 115
    goto :goto_5

    :cond_6
    move v1, v2

    .line 116
    goto :goto_6
.end method


# virtual methods
.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SharingOptionPopupDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method
