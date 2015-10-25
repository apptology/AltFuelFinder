.class public Lcom/biznessapps/common/components/WheelDelegate;
.super Ljava/lang/Object;
.source "WheelDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;,
        Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;
    }
.end annotation


# static fields
.field private static final AFTER_YEARS_OFFSET:I = 0x5

.field private static final BEFORE_YEARS_OFFSET:I = 0x72


# instance fields
.field private CALENDAR_STRING_FORMAT:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private day:Lcom/biznessapps/widgets/wheel/WheelView;

.field private mVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

.field private maxYear:I

.field private minYear:I

.field private month:Lcom/biznessapps/widgets/wheel/WheelView;

.field private targetChangedListener:Lcom/biznessapps/common/components/OnTargetChangedListener;

.field private targetTextView:Landroid/widget/TextView;

.field private wheelContainer:Landroid/view/ViewGroup;

.field private year:Lcom/biznessapps/widgets/wheel/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "yyyy-MM-dd"

    iput-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->CALENDAR_STRING_FORMAT:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;Z)V
    .locals 6
    .param p1, "wheelContainer"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "useCalendarMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "yyyy-MM-dd"

    iput-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->CALENDAR_STRING_FORMAT:Ljava/lang/String;

    .line 56
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/common/components/WheelDelegate;->initView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V
    .locals 1
    .param p1, "wheelContainer"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "useCalendarMode"    # Z
    .param p5, "viewToSet"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "yyyy-MM-dd"

    iput-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->CALENDAR_STRING_FORMAT:Ljava/lang/String;

    .line 52
    invoke-virtual/range {p0 .. p5}, Lcom/biznessapps/common/components/WheelDelegate;->initView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/widgets/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/WheelDelegate;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/widgets/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/WheelDelegate;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/widgets/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/WheelDelegate;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->day:Lcom/biznessapps/widgets/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/common/components/WheelDelegate;Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/components/WheelDelegate;
    .param p1, "x1"    # Lcom/biznessapps/widgets/wheel/WheelView;
    .param p2, "x2"    # Lcom/biznessapps/widgets/wheel/WheelView;
    .param p3, "x3"    # Lcom/biznessapps/widgets/wheel/WheelView;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/common/components/WheelDelegate;->updateDays(Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/common/components/WheelDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/WheelDelegate;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->CALENDAR_STRING_FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/common/components/OnTargetChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/WheelDelegate;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->targetChangedListener:Lcom/biznessapps/common/components/OnTargetChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/common/components/WheelDelegate;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/components/WheelDelegate;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->targetTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateDays(Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;)V
    .locals 8
    .param p1, "year"    # Lcom/biznessapps/widgets/wheel/WheelView;
    .param p2, "month"    # Lcom/biznessapps/widgets/wheel/WheelView;
    .param p3, "day"    # Lcom/biznessapps/widgets/wheel/WheelView;

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x1

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 189
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v6, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 192
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 193
    .local v4, "maxDays":I
    new-instance v0, Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;

    iget-object v2, p0, Lcom/biznessapps/common/components/WheelDelegate;->context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;-><init>(Lcom/biznessapps/common/components/WheelDelegate;Landroid/content/Context;III)V

    invoke-virtual {p3, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 194
    invoke-virtual {p3}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 195
    .local v7, "curDay":I
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p3, v0, v3}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(IZ)V

    .line 196
    return-void
.end method


# virtual methods
.method public getCalendarStringFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->CALENDAR_STRING_FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->wheelContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->mVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->mVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

    iget-object v1, p0, Lcom/biznessapps/common/components/WheelDelegate;->targetTextView:Landroid/widget/TextView;

    invoke-interface {v0, p0, v1}, Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;->onHide(Lcom/biznessapps/common/components/WheelDelegate;Landroid/view/View;)V

    .line 233
    :cond_0
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V
    .locals 0
    .param p1, "wheelContainer"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "useCalendarMode"    # Z
    .param p5, "viewToSet"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    .local p3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/biznessapps/common/components/WheelDelegate;->initView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V

    .line 91
    return-void
.end method

.method public initView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V
    .locals 18
    .param p1, "wheelContainer"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "useCalendarMode"    # Z
    .param p5, "viewToSet"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/common/components/WheelDelegate;->context:Landroid/content/Context;

    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/common/components/WheelDelegate;->wheelContainer:Landroid/view/ViewGroup;

    .line 96
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/common/components/WheelDelegate;->targetTextView:Landroid/widget/TextView;

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 100
    .local v9, "calendar":Ljava/util/Calendar;
    sget v3, Lcom/biznessapps/layout/R$id;->month:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/widgets/wheel/WheelView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    .line 101
    sget v3, Lcom/biznessapps/layout/R$id;->year:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/widgets/wheel/WheelView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    .line 102
    sget v3, Lcom/biznessapps/layout/R$id;->day:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/widgets/wheel/WheelView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->day:Lcom/biznessapps/widgets/wheel/WheelView;

    .line 103
    if-eqz p4, :cond_0

    .line 104
    new-instance v15, Lcom/biznessapps/common/components/WheelDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/biznessapps/common/components/WheelDelegate$1;-><init>(Lcom/biznessapps/common/components/WheelDelegate;)V

    .line 112
    .local v15, "targetChangedListener":Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;
    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 113
    .local v11, "curMonth":I
    new-instance v13, Ljava/util/ArrayList;

    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v13, "months":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    new-instance v4, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1, v13}, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;-><init>(Lcom/biznessapps/common/components/WheelDelegate;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v3, v11}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v3, v15}, Lcom/biznessapps/widgets/wheel/WheelView;->addChangingListener(Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;)V

    .line 119
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 120
    .local v12, "curYear":I
    add-int/lit8 v3, v12, -0x72

    move-object/from16 v0, p0

    iput v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->minYear:I

    .line 121
    add-int/lit8 v3, v12, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->maxYear:I

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    move-object/from16 v17, v0

    new-instance v3, Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/biznessapps/common/components/WheelDelegate;->minYear:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/biznessapps/common/components/WheelDelegate;->maxYear:I

    const/16 v8, 0x71

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/biznessapps/common/components/WheelDelegate$DateNumericAdapter;-><init>(Lcom/biznessapps/common/components/WheelDelegate;Landroid/content/Context;III)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/biznessapps/common/components/WheelDelegate;->minYear:I

    sub-int v4, v12, v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v3, v15}, Lcom/biznessapps/widgets/wheel/WheelView;->addChangingListener(Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/biznessapps/common/components/WheelDelegate;->day:Lcom/biznessapps/widgets/wheel/WheelView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/biznessapps/common/components/WheelDelegate;->updateDays(Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;Lcom/biznessapps/widgets/wheel/WheelView;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->day:Lcom/biznessapps/widgets/wheel/WheelView;

    const/4 v4, 0x5

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 139
    .end local v11    # "curMonth":I
    .end local v12    # "curYear":I
    .end local v13    # "months":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "targetChangedListener":Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;
    :goto_0
    if-eqz p4, :cond_1

    const/16 v16, 0x0

    .line 140
    .local v16, "visibilityMode":I
    :goto_1
    sget v3, Lcom/biznessapps/layout/R$id;->appt_delimeter_one:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    sget v3, Lcom/biznessapps/layout/R$id;->appt_delimeter_two:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->setVisibility(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->day:Lcom/biznessapps/widgets/wheel/WheelView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->setVisibility(I)V

    .line 145
    sget v3, Lcom/biznessapps/layout/R$id;->set_button:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 146
    .local v14, "setButton":Landroid/widget/Button;
    sget v3, Lcom/biznessapps/layout/R$id;->cancel_button:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 147
    .local v10, "cancelButton":Landroid/widget/Button;
    new-instance v3, Lcom/biznessapps/common/components/WheelDelegate$2;

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v1, v2}, Lcom/biznessapps/common/components/WheelDelegate$2;-><init>(Lcom/biznessapps/common/components/WheelDelegate;ZLjava/util/List;)V

    invoke-virtual {v14, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v3, Lcom/biznessapps/common/components/WheelDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/biznessapps/common/components/WheelDelegate$3;-><init>(Lcom/biznessapps/common/components/WheelDelegate;)V

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget v3, Lcom/biznessapps/layout/R$string;->set:I

    invoke-virtual {v14, v3}, Landroid/widget/Button;->setText(I)V

    .line 181
    sget v3, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setText(I)V

    .line 182
    return-void

    .line 132
    .end local v10    # "cancelButton":Landroid/widget/Button;
    .end local v14    # "setButton":Landroid/widget/Button;
    .end local v16    # "visibilityMode":I
    :cond_0
    sget v3, Lcom/biznessapps/layout/R$id;->appt_delimeter_one:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    sget v3, Lcom/biznessapps/layout/R$id;->appt_delimeter_two:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setVisibility(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->day:Lcom/biznessapps/widgets/wheel/WheelView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setVisibility(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    new-instance v4, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lcom/biznessapps/common/components/WheelDelegate$TextArrayAdapter;-><init>(Lcom/biznessapps/common/components/WheelDelegate;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 139
    :cond_1
    const/16 v16, 0x8

    goto/16 :goto_1
.end method

.method public setCalendarStringFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/biznessapps/common/components/WheelDelegate;->CALENDAR_STRING_FORMAT:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDate(J)V
    .locals 4
    .param p1, "date"    # J

    .prologue
    .line 80
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 81
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    iget-object v1, p0, Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/biznessapps/common/components/WheelDelegate;->minYear:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 84
    iget-object v1, p0, Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 85
    iget-object v1, p0, Lcom/biznessapps/common/components/WheelDelegate;->day:Lcom/biznessapps/widgets/wheel/WheelView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(I)V

    .line 86
    return-void
.end method

.method public setOnTargetChangedListener(Lcom/biznessapps/common/components/OnTargetChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/common/components/OnTargetChangedListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/common/components/WheelDelegate;->targetChangedListener:Lcom/biznessapps/common/components/OnTargetChangedListener;

    .line 65
    return-void
.end method

.method public setOnVisibleListener(Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/common/components/WheelDelegate;->mVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

    .line 69
    return-void
.end method

.method public setTargetView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "viewToSet"    # Landroid/widget/TextView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/common/components/WheelDelegate;->targetTextView:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->wheelContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->mVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/biznessapps/common/components/WheelDelegate;->mVisibleListener:Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;

    iget-object v1, p0, Lcom/biznessapps/common/components/WheelDelegate;->targetTextView:Landroid/widget/TextView;

    invoke-interface {v0, p0, v1}, Lcom/biznessapps/common/components/OnWheelDelegateVisibleListener;->onShow(Lcom/biznessapps/common/components/WheelDelegate;Landroid/view/View;)V

    .line 226
    :cond_0
    return-void
.end method
