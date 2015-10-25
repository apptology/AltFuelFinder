.class Lcom/biznessapps/widgets/calendar/DatePickerBar$2;
.super Ljava/lang/Object;
.source "DatePickerBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/calendar/DatePickerBar;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/calendar/DatePickerBar;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/calendar/DatePickerBar;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar$2;->this$0:Lcom/biznessapps/widgets/calendar/DatePickerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar$2;->this$0:Lcom/biznessapps/widgets/calendar/DatePickerBar;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->nextDate()V

    .line 88
    return-void
.end method
