.class public Lcom/biznessapps/widgets/calendar/DatePickerBar;
.super Landroid/widget/LinearLayout;
.source "DatePickerBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;
    }
.end annotation


# instance fields
.field private backButton:Landroid/widget/ImageButton;

.field private iconView:Landroid/widget/ImageView;

.field private listener:Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;

.field private nextButton:Landroid/widget/ImageButton;

.field private pickerDate:Ljava/util/Date;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/calendar/DatePickerBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->pickerDate:Ljava/util/Date;

    .line 63
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/biznessapps/layout/R$layout;->datepickerbar_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 65
    .local v1, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->addView(Landroid/view/View;)V

    .line 66
    invoke-direct {p0, v1}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->initViews(Landroid/view/ViewGroup;)V

    .line 67
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v1, 0x8

    .line 70
    sget v0, Lcom/biznessapps/layout/R$id;->datepickerbar_left_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->backButton:Landroid/widget/ImageButton;

    .line 71
    sget v0, Lcom/biznessapps/layout/R$id;->datepickerbar_right_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->nextButton:Landroid/widget/ImageButton;

    .line 73
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 75
    sget v0, Lcom/biznessapps/layout/R$id;->datepickerbar_date:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->titleView:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/biznessapps/layout/R$id;->datepickerbar_icon:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->iconView:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p0}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->updateTitle()V

    .line 78
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->backButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/widgets/calendar/DatePickerBar$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/calendar/DatePickerBar$1;-><init>(Lcom/biznessapps/widgets/calendar/DatePickerBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->nextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/widgets/calendar/DatePickerBar$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/calendar/DatePickerBar$2;-><init>(Lcom/biznessapps/widgets/calendar/DatePickerBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getListener()Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->listener:Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;

    return-object v0
.end method

.method public getPickerDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->pickerDate:Ljava/util/Date;

    return-object v0
.end method

.method public nextDate()V
    .locals 6

    .prologue
    .line 103
    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->pickerDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long v0, v2, v4

    .line 104
    .local v0, "timeInMilliSeconds":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->setPickerDate(Ljava/util/Date;)V

    .line 105
    return-void
.end method

.method public previousDate()V
    .locals 6

    .prologue
    .line 98
    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->pickerDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long v0, v2, v4

    .line 99
    .local v0, "timeInMilliSeconds":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->setPickerDate(Ljava/util/Date;)V

    .line 100
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setListener(Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->listener:Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;

    .line 51
    return-void
.end method

.method public setPickerDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "pickerDate"    # Ljava/util/Date;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->pickerDate:Ljava/util/Date;

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->updateTitle()V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->listener:Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->listener:Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;

    invoke-interface {v0, p0}, Lcom/biznessapps/widgets/calendar/DatePickerBar$DatePickerBarButtonListener;->onDateChanged(Lcom/biznessapps/widgets/calendar/DatePickerBar;)V

    .line 43
    :cond_0
    return-void
.end method

.method public updateTitle()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM d yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/DatePickerBar;->pickerDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method
