.class public final Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;
.super Landroidx/fragment/app/Fragment;
.source "DspFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDspFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DspFragment.kt\nme/timschneeberger/rootlessjamesdsp/fragment/DspFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Preferences.kt\nme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,183:1\n40#2,5:184\n40#2,5:189\n56#3:194\n56#3:201\n132#3,3:206\n262#4,2:195\n262#4,2:197\n262#4,2:202\n262#4,2:204\n262#4,2:209\n13579#5,2:199\n*S KotlinDebug\n*F\n+ 1 DspFragment.kt\nme/timschneeberger/rootlessjamesdsp/fragment/DspFragment\n*L\n25#1:184,5\n26#1:189,5\n65#1:194\n137#1:201\n145#1:206,3\n64#1:195,2\n67#1:197,2\n136#1:202,2\n143#1:204,2\n149#1:209,2\n126#1:199,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 22\u00020\u00012\u00020\u0002:\u00012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0014H\u0002J\u0012\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J$\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010 \u001a\u00020\u0014H\u0016J\u001c\u0010!\u001a\u00020\u00142\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0016\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0001J\u0014\u0010*\u001a\u00020\u00142\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u0014\u0010,\u001a\u00020\u00142\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u000e\u0010-\u001a\u00020\u00142\u0006\u0010.\u001a\u00020%J\u000e\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u000201R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0006\u001a\u00060\u0007R\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001f\u0010\r\u001a\u00060\u000eR\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "()V",
        "binding",
        "Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;",
        "prefsApp",
        "Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;",
        "Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences;",
        "getPrefsApp",
        "()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;",
        "prefsApp$delegate",
        "Lkotlin/Lazy;",
        "prefsVar",
        "Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;",
        "getPrefsVar",
        "()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;",
        "prefsVar$delegate",
        "updateNoticeOnClick",
        "Lkotlin/Function0;",
        "",
        "updateNoticeOnCloseClick",
        "hideTranslationNotice",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onSharedPreferenceChanged",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "key",
        "",
        "restartFragment",
        "id",
        "",
        "newFragment",
        "setUpdateCardOnClick",
        "onClick",
        "setUpdateCardOnCloseClick",
        "setUpdateCardTitle",
        "title",
        "setUpdateCardVisible",
        "visible",
        "",
        "Companion",
        "JamesDSP-v1.6.6-43_rootlessFdroidRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$Companion;


# instance fields
.field private binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

.field private final prefsApp$delegate:Lkotlin/Lazy;

.field private final prefsVar$delegate:Lkotlin/Lazy;

.field private updateNoticeOnClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private updateNoticeOnCloseClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 25
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 186
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 188
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 25
    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->prefsApp$delegate:Lkotlin/Lazy;

    .line 191
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 193
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->prefsVar$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getUpdateNoticeOnClick$p(Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 24
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->updateNoticeOnClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getUpdateNoticeOnCloseClick$p(Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 24
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->updateNoticeOnCloseClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$hideTranslationNotice(Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->hideTranslationNotice()V

    return-void
.end method

.method private final getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;
    .locals 0

    .line 25
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->prefsApp$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    return-object p0
.end method

.method private final getPrefsVar()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;
    .locals 0

    .line 26
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->prefsVar$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;

    return-object p0
.end method

.method private final hideTranslationNotice()V
    .locals 4

    .line 143
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->translationNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string v1, "binding.translationNotice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getPrefsVar()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x1e13380

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 207
    const-class v1, Ljava/lang/Long;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const v2, 0x7f1401c3

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->set(ILjava/lang/Object;ZLkotlin/reflect/KClass;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    move-result-object p1

    const-string p2, "inflate(layoutInflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    const-string p2, "binding"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->translationNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$onCreateView$1;

    invoke-direct {v1, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$onCreateView$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setOnCloseClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 50
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->translationNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$onCreateView$2;

    invoke-direct {v1, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$onCreateView$2;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setOnRootClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 55
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->updateNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$onCreateView$3;

    invoke-direct {v1, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$onCreateView$3;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setOnCloseClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 58
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->updateNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$onCreateView$4;

    invoke-direct {v1, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$onCreateView$4;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setOnRootClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 63
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->translationNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string v1, "binding.translationNotice"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getPrefsVar()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;

    move-result-object v1

    check-cast v1, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 194
    const-class v2, Ljava/lang/Long;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const v3, 0x7f1401c3

    invoke-virtual {v1, v3, v0, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_5

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, p3

    :goto_0
    const/16 v3, 0x8

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move p3, v3

    .line 195
    :goto_1
    const/16 p3, 0x8
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p1, :cond_7

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_7
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->updateNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string p3, "binding.updateNotice"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 197
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 p3, 0x4

    .line 70
    invoke-virtual {p1, p3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 71
    iget-object p3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p3, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_8
    iget-object p3, p3, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->cardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 73
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 74
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/DeviceProfilesCardFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/DeviceProfilesCardFragment$Companion;

    invoke-virtual {p3}, Lme/timschneeberger/rootlessjamesdsp/fragment/DeviceProfilesCardFragment$Companion;->newInstance()Lme/timschneeberger/rootlessjamesdsp/fragment/DeviceProfilesCardFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0083

    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 76
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_output_control"

    const v3, 0x7f170013

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0087

    .line 75
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 80
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_compander"

    const v3, 0x7f17000c

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a007e

    .line 79
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 84
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_bass"

    const v3, 0x7f17000b

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a007d

    .line 83
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 88
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_equalizer"

    const v3, 0x7f170010

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0084

    .line 87
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 92
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_graphiceq"

    const v3, 0x7f170011

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0085

    .line 91
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 96
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_ddc"

    const v3, 0x7f17000f

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0082

    .line 95
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 100
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_convolver"

    const v3, 0x7f17000d

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0080

    .line 99
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 104
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_liveprog"

    const v3, 0x7f170012

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0086

    .line 103
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 108
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_tube"

    const v3, 0x7f170016

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a008a

    .line 107
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 112
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_stereowide"

    const v3, 0x7f170015

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0089

    .line 111
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 116
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_crossfeed"

    const v3, 0x7f17000e

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0081

    .line 115
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 120
    sget-object p3, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;

    const-string v1, "dsp_reverb"

    const v3, 0x7f170014

    invoke-virtual {p3, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment$Companion;->newInstance(Ljava/lang/String;I)Lme/timschneeberger/rootlessjamesdsp/fragment/PreferenceGroupFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v1, 0x7f0a0088

    .line 119
    invoke-virtual {p1, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    new-array p1, v2, [Ljava/lang/Integer;

    const p1, 0x7f14019d

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 199
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p0, :cond_9

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v0, p0

    :goto_2
    invoke-virtual {v0}, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    const-string p1, "binding.root"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 39
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const p1, 0x7f14019d

    .line 135
    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 136
    iget-object p2, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    iget-object p2, p2, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->cardDeviceProfiles:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    check-cast p2, Landroid/view/View;

    .line 137
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 201
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 202
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final restartFragment(ILandroidx/fragment/app/Fragment;)V
    .locals 7

    const-string v0, "newFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$restartFragment$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment$restartFragment$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;ILandroidx/fragment/app/Fragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setUpdateCardOnClick(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->updateNoticeOnClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setUpdateCardOnCloseClick(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->updateNoticeOnCloseClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setUpdateCardTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->updateNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setTitleText(Ljava/lang/String;)V

    return-void
.end method

.method public final setUpdateCardVisible(Z)V
    .locals 1

    .line 149
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/DspFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/databinding/FragmentDspBinding;->updateNotice:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string v0, "binding.updateNotice"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 209
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
