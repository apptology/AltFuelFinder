.class public final Lcom/biznessapps/localization/KeysMap;
.super Ljava/lang/Object;
.source "KeysMap.java"


# static fields
.field private static final keysConverter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    .line 16
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->about:I

    const-string v2, "About"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->account:I

    const-string v2, "Account"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->accounts:I

    const-string v2, "Accounts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->activity:I

    const-string v2, "Activity"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->add_to_calendar:I

    const-string v2, "Add to Cal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->add_caption:I

    const-string v2, "Add a caption"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->add_photo:I

    const-string v2, "Add Photo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->add_note:I

    const-string v2, "Add Note"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->add_score:I

    const-string v2, "Add Score"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->album:I

    const-string v2, "Album:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->albums:I

    const-string v2, "Albums"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->alert:I

    const-string v2, "Alert"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->all:I

    const-string v2, "All"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->all_tracks_title:I

    const-string v2, "All Tracks"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->almost_there:I

    const-string v2, "Almost there..."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->amount_label:I

    const-string v2, "Check Total"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->anonymous_user:I

    const-string v2, "Anonymous Android user"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->anonymous_ios_user:I

    const-string v2, "Anonymous iOS user"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->app_not_being_maintained:I

    const-string v2, "This app is no longer being maintained due to non-payment on behalf of the business."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->app_store:I

    const-string v2, "App Store:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->artist:I

    const-string v2, "Artist:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->attend:I

    const-string v2, "Attend"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->authentication:I

    const-string v2, "Authenticating..."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->author:I

    const-string v2, "Author"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->blocked_day:I

    const-string v2, "We\'re not opened on this day."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->book_it:I

    const-string v2, "Book It"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->booking_successful:I

    const-string v2, "Booking was done successfully"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->branch_call_title:I

    const-string v2, "Which location would you like to call?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->branch_directions_title:I

    const-string v2, "Which location would you like directions to?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->calculate:I

    const-string v2, "Calculate"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_friday:I

    const-string v2, "Friday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_monday:I

    const-string v2, "Monday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_saturday:I

    const-string v2, "Saturday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_sunday:I

    const-string v2, "Sunday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_thursday:I

    const-string v2, "Thursday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_tuesday:I

    const-string v2, "Tuesday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_wednesday:I

    const-string v2, "Wednesday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->call_number_request:I

    const-string v2, "Do you want to call this number?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->call_us:I

    const-string v2, "Call Us"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->cancel:I

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->cancel_reservation:I

    const-string v2, "Cancel Reservation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->cancel_reservation_question:I

    const-string v2, "Are you sure you want to cancel this reservation?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->cancelled:I

    const-string v2, "Cancelled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->car_finder_email_message:I

    const-string v2, "Please click on the link below to find out where I am."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->car_location:I

    const-string v2, "Current Location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->cash:I

    const-string v2, "CASH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->close:I

    const-string v2, "Close"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->closed_now:I

    const-string v2, "Closed Now"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->check_total:I

    const-string v2, "Check Total"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->checkin:I

    const-string v2, "Check In"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->checkin_hours_left:I

    const-string v2, "hour(s) left"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->checkin_interval:I

    const-string v2, "You need to wait before you can check in again. Check-in interval is %d hours"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->checkin_mins_left:I

    const-string v2, "min(s) left"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->checkin_scan_message:I

    const-string v2, "You need to scan another %d times before you can use this coupon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->checking_unsuccess:I

    const-string v2, "You need to get closer to the location marked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->choose_login_account:I

    const-string v2, "Choose Login Account"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->choose_photo:I

    const-string v2, "Choose Photo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->choose_player_to_send_email:I

    const-string v2, "Choose player to send email scorecard."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->chose_from_library:I

    const-string v2, "Choose from Library"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->collect_email_title:I

    const-string v2, "Enter Your Email"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->collect_stamps_for_coupon:I

    const-string v2, "Collect %d more stamps to unlock this coupon."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->comment_hint:I

    const-string v2, "Type your comment here..."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->commenting_not_allowed:I

    const-string v2, "Commenting is not allowed for this YouTube video."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->comments:I

    const-string v2, "Comments"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->completed_checkin:I

    const-string v2, "%s completed %d%s check-in."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->completed_scans:I

    const-string v2, "%s completed %d%s scan."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->completed_stamp:I

    const-string v2, "%s completed %d%s stamp."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->completed_v2_stamp:I

    const-string v2, "%s completed a stamp. Now at %d %s."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->redeemed_perk:I

    const-string v2, "%s redeemed %s perk. %d %s remaining."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->confirm:I

    const-string v2, "Confirm"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->congratulations:I

    const-string v2, "Congratulations!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->connect:I

    const-string v2, "Connect"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->connected_to_network:I

    const-string v2, "Connected to %s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->contact:I

    const-string v2, "Contact"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->country:I

    const-string v2, "Country"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->coupon_cant_be_used:I

    const-string v2, "This coupon cannot be used again."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->coupon_redeemed:I

    const-string v2, "Coupon successfully redeemed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->coupon_state_1st:I

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->coupon_state_2nd:I

    const-string v2, "nd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->coupon_state_3rd:I

    const-string v2, "rd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->coupon_state_4th:I

    const-string v2, "th"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->coupons_checkin_n_times:I

    const-string v2, "You need to check in another %d times before you can use this coupon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->coupons_scan_n_times:I

    const-string v2, "Please scan another %d times to unlock a coupon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->course:I

    const-string v2, "Course"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->create_account:I

    const-string v2, "Create Account"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->current_game:I

    const-string v2, "Current Game"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->current_location:I

    const-string v2, "Current Location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->dashboard:I

    const-string v2, "Dashboard"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->date:I

    const-string v2, "Date"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->days_template:I

    const-string v2, "day(s) ago"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->delete:I

    const-string v2, "Delete"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->delete_note:I

    const-string v2, "Do you want to delete this note?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->demo_title:I

    const-string v2, "Enter the code you have been given below to view a demo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->demo:I

    const-string v2, "Demo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->description:I

    const-string v2, "Description"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->directions:I

    const-string v2, "Directions"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->disclaimer_label:I

    const-string v2, "These figures are only a guide. We recommend that you obtain exact figures from a specific lender before committing to any loan."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->dismiss:I

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->done:I

    const-string v2, "Done"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->each_month_payment:I

    const-string v2, "Your monthly repayment will be:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->edit_player:I

    const-string v2, "Edit Player"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->email:I

    const-string v2, "Email"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    const-string v2, "Please verify your email is correct."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->email_login_title:I

    const-string v2, "Enter Your Email"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->email_login_description:I

    const-string v2, "Input valid email"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->email_photo_title:I

    const-string v2, "Send Us a Photo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->email_results:I

    const-string v2, "Email Results"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->email_receipt:I

    const-string v2, "Email Receipt"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->error:I

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->error_occured:I

    const-string v2, "An error occurred."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->facebook:I

    const-string v2, "Facebook"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->failure:I

    const-string v2, "Failure"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fan_wall_posts:I

    const-string v2, "Fan Wall Posts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->featured:I

    const-string v2, "Featured"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->female:I

    const-string v2, "Female"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fill_app_code:I

    const-string v2, "Whoops! You have entered an invalid app code.  Please try again."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    const-string v2, "Please fill out the required fields"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->find_qr_code:I

    const-string v2, "Find a QR code"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->finish:I

    const-string v2, "Finish"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->first_name:I

    const-string v2, "First Name"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->forgot:I

    const-string v2, "Forgot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->forgot_your_password:I

    const-string v2, "Forgot Your Password"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_add:I

    const-string v2, "Add"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_add_item_to_order:I

    const-string v2, "Add item to order!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_address:I

    const-string v2, "Address"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_apt:I

    const-string v2, "Apt, Suite, Floor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_asap:I

    const-string v2, "ASAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_card:I

    const-string v2, "CARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_card_payment_not_available:I

    const-string v2, "Card payment is currently unavailable. Try again later."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_cart:I

    const-string v2, "Cart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_cart_updated:I

    const-string v2, "Your cart has been updated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_cart_is_empty:I

    const-string v2, "Your cart is empty."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_categories:I

    const-string v2, "Categories"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_checkout:I

    const-string v2, "Check out"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_choose_items:I

    const-string v2, "Choose Items"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_convenience_fee:I

    const-string v2, "Convenience Fee"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_confirmation:I

    const-string v2, "Confirmation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_date:I

    const-string v2, "Date"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_details:I

    const-string v2, "Details"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_delivery:I

    const-string v2, "Delivery"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_delivery_address_alert:I

    const-string v2, "Cannot deliver to this address"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_delivery_fee:I

    const-string v2, "Delivery Fee"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_delivery_minimum_alert:I

    const-string v2, "Minimum order for delivery is"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_dine_in:I

    const-string v2, "Dine-in"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_quantity:I

    const-string v2, "Quantity"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_quantity_message:I

    const-string v2, "How many do you want?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_items_for:I

    const-string v2, "Items for"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_item_price:I

    const-string v2, "Item Price"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_locations:I

    const-string v2, "Locations"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_location_nickname:I

    const-string v2, "Location Nickname"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_location_nick_exists:I

    const-string v2, "The location name already exists"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_location_enter_address:I

    const-string v2, "Enter your address"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_location_warning:I

    const-string v2, "If you leave this location your cart will be erased. Will you proceed anyway?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_my_addresses:I

    const-string v2, "My Addresses"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_no_availability_for_day_time:I

    const-string v2, "No availability for selected day or time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_no_availability_for_time:I

    const-string v2, "No availability for selected service at this time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_no_available_items:I

    const-string v2, "Items in this order are not available at this time."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_one_or_more_no_available_items:I

    const-string v2, "One or more items in your order will not be added to cart."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_no_available_service:I

    const-string v2, "No available service(s) at this time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_selected_items_not_available:I

    const-string v2, "Items you have already selected are unavailable at this time."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_no_service_options_available:I

    const-string v2, "No Service options are available."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_options:I

    const-string v2, "Options"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_order_info:I

    const-string v2, "Your order will be ready at %s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_order_more:I

    const-string v2, "Order More"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_past_orders:I

    const-string v2, "Past Orders"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_payment:I

    const-string v2, "Payment"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_payment_not_available:I

    const-string v2, "No payment options are available"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_place_order:I

    const-string v2, "Place Order"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_remove_cart_message:I

    const-string v2, "Are you sure you want to remove this item from cart?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_reorder:I

    const-string v2, "Reorder"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_reorder_text1:I

    const-string v2, "Selecting reorder will add items to your cart that are available at the selected time of checkout."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_reorder_text2:I

    const-string v2, "Your previous special notes will also be used with this order."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_search_by_location:I

    const-string v2, "Search by location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_select_this_location:I

    const-string v2, "Select this location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_size:I

    const-string v2, "Size"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_specific_instructions:I

    const-string v2, "Specific instructions"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_select_day_time:I

    const-string v2, "Please select day and time."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_select_order_type:I

    const-string v2, "Please select order type."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_takeout:I

    const-string v2, "Takeout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_tip:I

    const-string v2, "Tip"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_today:I

    const-string v2, "Today"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_total_charges:I

    const-string v2, "Total Charges"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->gallery_title:I

    const-string v2, "Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->gender:I

    const-string v2, "Gender"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->go:I

    const-string v2, "Go"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->go_back:I

    const-string v2, "Go Back"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->golf_course:I

    const-string v2, "Golf Course"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->golf_leave_game:I

    const-string v2, "Are you sure to leave current game?Current game will be saved anyway."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->google_plus:I

    const-string v2, "Google+"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->google_store:I

    const-string v2, "Play Store:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->gps:I

    const-string v2, "GPS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->gps_disabled_info:I

    const-string v2, "Location Services Disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->green_back:I

    const-string v2, "Green Back"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->green_front:I

    const-string v2, "Green Front"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->green_middle:I

    const-string v2, "Green Middle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->handicap:I

    const-string v2, "Handicap"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->have_unlocked_coupon:I

    const-string v2, "You have unlocked a new coupon!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->help:I

    const-string v2, "Help"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->history:I

    const-string v2, "History"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->hole:I

    const-string v2, "Hole"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->holes_colon:I

    const-string v2, "Holes"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->hours:I

    const-string v2, "hours"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->hours_template:I

    const-string v2, "hr(s) ago"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->html5_store:I

    const-string v2, "HTML5:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->hyb:I

    const-string v2, "Hyb."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->i_am_going:I

    const-string v2, "I\'m Going"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->i_went:I

    const-string v2, "I Went"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->in:I

    const-string v2, "   In   "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->info:I

    const-string v2, "Info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->info_tier_link_message:I

    const-string v2, "Can not see the above content correctly? Click here"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->interest_rate:I

    const-string v2, "Interest rate:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->join:I

    const-string v2, "Join"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->keep_coming_back:I

    const-string v2, "Keep Coming Back"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->last_name:I

    const-string v2, "Last Name"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->list:I

    const-string v2, "List"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->listed_by:I

    const-string v2, "ListedBy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->live:I

    const-string v2, "Live"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->load_demo:I

    const-string v2, "Load Demo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->load_more:I

    const-string v2, "Load More"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loading:I

    const-string v2, "Loading data... please wait"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loan_amount:I

    const-string v2, "Loan amount:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loan_term:I

    const-string v2, "Loan term:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->location_absent:I

    const-string v2, "Could not determine your current location."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->location_not_defined:I

    const-string v2, "Sorry, I don\'t have your current location so I can\'t show you directions"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->location_service_disabled:I

    const-string v2, "Location Services Disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->location_is_not_available:I

    const-string v2, "This location is currently unavailable."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->location_missed_alert:I

    const-string v2, "Please select a location."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->location_title:I

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->login:I

    const-string v2, "Log In"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->login_again:I

    const-string v2, "Please log in again."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->login_completed:I

    const-string v2, "Logged in"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->logout:I

    const-string v2, "Log out"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->logout_message:I

    const-string v2, "Are you sure you would like to log out from the selected network?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_congrats_message:I

    const-string v2, "Congratulations! You can now get one"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_stamp_dialog_message:I

    const-string v2, "Please hand your device to the business representative who will stamp your card."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_redeem_dialog_message:I

    const-string v2, "Please hand your device to the business representative who will redeem your card."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_dialog_title:I

    const-string v2, "SECRET CODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_login_notice:I

    const-string v2, "You need to login via social media or email address in order to use this feature."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_dialog_yes_title:I

    const-string v2, "Stamp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loyalty_wrong_code_message:I

    const-string v2, "Secret code is wrong"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mailing_list:I

    const-string v2, "Mailing List"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mailing_list_add_success:I

    const-string v2, "You have been added to our mailing list."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mailing_list_question:I

    const-string v2, "Would you like to join our mailing list?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mailing_list_user_birthday_hint:I

    const-string v2, "Birthday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mailing_list_user_country_hint:I

    const-string v2, "Country"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mailing_list_user_email_hint:I

    const-string v2, "Email (Required)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mailing_list_user_name_hint:I

    const-string v2, "Name (Required)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->male:I

    const-string v2, "Male"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->main_menu:I

    const-string v2, "Main Menu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->map:I

    const-string v2, "Map"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->message_all_type:I

    const-string v2, "All"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->message_image_type:I

    const-string v2, "Offers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->message_tab_content_type:I

    const-string v2, "Tab"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->message_web_type:I

    const-string v2, "Web URL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->messages:I

    const-string v2, "Messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->min:I

    const-string v2, "min"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mins:I

    const-string v2, "mins"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->mins_template:I

    const-string v2, "min(s) ago"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->months_template:I

    const-string v2, "month(s) ago"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->music_tab_label:I

    const-string v2, "Music"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->my_comments:I

    const-string v2, "My Comments"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->more:I

    const-string v2, "More"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->n_a:I

    const-string v2, "N/A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->n_feet_from_location:I

    const-string v2, "%.2f feet from location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->n_miles_from_location:I

    const-string v2, "%.2f miles from location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->name:I

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->near_by:I

    const-string v2, "Near By"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->net_total:I

    const-string v2, "Net Total"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->network_error:I

    const-string v2, "Network connection is required here"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->new_game:I

    const-string v2, "New Game"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->new_player:I

    const-string v2, "New Player"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->news:I

    const-string v2, "News"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->next:I

    const-string v2, "Next"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->no:I

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->no_additional_info:I

    const-string v2, "No additional information"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->no_messages:I

    const-string v2, "No Messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->none:I

    const-string v2, "None"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->not_available:I

    const-string v2, "Not Available"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->notes:I

    const-string v2, "Notes"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->nothing_email:I

    const-string v2, "This player has not email to send."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->nothing_found:I

    const-string v2, "Nothing found"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->number_incorrect_format_message:I

    const-string v2, "You entered incorrect number(s)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->offline_caching_dialog_message:I

    const-string v2, "Would you like to download content to view offline?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->offline_caching_dialog_title:I

    const-string v2, "Offline Caching"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->ok:I

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->okay:I

    const-string v2, "Okay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->okay_i_got_it:I

    const-string v2, "Ok, I got it"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->ongoing:I

    const-string v2, "Ongoing"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->open_now:I

    const-string v2, "Open Now"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->opening_hours:I

    const-string v2, "Opening Hours"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->optional:I

    const-string v2, "Optional"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->out:I

    const-string v2, "   Out   "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->overview:I

    const-string v2, "Overview"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->par:I

    const-string v2, "Par"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->pars:I

    const-string v2, "Pars"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->password:I

    const-string v2, "Password"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->password_does_not_match:I

    const-string v2, "Password does not match"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->past_events:I

    const-string v2, "Past"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->payment_disabled:I

    const-string v2, "This payment method is disabled for this service."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->payment_method:I

    const-string v2, "Payment Method"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->paypal:I

    const-string v2, "Paypal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->people_going:I

    const-string v2, "%s Going"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->people_label:I

    const-string v2, "Number of People"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->people_went:I

    const-string v2, "%s Went"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->phone:I

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->phone_call_not_available:I

    const-string v2, "Phone call is not available."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->phone_number:I

    const-string v2, "Phone Number"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->photo_saved:I

    const-string v2, "Image is stored in Photo gallery"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->photo_sharing:I

    const-string v2, "I just looked at this photo at %s using their mobile app. Check it out! %s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->photo_upload:I

    const-string v2, "Photo Upload"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->photos:I

    const-string v2, "Photos"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->picture_sharing:I

    const-string v2, "I just took this picture. Check it out."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->played_date:I

    const-string v2, "Played Date"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->player:I

    const-string v2, "Player"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->player_name:I

    const-string v2, "Player Name"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->players:I

    const-string v2, "Players"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->please_enter_valid_name:I

    const-string v2, "Please enter valid name"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->please_select_course:I

    const-string v2, "Please select a golf course."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->please_select_gender:I

    const-string v2, "Please select gender"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->please_select_handicap:I

    const-string v2, "Please select handicap"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->please_select_tee:I

    const-string v2, "Please select tee"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->popular:I

    const-string v2, "Popular"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->post:I

    const-string v2, "Post"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->post_activity:I

    const-string v2, "Post Activity?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->post_comment:I

    const-string v2, "Post Comment"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->posted:I

    const-string v2, "Posted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->posted_date:I

    const-string v2, "Posted Date"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->pre_payment_label:I

    const-string v2, "Pre-Payment:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->price:I

    const-string v2, "Price:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->property:I

    const-string v2, "Property"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->provide_email:I

    const-string v2, "Please provide your email address"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->pull_to_refresh:I

    const-string v2, "Pull to Refresh"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->putts:I

    const-string v2, "Putts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->putts_caps:I

    const-string v2, "Putts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->qr_unsuccess_scanning:I

    const-string v2, "Nothing matched that QR Code"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_agent:I

    const-string v2, "Agent:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_appliances:I

    const-string v2, "Appliances"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_architectural_style:I

    const-string v2, "Achitectural Style"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_asphalt:I

    const-string v2, "Asphalt"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_attic:I

    const-string v2, "Attic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_balcony_patio:I

    const-string v2, "Balcony/patio"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_barbecue_area:I

    const-string v2, "Barbecue area"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_baseboard:I

    const-string v2, "Baseboard"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_basement:I

    const-string v2, "Basement"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_basketball_court:I

    const-string v2, "Basketball court"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_breakfast_nook:I

    const-string v2, "Breakfast nook"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_brick:I

    const-string v2, "Brick"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_building_amenities:I

    const-string v2, "Building Amenities"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_built_up:I

    const-string v2, "Built-up"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_bungalow:I

    const-string v2, "Bungalow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_cable_ready:I

    const-string v2, "Cable ready"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_cape_cod:I

    const-string v2, "Cape Cod"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_carpet:I

    const-string v2, "Carpet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_carport:I

    const-string v2, "Carport"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_category_own:I

    const-string v2, "Own"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_category_rentals:I

    const-string v2, "Rentals"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_ceiling_fans:I

    const-string v2, "Ceiling fans"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_cement_concrete:I

    const-string v2, "Cement / Concrete"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_central:I

    const-string v2, "Central"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_city:I

    const-string v2, "City"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_coal:I

    const-string v2, "Coal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_colonial:I

    const-string v2, "Colonial"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_composition:I

    const-string v2, "Composition"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_concrete:I

    const-string v2, "Concrete"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_contemporary:I

    const-string v2, "Contemporary"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_controlled_access:I

    const-string v2, "Controlled access"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_cooling_type:I

    const-string v2, "Cooling Type"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_craftsman:I

    const-string v2, "Craftsman"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_deck:I

    const-string v2, "Deck"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_dining_room:I

    const-string v2, "Dining room"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_disabled_access:I

    const-string v2, "Disabled access"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_dishwasher:I

    const-string v2, "Dishwasher"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_dock:I

    const-string v2, "Dock"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_doorman:I

    const-string v2, "Doorman"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_double_pane_storm_windows:I

    const-string v2, "Double pane/storm windows"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_dryer:I

    const-string v2, "Dryer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_electric:I

    const-string v2, "Electric"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_elevator:I

    const-string v2, "Elevator"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_email:I

    const-string v2, "Email:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_evaporative:I

    const-string v2, "Evaporative"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_exterior:I

    const-string v2, "Exterior"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_family_room:I

    const-string v2, "Family room"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_fenced_yard:I

    const-string v2, "Fenced yard"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_finished:I

    const-string v2, "Finished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_fireplace:I

    const-string v2, "Fireplace"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_fitness_center:I

    const-string v2, "Fitness center"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_floor_covering:I

    const-string v2, "Floor Covering"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_forced_air:I

    const-string v2, "Forced air"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_freezer:I

    const-string v2, "Freezer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_frenhc:I

    const-string v2, "French"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_garage_attached:I

    const-string v2, "Garage - Attached"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_garage_detached:I

    const-string v2, "Garage - Detached"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_garbage_disposal:I

    const-string v2, "Garbage disposal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_garden:I

    const-string v2, "Garden"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_gas:I

    const-string v2, "Gas"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_gated_entry:I

    const-string v2, "Gated entry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_georgian:I

    const-string v2, "Georgian"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_geothermal:I

    const-string v2, "Geothermal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_greenhouse:I

    const-string v2, "Greenhouse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_hardwood:I

    const-string v2, "Hardwood"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_heat_pump:I

    const-string v2, "Heat pump"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_heating_fuel:I

    const-string v2, "Heating Fuel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_heating_type:I

    const-string v2, "Heating Type"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_hot_tub_spa:I

    const-string v2, "Hot tub/spa"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_indoor_features:I

    const-string v2, "Indoor Features"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_intercom_system:I

    const-string v2, "Intercom system"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_jetted_tub:I

    const-string v2, "Jetted tub"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_laminate:I

    const-string v2, "Laminate"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_laundry_room:I

    const-string v2, "Laundry room"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_lawn:I

    const-string v2, "Lawn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_library:I

    const-string v2, "Library"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_linoleum_vinyl:I

    const-string v2, "Linoleum / Vinyl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_loft:I

    const-string v2, "Loft"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_lot_size:I

    const-string v2, "Lot Size:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_lotunit_acres:I

    const-string v2, "Acres"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_lotunit_sqft:I

    const-string v2, "Sq ft"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_lotunit_meters:I

    const-string v2, "Meters"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_master_bath:I

    const-string v2, "Master bath"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_metal:I

    const-string v2, "Metal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_microwave:I

    const-string v2, "Microwave"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_mil_apartment:I

    const-string v2, "Mother-in-law apartment"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_modern:I

    const-string v2, "Modern"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_mountain:I

    const-string v2, "Mountain"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_mud_room:I

    const-string v2, "Mud room"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_near_transportation:I

    const-string v2, "Near transportation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_none:I

    const-string v2, "None"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_off_street:I

    const-string v2, "Off-street"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_office:I

    const-string v2, "Office"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_oil:I

    const-string v2, "Oil"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_on_street:I

    const-string v2, "On-street"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_other:I

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_outdoor_amenities:I

    const-string v2, "Outdoor Amenities"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_pactially_finished:I

    const-string v2, "Partially finished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_pantry:I

    const-string v2, "Pantry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_park:I

    const-string v2, "Park"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_parking:I

    const-string v2, "Parking"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_phone:I

    const-string v2, "Phone:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_pond:I

    const-string v2, "Pond"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_pool:I

    const-string v2, "Pool"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_porch:I

    const-string v2, "Porch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_propane_butane:I

    const-string v2, "Propane / Butane"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_property_size:I

    const-string v2, "Property Size:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_queen_anne_victorian:I

    const-string v2, "Queen Anne / Victorian"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_radiant:I

    const-string v2, "Radiant"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_ranch_rambler:I

    const-string v2, "Ranch / Rambler"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_range_oven:I

    const-string v2, "Range / Oven"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_recreation_room:I

    const-string v2, "Recreation room"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_refrigeration:I

    const-string v2, "Refrigeration"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_refrigerator:I

    const-string v2, "Refrigerator"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_roof:I

    const-string v2, "Roof"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_rooms:I

    const-string v2, "Rooms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_rv_parking:I

    const-string v2, "RV parking"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_sauna:I

    const-string v2, "Sauna"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_security_system:I

    const-string v2, "Security system"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_sfp_style:I

    const-string v2, "Santa Fe / Pueblo Style"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_shake_shingle:I

    const-string v2, "Shake / Shingle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_shingle:I

    const-string v2, "Shingle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_skylights:I

    const-string v2, "Skylights"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_slate:I

    const-string v2, "Slate"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_softwood:I

    const-string v2, "Softwood"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_solar:I

    const-string v2, "Solar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_solarium_atrium:I

    const-string v2, "Solarium / Atrium"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_spanish:I

    const-string v2, "Spanish"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_split_level:I

    const-string v2, "Split-level"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_sport_court:I

    const-string v2, "Sports court"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_sprinkler_system:I

    const-string v2, "Sprinkler system"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_status:I

    const-string v2, "Status:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_stone:I

    const-string v2, "Stone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_storage:I

    const-string v2, "Storage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_stove:I

    const-string v2, "Stove"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_stucco:I

    const-string v2, "Stucco"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_sun_room:I

    const-string v2, "Sun room"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_tennis_court:I

    const-string v2, "Tennis court"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_territorial:I

    const-string v2, "Territorial"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_tile:I

    const-string v2, "Tile"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_trash_compactor:I

    const-string v2, "Trash compactor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_tudor:I

    const-string v2, "Tudor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_type:I

    const-string v2, "Type:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_unfinished:I

    const-string v2, "Unfinished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_vaulted_ceiling:I

    const-string v2, "Vaulted ceiling"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_view:I

    const-string v2, "View"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_vinyl:I

    const-string v2, "Vinyl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_walkin_closet:I

    const-string v2, "Walk-in closet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_wall:I

    const-string v2, "Wall"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_washer:I

    const-string v2, "Washer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 501
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_water:I

    const-string v2, "Water"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 502
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_waterfront:I

    const-string v2, "Waterfront"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_wet_bar:I

    const-string v2, "Wet bar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_wired:I

    const-string v2, "Wired"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 505
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_wood:I

    const-string v2, "Wood"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_wood_pellet:I

    const-string v2, "Wood / Pellet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_wood_products:I

    const-string v2, "Wood products"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 508
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_workshop:I

    const-string v2, "Workshop"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 509
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_year_built:I

    const-string v2, "Year Built:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 510
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->real_estate_year_updated:I

    const-string v2, "Year Updated:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 511
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->recent:I

    const-string v2, "Recent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->recent_photos:I

    const-string v2, "Recent Photos"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->recents:I

    const-string v2, "Recents"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->recordings:I

    const-string v2, "%d Recordings, %s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 515
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->recover_password:I

    const-string v2, "Recover Password"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 516
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->recovery_email:I

    const-string v2, "Please check the recovery email."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 517
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->recovery_failed:I

    const-string v2, "Recovery failed."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->red:I

    const-string v2, "Red"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->redeem:I

    const-string v2, "Redeem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->redeem_coupon:I

    const-string v2, "Are you sure you want to redeem this coupon?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 521
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->redeem_loyalty_card:I

    const-string v2, "Redeem to reuse this loyalty card."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 522
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->redeemed:I

    const-string v2, "REDEEMED!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 523
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->redeemed_coupon:I

    const-string v2, "%s redeemed this coupon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->redeemed_loyalty:I

    const-string v2, "%s redeemed this loyalty."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 525
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->refreshing_data:I

    const-string v2, "Refreshing data..."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 526
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->register:I

    const-string v2, "Register"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->registration_failed:I

    const-string v2, "Registration Failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 528
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->registration_successful:I

    const-string v2, "Registration Successful"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 529
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->release_to_refresh:I

    const-string v2, "Release to refresh"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 530
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->replies:I

    const-string v2, "Replies"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 531
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reply:I

    const-string v2, "Reply"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->required:I

    const-string v2, "Required"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reseller_dashboard_login:I

    const-string v2, "Do you wish to login using App Code? App Code:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reseller_dashboard_logout:I

    const-string v2, "Do you wish to logout of your dashboard?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 535
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reseller_return_message:I

    const-string v2, "Would you like to return to the dashboard?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reseller_no_app_message:I

    const-string v2, "Try checking out the demo app section."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reseller_not_active_account:I

    const-string v2, "Your Account Is Not Active, Please Contact Our Support"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_cancel_appt_message:I

    const-string v2, "Failure to cancel the reservation."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 540
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_failure:I

    const-string v2, "Failure to make reservation."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 541
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_max_service_limit:I

    const-string v2, "This service is fully reserved for the selected time. Please select another time."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_time_slot_filled:I

    const-string v2, "This time slot has been filled.Please chose a different time."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_has_passed:I

    const-string v2, "The reservation was already past."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 544
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_recover_failed:I

    const-string v2, "Recovery failed."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_register_account_title:I

    const-string v2, "Register"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_update_profile_failed:I

    const-string v2, "Update Failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_week_friday:I

    const-string v2, "Friday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 548
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_week_monday:I

    const-string v2, "Monday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 549
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_week_saturday:I

    const-string v2, "Saturday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 550
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_week_sunday:I

    const-string v2, "Sunday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 551
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_week_thursday:I

    const-string v2, "Thursday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_week_tuesday:I

    const-string v2, "Tuesday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 553
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reservation_week_wednesday:I

    const-string v2, "Wednesday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reset:I

    const-string v2, "Reset"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 555
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->reward_loyalty:I

    const-string v2, "%s got reward of this loyalty."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 556
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->rewards:I

    const-string v2, "Rewards"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->right_now:I

    const-string v2, "right now"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 558
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->save:I

    const-string v2, "Save"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 559
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->save_to_album:I

    const-string v2, "Save to Photo Album"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 560
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan:I

    const-string v2, "Scan!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan_code_description:I

    const-string v2, "Scan the code with QR scanner and get linked directly to content or unlock hidden items."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 562
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan_qr:I

    const-string v2, "SCAN A QR CODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 563
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan_qr_steps1:I

    const-string v2, "Find a QR code for this app."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan_qr_steps2:I

    const-string v2, "Make sure you have good lighting."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan_qr_steps3:I

    const-string v2, "Line up the camera view finder with the code."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 566
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan_qr_steps4:I

    const-string v2, "Wait for the camera to detect the code."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 567
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan_qr_steps5:I

    const-string v2, "The app will display the scanned code."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->scan_qr_title:I

    const-string v2, "Scan QR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 569
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->schedule_appointment_button:I

    const-string v2, "Schedule Reservation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->score:I

    const-string v2, "Score"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->score_card:I

    const-string v2, "Scorecard"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 572
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->sdcard_missed:I

    const-string v2, "Sorry, but you don\'t have sdcard"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->search:I

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->secs_template:I

    const-string v2, "sec(s) ago"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->select_course:I

    const-string v2, "Select a course"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->select_golf:I

    const-string v2, "Please select a golf course."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->select_players:I

    const-string v2, "Select Players"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->sending_tweet_failure:I

    const-string v2, "Sorry, there was a problem posting to Twitter.  Please try again later."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 579
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->sending_tweet_successfully:I

    const-string v2, "Successfully sent to Twitter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->server_connection_failure:I

    const-string v2, "Please check your data connection"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 581
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->service:I

    const-string v2, "Service"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->set:I

    const-string v2, "Set"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 583
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->set_timer:I

    const-string v2, "Set Timer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->share:I

    const-string v2, "Share"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 585
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->share_by_email:I

    const-string v2, "Share by Email"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->share_by_sms:I

    const-string v2, "Share by SMS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->share_image_url_with_app_description:I

    const-string v2, "Hi, I just looked at %s inside %s, using their mobile app. Check it out! %s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->share_on_facebook:I

    const-string v2, "Share on Facebook"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 589
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->share_on_google_plus:I

    const-string v2, "Share on Google+"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->share_on_twitter:I

    const-string v2, "Share on Twitter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->shares_number:I

    const-string v2, "Shares"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->sharing:I

    const-string v2, "Sharing"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->sharing_canceled:I

    const-string v2, "Cancelled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 594
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->sharing_completed:I

    const-string v2, "Completed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 595
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->skip:I

    const-string v2, "Skip"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 596
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->social_connect:I

    const-string v2, "Social Connect"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->social_networks_label:I

    const-string v2, "Please log in with your social account for better experience with social features."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 598
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->something_went_wrong:I

    const-string v2, "Something went wrong. Please try again later."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 599
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->songs:I

    const-string v2, "%s songs"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 600
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->sport_stats_clear_text:I

    const-string v2, "Are you sure you\'d like to reset?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 601
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->stamp:I

    const-string v2, "Stamp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->stamp_card:I

    const-string v2, "Stamp Card"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 603
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->stay_here:I

    const-string v2, "Stay Here"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->stop_timer:I

    const-string v2, "Stop Timer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->submit:I

    const-string v2, "SUBMIT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 606
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->success:I

    const-string v2, "Success"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 607
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->successfully_posted:I

    const-string v2, "Successfully posted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->successfully_saved:I

    const-string v2, "Successfully saved"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->take_photo:I

    const-string v2, "Take a Photo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->tap_plus_button_new_golf_game:I

    const-string v2, "Tap + button to add a new golf game."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->tap_plus_button_add_player:I

    const-string v2, "Tap + button to add a player."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 612
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->tee:I

    const-string v2, "Tee"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 613
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->tees:I

    const-string v2, "Tees"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 614
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->time:I

    const-string v2, "Time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 615
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->time_label:I

    const-string v2, "Time:"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 616
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->time_passed:I

    const-string v2, "Time Passed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->tip_each_person_pay:I

    const-string v2, "Each person pays"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->tip_pay_label:I

    const-string v2, "Tip each person pays"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->tip_percent_label:I

    const-string v2, "Tip Percentage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->title:I

    const-string v2, "Title"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->thank_you:I

    const-string v2, "Thank you"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->token_issue:I

    const-string v2, "Token Issue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->total:I

    const-string v2, "Total"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->total_amount:I

    const-string v2, "Total Amount"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->total_tip:I

    const-string v2, "Total Tip"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->total_yards:I

    const-string v2, "Total Yards"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 627
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->twitter:I

    const-string v2, "Twitter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 628
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->unknown_error:I

    const-string v2, "Oops! An error occurred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->unlocked:I

    const-string v2, "Unlocked!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->unlocked_coupon:I

    const-string v2, "%s unlocked this coupon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->upcoming_events:I

    const-string v2, "Upcoming"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->update:I

    const-string v2, "Update"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->update_failed:I

    const-string v2, "Update Failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 634
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->update_status:I

    const-string v2, "Update Status"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 635
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->update_successful:I

    const-string v2, "Update Successful"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 636
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->upload:I

    const-string v2, "Upload"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->username:I

    const-string v2, "Username"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->view_website:I

    const-string v2, "Website"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->voice_recording:I

    const-string v2, "Voice Recording"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->voice_removing:I

    const-string v2, "Do you want to delete this voice?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->voice_sharing:I

    const-string v2, "I recorded a voice message. Check it out."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->weeks_template:I

    const-string v2, "week(s) ago"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->words_notepad_count:I

    const-string v2, "%d words"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->wrong_credentials:I

    const-string v2, "Wrong user name or password"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->wrong_email_or_password:I

    const-string v2, "Email or Password is incorrect"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->yards:I

    const-string v2, "yards"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->you_were_awarded_a_stamp_title:I

    const-string v2, "Loyalty Awards"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 648
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->you_were_awarded_a_stamp_description:I

    const-string v2, "You were awarded a stamp for downloading the app"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->loan_term_input_hint:I

    const-string v2, "years"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 650
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->years_template:I

    const-string v2, "year(s) ago"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 651
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->yes:I

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 652
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->zip:I

    const-string v2, "Zip"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->black:I

    const-string v2, "Black"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->blue:I

    const-string v2, "Blue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 655
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->white:I

    const-string v2, "White"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->red:I

    const-string v2, "Red"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    sget v1, Lcom/biznessapps/layout/R$string;->green:I

    const-string v2, "Green"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 658
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 12
    sget-object v0, Lcom/biznessapps/localization/KeysMap;->keysConverter:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
