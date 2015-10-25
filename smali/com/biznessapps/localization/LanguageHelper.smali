.class public Lcom/biznessapps/localization/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"

# interfaces
.implements Lcom/biznessapps/localization/Constants;


# static fields
.field private static codesConverter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    .line 11
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "en"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "ar"

    const-string v2, "ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "ca"

    const-string v2, "ca"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "cs"

    const-string v2, "cs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "da"

    const-string v2, "da"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "it"

    const-string v2, "it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "nl"

    const-string v2, "nl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "nb"

    const-string v2, "nb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "no"

    const-string v2, "nb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "nn"

    const-string v2, "nb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "de"

    const-string v2, "de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "es"

    const-string v2, "es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "pl"

    const-string v2, "pl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "pt_BR"

    const-string v2, "pt-BR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "pt-PT"

    const-string v2, "pt-PT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "pt_PT"

    const-string v2, "pt-PT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "sv"

    const-string v2, "sv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "ro"

    const-string v2, "ro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "fi"

    const-string v2, "fi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "tr"

    const-string v2, "tr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "hu"

    const-string v2, "hu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "in"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "el"

    const-string v2, "el"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "ru"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "he"

    const-string v2, "he"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "iw"

    const-string v2, "he"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANS"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANS_CN"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_CN"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANS_HK"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANS_MO"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANS_SG"

    const-string v2, "zh-Hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANT"

    const-string v2, "zh-Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANT_HK"

    const-string v2, "zh-Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HK"

    const-string v2, "zh-Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANT_MO"

    const-string v2, "zh-Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_HANT_TW"

    const-string v2, "zh-Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "zh_TW"

    const-string v2, "zh-Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "ja"

    const-string v2, "ja"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    const-string v1, "ko"

    const-string v2, "ko"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUsedLanguageCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "languageCode":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "localeValue":Ljava/lang/String;
    sget-object v3, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 65
    sget-object v3, Lcom/biznessapps/localization/LanguageHelper;->codesConverter:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 67
    .restart local v2    # "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 68
    const-string v2, "en"

    .line 71
    :cond_0
    return-object v2
.end method
