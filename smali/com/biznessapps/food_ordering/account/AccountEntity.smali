.class public Lcom/biznessapps/food_ordering/account/AccountEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "AccountEntity.java"


# static fields
.field public static final MY_ADDRESSES_TYPE:I = 0x2

.field public static final PAST_ORDERS_TYPE:I = 0x1

.field private static final serialVersionUID:J = 0x5a3fcf87378a8331L


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private type:I

.field private zipcode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->type:I

    return v0
.end method

.method public getZipcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 1
    .param p1, "address1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->address1:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 1
    .param p1, "address2"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->address2:Ljava/lang/String;

    .line 99
    :cond_0
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->email:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 1
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->firstName:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 1
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->lastName:Ljava/lang/String;

    .line 59
    :cond_0
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->latitude:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->longitude:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->nickName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 1
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->phone:Ljava/lang/String;

    .line 79
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->type:I

    .line 39
    return-void
.end method

.method public setZipcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "zipcode"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/AccountEntity;->zipcode:Ljava/lang/String;

    .line 109
    :cond_0
    return-void
.end method
