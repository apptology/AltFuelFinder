.class Lcom/google/android/gms/drive/internal/l$3;
.super Lcom/google/android/gms/drive/internal/l$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/l;->discardContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fc:Lcom/google/android/gms/drive/internal/l;

.field final synthetic Fd:Lcom/google/android/gms/drive/Contents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/l;Lcom/google/android/gms/drive/Contents;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$3;->Fc:Lcom/google/android/gms/drive/internal/l;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/l$3;->Fd:Lcom/google/android/gms/drive/Contents;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/l$j;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/drive/internal/n;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/l$3;->a(Lcom/google/android/gms/drive/internal/n;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->fE()Lcom/google/android/gms/drive/internal/u;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/l$3;->Fd:Lcom/google/android/gms/drive/Contents;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V

    new-instance v2, Lcom/google/android/gms/drive/internal/al;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/al;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/v;)V

    return-void
.end method
