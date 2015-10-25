.class public Lcom/biznessapps/api/ActivitySelector;
.super Ljava/lang/Object;
.source "ActivitySelector.java"


# static fields
.field private static activityFragmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/biznessapps/api/ActivitySelector$1;

    invoke-direct {v0}, Lcom/biznessapps/api/ActivitySelector$1;-><init>()V

    sput-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "CarFinderViewController"

    const-class v2, Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "AroundUsViewController"

    const-class v2, Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FanWallManagerViewController"

    const-class v2, Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_LOCATIONS_MAP"

    const-class v2, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_LOCATION_DETAIL"

    const-class v2, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "CONTACTS_FRAGMENT"

    const-class v2, Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "AROUND_US_DETAIL_FRAGMENT"

    const-class v2, Lcom/biznessapps/around_us/AroundUsDetailActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "webviewcontroller"

    const-class v2, Lcom/biznessapps/web/WebSingleFragmentActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "PROTECTED_VIEW_CONTROLLER"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "RealEstateDetailViewController"

    const-class v2, Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "RealEstateViewController"

    const-class v2, Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "EVENTS_V2_DETAIL_FRAGMENT"

    const-class v2, Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "contentchangerviewcontroller"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "GLOBAL_SEARCH_VIEW_CONTROLLER"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "EmailPhotoViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "tipcalculatorviewcontroller"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "repaymentviewcontroller"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "ReservationViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "SocialViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "QRViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "VoiceRecordingViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FAN_ADD_COMMENT_FRAGMENT"

    const-class v2, Lcom/biznessapps/web/WebSingleFragmentActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "RESELLER_DASHBOARD_FRAGMENT"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "PaymentIntegrateViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "ReservationAccountViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "ReservationApptDetailViewControllerFromMain"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "ReservationLoginViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "ReservationAccountRecoveryFragment"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "ReservationRegisterFragment"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "ReservationBookViewController"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "YOUTUBE_SINGLE_VIEW_FRAGMENT"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "WEB_VIEW_SINGLE_FRAGMENT"

    const-class v2, Lcom/biznessapps/web/WebSingleFragmentActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_CATEGORIES"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_CATEGORIES_ITEMS"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_CATEGORIES_ITEM_DETAIL"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_CONFIRMATION_PAGE"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FOOD_ORDER_CART_CONTROLLER"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_MY_ADDRESS"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_MY_ADDRESSES"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_LOCATIONS"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_LOCATION_CHOOSER"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FoodOrderingViewController"

    const-class v2, Lcom/biznessapps/food_ordering/FOMainActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_ACCOUNT_CONTROLLER"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    const-string v1, "FO_PAST_ORDERS_DETAIL"

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentPortraitActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "viewController"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v1, Lcom/biznessapps/api/ActivitySelector;->activityFragmentMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 83
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 85
    const-class v0, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    .line 87
    :cond_0
    return-object v0
.end method
