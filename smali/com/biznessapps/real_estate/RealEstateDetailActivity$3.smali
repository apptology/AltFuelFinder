.class Lcom/biznessapps/real_estate/RealEstateDetailActivity$3;
.super Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.source "RealEstateDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateDetailActivity;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$3;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$3;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$3;->getDataToParse()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->tryParseData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$200(Lcom/biznessapps/real_estate/RealEstateDetailActivity;Ljava/lang/String;)Z

    .line 154
    return-void
.end method
