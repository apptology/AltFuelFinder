.class Lcom/biznessapps/around_us/AroundUsActivity$8;
.super Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.source "AroundUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$8;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$8;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity$8;->getDataToParse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/json/JsonParser;->parseAroundUsData(Ljava/lang/String;)Lcom/biznessapps/around_us/AroundUsEntity;

    move-result-object v1

    # setter for: Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;
    invoke-static {v0, v1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$202(Lcom/biznessapps/around_us/AroundUsActivity;Lcom/biznessapps/around_us/AroundUsEntity;)Lcom/biznessapps/around_us/AroundUsEntity;

    .line 272
    return-void
.end method
