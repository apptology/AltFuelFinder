.class Lcom/biznessapps/real_estate/RealEstateDetailActivity$2;
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
    .line 143
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$2;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$2;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # invokes: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->handleInBackground()V
    invoke-static {v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$100(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    .line 147
    return-void
.end method
