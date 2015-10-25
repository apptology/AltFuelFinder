.class public final enum Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;
.super Ljava/lang/Enum;
.source "LoadingHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/dropin/view/LoadingHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

.field public static final enum ERROR:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

.field public static final enum LOADING:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

.field public static final enum SUCCESS:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->LOADING:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    new-instance v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->SUCCESS:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    new-instance v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->ERROR:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    sget-object v1, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->LOADING:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->SUCCESS:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->ERROR:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->$VALUES:[Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    return-object v0
.end method

.method public static values()[Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->$VALUES:[Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    invoke-virtual {v0}, [Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    return-object v0
.end method
