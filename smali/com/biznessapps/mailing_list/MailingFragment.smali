.class public Lcom/biznessapps/mailing_list/MailingFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "MailingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;
    }
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/mailing_list/MailingListEntity$Category;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesListView:Lcom/biznessapps/widgets/RefreshableListView;

.field private countriesDelegate:Lcom/biznessapps/common/components/WheelDelegate;

.field private dateDelegate:Lcom/biznessapps/common/components/WheelDelegate;

.field private joinButton:Landroid/widget/Button;

.field private logoIcon:Landroid/widget/ImageView;

.field private mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

.field private tabId:Ljava/lang/String;

.field private userBirthdayText:Landroid/widget/TextView;

.field private userCommentsText:Landroid/widget/EditText;

.field private userCountryText:Landroid/widget/TextView;

.field private userDescription:Landroid/widget/TextView;

.field private userEmailText:Landroid/widget/EditText;

.field private userNameText:Landroid/widget/EditText;

.field private userZipText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/mailing_list/MailingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/mailing_list/MailingFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->calculate()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/mailing_list/MailingFragment;)Lcom/biznessapps/common/components/WheelDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mailing_list/MailingFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->dateDelegate:Lcom/biznessapps/common/components/WheelDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/mailing_list/MailingFragment;)Lcom/biznessapps/common/components/WheelDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mailing_list/MailingFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->countriesDelegate:Lcom/biznessapps/common/components/WheelDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/mailing_list/MailingFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mailing_list/MailingFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->categories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/mailing_list/MailingFragment;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mailing_list/MailingFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/biznessapps/mailing_list/MailingFragment;->getSelectedCategories(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculate()V
    .locals 11

    .prologue
    .line 245
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "userName":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userEmailText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "userEmail":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userBirthdayText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "userBirthday":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userZipText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, "userZip":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userCountryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, "userCountry":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userCommentsText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "userComments":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isCorrectEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "tabParam":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/biznessapps/mailing_list/MailingFragment;->joinButton:Landroid/widget/Button;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v0, Lcom/biznessapps/mailing_list/MailingFragment$4;

    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/biznessapps/mailing_list/MailingFragment$4;-><init>(Lcom/biznessapps/mailing_list/MailingFragment;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/mailing_list/MailingFragment$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    .end local v3    # "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    .end local v6    # "tabParam":Ljava/lang/String;
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/mailing_list/MailingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/mailing_list/MailingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getListOfCountries()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v6

    .line 359
    .local v6, "locales":[Ljava/util/Locale;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v1, "countries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 361
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 363
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 366
    .end local v2    # "country":Ljava/lang/String;
    .end local v5    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 367
    return-object v1
.end method

.method private getSelectedCategories(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/mailing_list/MailingListEntity$Category;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/mailing_list/MailingListEntity$Category;>;"
    const/4 v2, 0x0

    .line 297
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/mailing_list/MailingListEntity$Category;

    .line 299
    .local v0, "category":Lcom/biznessapps/mailing_list/MailingListEntity$Category;
    invoke-virtual {v0}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 304
    .end local v0    # "category":Lcom/biznessapps/mailing_list/MailingListEntity$Category;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->joinButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/mailing_list/MailingFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/mailing_list/MailingFragment$1;-><init>(Lcom/biznessapps/mailing_list/MailingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userBirthdayText:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/mailing_list/MailingFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/mailing_list/MailingFragment$2;-><init>(Lcom/biznessapps/mailing_list/MailingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userCountryText:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/mailing_list/MailingFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/mailing_list/MailingFragment$3;-><init>(Lcom/biznessapps/mailing_list/MailingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method private initViews()V
    .locals 18

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->user_name_text:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userNameText:Landroid/widget/EditText;

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->user_email_text:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userEmailText:Landroid/widget/EditText;

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->user_birthday_text:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userBirthdayText:Landroid/widget/TextView;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->user_zip_text:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userZipText:Landroid/widget/EditText;

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->user_country_text:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userCountryText:Landroid/widget/TextView;

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->user_comments_text:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userCommentsText:Landroid/widget/EditText;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->mailing_list_description:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userDescription:Landroid/widget/TextView;

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->join_button:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->joinButton:Landroid/widget/Button;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userNameText:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->mailing_list_user_name_hint:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userEmailText:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->mailing_list_user_email_hint:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userBirthdayText:Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->mailing_list_user_birthday_hint:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userZipText:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->zip:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userCountryText:Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->mailing_list_user_country_hint:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userCommentsText:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->joinButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->join:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->mailing_list_icon_border:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 174
    .local v13, "logoIconBorder":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->mailing_list_logo_icon:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->logoIcon:Landroid/widget/ImageView;

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->mailing_list_description:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 177
    .local v14, "mailingDescriptionLabel":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/RefreshableListView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->categoriesListView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->joinButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/mailing_list/MailingFragment;->joinButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->top_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 185
    .local v16, "topContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->user_name_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 186
    .local v15, "nameContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->email_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 187
    .local v12, "emailContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->birthday_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 188
    .local v9, "birthdayContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->zip_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 189
    .local v17, "zipContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->country_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 190
    .local v11, "countryContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->comments_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 192
    .local v10, "commentsContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v3}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setGlobalBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userBirthdayText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userZipText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userCountryText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userCommentsText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getEvenRowColorTransparent()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getEvenRowColorTransparent()I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getEvenRowColorTransparent()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->wheel_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 212
    .local v2, "dateWheelContainer":Landroid/view/ViewGroup;
    new-instance v1, Lcom/biznessapps/common/components/WheelDelegate;

    invoke-direct {v1}, Lcom/biznessapps/common/components/WheelDelegate;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->dateDelegate:Lcom/biznessapps/common/components/WheelDelegate;

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->dateDelegate:Lcom/biznessapps/common/components/WheelDelegate;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/mailing_list/MailingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userBirthdayText:Landroid/widget/TextView;

    invoke-virtual/range {v1 .. v6}, Lcom/biznessapps/common/components/WheelDelegate;->init(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->wheel_container2:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 216
    .local v4, "countriesWheelContainer":Landroid/view/ViewGroup;
    new-instance v1, Lcom/biznessapps/common/components/WheelDelegate;

    invoke-direct {v1}, Lcom/biznessapps/common/components/WheelDelegate;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/mailing_list/MailingFragment;->countriesDelegate:Lcom/biznessapps/common/components/WheelDelegate;

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/mailing_list/MailingFragment;->countriesDelegate:Lcom/biznessapps/common/components/WheelDelegate;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/mailing_list/MailingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/mailing_list/MailingFragment;->getListOfCountries()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/biznessapps/mailing_list/MailingFragment;->userCountryText:Landroid/widget/TextView;

    invoke-virtual/range {v3 .. v8}, Lcom/biznessapps/common/components/WheelDelegate;->init(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAILING_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/mailing_list/MailingFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/mailing_list/MailingListEntity;

    iput-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    .line 142
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    invoke-virtual {v0}, Lcom/biznessapps/mailing_list/MailingListEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    const-string v0, "mailing_list.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/mailing_list/MailingFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->initAdsWithAlpha()V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    sget v0, Lcom/biznessapps/layout/R$layout;->mailing_list_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->initSettingsData()V

    .line 78
    invoke-direct {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->initViews()V

    .line 79
    invoke-direct {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->initListeners()V

    .line 80
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->loadData()V

    .line 81
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 82
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->openCustomDialogs()V

    .line 83
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->tabId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseMailingList(Ljava/lang/String;)Lcom/biznessapps/mailing_list/MailingListEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    .line 104
    invoke-virtual {p0}, Lcom/biznessapps/mailing_list/MailingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAILING_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/mailing_list/MailingFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 9
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 110
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    if-eqz v6, :cond_3

    .line 111
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    invoke-virtual {v6}, Lcom/biznessapps/mailing_list/MailingListEntity;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userDescription:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    invoke-virtual {v7}, Lcom/biznessapps/mailing_list/MailingListEntity;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->userDescription:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_0
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    invoke-virtual {v6}, Lcom/biznessapps/mailing_list/MailingListEntity;->getCategories()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->categories:Ljava/util/List;

    .line 116
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->categories:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/mailing_list/MailingListEntity$Category;>;"
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->categories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/mailing_list/MailingListEntity$Category;

    .line 119
    .local v3, "item":Lcom/biznessapps/mailing_list/MailingListEntity$Category;
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v5, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v3    # "item":Lcom/biznessapps/mailing_list/MailingListEntity$Category;
    :cond_1
    new-instance v0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/mailing_list/MailingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v6, v5, v7}, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 122
    .local v0, "adapter":Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->categoriesListView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->categoriesListView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v8}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 126
    .end local v0    # "adapter":Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/mailing_list/MailingListEntity$Category;>;"
    :cond_2
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v2

    .line 129
    .local v2, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v4, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 130
    .local v4, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->mailingListInfo:Lcom/biznessapps/mailing_list/MailingListEntity;

    invoke-virtual {v6}, Lcom/biznessapps/mailing_list/MailingListEntity;->getLogoImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/biznessapps/mailing_list/MailingFragment;->logoIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v4, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 133
    invoke-virtual {v4, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 134
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 135
    invoke-virtual {v2, v4}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 137
    .end local v2    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v4    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_3
    return-void
.end method
