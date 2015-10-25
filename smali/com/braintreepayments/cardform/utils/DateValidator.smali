.class public Lcom/braintreepayments/cardform/utils/DateValidator;
.super Ljava/lang/Object;
.source "DateValidator.java"


# static fields
.field private static final INSTANCE:Lcom/braintreepayments/cardform/utils/DateValidator;

.field private static final MAXIMUM_VALID_YEAR_DIFFERENCE:I = 0x14


# instance fields
.field private final mCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/braintreepayments/cardform/utils/DateValidator;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braintreepayments/cardform/utils/DateValidator;-><init>(Ljava/util/Calendar;)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/DateValidator;->INSTANCE:Lcom/braintreepayments/cardform/utils/DateValidator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/braintreepayments/cardform/utils/DateValidator;->mCalendar:Ljava/util/Calendar;

    .line 33
    return-void
.end method

.method private getCurrentMonth()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/braintreepayments/cardform/utils/DateValidator;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getCurrentTwoDigitYear()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/braintreepayments/cardform/utils/DateValidator;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "month"    # Ljava/lang/String;
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/braintreepayments/cardform/utils/DateValidator;->INSTANCE:Lcom/braintreepayments/cardform/utils/DateValidator;

    invoke-virtual {v0, p0, p1}, Lcom/braintreepayments/cardform/utils/DateValidator;->isValidHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected isValidHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "monthString"    # Ljava/lang/String;
    .param p2, "yearString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v5

    .line 50
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    .local v2, "month":I
    if-lt v2, v6, :cond_0

    const/16 v7, 0xc

    if-gt v2, v7, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/braintreepayments/cardform/utils/DateValidator;->getCurrentTwoDigitYear()I

    move-result v1

    .line 65
    .local v1, "currentYear":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 66
    .local v4, "yearLength":I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, "year":I
    :goto_1
    if-ne v3, v1, :cond_2

    invoke-direct {p0}, Lcom/braintreepayments/cardform/utils/DateValidator;->getCurrentMonth()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 78
    :cond_2
    if-ge v3, v1, :cond_3

    .line 80
    add-int/lit8 v0, v3, 0x64

    .line 81
    .local v0, "adjustedYear":I
    sub-int v7, v0, v1

    const/16 v8, 0x14

    if-gt v7, v8, :cond_0

    .end local v0    # "adjustedYear":I
    :cond_3
    move v5, v6

    .line 86
    goto :goto_0

    .line 68
    .end local v3    # "year":I
    :cond_4
    const/4 v7, 0x4

    if-ne v4, v7, :cond_0

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    and-int/lit8 v3, v7, 0x64

    .restart local v3    # "year":I
    goto :goto_1
.end method
