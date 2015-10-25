.class public final Lcom/braintreepayments/api/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static WalletFragmentDefaultButtonTextAppearance:I

.field public static WalletFragmentDefaultDetailsHeaderTextAppearance:I

.field public static WalletFragmentDefaultDetailsTextAppearance:I

.field public static WalletFragmentDefaultStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 461
    const/high16 v0, 0x7f060000

    sput v0, Lcom/braintreepayments/api/R$style;->WalletFragmentDefaultButtonTextAppearance:I

    .line 462
    const v0, 0x7f060001

    sput v0, Lcom/braintreepayments/api/R$style;->WalletFragmentDefaultDetailsHeaderTextAppearance:I

    .line 463
    const v0, 0x7f060002

    sput v0, Lcom/braintreepayments/api/R$style;->WalletFragmentDefaultDetailsTextAppearance:I

    .line 464
    const v0, 0x7f060003

    sput v0, Lcom/braintreepayments/api/R$style;->WalletFragmentDefaultStyle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
