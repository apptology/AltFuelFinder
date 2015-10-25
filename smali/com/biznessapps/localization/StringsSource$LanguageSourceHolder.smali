.class Lcom/biznessapps/localization/StringsSource$LanguageSourceHolder;
.super Ljava/lang/Object;
.source "StringsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/localization/StringsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguageSourceHolder"
.end annotation


# static fields
.field private static final instance:Lcom/biznessapps/localization/StringsSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/biznessapps/localization/StringsSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/biznessapps/localization/StringsSource;-><init>(Lcom/biznessapps/localization/StringsSource$1;)V

    sput-object v0, Lcom/biznessapps/localization/StringsSource$LanguageSourceHolder;->instance:Lcom/biznessapps/localization/StringsSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/biznessapps/localization/StringsSource;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/biznessapps/localization/StringsSource$LanguageSourceHolder;->instance:Lcom/biznessapps/localization/StringsSource;

    return-object v0
.end method
