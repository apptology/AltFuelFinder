.class Lcom/google/android/gms/drive/internal/q$a;
.super Lcom/google/android/gms/drive/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final wH:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/q$a;->wH:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnDriveIdResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/q$a;->wH:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/drive/internal/q$d;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->Bv:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/o;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/o;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/q$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/q$a;->wH:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/drive/internal/q$d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/q$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->b(Ljava/lang/Object;)V

    return-void
.end method