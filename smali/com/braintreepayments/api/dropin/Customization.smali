.class public Lcom/braintreepayments/api/dropin/Customization;
.super Ljava/lang/Object;
.source "Customization.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;
    }
.end annotation


# instance fields
.field private mActionBarLogo:I

.field private mActionBarTitle:Ljava/lang/String;

.field private mAmount:Ljava/lang/String;

.field private mPrimaryDescription:Ljava/lang/String;

.field private mSecondaryDescription:Ljava/lang/String;

.field private mSubmitButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method protected getActionBarLogo()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/braintreepayments/api/dropin/Customization;->mActionBarLogo:I

    return v0
.end method

.method protected getActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization;->mActionBarTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization;->mAmount:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrimaryDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization;->mPrimaryDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected getSecondaryDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization;->mSecondaryDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected getSubmitButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization;->mSubmitButtonText:Ljava/lang/String;

    return-object v0
.end method

.method protected setActionBarLogo(I)V
    .locals 0
    .param p1, "actionBarLogo"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/braintreepayments/api/dropin/Customization;->mActionBarLogo:I

    .line 33
    return-void
.end method

.method protected setActionBarTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionBarTitle"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/Customization;->mActionBarTitle:Ljava/lang/String;

    .line 25
    return-void
.end method

.method protected setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/Customization;->mAmount:Ljava/lang/String;

    .line 65
    return-void
.end method

.method protected setPrimaryDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryDescription"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/Customization;->mPrimaryDescription:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected setSecondaryDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "secondaryDescription"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/Customization;->mSecondaryDescription:Ljava/lang/String;

    .line 49
    return-void
.end method

.method protected setSubmitButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "submitButtonText"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/Customization;->mSubmitButtonText:Ljava/lang/String;

    .line 57
    return-void
.end method
