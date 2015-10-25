.class public final enum Lcom/braintreepayments/cardform/utils/CardType;
.super Ljava/lang/Enum;
.source "CardType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/braintreepayments/cardform/utils/CardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braintreepayments/cardform/utils/CardType;

.field public static final enum AMEX:Lcom/braintreepayments/cardform/utils/CardType;

.field private static final AMEX_SPACE_INDICES:[I

.field private static final DEFAULT_SPACE_INDICES:[I

.field public static final enum DINERS_CLUB:Lcom/braintreepayments/cardform/utils/CardType;

.field public static final enum DISCOVER:Lcom/braintreepayments/cardform/utils/CardType;

.field public static final enum JCB:Lcom/braintreepayments/cardform/utils/CardType;

.field public static final enum MAESTRO:Lcom/braintreepayments/cardform/utils/CardType;

.field public static final enum MASTERCARD:Lcom/braintreepayments/cardform/utils/CardType;

.field public static final enum UNION_PAY:Lcom/braintreepayments/cardform/utils/CardType;

.field public static final enum UNKNOWN:Lcom/braintreepayments/cardform/utils/CardType;

.field public static final enum VISA:Lcom/braintreepayments/cardform/utils/CardType;


# instance fields
.field private final mFrontResource:I

.field private final mMaxCardLength:I

.field private final mMinCardLength:I

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mSecurityCodeLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 14
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "VISA"

    const/4 v2, 0x0

    const-string v3, "^4\\d*"

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_visa:I

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->VISA:Lcom/braintreepayments/cardform/utils/CardType;

    .line 18
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "MASTERCARD"

    const/4 v2, 0x1

    const-string v3, "^5[1-5]\\d*"

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_mastercard:I

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->MASTERCARD:Lcom/braintreepayments/cardform/utils/CardType;

    .line 22
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "DISCOVER"

    const/4 v2, 0x2

    const-string v3, "^(6011|65|64[4-9]|622)\\d*"

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_discover:I

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->DISCOVER:Lcom/braintreepayments/cardform/utils/CardType;

    .line 26
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "AMEX"

    const/4 v2, 0x3

    const-string v3, "^3[47]\\d*"

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_amex:I

    const/16 v5, 0xf

    const/16 v6, 0xf

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->AMEX:Lcom/braintreepayments/cardform/utils/CardType;

    .line 30
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "DINERS_CLUB"

    const/4 v2, 0x4

    const-string v3, "^(36|38|30[0-5])\\d*"

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_diners:I

    const/16 v5, 0xe

    const/16 v6, 0xe

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->DINERS_CLUB:Lcom/braintreepayments/cardform/utils/CardType;

    .line 34
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "JCB"

    const/4 v2, 0x5

    const-string v3, "^35\\d*"

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_jcb:I

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->JCB:Lcom/braintreepayments/cardform/utils/CardType;

    .line 38
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "MAESTRO"

    const/4 v2, 0x6

    const-string v3, "^(5018|5020|5038|6304|6759|676[1-3])\\d*"

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_maestro:I

    const/16 v5, 0xc

    const/16 v6, 0x13

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->MAESTRO:Lcom/braintreepayments/cardform/utils/CardType;

    .line 42
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "UNION_PAY"

    const/4 v2, 0x7

    const-string v3, "^62\\d*"

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_card_highlighted:I

    const/16 v5, 0x10

    const/16 v6, 0x13

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->UNION_PAY:Lcom/braintreepayments/cardform/utils/CardType;

    .line 46
    new-instance v0, Lcom/braintreepayments/cardform/utils/CardType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    const-string v3, ""

    sget v4, Lcom/braintreepayments/cardform/R$drawable;->bt_card_highlighted:I

    const/16 v5, 0xc

    const/16 v6, 0x13

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/cardform/utils/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->UNKNOWN:Lcom/braintreepayments/cardform/utils/CardType;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/braintreepayments/cardform/utils/CardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->VISA:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->MASTERCARD:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->DISCOVER:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->AMEX:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->DINERS_CLUB:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->JCB:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->MAESTRO:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->UNION_PAY:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/braintreepayments/cardform/utils/CardType;->UNKNOWN:Lcom/braintreepayments/cardform/utils/CardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->$VALUES:[Lcom/braintreepayments/cardform/utils/CardType;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->AMEX_SPACE_INDICES:[I

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/braintreepayments/cardform/utils/CardType;->DEFAULT_SPACE_INDICES:[I

    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x4
        0xa
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x4
        0x8
        0xc
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 1
    .param p3, "regex"    # Ljava/lang/String;
    .param p4, "frontResource"    # I
    .param p5, "minCardLength"    # I
    .param p6, "maxCardLength"    # I
    .param p7, "securityCodeLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/cardform/utils/CardType;->mPattern:Ljava/util/regex/Pattern;

    .line 63
    iput p4, p0, Lcom/braintreepayments/cardform/utils/CardType;->mFrontResource:I

    .line 64
    iput p5, p0, Lcom/braintreepayments/cardform/utils/CardType;->mMinCardLength:I

    .line 65
    iput p6, p0, Lcom/braintreepayments/cardform/utils/CardType;->mMaxCardLength:I

    .line 66
    iput p7, p0, Lcom/braintreepayments/cardform/utils/CardType;->mSecurityCodeLength:I

    .line 67
    return-void
.end method

.method public static forCardNumber(Ljava/lang/String;)Lcom/braintreepayments/cardform/utils/CardType;
    .locals 6
    .param p0, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {}, Lcom/braintreepayments/cardform/utils/CardType;->values()[Lcom/braintreepayments/cardform/utils/CardType;

    move-result-object v0

    .local v0, "arr$":[Lcom/braintreepayments/cardform/utils/CardType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 159
    .local v1, "cardType":Lcom/braintreepayments/cardform/utils/CardType;
    invoke-virtual {v1}, Lcom/braintreepayments/cardform/utils/CardType;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    .line 160
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    .end local v1    # "cardType":Lcom/braintreepayments/cardform/utils/CardType;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :goto_1
    return-object v1

    .line 158
    .restart local v1    # "cardType":Lcom/braintreepayments/cardform/utils/CardType;
    .restart local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "cardType":Lcom/braintreepayments/cardform/utils/CardType;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    sget-object v1, Lcom/braintreepayments/cardform/utils/CardType;->UNKNOWN:Lcom/braintreepayments/cardform/utils/CardType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braintreepayments/cardform/utils/CardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/braintreepayments/cardform/utils/CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/utils/CardType;

    return-object v0
.end method

.method public static values()[Lcom/braintreepayments/cardform/utils/CardType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/braintreepayments/cardform/utils/CardType;->$VALUES:[Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {v0}, [Lcom/braintreepayments/cardform/utils/CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braintreepayments/cardform/utils/CardType;

    return-object v0
.end method


# virtual methods
.method public getFrontResource()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/braintreepayments/cardform/utils/CardType;->mFrontResource:I

    return v0
.end method

.method public getMaxCardLength()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/braintreepayments/cardform/utils/CardType;->mMaxCardLength:I

    return v0
.end method

.method public getMinCardLength()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/braintreepayments/cardform/utils/CardType;->mMinCardLength:I

    return v0
.end method

.method public getPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/braintreepayments/cardform/utils/CardType;->mPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getSecurityCodeLength()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/braintreepayments/cardform/utils/CardType;->mSecurityCodeLength:I

    return v0
.end method

.method public getSecurityCodeResource()I
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/braintreepayments/cardform/utils/CardType;->AMEX:Lcom/braintreepayments/cardform/utils/CardType;

    if-ne p0, v0, :cond_0

    .line 88
    sget v0, Lcom/braintreepayments/cardform/R$drawable;->bt_cid_highlighted:I

    .line 90
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/braintreepayments/cardform/R$drawable;->bt_cvv_highlighted:I

    goto :goto_0
.end method

.method public getSpaceIndices()[I
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/braintreepayments/cardform/utils/CardType;->AMEX:Lcom/braintreepayments/cardform/utils/CardType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/braintreepayments/cardform/utils/CardType;->AMEX_SPACE_INDICES:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/braintreepayments/cardform/utils/CardType;->DEFAULT_SPACE_INDICES:[I

    goto :goto_0
.end method

.method public isLegalCardLength(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    .local v0, "len":I
    iget v1, p0, Lcom/braintreepayments/cardform/utils/CardType;->mMinCardLength:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/braintreepayments/cardform/utils/CardType;->mMaxCardLength:I

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public validate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 142
    .local v0, "numberLength":I
    iget v2, p0, Lcom/braintreepayments/cardform/utils/CardType;->mMinCardLength:I

    if-lt v0, v2, :cond_0

    iget v2, p0, Lcom/braintreepayments/cardform/utils/CardType;->mMaxCardLength:I

    if-gt v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/braintreepayments/cardform/utils/CardType;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-static {p1}, Lcom/braintreepayments/cardform/utils/CardUtils;->isLuhnValid(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
