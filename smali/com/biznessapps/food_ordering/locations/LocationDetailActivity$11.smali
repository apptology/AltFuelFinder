.class Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$11;
.super Ljava/lang/Object;
.source "LocationDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineServiceButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$11;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$11;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->finish()V

    .line 563
    return-void
.end method
