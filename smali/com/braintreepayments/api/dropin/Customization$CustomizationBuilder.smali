.class public Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;
.super Ljava/lang/Object;
.source "Customization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/dropin/Customization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizationBuilder"
.end annotation


# instance fields
.field private mCustomization:Lcom/braintreepayments/api/dropin/Customization;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/braintreepayments/api/dropin/Customization;

    invoke-direct {v0}, Lcom/braintreepayments/api/dropin/Customization;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    .line 77
    return-void
.end method


# virtual methods
.method public actionBarLogo(I)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;
    .locals 1
    .param p1, "drawable"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/dropin/Customization;->setActionBarLogo(I)V

    .line 92
    return-object p0
.end method

.method public actionBarTitle(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/dropin/Customization;->setActionBarTitle(Ljava/lang/String;)V

    .line 84
    return-object p0
.end method

.method public amount(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;
    .locals 1
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/dropin/Customization;->setAmount(Ljava/lang/String;)V

    .line 124
    return-object p0
.end method

.method public build()Lcom/braintreepayments/api/dropin/Customization;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    return-object v0
.end method

.method public primaryDescription(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;
    .locals 1
    .param p1, "primaryDescription"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/dropin/Customization;->setPrimaryDescription(Ljava/lang/String;)V

    .line 100
    return-object p0
.end method

.method public secondaryDescription(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;
    .locals 1
    .param p1, "secondaryDescription"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/dropin/Customization;->setSecondaryDescription(Ljava/lang/String;)V

    .line 108
    return-object p0
.end method

.method public submitButtonText(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;
    .locals 1
    .param p1, "submitButtonText"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/dropin/Customization;->setSubmitButtonText(Ljava/lang/String;)V

    .line 116
    return-object p0
.end method
