.class public Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "MyAddressFragment.java"


# instance fields
.field private account:Lcom/biznessapps/food_ordering/account/AccountEntity;

.field private address2View:Landroid/widget/EditText;

.field private addressView:Landroid/widget/TextView;

.field private chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

.field private emailView:Landroid/widget/EditText;

.field private firstNameView:Landroid/widget/EditText;

.field private lastNameView:Landroid/widget/EditText;

.field private nicknameView:Landroid/widget/EditText;

.field private phoneView:Landroid/widget/EditText;

.field private saveButton:Landroid/widget/Button;

.field private zipView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->saveData()V

    return-void
.end method

.method private isNickNameUsed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, "isUsed":Z
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/storage/StorageKeeper;->getFOAccouns()Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/account/AccountEntity;

    .line 227
    .local v0, "account":Lcom/biznessapps/food_ordering/account/AccountEntity;
    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    const/4 v3, 0x1

    .line 232
    .end local v0    # "account":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :cond_1
    return v3
.end method

.method private saveData()V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 168
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->nicknameView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, "nickName":Ljava/lang/String;
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->addressView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "address1":Ljava/lang/String;
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->address2View:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "address2":Ljava/lang/String;
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->zipView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, "zip":Ljava/lang/String;
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->phoneView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "phone":Ljava/lang/String;
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->firstNameView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "firstName":Ljava/lang/String;
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->lastNameView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "lastName":Ljava/lang/String;
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->emailView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "email":Ljava/lang/String;
    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v10}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 181
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isCorrectEmail(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 182
    invoke-direct {p0, v9}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->isNickNameUsed(Ljava/lang/String;)Z

    move-result v4

    .line 183
    .local v4, "isNickNameUsed":Z
    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    if-eqz v13, :cond_0

    move v5, v6

    .line 184
    .local v5, "isOldAccount":Z
    :goto_0
    if-eqz v5, :cond_1

    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 185
    .local v6, "isOldNickNameChanged":Z
    :goto_1
    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$string;->fo_location_nick_exists:I

    invoke-virtual {p0, v13}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    .end local v4    # "isNickNameUsed":Z
    .end local v5    # "isOldAccount":Z
    .end local v6    # "isOldNickNameChanged":Z
    :goto_2
    return-void

    .restart local v4    # "isNickNameUsed":Z
    :cond_0
    move v5, v12

    .line 183
    goto :goto_0

    .restart local v5    # "isOldAccount":Z
    :cond_1
    move v6, v12

    .line 184
    goto :goto_1

    .line 187
    .restart local v6    # "isOldNickNameChanged":Z
    :cond_2
    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$string;->fo_location_nick_exists:I

    invoke-virtual {p0, v13}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 191
    :cond_3
    if-eqz v5, :cond_4

    .line 192
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v12

    iget-object v13, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/biznessapps/storage/StorageKeeper;->deleteFOAccount(Ljava/lang/String;)V

    .line 194
    :cond_4
    new-instance v8, Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-direct {v8}, Lcom/biznessapps/food_ordering/account/AccountEntity;-><init>()V

    .line 195
    .local v8, "newAccount":Lcom/biznessapps/food_ordering/account/AccountEntity;
    invoke-virtual {v8, v9}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setNickName(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v8, v3}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setFirstName(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v8, v7}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLastName(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v8, v2}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setEmail(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v8, v10}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setPhone(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v8, v11}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setZipcode(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v8, v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress1(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v8, v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress2(Ljava/lang/String;)V

    .line 204
    iget-object v12, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v12, :cond_6

    .line 205
    iget-object v12, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v12}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLatitude(Ljava/lang/String;)V

    .line 206
    iget-object v12, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v12}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLongitude(Ljava/lang/String;)V

    .line 211
    :cond_5
    :goto_3
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/biznessapps/storage/StorageKeeper;->addFOAccount(Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    .line 212
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$string;->successfully_saved:I

    invoke-static {v12, v13}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    .line 213
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto :goto_2

    .line 207
    :cond_6
    if-eqz v5, :cond_5

    .line 208
    iget-object v12, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v12}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLatitude()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLatitude(Ljava/lang/String;)V

    .line 209
    iget-object v12, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v12}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLongitude()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLongitude(Ljava/lang/String;)V

    goto :goto_3

    .line 216
    .end local v4    # "isNickNameUsed":Z
    .end local v5    # "isOldAccount":Z
    .end local v6    # "isOldNickNameChanged":Z
    .end local v8    # "newAccount":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :cond_7
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {p0, v13}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 219
    :cond_8
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    invoke-static {v12, v13}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto/16 :goto_2
.end method

.method private updateData()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    if-eqz v0, :cond_7

    .line 140
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->nicknameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->phoneView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->firstNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->lastNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->emailView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->addressView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->address2View:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getZipcode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->zipView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getZipcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_7
    return-void
.end method


# virtual methods
.method protected initSettingsData()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->initSettingsData()V

    .line 74
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/account/AccountEntity;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->account:Lcom/biznessapps/food_ordering/account/AccountEntity;

    .line 75
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 87
    sget v0, Lcom/biznessapps/layout/R$id;->nickname_editview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->nicknameView:Landroid/widget/EditText;

    .line 88
    sget v0, Lcom/biznessapps/layout/R$id;->first_name_editview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->firstNameView:Landroid/widget/EditText;

    .line 89
    sget v0, Lcom/biznessapps/layout/R$id;->last_name_editview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->lastNameView:Landroid/widget/EditText;

    .line 90
    sget v0, Lcom/biznessapps/layout/R$id;->phone_editview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->phoneView:Landroid/widget/EditText;

    .line 91
    sget v0, Lcom/biznessapps/layout/R$id;->email_editview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->emailView:Landroid/widget/EditText;

    .line 92
    sget v0, Lcom/biznessapps/layout/R$id;->address_editview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->addressView:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/biznessapps/layout/R$id;->address2_editview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->address2View:Landroid/widget/EditText;

    .line 94
    sget v0, Lcom/biznessapps/layout/R$id;->zip_editview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->zipView:Landroid/widget/EditText;

    .line 96
    sget v0, Lcom/biznessapps/layout/R$id;->nickname_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->nicknameView:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 97
    sget v0, Lcom/biznessapps/layout/R$id;->zip_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->zipView:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 98
    sget v0, Lcom/biznessapps/layout/R$id;->address_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->addressView:Landroid/widget/TextView;

    invoke-static {v0, v1, v3}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 99
    sget v0, Lcom/biznessapps/layout/R$id;->address2_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->address2View:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 100
    sget v0, Lcom/biznessapps/layout/R$id;->firstname_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->firstNameView:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 101
    sget v0, Lcom/biznessapps/layout/R$id;->lastname_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->lastNameView:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 102
    sget v0, Lcom/biznessapps/layout/R$id;->phone_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->phoneView:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 103
    sget v0, Lcom/biznessapps/layout/R$id;->email_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->emailView:Landroid/widget/EditText;

    invoke-static {v0, v1, v3}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 105
    sget v0, Lcom/biznessapps/layout/R$id;->nickname_label_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_location_nickname:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    sget v0, Lcom/biznessapps/layout/R$id;->address_label_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_address:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    sget v0, Lcom/biznessapps/layout/R$id;->zip_label_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->zip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    sget v0, Lcom/biznessapps/layout/R$id;->address2_label_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_apt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    sget v0, Lcom/biznessapps/layout/R$id;->first_name_label_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->first_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    sget v0, Lcom/biznessapps/layout/R$id;->last_name_label_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->last_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    sget v0, Lcom/biznessapps/layout/R$id;->phone_label_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->phone:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    sget v0, Lcom/biznessapps/layout/R$id;->email_label_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->addressView:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment$1;-><init>(Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v0, Lcom/biznessapps/layout/R$id;->save_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->saveButton:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->saveButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment$2;-><init>(Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->saveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 135
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->saveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->save:I

    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method protected loadBgUrl()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->bgUrl:Ljava/lang/String;

    .line 80
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->loadBgUrl()V

    .line 81
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    packed-switch p2, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    const-string v2, "ITEM_EXTRA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/location/entities/LocationEntity;

    .line 61
    .local v1, "newChosenLocation":Lcom/biznessapps/location/entities/LocationEntity;
    if-eqz v1, :cond_0

    .line 63
    iput-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    .line 64
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getAddress1()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->addressView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_my_address:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->root:Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->initSettingsData()V

    .line 49
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->loadBgUrl()V

    .line 51
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->updateData()V

    .line 52
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method
