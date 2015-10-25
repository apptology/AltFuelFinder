.class public Lcom/biznessapps/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final BLOCKED_DAY_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DATE_PICKER_TITLE_FORMAT:Ljava/lang/String; = "EEE MMM d yyyy"

.field public static final MILLI_SEC_IN_DAY:J = 0x5265c00L

.field public static final MILLI_SEC_IN_HOUR:I = 0x36ee80

.field private static final MSEC_IN_ONE_DAY:J = 0x5265c00L

.field private static final MSEC_IN_ONE_HOUR:J = 0x36ee80L

.field public static final MSEC_IN_ONE_MIN:J = 0xea60L

.field private static final MSEC_IN_ONE_SEC:J = 0x3e8L

.field private static final MSEC_IN_ONE_WEEK:J = 0x240c8400L

.field public static final SECONDS_IN_HOUR:J = 0x36ee80L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateYears(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 7
    .param p0, "calTarget"    # Ljava/util/Calendar;
    .param p1, "calCurrent"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x1

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 310
    .local v1, "tmp":Ljava/util/Calendar;
    invoke-virtual {v1, v6, v6}, Ljava/util/Calendar;->add(II)V

    .line 311
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 312
    invoke-virtual {v1, v6, v6}, Ljava/util/Calendar;->add(II)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return v0
.end method

.method public static getBlockedDay(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "day"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "result":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDateBySec(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p0, "dateInSec"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "date":Ljava/util/Date;
    if-eqz p0, :cond_0

    .line 146
    const-string v3, "0"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "date":Ljava/util/Date;
    .local v1, "date":Ljava/util/Date;
    move-object v0, v1

    .line 154
    .end local v1    # "date":Ljava/util/Date;
    .restart local v0    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDateTime(J)Ljava/util/Date;
    .locals 5
    .param p0, "timeInSec"    # J

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "date":Ljava/util/Date;
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-lez v3, :cond_0

    .line 61
    const-wide/16 v3, 0x3e8

    mul-long v1, p0, v3

    .line 62
    .local v1, "timeInMillisec":J
    new-instance v0, Ljava/util/Date;

    .end local v0    # "date":Ljava/util/Date;
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 64
    .end local v1    # "timeInMillisec":J
    .restart local v0    # "date":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method public static getDateWithLocalOffset(JF)Ljava/util/Date;
    .locals 9
    .param p0, "timeInSec"    # J
    .param p2, "offset"    # F

    .prologue
    .line 80
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_0

    .line 81
    const-wide/16 v5, 0x3e8

    mul-long v3, p0, v5

    .line 83
    .local v3, "timeInMillisec":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-long v5, v5

    sub-long v5, v3, v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 85
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 87
    .local v2, "primaryDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 88
    .local v1, "gmtOffset":I
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const v7, 0x4a5bba00    # 3600000.0f

    mul-float/2addr v7, p2

    float-to-int v7, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    int-to-long v7, v1

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 92
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "gmtOffset":I
    .end local v2    # "primaryDate":Ljava/util/Date;
    .end local v3    # "timeInMillisec":J
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getDateWithOffset(J)Ljava/util/Date;
    .locals 8
    .param p0, "timeInSec"    # J

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "correctedDate":Ljava/util/Date;
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-lez v6, :cond_0

    .line 128
    const-wide/16 v6, 0x3e8

    mul-long v4, p0, v6

    .line 129
    .local v4, "timeInMillisec":J
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v3

    .line 130
    .local v3, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppSettings;->getServerTimezone()I

    move-result v2

    .line 131
    .local v2, "serverOffset":I
    new-instance v0, Ljava/util/Date;

    .end local v0    # "correctedDate":Ljava/util/Date;
    mul-int/lit8 v6, v2, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v6, v4

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .restart local v0    # "correctedDate":Ljava/util/Date;
    move-object v1, v0

    .line 134
    .end local v0    # "correctedDate":Ljava/util/Date;
    .end local v2    # "serverOffset":I
    .end local v3    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    .end local v4    # "timeInMillisec":J
    .local v1, "correctedDate":Ljava/util/Date;
    :goto_0
    return-object v1

    .end local v1    # "correctedDate":Ljava/util/Date;
    .restart local v0    # "correctedDate":Ljava/util/Date;
    :cond_0
    move-object v1, v0

    .end local v0    # "correctedDate":Ljava/util/Date;
    .restart local v1    # "correctedDate":Ljava/util/Date;
    goto :goto_0
.end method

.method public static getDateWithOffset(JF)Ljava/util/Date;
    .locals 7
    .param p0, "timeInSec"    # J
    .param p2, "offset"    # F

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "correctedDate":Ljava/util/Date;
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_0

    .line 117
    const-wide/16 v5, 0x3e8

    mul-long v3, p0, v5

    .line 118
    .local v3, "timeInMillisec":J
    float-to-int v5, p2

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v2, v5, 0x3e8

    .line 119
    .local v2, "offsetTime":I
    new-instance v0, Ljava/util/Date;

    .end local v0    # "correctedDate":Ljava/util/Date;
    int-to-long v5, v2

    sub-long v5, v3, v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .restart local v0    # "correctedDate":Ljava/util/Date;
    move-object v1, v0

    .line 122
    .end local v0    # "correctedDate":Ljava/util/Date;
    .end local v2    # "offsetTime":I
    .end local v3    # "timeInMillisec":J
    .local v1, "correctedDate":Ljava/util/Date;
    :goto_0
    return-object v1

    .end local v1    # "correctedDate":Ljava/util/Date;
    .restart local v0    # "correctedDate":Ljava/util/Date;
    :cond_0
    move-object v1, v0

    .end local v0    # "correctedDate":Ljava/util/Date;
    .restart local v1    # "correctedDate":Ljava/util/Date;
    goto :goto_0
.end method

.method public static getDateWithOffset(JFI)Ljava/util/Date;
    .locals 8
    .param p0, "timeInSec"    # J
    .param p2, "offset"    # F
    .param p3, "serverOffset"    # I

    .prologue
    const/high16 v7, 0x42700000    # 60.0f

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "correctedDate":Ljava/util/Date;
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_0

    .line 70
    const-wide/16 v5, 0x3e8

    mul-long v3, p0, v5

    .line 72
    .local v3, "timeInMillisec":J
    int-to-float v5, p3

    sub-float v5, p2, v5

    mul-float/2addr v5, v7

    mul-float/2addr v5, v7

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 73
    .local v2, "offsetTime":I
    new-instance v0, Ljava/util/Date;

    .end local v0    # "correctedDate":Ljava/util/Date;
    int-to-long v5, v2

    sub-long v5, v3, v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .restart local v0    # "correctedDate":Ljava/util/Date;
    move-object v1, v0

    .line 76
    .end local v0    # "correctedDate":Ljava/util/Date;
    .end local v2    # "offsetTime":I
    .end local v3    # "timeInMillisec":J
    .local v1, "correctedDate":Ljava/util/Date;
    :goto_0
    return-object v1

    .end local v1    # "correctedDate":Ljava/util/Date;
    .restart local v0    # "correctedDate":Ljava/util/Date;
    :cond_0
    move-object v1, v0

    .end local v0    # "correctedDate":Ljava/util/Date;
    .restart local v1    # "correctedDate":Ljava/util/Date;
    goto :goto_0
.end method

.method public static getEndDateWithLocalOffset(JF)Ljava/util/Date;
    .locals 13
    .param p0, "timeInSec"    # J
    .param p2, "offset"    # F

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 96
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 97
    const-wide/16 v1, 0x3e8

    mul-long v9, p0, v1

    .line 99
    .local v9, "timeInMillisec":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v9, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 101
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 103
    .local v8, "primaryDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    .line 104
    .local v7, "gmtOffset":I
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const v3, 0x4a5bba00    # 3600000.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    int-to-long v5, v3

    add-long/2addr v1, v5

    int-to-long v5, v7

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 106
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 107
    invoke-virtual {v0, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 108
    const/16 v1, 0xc

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 111
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v7    # "gmtOffset":I
    .end local v8    # "primaryDate":Ljava/util/Date;
    .end local v9    # "timeInMillisec":J
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getMonth(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 8
    .param p0, "calTarget"    # Ljava/util/Calendar;
    .param p1, "calCurrent"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 329
    .local v1, "tmp":Ljava/util/Calendar;
    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 330
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 331
    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return v0
.end method

.method public static getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringInterval(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "primaryDate"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v1, ""

    .line 257
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/biznessapps/utils/DateUtils;->getStringInterval(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 261
    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringInterval(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "primaryDate"    # Ljava/util/Date;

    .prologue
    .line 265
    const-string v5, ""

    .line 267
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 268
    .local v1, "calTarget":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 270
    .local v0, "calCurrent":Ljava/util/Calendar;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 272
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v3, v8, v10

    .line 275
    .local v3, "interval":J
    const-string v6, "%d %s"

    .line 276
    .local v6, "resultTemplate":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/biznessapps/utils/DateUtils;->calculateYears(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v7

    .local v7, "value":I
    if-lez v7, :cond_1

    .line 277
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget v10, Lcom/biznessapps/layout/R$string;->years_template:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .end local v0    # "calCurrent":Ljava/util/Calendar;
    .end local v1    # "calTarget":Ljava/util/Calendar;
    .end local v3    # "interval":J
    .end local v6    # "resultTemplate":Ljava/lang/String;
    .end local v7    # "value":I
    :cond_0
    :goto_0
    return-object v5

    .line 278
    .restart local v0    # "calCurrent":Ljava/util/Calendar;
    .restart local v1    # "calTarget":Ljava/util/Calendar;
    .restart local v3    # "interval":J
    .restart local v6    # "resultTemplate":Ljava/lang/String;
    .restart local v7    # "value":I
    :cond_1
    invoke-static {v1, v0}, Lcom/biznessapps/utils/DateUtils;->getMonth(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v7

    if-lez v7, :cond_2

    .line 279
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget v10, Lcom/biznessapps/layout/R$string;->months_template:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 280
    :cond_2
    const-wide/32 v8, 0x240c8400

    cmp-long v8, v3, v8

    if-ltz v8, :cond_3

    .line 281
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/32 v10, 0x240c8400

    div-long v10, v3, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget v10, Lcom/biznessapps/layout/R$string;->weeks_template:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 282
    :cond_3
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v3, v8

    if-ltz v8, :cond_4

    .line 283
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/32 v10, 0x5265c00

    div-long v10, v3, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget v10, Lcom/biznessapps/layout/R$string;->days_template:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 284
    :cond_4
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v3, v8

    if-ltz v8, :cond_5

    .line 285
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/32 v10, 0x36ee80

    div-long v10, v3, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget v10, Lcom/biznessapps/layout/R$string;->hours_template:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 286
    :cond_5
    const-wide/32 v8, 0xea60

    cmp-long v8, v3, v8

    if-ltz v8, :cond_6

    .line 287
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/32 v10, 0xea60

    div-long v10, v3, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget v10, Lcom/biznessapps/layout/R$string;->mins_template:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 288
    :cond_6
    const-wide/16 v8, 0x3e8

    cmp-long v8, v3, v8

    if-ltz v8, :cond_7

    .line 289
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x3e8

    div-long v10, v3, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget v10, Lcom/biznessapps/layout/R$string;->secs_template:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 290
    :cond_7
    const-wide/16 v8, 0x3e8

    cmp-long v8, v3, v8

    if-gez v8, :cond_0

    .line 291
    sget v8, Lcom/biznessapps/layout/R$string;->right_now:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 293
    .end local v0    # "calCurrent":Ljava/util/Calendar;
    .end local v1    # "calTarget":Ljava/util/Calendar;
    .end local v3    # "interval":J
    .end local v6    # "resultTemplate":Ljava/lang/String;
    .end local v7    # "value":I
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getTimezoneValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 49
    .local v2, "tz":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 50
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    const v4, 0x36ee80

    div-int v1, v3, v4

    .line 51
    .local v1, "offsetFromUtc":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getTomorrowDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p0, "currentDate"    # Ljava/util/Date;

    .prologue
    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 165
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getYesterdayDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p0, "currentDate"    # Ljava/util/Date;

    .prologue
    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 175
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 176
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static isBiggerOrEqual(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1
    .param p0, "firstDate"    # Ljava/util/Date;
    .param p1, "secondDate"    # Ljava/util/Date;

    .prologue
    .line 244
    invoke-static {p0, p1}, Lcom/biznessapps/utils/DateUtils;->isBiggerThan(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/biznessapps/utils/DateUtils;->isTheSameDate(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBiggerThan(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 8
    .param p0, "firstDate"    # Ljava/util/Date;
    .param p1, "secondDate"    # Ljava/util/Date;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 218
    .local v0, "date1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 220
    .local v1, "date2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "result":Z
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 223
    const/4 v2, 0x1

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 224
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 225
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-le v3, v4, :cond_2

    .line 226
    const/4 v2, 0x1

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 228
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 229
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isTheSameDate(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 7
    .param p0, "firstDate"    # Ljava/util/Date;
    .param p1, "secondDate"    # Ljava/util/Date;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 200
    .local v0, "date1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 202
    .local v1, "date2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
