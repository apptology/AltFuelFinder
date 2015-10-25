.class public Lcom/biznessapps/car_finder/CarFinderActivity;
.super Lcom/biznessapps/common/activities/CommonMapActivity;
.source "CarFinderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;
    }
.end annotation


# static fields
.field private static final DECREASE_ALARM_EVENT:I = 0x2

.field private static final DELAY_TIME:I = 0x3e8

.field private static final EMAIL_PHOTO_IMAGE:Ljava/lang/String; = "email_photo_image.jpg"

.field private static final INCREASE_TIMER_EVENT:I = 0x1

.field public static final SECS_IN_MINUTE:I = 0x3c

.field private static alarmRingtone:Landroid/media/Ringtone;

.field private static carLocation:Landroid/location/Location;

.field private static lastAlarmValue:J

.field private static lastTimerValue:J


# instance fields
.field private alarmButton:Landroid/widget/ImageButton;

.field private alarmCounter:I

.field private alarmTextView:Landroid/widget/TextView;

.field private bottomContainer:Landroid/view/ViewGroup;

.field private carSetTime:J

.field private eventHandler:Landroid/os/Handler;

.field private isCarLocationSet:Z

.field private locationListener:Landroid/location/LocationListener;

.field private myLocation:Landroid/location/Location;

.field private photoImage:Ljava/io/File;

.field private selectedImagePath:Ljava/lang/String;

.field private timerCounter:I

.field private timerTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->carSetTime:J

    .line 567
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/car_finder/CarFinderActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->markersHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/car_finder/CarFinderActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->carSetTime:J

    return-wide v0
.end method

.method static synthetic access$1002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 47
    sput-wide p0, Lcom/biznessapps/car_finder/CarFinderActivity;->lastTimerValue:J

    return-wide p0
.end method

.method static synthetic access$102(Lcom/biznessapps/car_finder/CarFinderActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->carSetTime:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/biznessapps/car_finder/CarFinderActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->isCarLocationSet:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->initPois()V

    return-void
.end method

.method static synthetic access$1300(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->bottomContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/car_finder/CarFinderActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/biznessapps/car_finder/CarFinderActivity;->sendChangeTabMessage(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/biznessapps/car_finder/CarFinderActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->photoImage:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/biznessapps/car_finder/CarFinderActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->photoImage:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/biznessapps/car_finder/CarFinderActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    return v0
.end method

.method static synthetic access$1610(Lcom/biznessapps/car_finder/CarFinderActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    return v0
.end method

.method static synthetic access$1700(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->startAlarmSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/car_finder/CarFinderActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/biznessapps/car_finder/CarFinderActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/biznessapps/car_finder/CarFinderActivity;->getSecInTimeFormat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/biznessapps/car_finder/CarFinderActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    return v0
.end method

.method static synthetic access$2108(Lcom/biznessapps/car_finder/CarFinderActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    return v0
.end method

.method static synthetic access$2200(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/car_finder/CarFinderActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$400()Landroid/location/Location;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$402(Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;

    .prologue
    .line 47
    sput-object p0, Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$500(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->emailPhoto()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/car_finder/CarFinderActivity;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$602(Lcom/biznessapps/car_finder/CarFinderActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$700(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->stopTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->stopAlarmTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/car_finder/CarFinderActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->reinitAlarm()V

    return-void
.end method

.method private checkLastValues()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 485
    sget-wide v0, Lcom/biznessapps/car_finder/CarFinderActivity;->lastTimerValue:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->bottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/biznessapps/car_finder/CarFinderActivity;->lastTimerValue:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v7

    long-to-int v0, v0

    iput v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    .line 488
    iget v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    .line 489
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    invoke-direct {p0, v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->getSecInTimeFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-direct {p0, v4}, Lcom/biznessapps/car_finder/CarFinderActivity;->sendChangeTabMessage(I)V

    .line 492
    :cond_0
    sget-wide v0, Lcom/biznessapps/car_finder/CarFinderActivity;->lastAlarmValue:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 493
    sget-wide v0, Lcom/biznessapps/car_finder/CarFinderActivity;->lastAlarmValue:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v7

    long-to-int v0, v0

    iput v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    .line 494
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    invoke-direct {p0, v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->getSecInTimeFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->sendChangeTabMessage(I)V

    .line 497
    :cond_1
    sget-object v0, Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 498
    iput-boolean v4, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->isCarLocationSet:Z

    .line 499
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->initPois()V

    .line 501
    :cond_2
    return-void
.end method

.method private email(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emailTo"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "emailText"    # Ljava/lang/String;
    .param p5, "fileToSend"    # Ljava/io/File;

    .prologue
    .line 455
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 465
    .local v0, "fileUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 467
    sget v3, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->startActivity(Landroid/content/Intent;)V

    .line 468
    return-void
.end method

.method private emailPhoto()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/biznessapps/car_finder/CarFinderActivity$11;

    invoke-direct {v0, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$11;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    invoke-static {p0, v0}, Lcom/biznessapps/utils/ViewUtils;->openChoosePhotoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method private getLocationListener()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->locationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Lcom/biznessapps/car_finder/CarFinderActivity$13;

    invoke-direct {v0, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$13;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    iput-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->locationListener:Landroid/location/LocationListener;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private getSecInTimeFormat(I)Ljava/lang/String;
    .locals 11
    .param p1, "totalSecNumber"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 475
    const-string v5, "%02d:%02d:%02d"

    .line 476
    .local v5, "secFormat":Ljava/lang/String;
    if-gez p1, :cond_0

    move v0, v6

    .line 477
    .local v0, "isNegative":Z
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rem-int/lit8 v3, v8, 0x3c

    .line 478
    .local v3, "numberOfSec":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    rem-int/lit8 v2, v8, 0x3c

    .line 479
    .local v2, "numberOfMin":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    div-int/lit8 v1, v8, 0x3c

    .line 480
    .local v1, "numberOfHours":I
    if-eqz v0, :cond_1

    const-string v4, "-"

    .line 481
    .local v4, "prefix":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v0    # "isNegative":Z
    .end local v1    # "numberOfHours":I
    .end local v2    # "numberOfMin":I
    .end local v3    # "numberOfSec":I
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    move v0, v7

    .line 476
    goto :goto_0

    .line 480
    .restart local v0    # "isNegative":Z
    .restart local v1    # "numberOfHours":I
    .restart local v2    # "numberOfMin":I
    .restart local v3    # "numberOfSec":I
    :cond_1
    const-string v4, ""

    goto :goto_1
.end method

.method private getTimeValue(II)I
    .locals 2
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 471
    mul-int/lit8 v0, p2, 0x3c

    mul-int/lit16 v1, p1, 0xe10

    add-int/2addr v0, v1

    return v0
.end method

.method private initButtons()V
    .locals 10

    .prologue
    .line 263
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_alarm_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmButton:Landroid/widget/ImageButton;

    .line 264
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_map_mode_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 265
    .local v4, "mapModeButton":Landroid/widget/Button;
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_hyb_mode_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 266
    .local v2, "hybModeButton":Landroid/widget/Button;
    sget v8, Lcom/biznessapps/layout/R$string;->map:I

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 267
    sget v8, Lcom/biznessapps/layout/R$string;->hyb:I

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 268
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 269
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_directions_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 270
    .local v0, "directionsButton":Landroid/widget/ImageButton;
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_photo_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 271
    .local v5, "photoButton":Landroid/widget/ImageButton;
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_email_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 272
    .local v1, "emailButton":Landroid/widget/ImageButton;
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_trash_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 273
    .local v7, "trashButton":Landroid/widget/ImageButton;
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_pin_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 274
    .local v6, "pinButton":Landroid/widget/ImageButton;
    sget v8, Lcom/biznessapps/layout/R$id;->car_finder_location_button:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 275
    .local v3, "locationButton":Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmButton:Landroid/widget/ImageButton;

    new-instance v9, Lcom/biznessapps/car_finder/CarFinderActivity$2;

    invoke-direct {v9, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$2;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v8, Lcom/biznessapps/car_finder/CarFinderActivity$3;

    invoke-direct {v8, p0, v4, v2}, Lcom/biznessapps/car_finder/CarFinderActivity$3;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v8, Lcom/biznessapps/car_finder/CarFinderActivity$4;

    invoke-direct {v8, p0, v2, v4}, Lcom/biznessapps/car_finder/CarFinderActivity$4;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v8, Lcom/biznessapps/car_finder/CarFinderActivity$5;

    invoke-direct {v8, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$5;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    new-instance v8, Lcom/biznessapps/car_finder/CarFinderActivity$6;

    invoke-direct {v8, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$6;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v8, Lcom/biznessapps/car_finder/CarFinderActivity$7;

    invoke-direct {v8, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$7;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    new-instance v8, Lcom/biznessapps/car_finder/CarFinderActivity$8;

    invoke-direct {v8, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$8;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    new-instance v8, Lcom/biznessapps/car_finder/CarFinderActivity$9;

    invoke-direct {v8, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$9;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    new-instance v8, Lcom/biznessapps/car_finder/CarFinderActivity$10;

    invoke-direct {v8, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$10;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    return-void
.end method

.method private initLocation()V
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;

    .line 228
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocationFinder;->addLocationListener(Landroid/location/LocationListener;)V

    .line 229
    return-void
.end method

.method private initPois()V
    .locals 5

    .prologue
    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;>;"
    new-instance v1, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;

    invoke-direct {v1}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;-><init>()V

    .line 235
    .local v1, "item":Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;
    iget-object v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->setLatitude(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->setLongitude(Ljava/lang/String;)V

    .line 237
    sget v3, Lcom/biznessapps/layout/R$string;->current_location:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->setTitle(Ljava/lang/String;)V

    .line 238
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-boolean v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->isCarLocationSet:Z

    if-eqz v3, :cond_0

    .line 242
    new-instance v0, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;

    invoke-direct {v0}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;-><init>()V

    .line 243
    .local v0, "carItem":Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;
    sget-object v3, Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->setLatitude(Ljava/lang/String;)V

    .line 244
    sget-object v3, Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->setLongitude(Ljava/lang/String;)V

    .line 245
    sget v3, Lcom/biznessapps/layout/R$string;->car_location:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->setTitle(Ljava/lang/String;)V

    .line 246
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->setCarItem(Z)V

    .line 248
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v0    # "carItem":Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->addPins(Ljava/util/List;)V

    .line 251
    return-void
.end method

.method private initTimers()V
    .locals 2

    .prologue
    .line 505
    new-instance v0, Lcom/biznessapps/car_finder/CarFinderActivity$12;

    invoke-virtual {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/car_finder/CarFinderActivity$12;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->eventHandler:Landroid/os/Handler;

    .line 532
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 254
    sget v0, Lcom/biznessapps/layout/R$id;->car_finder_bottom_container:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->bottomContainer:Landroid/view/ViewGroup;

    .line 255
    sget v0, Lcom/biznessapps/layout/R$id;->car_finder_timer_text:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerTextView:Landroid/widget/TextView;

    .line 256
    sget v0, Lcom/biznessapps/layout/R$id;->car_finder_alarm_text:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerTextView:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->set:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->set_timer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->initButtons()V

    .line 260
    return-void
.end method

.method private reinitAlarm()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmButton:Landroid/widget/ImageButton;

    sget v1, Lcom/biznessapps/layout/R$drawable;->alarm_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 414
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/biznessapps/car_finder/CarFinderActivity;->lastAlarmValue:J

    .line 415
    return-void
.end method

.method private sendChangeTabMessage(I)V
    .locals 4
    .param p1, "eventId"    # I

    .prologue
    .line 535
    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->eventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    return-void
.end method

.method private startAlarmSound()V
    .locals 2

    .prologue
    .line 426
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 427
    .local v0, "alert":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 429
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 431
    :cond_0
    if-eqz v0, :cond_2

    .line 432
    sget-object v1, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    sput-object v1, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmRingtone:Landroid/media/Ringtone;

    .line 435
    :cond_1
    sget-object v1, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 436
    sget-object v1, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 439
    :cond_2
    return-void
.end method

.method private stopAlarmSound()V
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 444
    const/4 v0, 0x0

    sput-object v0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmRingtone:Landroid/media/Ringtone;

    .line 446
    :cond_0
    return-void
.end method

.method private stopAlarmTimer()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->set_timer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    .line 420
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->stopTimer(I)V

    .line 421
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->stopAlarmSound()V

    .line 423
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerTextView:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->set:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    .line 451
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->stopTimer(I)V

    .line 452
    return-void
.end method

.method private stopTimer(I)V
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    return-void
.end method


# virtual methods
.method protected addPins(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/biznessapps/common/entities/MapEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/biznessapps/common/entities/MapEntity;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonMapActivity;->addPins(Ljava/util/List;)V

    .line 153
    iget-boolean v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->isCarLocationSet:Z

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$color;->circle_fill_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 155
    .local v0, "fillColor":I
    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    sget-object v4, Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sget-object v6, Lcom/biznessapps/car_finder/CarFinderActivity;->carLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    const-wide v3, 0x4085e00000000000L    # 700.0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    .line 162
    .end local v0    # "fillColor":I
    :cond_0
    return-void
.end method

.method protected getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/biznessapps/car_finder/CarFinderActivity$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/car_finder/CarFinderActivity$1;-><init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/biznessapps/layout/R$layout;->car_finder_layout:I

    return v0
.end method

.method protected getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 13
    .param p1, "myLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, "carItem":Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;
    instance-of v10, p2, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;

    if-eqz v10, :cond_0

    move-object v2, p2

    .line 168
    check-cast v2, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;

    .line 172
    invoke-virtual {v2}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->isCarItem()Z

    move-result v10

    if-eqz v10, :cond_1

    sget v1, Lcom/biznessapps/layout/R$drawable;->pin_red:I

    .line 174
    .local v1, "bitmapResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$dimen;->map_pin_size:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 176
    .local v4, "flagWidth":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v3, v10, v11

    .line 178
    .local v3, "flagHeight":F
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 179
    .local v7, "scaleKoef":F
    invoke-virtual {v2}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->isCarItem()Z

    move-result v10

    if-eqz v10, :cond_2

    mul-float v9, v4, v7

    .line 180
    .local v9, "scaledWidth":F
    :goto_1
    invoke-virtual {v2}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->isCarItem()Z

    move-result v10

    if-eqz v10, :cond_3

    mul-float v8, v3, v7

    .line 182
    .local v8, "scaledHeight":F
    :goto_2
    float-to-int v10, v9

    float-to-int v11, v8

    const/4 v12, 0x0

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 184
    .local v6, "newBmp":Landroid/graphics/Bitmap;
    new-instance v10, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v10}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v10, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v10

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    .line 187
    .local v5, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    return-object v5

    .line 170
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResId":I
    .end local v3    # "flagHeight":F
    .end local v4    # "flagWidth":F
    .end local v5    # "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    .end local v6    # "newBmp":Landroid/graphics/Bitmap;
    .end local v7    # "scaleKoef":F
    .end local v8    # "scaledHeight":F
    .end local v9    # "scaledWidth":F
    :cond_0
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "You can use only CarFinderItem for mapping. Check adding pins logic"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 172
    :cond_1
    sget v1, Lcom/biznessapps/layout/R$drawable;->my_location_bubble:I

    goto :goto_0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapResId":I
    .restart local v3    # "flagHeight":F
    .restart local v4    # "flagWidth":F
    .restart local v7    # "scaleKoef":F
    :cond_2
    move v9, v4

    .line 179
    goto :goto_1

    .restart local v9    # "scaledWidth":F
    :cond_3
    move v8, v3

    .line 180
    goto :goto_2
.end method

.method protected getZoomLevel()I
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0xe

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->initAdsWithAlpha()V

    .line 120
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_0

    .line 393
    invoke-super/range {p0 .. p3}, Lcom/biznessapps/common/activities/CommonMapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 396
    :cond_0
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 406
    invoke-super/range {p0 .. p3}, Lcom/biznessapps/common/activities/CommonMapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 409
    :goto_1
    return-void

    .line 381
    :pswitch_0
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "email_photo_image.jpg"

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .local v6, "photo":Ljava/io/File;
    invoke-virtual {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/biznessapps/car_finder/CarFinderActivity;->email(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 385
    .end local v6    # "photo":Ljava/io/File;
    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 386
    .local v13, "selectedImageUri":Landroid/net/Uri;
    invoke-static {v13, p0}, Lcom/biznessapps/utils/CommonUtils;->getPath(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->selectedImagePath:Ljava/lang/String;

    .line 387
    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->selectedImagePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 388
    new-instance v12, Ljava/io/File;

    iget-object v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->selectedImagePath:Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v12, "picture":Ljava/io/File;
    invoke-virtual {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/biznessapps/car_finder/CarFinderActivity;->email(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 398
    .end local v12    # "picture":Ljava/io/File;
    .end local v13    # "selectedImageUri":Landroid/net/Uri;
    :pswitch_2
    const-string v1, "HOURS_EXTRA"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MINUTES_EXTRA"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/car_finder/CarFinderActivity;->getTimeValue(II)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    .line 399
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/biznessapps/car_finder/CarFinderActivity;->sendChangeTabMessage(I)V

    goto :goto_1

    .line 402
    :pswitch_3
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->stopAlarmTimer()V

    .line 403
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->reinitAlarm()V

    goto :goto_1

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 396
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->initViews()V

    .line 105
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->initLocation()V

    .line 106
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->initTimers()V

    .line 107
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isAnyConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/biznessapps/utils/ViewUtils;->showNetwortErrorToast(Landroid/app/Activity;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->onDestroy()V

    .line 125
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocationFinder;->removeLocationListener(Landroid/location/LocationListener;)V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->onResume()V

    .line 131
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->startSearching()V

    .line 132
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->checkLastValues()V

    .line 133
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 137
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->onStop()V

    .line 138
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->stopSearching()V

    .line 139
    iget v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    if-lez v0, :cond_0

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->timerCounter:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/biznessapps/car_finder/CarFinderActivity;->lastTimerValue:J

    .line 142
    :cond_0
    iget v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    if-lez v0, :cond_1

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/biznessapps/car_finder/CarFinderActivity;->alarmCounter:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/biznessapps/car_finder/CarFinderActivity;->lastAlarmValue:J

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->stopTimer()V

    .line 146
    invoke-direct {p0}, Lcom/biznessapps/car_finder/CarFinderActivity;->stopAlarmTimer()V

    .line 147
    return-void
.end method

.method protected useConstantZoom()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method
