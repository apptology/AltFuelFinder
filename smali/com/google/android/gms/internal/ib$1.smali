.class Lcom/google/android/gms/internal/ib$1;
.super Lcom/google/android/gms/internal/ib$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ib;->loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UD:I

.field final synthetic UE:Lcom/google/android/gms/internal/ib;

.field final synthetic Uw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ib;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ib$1;->UE:Lcom/google/android/gms/internal/ib;

    iput p2, p0, Lcom/google/android/gms/internal/ib$1;->UD:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ib$1;->Uw:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ib$a;-><init>(Lcom/google/android/gms/internal/ib$1;)V

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

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ib$1;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ib$1;->UD:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ib$1;->Uw:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/fk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ib$1;->a(Lcom/google/android/gms/internal/fk;)V

    return-void
.end method