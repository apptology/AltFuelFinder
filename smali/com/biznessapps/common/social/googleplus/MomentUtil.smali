.class public Lcom/biznessapps/common/social/googleplus/MomentUtil;
.super Ljava/lang/Object;
.source "MomentUtil.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final MOMENT_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOMENT_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    .line 42
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    const-string v3, "AddActivity"

    const-string v4, "https://developers.google.com/+/plugins/snippet/examples/thing"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    const-string v3, "BuyActivity"

    const-string v4, "https://developers.google.com/+/plugins/snippet/examples/a-book"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    const-string v3, "CheckInActivity"

    const-string v4, "https://developers.google.com/+/plugins/snippet/examples/place"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    const-string v3, "CommentActivity"

    const-string v4, "https://developers.google.com/+/plugins/snippet/examples/blog-entry"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    const-string v3, "CreateActivity"

    const-string v4, "https://developers.google.com/+/plugins/snippet/examples/photo"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    const-string v3, "ListenActivity"

    const-string v4, "https://developers.google.com/+/plugins/snippet/examples/song"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    const-string v3, "ReserveActivity"

    const-string v4, "https://developers.google.com/+/plugins/snippet/examples/restaurant"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    const-string v3, "ReviewActivity"

    const-string v4, "https://developers.google.com/+/plugins/snippet/examples/widget"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_LIST:Ljava/util/ArrayList;

    .line 60
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_LIST:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 62
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->MOMENT_TYPES:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sput-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->ACTIONS:[Ljava/lang/String;

    .line 63
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->ACTIONS:[Ljava/lang/String;

    array-length v0, v2

    .line 64
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    sget-object v2, Lcom/biznessapps/common/social/googleplus/MomentUtil;->ACTIONS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://schemas.google.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/biznessapps/common/social/googleplus/MomentUtil;->ACTIONS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCommentActivityResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;-><init>()V

    const-string v1, "http://schema.org/Comment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v0

    const-string v1, "https://developers.google.com/+/plugins/snippet/examples/blog-entry#comment-1"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v0

    const-string v1, "This is amazing!"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v0

    const-string v1, "I can\'t wait to use it on my site!"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setText(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->build()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    return-object v0
.end method

.method private static getReserveActivityResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;-><init>()V

    const-string v1, "http://schemas.google.com/Reservation"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v0

    const-string v1, "2012-06-28T19:00:00-08:00"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setStartDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setAttendeeCount(I)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->build()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    return-object v0
.end method

.method public static getResultFor(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1
    .param p0, "momentType"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "CommentActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/biznessapps/common/social/googleplus/MomentUtil;->getCommentActivityResult()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-string v0, "ReserveActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/biznessapps/common/social/googleplus/MomentUtil;->getReserveActivityResult()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "ReviewActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/biznessapps/common/social/googleplus/MomentUtil;->getReviewActivityResult()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getReviewActivityResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 3

    .prologue
    .line 114
    new-instance v1, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;-><init>()V

    const-string v2, "http://schema.org/Rating"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    const-string v2, "100"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setRatingValue(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    const-string v2, "100"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setBestRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setWorstRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->build()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    .line 121
    .local v0, "rating":Lcom/google/android/gms/plus/model/moments/ItemScope;
    new-instance v1, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;-><init>()V

    const-string v2, "http://schema.org/Review"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    const-string v2, "A Humble Review of Widget"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    const-string v2, "https://developers.google.com/+/plugins/snippet/examples/review"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    const-string v2, "It is amazingly effective"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setText(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->setReviewRating(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->build()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v1

    return-object v1
.end method
