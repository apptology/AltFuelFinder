.class final Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NotifyAclLoadedBinderCallback"
.end annotation


# instance fields
.field final synthetic IJ:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final wH:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resultHolder":Lcom/google/android/gms/common/api/a$d;, "Lcom/google/android/gms/common/api/a$d<Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;>;"
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;->IJ:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/fq;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;->wH:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;->IJ:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;->IJ:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;->wH:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/ff$b;)V

    return-void
.end method
