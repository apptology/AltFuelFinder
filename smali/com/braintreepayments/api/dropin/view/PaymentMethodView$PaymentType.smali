.class public final enum Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
.super Ljava/lang/Enum;
.source "PaymentMethodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/dropin/view/PaymentMethodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum AMEX:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum ANDROID_PAY:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum DINERS:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum DISCOVER:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum JCB:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum MAESTRO:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum MASTERCARD:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum PAYPAL:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum UNKNOWN:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

.field public static final enum VISA:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;


# instance fields
.field private mCanonicalName:Ljava/lang/String;

.field private final mDescriptorStringId:I

.field private final mPictureResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v1, "VISA"

    sget v3, Lcom/braintreepayments/api/dropin/R$drawable;->bt_visa:I

    sget v4, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_visa:I

    const-string v5, "Visa"

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->VISA:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 25
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "MASTERCARD"

    sget v6, Lcom/braintreepayments/api/dropin/R$drawable;->bt_mastercard:I

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_mastercard:I

    const-string v8, "MasterCard"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->MASTERCARD:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 26
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "DISCOVER"

    sget v6, Lcom/braintreepayments/api/dropin/R$drawable;->bt_discover:I

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_discover:I

    const-string v8, "Discover"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->DISCOVER:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 27
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "AMEX"

    sget v6, Lcom/braintreepayments/api/dropin/R$drawable;->bt_amex:I

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_amex:I

    const-string v8, "American Express"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->AMEX:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 28
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "JCB"

    sget v6, Lcom/braintreepayments/api/dropin/R$drawable;->bt_jcb:I

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_jcb:I

    const-string v8, "JCB"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->JCB:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 29
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "DINERS"

    const/4 v5, 0x5

    sget v6, Lcom/braintreepayments/api/dropin/R$drawable;->bt_diners:I

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_diners:I

    const-string v8, "Diners"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->DINERS:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 30
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "MAESTRO"

    const/4 v5, 0x6

    sget v6, Lcom/braintreepayments/api/dropin/R$drawable;->bt_maestro:I

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_maestro:I

    const-string v8, "Maestro"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->MAESTRO:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 31
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "PAYPAL"

    const/4 v5, 0x7

    sget v6, Lcom/braintreepayments/api/dropin/R$drawable;->bt_paypal:I

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_paypal:I

    const-string v8, "PayPal"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->PAYPAL:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 32
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "ANDROID_PAY"

    const/16 v5, 0x8

    sget v6, Lcom/braintreepayments/api/dropin/R$drawable;->bt_android_pay:I

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_android_pay:I

    const-string v8, "Google Wallet"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->ANDROID_PAY:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 33
    new-instance v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    const-string v4, "UNKNOWN"

    const/16 v5, 0x9

    const/4 v6, -0x1

    sget v7, Lcom/braintreepayments/api/dropin/R$string;->bt_descriptor_unknown:I

    const-string v8, "unknown"

    invoke-direct/range {v3 .. v8}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    sget-object v1, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->VISA:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->MASTERCARD:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->DISCOVER:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->AMEX:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->JCB:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->DINERS:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->MAESTRO:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->PAYPAL:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->ANDROID_PAY:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->$VALUES:[Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "pictureResId"    # I
    .param p4, "descriptorStringId"    # I
    .param p5, "canonicalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->mPictureResId:I

    .line 45
    iput p4, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->mDescriptorStringId:I

    .line 46
    iput-object p5, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->mCanonicalName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;)I
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .prologue
    .line 23
    iget v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->mPictureResId:I

    return v0
.end method

.method static synthetic access$100(Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;)I
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    .prologue
    .line 23
    iget v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->mDescriptorStringId:I

    return v0
.end method

.method static forType(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
    .locals 5
    .param p0, "paymentMethodType"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->values()[Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    move-result-object v0

    .local v0, "arr$":[Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 51
    .local v3, "type":Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
    iget-object v4, v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    .end local v3    # "type":Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
    :goto_1
    return-object v3

    .line 50
    .restart local v3    # "type":Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v3    # "type":Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
    :cond_1
    sget-object v3, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    return-object v0
.end method

.method public static values()[Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->$VALUES:[Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    invoke-virtual {v0}, [Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braintreepayments/api/dropin/view/PaymentMethodView$PaymentType;

    return-object v0
.end method
