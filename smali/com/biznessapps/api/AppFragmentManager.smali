.class public Lcom/biznessapps/api/AppFragmentManager;
.super Ljava/lang/Object;
.source "AppFragmentManager.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFragmentByController(Landroid/content/Intent;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p0, "comingIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 105
    const-string v2, "TAB_FRAGMENT"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "fragmentExtra":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "View controller can\'t be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, "fragmentToLoad":Landroid/support/v4/app/Fragment;
    const-string v2, "contentchangerviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    new-instance v1, Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 112
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "contentchangerviewcontroller"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    .line 333
    :cond_1
    :goto_0
    return-object v1

    .line 113
    :cond_2
    const-string v2, "FoodOrderingViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    new-instance v1, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 115
    :cond_3
    const-string v2, "FO_ACCOUNT_CONTROLLER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    new-instance v1, Lcom/biznessapps/food_ordering/account/AccountFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/account/AccountFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 117
    :cond_4
    const-string v2, "FO_DETAIL_CONTROLLER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    const-string v2, "FOOD_ORDER_CART_CONTROLLER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    new-instance v1, Lcom/biznessapps/food_ordering/cart/CartFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/cart/CartFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 121
    :cond_5
    const-string v2, "FO_CONFIRMATION_PAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    new-instance v1, Lcom/biznessapps/food_ordering/ConfirmationFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/ConfirmationFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 123
    :cond_6
    const-string v2, "FO_MY_ADDRESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    new-instance v1, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 125
    :cond_7
    const-string v2, "FO_MY_ADDRESSES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 126
    new-instance v1, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 127
    :cond_8
    const-string v2, "FO_PAST_ORDERS_DETAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 128
    new-instance v1, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 129
    :cond_9
    const-string v2, "FO_PAST_ORDERS_LIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 130
    new-instance v1, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 131
    :cond_a
    const-string v2, "FO_LOCATIONS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 132
    new-instance v1, Lcom/biznessapps/food_ordering/locations/LocationsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 133
    :cond_b
    const-string v2, "FO_CATEGORIES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 134
    new-instance v1, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 135
    :cond_c
    const-string v2, "FO_CATEGORIES_ITEMS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 136
    new-instance v1, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 137
    :cond_d
    const-string v2, "FO_CATEGORIES_ITEM_DETAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 138
    new-instance v1, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 139
    :cond_e
    const-string v2, "FO_LOCATION_DETAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 140
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 141
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "FO_LOCATION_DETAIL"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_f
    const-string v2, "FO_LOCATIONS_MAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 143
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 144
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "FO_LOCATIONS_MAP"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_10
    const-string v2, "FO_LOCATION_CHOOSER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 146
    new-instance v1, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 147
    :cond_11
    const-string v2, "PROTECTED_VIEW_CONTROLLER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 148
    new-instance v1, Lcom/biznessapps/fragments/single/ProtectedAppFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 149
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "PROTECTED_VIEW_CONTROLLER"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_12
    const-string v2, "GLOBAL_SEARCH_VIEW_CONTROLLER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 151
    new-instance v1, Lcom/biznessapps/search/GlobalSearchFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/search/GlobalSearchFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 152
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "GLOBAL_SEARCH_VIEW_CONTROLLER"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_13
    const-string v2, "webtierviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 154
    new-instance v1, Lcom/biznessapps/web/WebViewTiersFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/web/WebViewTiersFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 155
    :cond_14
    const-string v2, "webviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 156
    new-instance v1, Lcom/biznessapps/web/WebViewFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/web/WebViewFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 157
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "webviewcontroller"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_15
    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 159
    new-instance v1, Lcom/biznessapps/web/WebViewFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/web/WebViewFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 160
    :cond_16
    const-string v2, "messagesviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 161
    new-instance v1, Lcom/biznessapps/messages/MessageListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/messages/MessageListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 162
    :cond_17
    const-string v2, "VoiceRecordingViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 163
    new-instance v1, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 164
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "VoiceRecordingViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_18
    const-string v2, "FanWallViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 166
    new-instance v1, Lcom/biznessapps/fan_wall/FanWallFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fan_wall/FanWallFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 167
    :cond_19
    const-string v2, "FAN_ADD_COMMENT_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 168
    new-instance v1, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 169
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "FAN_ADD_COMMENT_FRAGMENT"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_1a
    const-string v2, "rssfeedviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 171
    new-instance v1, Lcom/biznessapps/rss/RssListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/rss/RssListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 172
    :cond_1b
    const-string v2, "tipcalculatorviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 173
    new-instance v1, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 174
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "tipcalculatorviewcontroller"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_1c
    const-string v2, "GalleryViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "GalleryListViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "GalleryCoverFlowViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 178
    :cond_1d
    new-instance v1, Lcom/biznessapps/gallery/GalleryFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/gallery/GalleryFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 179
    :cond_1e
    const-string v2, "GALLERY_LISTVIEW_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 180
    new-instance v1, Lcom/biznessapps/gallery/GalleryListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/gallery/GalleryListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 181
    :cond_1f
    const-string v2, "picasaviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 182
    new-instance v1, Lcom/biznessapps/gallery/GalleryFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/gallery/GalleryFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 183
    check-cast v2, Lcom/biznessapps/gallery/GalleryFragment;

    invoke-virtual {v2, v3}, Lcom/biznessapps/gallery/GalleryFragment;->setPicasaUsed(Z)V

    goto/16 :goto_0

    .line 184
    :cond_20
    const-string v2, "FlickrPhotoStreamCoverflowViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "FlickrPhotoStreamGalleryViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "FlickrViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 187
    :cond_21
    new-instance v1, Lcom/biznessapps/gallery/GalleryFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/gallery/GalleryFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 188
    check-cast v2, Lcom/biznessapps/gallery/GalleryFragment;

    invoke-virtual {v2, v3}, Lcom/biznessapps/gallery/GalleryFragment;->setFlickrUsed(Z)V

    goto/16 :goto_0

    .line 189
    :cond_22
    const-string v2, "InstagramViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 190
    new-instance v1, Lcom/biznessapps/gallery/GalleryFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/gallery/GalleryFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 191
    check-cast v2, Lcom/biznessapps/gallery/GalleryFragment;

    invoke-virtual {v2, v3}, Lcom/biznessapps/gallery/GalleryFragment;->setInstagramUsed(Z)V

    goto/16 :goto_0

    .line 192
    :cond_23
    const-string v2, "AroundUsViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 193
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 194
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "AroundUsViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_24
    const-string v2, "AROUND_US_DETAIL_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 196
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 197
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "AROUND_US_DETAIL_FRAGMENT"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_25
    const-string v2, "locationviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "locationlistviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 200
    :cond_26
    new-instance v1, Lcom/biznessapps/contact/ContactsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/contact/ContactsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 201
    :cond_27
    const-string v2, "CarFinderViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 202
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 203
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "CarFinderViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_28
    const-string v2, "FanWallManagerViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 205
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 206
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "FanWallManagerViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_29
    const-string v2, "CONTACTS_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 208
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 209
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "CONTACTS_FRAGMENT"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_2a
    const-string v2, "QRCouponViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 211
    new-instance v1, Lcom/biznessapps/coupons/QrCouponsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/coupons/QrCouponsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 212
    :cond_2b
    const-string v2, "couponsviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 213
    new-instance v1, Lcom/biznessapps/coupons/GpsCouponsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/coupons/GpsCouponsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 214
    :cond_2c
    const-string v2, "COUPON_DETAIL_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 215
    new-instance v1, Lcom/biznessapps/coupons/CouponDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/coupons/CouponDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 216
    :cond_2d
    const-string v2, "QRViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 217
    new-instance v1, Lcom/biznessapps/qr/QrScannerFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/qr/QrScannerFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 218
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "QRViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_2e
    const-string v2, "QR_SCANNER_HELP_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 220
    new-instance v1, Lcom/biznessapps/qr/QrScannerHelpFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/qr/QrScannerHelpFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 221
    :cond_2f
    const-string v2, "PodcastViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 222
    new-instance v1, Lcom/biznessapps/podcasts/PodcastsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/podcasts/PodcastsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 223
    :cond_30
    const-string v2, "YoutubeViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 224
    new-instance v1, Lcom/biznessapps/youtube/YoutubeListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/youtube/YoutubeListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 225
    :cond_31
    const-string v2, "YOUTUBE_SINGLE_VIEW_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 226
    new-instance v1, Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 227
    :cond_32
    const-string v2, "MailingListViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 228
    new-instance v1, Lcom/biznessapps/mailing_list/MailingFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/mailing_list/MailingFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 229
    :cond_33
    const-string v2, "StatRecorderViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 230
    new-instance v1, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/flexible_counter/FlexibleCounterFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 231
    :cond_34
    const-string v2, "EmailPhotoViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 232
    new-instance v1, Lcom/biznessapps/email_photo/EmailPhotoFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/email_photo/EmailPhotoFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 233
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "EmailPhotoViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_35
    const-string v2, "repaymentviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 235
    new-instance v1, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 236
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "repaymentviewcontroller"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_36
    const-string v2, "RESELLER_DASHBOARD_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 238
    new-instance v1, Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 239
    :cond_37
    const-string v2, "infodetailviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 240
    new-instance v1, Lcom/biznessapps/info_items/InfoDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/info_items/InfoDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 241
    :cond_38
    const-string v2, "infosectionviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 242
    new-instance v1, Lcom/biznessapps/info_items/InfoSectionsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/info_items/InfoSectionsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 243
    :cond_39
    const-string v2, "infoitemsviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 244
    new-instance v1, Lcom/biznessapps/info_items/InfoItemsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/info_items/InfoItemsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 245
    :cond_3a
    const-string v2, "eventsviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 246
    new-instance v1, Lcom/biznessapps/events/EventsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/events/EventsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 247
    :cond_3b
    const-string v2, "EVENTS_DETAIL_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 248
    new-instance v1, Lcom/biznessapps/events/EventDetailsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/events/EventDetailsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 249
    :cond_3c
    const-string v2, "EventsManagerViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 250
    new-instance v1, Lcom/biznessapps/events/EventsV2ListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/events/EventsV2ListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 251
    :cond_3d
    const-string v2, "EVENTS_V2_DETAIL_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 252
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 253
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "EVENTS_V2_DETAIL_FRAGMENT"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_3e
    const-string v2, "menuviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 255
    const-string v2, "MENU_ITEM_ID"

    invoke-static {p0, v2}, Lcom/biznessapps/utils/ViewUtils;->hasExtraValue(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 256
    new-instance v1, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 257
    :cond_3f
    const-string v2, "MENU_ITEM_DETAIL_ID"

    invoke-static {p0, v2}, Lcom/biznessapps/utils/ViewUtils;->hasExtraValue(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 258
    new-instance v1, Lcom/biznessapps/menu_items/MenuItemDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/menu_items/MenuItemDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 260
    :cond_40
    new-instance v1, Lcom/biznessapps/menu_items/MenuSectionsListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/menu_items/MenuSectionsListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 262
    :cond_41
    const-string v2, "moreviewcontroller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 263
    new-instance v1, Lcom/biznessapps/more/MoreFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/more/MoreFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 264
    :cond_42
    const-string v2, "NewsViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 265
    new-instance v1, Lcom/biznessapps/news/NewsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/news/NewsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 266
    :cond_43
    const-string v2, "CallUsViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 267
    new-instance v1, Lcom/biznessapps/call_us/CallUsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/call_us/CallUsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 268
    :cond_44
    const-string v2, "DirectionViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 269
    new-instance v1, Lcom/biznessapps/fragments/single/DirectionsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/DirectionsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 270
    :cond_45
    const-string v2, "TellFriendViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 271
    new-instance v1, Lcom/biznessapps/fragments/single/TellFriendsFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/fragments/single/TellFriendsFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 272
    :cond_46
    const-string v2, "NotepadListController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 273
    new-instance v1, Lcom/biznessapps/notepad/NotepadListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/notepad/NotepadListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 274
    :cond_47
    const-string v2, "NOTEPAD_EDIT_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 275
    new-instance v1, Lcom/biznessapps/notepad/NotepadEditFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/notepad/NotepadEditFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 276
    :cond_48
    const-string v2, "SocialViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 277
    new-instance v1, Lcom/biznessapps/social/SocialFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/social/SocialFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 278
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "SocialViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :cond_49
    const-string v2, "LoyaltyTabViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 280
    new-instance v1, Lcom/biznessapps/loyalty/LoyaltyListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/loyalty/LoyaltyListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 281
    :cond_4a
    const-string v2, "LOYALTY_V1_DETAIL_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 282
    new-instance v1, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 283
    :cond_4b
    const-string v2, "LOYALTY_V2_DETAIL_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 284
    new-instance v1, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 285
    :cond_4c
    const-string v2, "MusicViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 286
    new-instance v1, Lcom/biznessapps/music/MusicListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/music/MusicListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 287
    :cond_4d
    const-string v2, "SongInfoViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 288
    new-instance v1, Lcom/biznessapps/music/MusicDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/music/MusicDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 289
    :cond_4e
    const-string v2, "RealEstateDetailViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 290
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 291
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "RealEstateDetailViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_4f
    const-string v2, "RealEstateViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 293
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 294
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "RealEstateViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_50
    const-string v2, "RealEstatePropertyViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 296
    new-instance v1, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 297
    :cond_51
    const-string v2, "GolfCourseViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 298
    new-instance v1, Lcom/biznessapps/golfcourse/GameListFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/GameListFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 299
    :cond_52
    const-string v2, "GOLF_EDIT_PLAYER_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 300
    new-instance v1, Lcom/biznessapps/golfcourse/EditPlayerFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 301
    :cond_53
    const-string v2, "GOLF_ADD_GAME_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 302
    new-instance v1, Lcom/biznessapps/golfcourse/AddGameFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/AddGameFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 303
    :cond_54
    const-string v2, "GOLF_SELECT_COURSE_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 304
    new-instance v1, Lcom/biznessapps/golfcourse/SelectCourseFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/SelectCourseFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 305
    :cond_55
    const-string v2, "GOLF_LIST_PLAYER_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 306
    new-instance v1, Lcom/biznessapps/golfcourse/ListPlayerFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/ListPlayerFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 307
    :cond_56
    const-string v2, "GOLF_SELECT_PLAYER_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 308
    new-instance v1, Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 309
    :cond_57
    const-string v2, "GOLF_OVERVIEW_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 310
    new-instance v1, Lcom/biznessapps/golfcourse/OverviewFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/OverviewFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 311
    :cond_58
    const-string v2, "GOLF_DETAIL_HOLE_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 312
    new-instance v1, Lcom/biznessapps/golfcourse/HoleDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 313
    :cond_59
    const-string v2, "GOLF_ADD_NOTE_FRAGMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 314
    new-instance v1, Lcom/biznessapps/golfcourse/AddNoteFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/golfcourse/AddNoteFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 315
    :cond_5a
    const-string v2, "ReservationViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 316
    new-instance v1, Lcom/biznessapps/reservation/ReservationMainFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reservation/ReservationMainFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 317
    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    const-string v3, "ReservationViewController"

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setFragmentName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :cond_5b
    const-string v2, "ReservationLoginViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 319
    new-instance v1, Lcom/biznessapps/reservation/ReservationLoginFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reservation/ReservationLoginFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 320
    :cond_5c
    const-string v2, "ReservationApptDetailViewControllerFromMain"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 321
    new-instance v1, Lcom/biznessapps/reservation/ReservationDetailFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reservation/ReservationDetailFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 322
    :cond_5d
    const-string v2, "ReservationAccountViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 323
    new-instance v1, Lcom/biznessapps/reservation/ReservationAccountFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reservation/ReservationAccountFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 324
    :cond_5e
    const-string v2, "ReservationBookViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 325
    new-instance v1, Lcom/biznessapps/reservation/ReservationBookFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reservation/ReservationBookFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 326
    :cond_5f
    const-string v2, "PaymentIntegrateViewController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 327
    new-instance v1, Lcom/biznessapps/reservation/PaymentIntegrateFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 328
    :cond_60
    const-string v2, "ReservationRegisterFragment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 329
    new-instance v1, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0

    .line 330
    :cond_61
    const-string v2, "ReservationAccountRecoveryFragment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    new-instance v1, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;

    .end local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;-><init>()V

    .restart local v1    # "fragmentToLoad":Landroid/support/v4/app/Fragment;
    goto/16 :goto_0
.end method
