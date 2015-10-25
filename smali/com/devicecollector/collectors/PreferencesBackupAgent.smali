.class public Lcom/devicecollector/collectors/PreferencesBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "PreferencesBackupAgent.java"


# static fields
.field private static final PREFS_BACKUP_KEY:Ljava/lang/String; = "prefs"

.field static final PREFS_FILE:Ljava/lang/String; = "dc_prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "dc_prefs"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 25
    .local v0, "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "prefs"

    invoke-virtual {p0, v1, v0}, Lcom/devicecollector/collectors/PreferencesBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 26
    return-void
.end method
