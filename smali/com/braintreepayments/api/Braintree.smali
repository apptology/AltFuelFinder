.class public Lcom/braintreepayments/api/Braintree;
.super Ljava/lang/Object;
.source "Braintree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/api/Braintree$ListenerCallback;,
        Lcom/braintreepayments/api/Braintree$ErrorListener;,
        Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;,
        Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;,
        Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;,
        Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;,
        Lcom/braintreepayments/api/Braintree$Listener;
    }
.end annotation


# static fields
.field protected static final INTEGRATION_DROPIN:Ljava/lang/String; = "dropin"

.field private static final KEY_CLIENT_TOKEN:Ljava/lang/String; = "com.braintreepayments.api.KEY_CLIENT_TOKEN"

.field private static final KEY_CONFIGURATION:Ljava/lang/String; = "com.braintreepayments.api.KEY_CONFIGURATION"

.field protected static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/braintreepayments/api/Braintree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

.field private mCachedPaymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/Braintree$ListenerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientTokenKey:Ljava/lang/String;

.field private final mCreatedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/braintreepayments/api/Braintree$ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIntegrationType:Ljava/lang/String;

.field private final mListenerHandler:Landroid/os/Handler;

.field private mListenersLocked:Z

.field private final mNonceListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mListenerHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCallbackQueue:Ljava/util/List;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/Braintree;->mListenersLocked:Z

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mUpdatedListeners:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCreatedListeners:Ljava/util/Set;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mNonceListeners:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mErrorListeners:Ljava/util/Set;

    .line 228
    new-instance v0, Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/braintreepayments/api/models/ClientToken;->fromString(Ljava/lang/String;)Lcom/braintreepayments/api/models/ClientToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/braintreepayments/api/BraintreeApi;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/ClientToken;)V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    .line 230
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 231
    const-string v0, "custom"

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mIntegrationType:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/braintreepayments/api/Braintree;->mClientTokenKey:Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mClientTokenKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/braintreepayments/api/BraintreeApi;)V
    .locals 2
    .param p1, "clientToken"    # Ljava/lang/String;
    .param p2, "braintreeApi"    # Lcom/braintreepayments/api/BraintreeApi;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mListenerHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCallbackQueue:Ljava/util/List;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/Braintree;->mListenersLocked:Z

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mUpdatedListeners:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCreatedListeners:Ljava/util/Set;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mNonceListeners:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mErrorListeners:Ljava/util/Set;

    .line 220
    iput-object p2, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    .line 221
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 222
    const-string v0, "custom"

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mIntegrationType:Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree;->mClientTokenKey:Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mClientTokenKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/braintreepayments/api/Braintree;)Z
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/braintreepayments/api/Braintree;->isSetup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/braintreepayments/api/Braintree;)V
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/braintreepayments/api/Braintree;->setup()V

    return-void
.end method

.method static synthetic access$1000(Lcom/braintreepayments/api/Braintree;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/braintreepayments/api/Braintree;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCreatedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/braintreepayments/api/Braintree;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mNonceListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/braintreepayments/api/Braintree;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mErrorListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    return-object v0
.end method

.method static synthetic access$302(Lcom/braintreepayments/api/Braintree;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree;->mCachedPaymentMethods:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/braintreepayments/api/Braintree;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/Braintree;->postPaymentMethodsToListeners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;
    .param p1, "x1"    # Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/Braintree;->postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    return-void
.end method

.method static synthetic access$600(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;
    .param p1, "x1"    # Lcom/braintreepayments/api/models/PaymentMethod;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/Braintree;->addPaymentMethodToCache(Lcom/braintreepayments/api/models/PaymentMethod;)V

    return-void
.end method

.method static synthetic access$700(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;
    .param p1, "x1"    # Lcom/braintreepayments/api/models/PaymentMethod;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/Braintree;->postCreatedMethodToListeners(Lcom/braintreepayments/api/models/PaymentMethod;)V

    return-void
.end method

.method static synthetic access$800(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/Braintree;->postCreatedNonceToListeners(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/braintreepayments/api/Braintree;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/Braintree;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mUpdatedListeners:Ljava/util/Set;

    return-object v0
.end method

.method private addPaymentMethodToCache(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 2
    .param p1, "paymentMethod"    # Lcom/braintreepayments/api/models/PaymentMethod;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCachedPaymentMethods:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCachedPaymentMethods:Ljava/util/List;

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCachedPaymentMethods:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1110
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/braintreepayments/api/Braintree;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientToken"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/Braintree;

    .line 155
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/braintreepayments/api/Braintree;

    new-instance v1, Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/braintreepayments/api/BraintreeApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/braintreepayments/api/Braintree;-><init>(Ljava/lang/String;Lcom/braintreepayments/api/BraintreeApi;)V

    goto :goto_0
.end method

.method private isSetup()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->isSetup()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized postCreatedMethodToListeners(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 1
    .param p1, "paymentMethod"    # Lcom/braintreepayments/api/models/PaymentMethod;

    .prologue
    .line 1135
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/braintreepayments/api/Braintree$13;

    invoke-direct {v0, p0, p1}, Lcom/braintreepayments/api/Braintree$13;-><init>(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->postOrQueueCallback(Lcom/braintreepayments/api/Braintree$ListenerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    monitor-exit p0

    return-void

    .line 1135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized postCreatedNonceToListeners(Ljava/lang/String;)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/braintreepayments/api/Braintree$14;

    invoke-direct {v0, p0, p1}, Lcom/braintreepayments/api/Braintree$14;-><init>(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->postOrQueueCallback(Lcom/braintreepayments/api/Braintree$ListenerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    monitor-exit p0

    return-void

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized postPaymentMethodsToListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1114
    .local v0, "paymentMethodsSafe":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    new-instance v1, Lcom/braintreepayments/api/Braintree$12;

    invoke-direct {v1, p0, v0}, Lcom/braintreepayments/api/Braintree$12;-><init>(Lcom/braintreepayments/api/Braintree;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/Braintree;->postOrQueueCallback(Lcom/braintreepayments/api/Braintree$ListenerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    monitor-exit p0

    return-void

    .line 1113
    .end local v0    # "paymentMethodsSafe":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/braintreepayments/api/Braintree$16;

    invoke-direct {v0, p0, p1}, Lcom/braintreepayments/api/Braintree$16;-><init>(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->postOrQueueCallback(Lcom/braintreepayments/api/Braintree$ListenerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    monitor-exit p0

    return-void

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 304
    return-void
.end method

.method public static restoreSavedInstanceState(Landroid/content/Context;Landroid/os/Bundle;)Lcom/braintreepayments/api/Braintree;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 272
    if-nez p1, :cond_1

    move-object v0, v3

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    const-string v4, "com.braintreepayments.api.KEY_CLIENT_TOKEN"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "clientToken":Ljava/lang/String;
    const-string v4, "com.braintreepayments.api.KEY_CONFIGURATION"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "configuration":Ljava/lang/String;
    sget-object v4, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/Braintree;

    .line 279
    .local v0, "braintree":Lcom/braintreepayments/api/Braintree;
    if-eqz v0, :cond_2

    invoke-direct {v0}, Lcom/braintreepayments/api/Braintree;->isSetup()Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 282
    new-instance v0, Lcom/braintreepayments/api/Braintree;

    .end local v0    # "braintree":Lcom/braintreepayments/api/Braintree;
    new-instance v3, Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/braintreepayments/api/BraintreeApi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/braintreepayments/api/Braintree;-><init>(Ljava/lang/String;Lcom/braintreepayments/api/BraintreeApi;)V

    goto :goto_0

    .restart local v0    # "braintree":Lcom/braintreepayments/api/Braintree;
    :cond_3
    move-object v0, v3

    .line 285
    goto :goto_0
.end method

.method private setup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->setup()V

    .line 242
    return-void
.end method

.method public static setup(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientToken"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;

    .prologue
    .line 171
    invoke-static {p0, p1, p2}, Lcom/braintreepayments/api/Braintree;->setupHelper(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;)Ljava/util/concurrent/Future;

    .line 172
    return-void
.end method

.method protected static setupHelper(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientToken"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/braintreepayments/api/Braintree$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/braintreepayments/api/Braintree$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/braintreepayments/api/Braintree$Listener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/braintreepayments/api/Braintree$Listener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "listener":Lcom/braintreepayments/api/Braintree$Listener;, "TT;"
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;

    if-eqz v1, :cond_0

    .line 361
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree;->mUpdatedListeners:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;

    move-object v1, v0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    instance-of v1, p1, Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;

    if-eqz v1, :cond_1

    .line 365
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree;->mCreatedListeners:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;

    move-object v1, v0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    instance-of v1, p1, Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;

    if-eqz v1, :cond_2

    .line 369
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree;->mNonceListeners:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;

    move-object v1, v0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_2
    instance-of v1, p1, Lcom/braintreepayments/api/Braintree$ErrorListener;

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mErrorListeners:Ljava/util/Set;

    check-cast p1, Lcom/braintreepayments/api/Braintree$ErrorListener;

    .end local p1    # "listener":Lcom/braintreepayments/api/Braintree$Listener;, "TT;"
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_3
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected analyticsPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mIntegrationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public collectDeviceData(Landroid/app/Activity;Lcom/braintreepayments/api/data/BraintreeEnvironment;)Ljava/lang/String;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "environment"    # Lcom/braintreepayments/api/data/BraintreeEnvironment;

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0, p1, p2}, Lcom/braintreepayments/api/BraintreeApi;->collectDeviceData(Landroid/app/Activity;Lcom/braintreepayments/api/data/BraintreeEnvironment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public collectDeviceData(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "merchantId"    # Ljava/lang/String;
    .param p3, "collectorUrl"    # Ljava/lang/String;

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braintreepayments/api/BraintreeApi;->collectDeviceData(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">(",
            "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, "paymentMethodBuilder":Lcom/braintreepayments/api/models/PaymentMethod$Builder;, "Lcom/braintreepayments/api/models/PaymentMethod$Builder<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/Braintree;->createHelper(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized createHelper(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">(",
            "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 985
    .local p1, "paymentMethodBuilder":Lcom/braintreepayments/api/models/PaymentMethod$Builder;, "Lcom/braintreepayments/api/models/PaymentMethod$Builder<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/braintreepayments/api/Braintree$9;

    invoke-direct {v1, p0, p1}, Lcom/braintreepayments/api/Braintree$9;-><init>(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod$Builder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finishPayWithPayPal(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, p2}, Lcom/braintreepayments/api/BraintreeApi;->handlePayPalResponse(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v1

    .line 547
    .local v1, "payPalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/Braintree;->create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    .end local v1    # "payPalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Lcom/braintreepayments/api/exceptions/ConfigurationException;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 546
    .end local v0    # "e":Lcom/braintreepayments/api/exceptions/ConfigurationException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized finishPayWithPayPal(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v2, p1, p2, p3}, Lcom/braintreepayments/api/BraintreeApi;->handlePayPalResponse(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v1

    .line 574
    .local v1, "payPalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/Braintree;->create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .end local v1    # "payPalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Lcom/braintreepayments/api/exceptions/ConfigurationException;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 572
    .end local v0    # "e":Lcom/braintreepayments/api/exceptions/ConfigurationException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized finishPayWithVenmo(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v1, p1, p2}, Lcom/braintreepayments/api/BraintreeApi;->finishPayWithVenmo(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "nonce":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/braintreepayments/api/Braintree$3;

    invoke-direct {v2, p0, v0}, Lcom/braintreepayments/api/Braintree$3;-><init>(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    :goto_0
    monitor-exit p0

    return-void

    .line 637
    :cond_0
    :try_start_1
    const-string v1, "venmo-app.fail"

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 615
    .end local v0    # "nonce":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized finishThreeDSecureVerification(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 916
    monitor-enter p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 917
    :try_start_0
    const-string v1, "com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;

    .line 919
    .local v0, "authenticationResponse":Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->getCard()Lcom/braintreepayments/api/models/Card;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/Braintree;->postCreatedMethodToListeners(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 921
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->getCard()Lcom/braintreepayments/api/models/Card;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/Card;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/Braintree;->postCreatedNonceToListeners(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    .end local v0    # "authenticationResponse":Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 922
    .restart local v0    # "authenticationResponse":Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->getException()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 923
    new-instance v1, Lcom/braintreepayments/api/exceptions/BraintreeException;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->getException()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/braintreepayments/api/exceptions/BraintreeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 916
    .end local v0    # "authenticationResponse":Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 925
    .restart local v0    # "authenticationResponse":Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    :cond_2
    :try_start_2
    new-instance v1, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    const/16 v2, 0x1a6

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->getErrors()Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;-><init>(ILcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;)V

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/Braintree;->postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getAndroidPayGoogleTransactionId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Landroid/content/Intent;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 668
    invoke-static {p1}, Lcom/braintreepayments/api/AndroidPay;->isMaskedWalletResponse(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/MaskedWallet;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 675
    :goto_0
    return-object v0

    .line 671
    :cond_0
    invoke-static {p1}, Lcom/braintreepayments/api/AndroidPay;->isFullWalletResponse(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    const-string v0, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/FullWallet;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/FullWallet;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 675
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAndroidPayTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 1
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->getAndroidPayTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCachedPaymentMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCachedPaymentMethods:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1243
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCachedPaymentMethods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getIntegrationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mIntegrationType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getNonceFromAndroidPayFullWalletResponse(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 779
    monitor-enter p0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 781
    :try_start_0
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v2}, Lcom/braintreepayments/api/BraintreeApi;->disconnectGoogleApiClient()V

    .line 783
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v2, p2}, Lcom/braintreepayments/api/BraintreeApi;->getNonceFromAndroidPayFullWalletResponse(Landroid/content/Intent;)Lcom/braintreepayments/api/models/AndroidPayCard;

    move-result-object v0

    .line 785
    .local v0, "androidPayCard":Lcom/braintreepayments/api/models/AndroidPayCard;
    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0, v0}, Lcom/braintreepayments/api/Braintree;->addPaymentMethodToCache(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 787
    invoke-direct {p0, v0}, Lcom/braintreepayments/api/Braintree;->postCreatedMethodToListeners(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 788
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AndroidPayCard;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/braintreepayments/api/Braintree;->postCreatedNonceToListeners(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    .end local v0    # "androidPayCard":Lcom/braintreepayments/api/models/AndroidPayCard;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 790
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 779
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPaymentMethods()V
    .locals 1

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/Braintree;->getPaymentMethodsHelper()Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getPaymentMethodsHelper()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/braintreepayments/api/Braintree$2;

    invoke-direct {v1, p0}, Lcom/braintreepayments/api/Braintree$2;-><init>(Lcom/braintreepayments/api/Braintree;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handlePayPalResponse(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v1, p1, p2, p3}, Lcom/braintreepayments/api/BraintreeApi;->handlePayPalResponse(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 516
    :goto_0
    return-object v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Lcom/braintreepayments/api/exceptions/ConfigurationException;
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    .line 516
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hasCachedCards()Z
    .locals 1

    .prologue
    .line 1232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCachedPaymentMethods:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAndroidPayEnabled()Z
    .locals 1
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->isAndroidPayEnabled()Z

    move-result v0

    return v0
.end method

.method public isCvvChallenegePresent()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->isCvvChallengePresent()Z

    move-result v0

    return v0
.end method

.method public isPayPalEnabled()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->isPayPalEnabled()Z

    move-result v0

    return v0
.end method

.method public isPostalCodeChallengePresent()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->isPostalCodeChallengePresent()Z

    move-result v0

    return v0
.end method

.method public isThreeDSecureEnabled()Z
    .locals 1
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->isThreeDSecureEnabled()Z

    move-result v0

    return v0
.end method

.method public isVenmoEnabled()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->isVenmoEnabled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized lockListeners()V
    .locals 1

    .prologue
    .line 1257
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/braintreepayments/api/Braintree;->mListenersLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    monitor-exit p0

    return-void

    .line 1257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "responseCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 940
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    if-eqz p4, :cond_0

    .line 941
    invoke-static {p4}, Lcom/braintreepayments/api/PayPalHelper;->isPayPalIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {p0, p1, p3, p4}, Lcom/braintreepayments/api/Braintree;->finishPayWithPayPal(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    invoke-static {p4}, Lcom/braintreepayments/api/AndroidPay;->isMaskedWalletResponse(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p4}, Lcom/braintreepayments/api/Braintree;->getAndroidPayGoogleTransactionId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/braintreepayments/api/Braintree;->performAndroidPayFullWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_2
    invoke-static {p4}, Lcom/braintreepayments/api/AndroidPay;->isFullWalletResponse(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 946
    invoke-virtual {p0, p3, p4}, Lcom/braintreepayments/api/Braintree;->getNonceFromAndroidPayFullWalletResponse(ILandroid/content/Intent;)V

    goto :goto_0

    .line 947
    :cond_3
    invoke-static {p4}, Lcom/braintreepayments/api/VenmoAppSwitch;->isVenmoAppSwitchResponse(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 948
    invoke-virtual {p0, p3, p4}, Lcom/braintreepayments/api/Braintree;->finishPayWithVenmo(ILandroid/content/Intent;)V

    goto :goto_0

    .line 949
    :cond_4
    invoke-static {p4}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->isThreeDSecureAuthenticationResponse(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p0, p3, p4}, Lcom/braintreepayments/api/Braintree;->finishThreeDSecureVerification(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public declared-synchronized onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/Braintree;->lockListeners()V

    .line 425
    instance-of v0, p1, Lcom/braintreepayments/api/Braintree$Listener;

    if-eqz v0, :cond_0

    .line 426
    check-cast p1, Lcom/braintreepayments/api/Braintree$Listener;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/Braintree;->removeListener(Lcom/braintreepayments/api/Braintree$Listener;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0}, Lcom/braintreepayments/api/BraintreeApi;->disconnectGoogleApiClient()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/braintreepayments/api/Braintree$Listener;

    if-eqz v0, :cond_0

    .line 409
    check-cast p1, Lcom/braintreepayments/api/Braintree$Listener;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/Braintree;->addListener(Lcom/braintreepayments/api/Braintree$Listener;)V

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/Braintree;->unlockListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    const-string v0, "com.braintreepayments.api.KEY_CLIENT_TOKEN"

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mClientTokenKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "com.braintreepayments.api.KEY_CONFIGURATION"

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v1}, Lcom/braintreepayments/api/BraintreeApi;->getConfigurationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public declared-synchronized performAndroidPayChangeMaskedWalletRequest(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "googleTransactionId"    # Ljava/lang/String;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 733
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/braintreepayments/api/Braintree$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/braintreepayments/api/Braintree$5;-><init>(Lcom/braintreepayments/api/Braintree;Landroid/app/Activity;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    monitor-exit p0

    return-void

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized performAndroidPayFullWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "cart"    # Lcom/google/android/gms/wallet/Cart;
    .param p4, "googleTransactionId"    # Ljava/lang/String;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 758
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/braintreepayments/api/Braintree$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/Braintree$6;-><init>(Lcom/braintreepayments/api/Braintree;Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    monitor-exit p0

    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized performAndroidPayMaskedWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "cart"    # Lcom/google/android/gms/wallet/Cart;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 689
    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/braintreepayments/api/Braintree;->performAndroidPayMaskedWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized performAndroidPayMaskedWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "cart"    # Lcom/google/android/gms/wallet/Cart;
    .param p4, "isBillingAgreement"    # Z
    .param p5, "shippingAddressRequired"    # Z
    .param p6, "phoneNumberRequired"    # Z
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/braintreepayments/api/Braintree$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/api/Braintree$4;-><init>(Lcom/braintreepayments/api/Braintree;Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    monitor-exit p0

    return-void

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected postOrQueueCallback(Lcom/braintreepayments/api/Braintree$ListenerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/braintreepayments/api/Braintree$ListenerCallback;

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/braintreepayments/api/Braintree;->mListenersLocked:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/braintreepayments/api/Braintree$ListenerCallback;->hasListeners()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCallbackQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    :goto_0
    return-void

    .line 1222
    :cond_1
    invoke-interface {p1}, Lcom/braintreepayments/api/Braintree$ListenerCallback;->execute()V

    goto :goto_0
.end method

.method protected declared-synchronized postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1177
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/braintreepayments/api/Braintree$15;

    invoke-direct {v0, p0, p1}, Lcom/braintreepayments/api/Braintree$15;-><init>(Lcom/braintreepayments/api/Braintree;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->postOrQueueCallback(Lcom/braintreepayments/api/Braintree$ListenerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    monitor-exit p0

    return-void

    .line 1177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/braintreepayments/api/Braintree$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/braintreepayments/api/Braintree$Listener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "listener":Lcom/braintreepayments/api/Braintree$Listener;, "TT;"
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mUpdatedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    instance-of v0, p1, Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mCreatedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 391
    :cond_1
    instance-of v0, p1, Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mNonceListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 395
    :cond_2
    instance-of v0, p1, Lcom/braintreepayments/api/Braintree$ErrorListener;

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mErrorListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_3
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAnalyticsEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventFragment"    # Ljava/lang/String;

    .prologue
    .line 1064
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/braintreepayments/api/Braintree;->analyticsPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braintreepayments/api/Braintree;->getIntegrationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEventHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    monitor-exit p0

    return-void

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "integrationType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1055
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEventHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    monitor-exit p0

    return-void

    .line 1055
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized sendAnalyticsEventHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "integrationType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1071
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/braintreepayments/api/Braintree$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/braintreepayments/api/Braintree$11;-><init>(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIntegrationDropin()V
    .locals 1

    .prologue
    .line 294
    const-string v0, "dropin"

    iput-object v0, p0, Lcom/braintreepayments/api/Braintree;->mIntegrationType:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public startPayWithPayPal(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/braintreepayments/api/Braintree;->startPayWithPayPal(Landroid/app/Activity;ILjava/util/List;)V

    .line 474
    return-void
.end method

.method public startPayWithPayPal(Landroid/app/Activity;ILjava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p3, "additionalScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "add-paypal.start"

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braintreepayments/api/BraintreeApi;->startPayWithPayPal(Landroid/app/Activity;ILjava/util/List;)V

    .line 490
    return-void
.end method

.method public startPayWithVenmo(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;

    invoke-virtual {v1, p1, p2}, Lcom/braintreepayments/api/BraintreeApi;->startPayWithVenmo(Landroid/app/Activity;I)V

    .line 592
    const-string v1, "add-venmo.start"

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/AppSwitchNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Lcom/braintreepayments/api/exceptions/AppSwitchNotAvailableException;
    const-string v1, "add-venmo.unavailable"

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized startThreeDSecureVerification(Landroid/app/Activity;ILcom/braintreepayments/api/models/CardBuilder;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "cardBuilder"    # Lcom/braintreepayments/api/models/CardBuilder;
    .param p4, "amount"    # Ljava/lang/String;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 826
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/braintreepayments/api/Braintree$7;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/Braintree$7;-><init>(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/CardBuilder;Landroid/app/Activity;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    monitor-exit p0

    return-void

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startThreeDSecureVerification(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "amount"    # Ljava/lang/String;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 870
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/braintreepayments/api/Braintree$8;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/Braintree$8;-><init>(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    monitor-exit p0

    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tokenize(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">(",
            "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p1, "paymentMethodBuilder":Lcom/braintreepayments/api/models/PaymentMethod$Builder;, "Lcom/braintreepayments/api/models/PaymentMethod$Builder<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/Braintree;->tokenizeHelper(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    monitor-exit p0

    return-void

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized tokenizeHelper(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">(",
            "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, "paymentMethodBuilder":Lcom/braintreepayments/api/models/PaymentMethod$Builder;, "Lcom/braintreepayments/api/models/PaymentMethod$Builder<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/braintreepayments/api/Braintree$10;

    invoke-direct {v1, p0, p1}, Lcom/braintreepayments/api/Braintree$10;-><init>(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod$Builder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlockListeners()V
    .locals 4

    .prologue
    .line 1266
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/braintreepayments/api/Braintree;->mListenersLocked:Z

    .line 1267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .local v1, "callbackQueue":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/Braintree$ListenerCallback;>;"
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree;->mCallbackQueue:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1269
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/Braintree$ListenerCallback;

    .line 1270
    .local v0, "callback":Lcom/braintreepayments/api/Braintree$ListenerCallback;
    invoke-interface {v0}, Lcom/braintreepayments/api/Braintree$ListenerCallback;->hasListeners()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    invoke-interface {v0}, Lcom/braintreepayments/api/Braintree$ListenerCallback;->execute()V

    .line 1272
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree;->mCallbackQueue:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1266
    .end local v0    # "callback":Lcom/braintreepayments/api/Braintree$ListenerCallback;
    .end local v1    # "callbackQueue":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/Braintree$ListenerCallback;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1275
    .restart local v1    # "callbackQueue":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/Braintree$ListenerCallback;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method
