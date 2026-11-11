.class public final Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;
.super Landroidx/fragment/app/Fragment;
.source "OnboardingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$Companion;,
        Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$OnRequestPermissionResult;,
        Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnboardingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnboardingFragment.kt\nme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Preferences.kt\nme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences\n+ 6 SdkCheck.kt\nme/timschneeberger/rootlessjamesdsp/utils/SdkCheckKt\n+ 7 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 8 FlavorConditionals.kt\nme/timschneeberger/rootlessjamesdsp/utils/FlavorConditionalsKt\n+ 9 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,668:1\n40#2,5:669\n40#2,5:674\n262#3,2:679\n262#3,2:687\n262#3,2:690\n262#3,2:696\n262#3,2:698\n262#3,2:701\n262#3,2:704\n1#4:681\n132#5,3:682\n133#5,2:685\n56#5:689\n13#6,2:692\n37#7,2:694\n6#8:700\n6#8:703\n167#9,3:706\n*S KotlinDebug\n*F\n+ 1 OnboardingFragment.kt\nme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment\n*L\n80#1:669,5\n81#1:674,5\n143#1:679,2\n380#1:687,2\n390#1:690,2\n583#1:696,2\n584#1:698,2\n585#1:701,2\n586#1:704,2\n349#1:682,3\n353#1:685,2\n381#1:689\n566#1:692,2\n572#1:694,2\n585#1:700\n586#1:703\n103#1:706,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 S2\u00020\u0001:\u0003STUB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010-\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001a\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u00102\u0008\u0008\u0002\u00101\u001a\u00020\u0010H\u0002J\u0010\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u00020\u000eH\u0002J \u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u000208H\u0002J\u0008\u0010:\u001a\u00020\u0010H\u0002J\u0008\u0010;\u001a\u00020\u0010H\u0002J\u0008\u0010<\u001a\u00020/H\u0003J\u0010\u0010=\u001a\u00020/2\u0006\u0010>\u001a\u00020\u000eH\u0002J\u0006\u0010?\u001a\u00020\u0010J\u0012\u0010@\u001a\u00020/2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J$\u0010C\u001a\u0002082\u0006\u0010D\u001a\u00020E2\u0008\u0010F\u001a\u0004\u0018\u00010\u000c2\u0008\u0010G\u001a\u0004\u0018\u00010BH\u0016J\u0008\u0010H\u001a\u00020/H\u0016J\u0010\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020BH\u0016J\u001a\u0010K\u001a\u00020/2\u0006\u0010L\u001a\u0002082\u0008\u0010G\u001a\u0004\u0018\u00010BH\u0016J\u0018\u0010M\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020\u000e2\u0006\u00100\u001a\u00020\u0010H\u0002J\u0008\u0010O\u001a\u00020/H\u0002J\u0008\u0010P\u001a\u00020/H\u0002J\u0008\u0010Q\u001a\u00020/H\u0002J\u0008\u0010R\u001a\u00020/H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0016\u001a\u00060\u0017R\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u001f\u0010\u001d\u001a\u00060\u001eR\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001c\u001a\u0004\u0008\u001f\u0010 R\u000e\u0010\"\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u00060$R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\'0&X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006V"
    }
    d2 = {
        "Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "backButton",
        "Landroid/widget/Button;",
        "binderDeadListener",
        "Lrikka/shizuku/Shizuku$OnBinderDeadListener;",
        "binderReceivedListener",
        "Lrikka/shizuku/Shizuku$OnBinderReceivedListener;",
        "binding",
        "Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;",
        "container",
        "Landroid/view/ViewGroup;",
        "currentPage",
        "",
        "isFirstPage",
        "",
        "()Z",
        "isLastPage",
        "nextButton",
        "pageMap",
        "",
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
        "redoAdbSetup",
        "requestPermissionResultListener",
        "Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$OnRequestPermissionResult;",
        "runtimePermissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "",
        "selectedSetupMethod",
        "Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;",
        "shizukuAlive",
        "useRoot",
        "canAccessNextPage",
        "changePage",
        "",
        "forward",
        "ignoreConditions",
        "checkPermission",
        "code",
        "createTransition",
        "Lcom/google/android/material/transition/MaterialSharedAxis;",
        "entering",
        "start",
        "Landroid/view/View;",
        "end",
        "ensureDumpPermission",
        "ensureRuntimePermissions",
        "finishSetup",
        "goToPage",
        "number",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "viewGroup",
        "bundle",
        "onDestroyView",
        "onSaveInstanceState",
        "outState",
        "onViewCreated",
        "view",
        "requestNextPage",
        "nextPage",
        "requestShizukuInstallation",
        "showDeniedMessage",
        "updateSetupInstructions",
        "viewShizukuInMarket",
        "Companion",
        "OnRequestPermissionResult",
        "SetupMethods",
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
.field public static final Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$Companion;

.field public static final PAGE_ADB_SETUP:I = 0x4

.field public static final PAGE_LIMITATIONS:I = 0x2

.field public static final PAGE_METHOD_SELECT:I = 0x3

.field public static final PAGE_READY:I = 0x6

.field public static final PAGE_RUNTIME_PERMISSIONS:I = 0x5

.field public static final PAGE_WELCOME:I = 0x1

.field public static final REQUEST_CODE_SHIZUKU_GRANT:I = 0x1

.field public static final SHIZUKU_PKG:Ljava/lang/String; = "moe.shizuku.privileged.api"


# instance fields
.field private backButton:Landroid/widget/Button;

.field private final binderDeadListener:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

.field private final binderReceivedListener:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

.field private binding:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;

.field private container:Landroid/view/ViewGroup;

.field private currentPage:I

.field private nextButton:Landroid/widget/Button;

.field private final pageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsApp$delegate:Lkotlin/Lazy;

.field private final prefsVar$delegate:Lkotlin/Lazy;

.field private redoAdbSetup:Z

.field private final requestPermissionResultListener:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$OnRequestPermissionResult;

.field private runtimePermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

.field private shizukuAlive:Z

.field private useRoot:Z


# direct methods
.method public static synthetic $r8$lambda$85sOA6rEzcHUKFblguRoo9xVqGw(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->onViewCreated$lambda$8(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CPMW9IHWgduPWFdsSqAkWmTmpng(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V
    .locals 0

    invoke-static {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binderDeadListener$lambda$1(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UdC9LqUZn-B3fhpH8sUsp3pKSxw(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->onViewCreated$lambda$6(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wyfk64Dr_ZXu3jtDnXnxn87vFD0(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requestShizukuInstallation$lambda$10(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_t2W6jlJ4Zr-sVZBZ3_0bLsPgmY(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->onViewCreated$lambda$7(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$diXBgvhPZGbiiVbmmQJrtVCNvoU(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->onCreate$lambda$3(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dzesQFnC02M_SZJ4g_V6mYnY3W4(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->onViewCreated$lambda$5(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$er2zBf2vULJrJ0suiWe41SxxtAI(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V
    .locals 0

    invoke-static {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binderReceivedListener$lambda$0(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$isMcMkpcDioWTLpTn9Upp_UREtY(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->onViewCreated$lambda$4(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [Lkotlin/Pair;

    const/4 v2, 0x1

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a01f3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0a01f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x3

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0a01f5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x4

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0a01f6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0a01f7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v3

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v3, 0x7f0a01f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v4

    .line 53
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->pageMap:Ljava/util/Map;

    .line 68
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->None:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    .line 70
    iput v2, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    .line 80
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 671
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 673
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 80
    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->prefsApp$delegate:Lkotlin/Lazy;

    .line 676
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 678
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->prefsVar$delegate:Lkotlin/Lazy;

    .line 83
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda6;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binderReceivedListener:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    .line 88
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda7;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binderDeadListener:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    .line 93
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$OnRequestPermissionResult;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$OnRequestPermissionResult;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requestPermissionResultListener:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$OnRequestPermissionResult;

    return-void
.end method

.method public static final synthetic access$checkPermission(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;I)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->checkPermission(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$finishSetup(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->finishSetup()V

    return-void
.end method

.method public static final synthetic access$getPrefsApp(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;
    .locals 0

    .line 50
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectedSetupMethod$p(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;
    .locals 0

    .line 50
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    return-object p0
.end method

.method public static final synthetic access$getShizukuAlive$p(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->shizukuAlive:Z

    return p0
.end method

.method public static final synthetic access$requestShizukuInstallation(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requestShizukuInstallation()V

    return-void
.end method

.method public static final synthetic access$showDeniedMessage(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->showDeniedMessage()V

    return-void
.end method

.method public static final synthetic access$viewShizukuInMarket(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->viewShizukuInMarket()V

    return-void
.end method

.method private static final binderDeadListener$lambda$1(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Shizuku binder died"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-boolean v1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->shizukuAlive:Z

    .line 91
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->updateSetupInstructions()V

    return-void
.end method

.method private static final binderReceivedListener$lambda$0(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Shizuku binder received"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->shizukuAlive:Z

    .line 86
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->updateSetupInstructions()V

    return-void
.end method

.method private final canAccessNextPage(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->ensureRuntimePermissions()Z

    move-result p0

    goto :goto_0

    .line 463
    :cond_1
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->ensureDumpPermission()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final changePage(ZZ)V
    .locals 4

    const/4 v0, 0x1

    .line 420
    iget v1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    if-eqz p1, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    :goto_0
    invoke-direct {p0, v1, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requestNextPage(IZ)I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 422
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Page index out of range ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 426
    iget v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    invoke-direct {p0, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->canAccessNextPage(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 427
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string p1, "Next page not ready; instructions not yet fulfilled by the user"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 432
    :cond_2
    iget-boolean p2, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->redoAdbSetup:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->useRoot:Z

    if-eqz p2, :cond_4

    :cond_3
    if-nez p1, :cond_4

    iget p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    sub-int/2addr p1, v0

    const/4 p2, 0x2

    if-gt p1, p2, :cond_4

    .line 433
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 437
    :cond_4
    invoke-direct {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->goToPage(I)V

    return-void
.end method

.method static synthetic changePage$default(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 419
    :cond_0
    invoke-direct {p0, p1, p2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->changePage(ZZ)V

    return-void
.end method

.method private final checkPermission(I)Z
    .locals 2

    .line 292
    invoke-static {}, Lrikka/shizuku/Shizuku;->isPreV11()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 296
    :cond_0
    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-static {}, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->showDeniedMessage()V

    goto :goto_0

    .line 302
    :cond_2
    invoke-static {p1}, Lrikka/shizuku/Shizuku;->requestPermission(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v1

    :catchall_0
    move-exception p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->showDeniedMessage()V

    return v1
.end method

.method private final createTransition(ZLandroid/view/View;Landroid/view/View;)Lcom/google/android/material/transition/MaterialSharedAxis;
    .locals 1

    .line 638
    new-instance p0, Lcom/google/android/material/transition/MaterialSharedAxis;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/transition/MaterialSharedAxis;-><init>(IZ)V

    .line 643
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/MaterialSharedAxis;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 644
    invoke-virtual {p0, p3}, Lcom/google/android/material/transition/MaterialSharedAxis;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    return-object p0
.end method

.method private final ensureDumpPermission()Z
    .locals 11

    const-string v0, "allow"

    .line 474
    sget-object v1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasDumpPermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->redoAdbSetup:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    sget-object v5, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->Shizuku:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    if-eq v1, v5, :cond_1

    .line 475
    :cond_0
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v0, "DUMP permission granted"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 480
    :cond_1
    iget-boolean v1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->shizukuAlive:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v1

    if-nez v1, :cond_5

    .line 481
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 483
    sget-object v6, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 484
    invoke-static {}, Lrikka/shizuku/Shizuku;->getUid()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Granting DUMP via Shizuku (uid "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "android.permission.DUMP"

    .line 487
    invoke-static {v1, v6, v4}, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->PermissionManager_grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    const-string v7, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 495
    invoke-static {v1, v7, v4}, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->PermissionManager_grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 502
    sget-object v8, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v8, v7}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string v7, "SYSTEM_ALERT_WINDOW"

    .line 507
    invoke-static {v7, v5, v1, v0}, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->AppOpsService_setMode(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 514
    sget-object v7, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v8, "AppOpsService_setMode for system_alert_window failed"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    .line 517
    sget-object v8, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v9, "AppOpsService_setMode for system_alert_window threw an exception"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    sget-object v8, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v8, v7}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    :try_start_2
    const-string v7, "PROJECT_MEDIA"

    .line 523
    invoke-static {v7, v5, v1, v0}, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->AppOpsService_setMode(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 530
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v5, "AppOpsService_setMode failed"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v7}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 533
    sget-object v5, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v7, "AppOpsService_setMode threw an exception"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    sget-object v5, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v5, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 538
    :cond_3
    :goto_2
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasDumpPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 539
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v0, "DUMP permission via Shizuku granted"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 542
    :cond_4
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v5, "DUMP not granted"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v7}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1402a7

    const v5, 0x7f1402a6

    invoke-virtual {v0, p0, v3, v5}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->showAlert(Landroid/content/Context;II)V

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "pm"

    aput-object v0, p0, v4

    const-string v0, "grant"

    aput-object v0, p0, v2

    const-string v0, "pkg"

    .line 548
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object v1, p0, v0

    const/4 v0, 0x3

    aput-object v6, p0, v0

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lrikka/shizuku/Shizuku;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lrikka/shizuku/ShizukuRemoteProcess;

    move-result-object p0

    .line 549
    invoke-virtual {p0}, Lrikka/shizuku/ShizukuRemoteProcess;->waitFor()I

    move v2, v4

    :goto_3
    return v2

    .line 554
    :cond_5
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f140292

    const v2, 0x7f140291

    invoke-virtual {v0, p0, v1, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->showAlert(Landroid/content/Context;II)V

    return v4
.end method

.method private final ensureRuntimePermissions()Z
    .locals 7

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    sget-object v1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasRecordPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 563
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v1, 0x21

    .line 692
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 567
    sget-object v1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasNotificationPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 568
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 693
    :goto_1
    new-instance v3, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;

    invoke-direct {v3, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;-><init>(Ljava/lang/Object;)V

    .line 571
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_5

    .line 572
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->runtimePermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_4

    const-string p0, "runtimePermissionLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v2, p0

    :goto_2
    new-array p0, v5, [Ljava/lang/String;

    .line 695
    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 572
    invoke-virtual {v2, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    move v4, v5

    :cond_5
    return v4
.end method

.method private final finishSetup()V
    .locals 11

    .line 340
    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->redoAdbSetup:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lme/timschneeberger/rootlessjamesdsp/activity/MainActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ForceShowCapturePrompt"

    .line 342
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void

    .line 345
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 348
    :cond_2
    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->useRoot:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 349
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getPrefsVar()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 683
    const-class v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const v3, 0x7f1401a5

    invoke-virtual {p0, v3, v0, v1, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->set(ILjava/lang/Object;ZLkotlin/reflect/KClass;)V

    goto :goto_1

    .line 353
    :cond_3
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    check-cast v0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 685
    const-class v3, Ljava/lang/Boolean;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const v4, 0x7f14017a

    invoke-virtual {v0, v4, v1, v2, v3}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->set(ILjava/lang/Object;ZLkotlin/reflect/KClass;)V

    .line 354
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 355
    sget-object p0, Lme/timschneeberger/rootlessjamesdsp/service/RootAudioProcessorService;->Companion:Lme/timschneeberger/rootlessjamesdsp/service/RootAudioProcessorService$Companion;

    invoke-virtual {p0, v6}, Lme/timschneeberger/rootlessjamesdsp/service/RootAudioProcessorService$Companion;->startServiceEnhanced(Landroid/content/Context;)V

    .line 356
    sget-object v5, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    const v7, 0x7f1402cf

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->toast$default(Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;Landroid/content/Context;IZILjava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;
    .locals 0

    .line 80
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->prefsApp$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    return-object p0
.end method

.method private final getPrefsVar()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;
    .locals 0

    .line 81
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->prefsVar$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;

    return-object p0
.end method

.method private final goToPage(I)V
    .locals 12

    .line 364
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->pageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 366
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->finishSetup()V

    return-void

    :cond_0
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;

    if-nez v0, :cond_2

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;->onboardingPage5:Landroid/widget/FrameLayout;

    const-string v3, "binding.onboardingPage5"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    sget-object v3, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;

    invoke-virtual {v3}, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;->isTiramisu()Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x7f0a01f2

    .line 377
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v3, 0x7f0a021c

    .line 379
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string v3, "goToPage$lambda$13"

    .line 380
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 687
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v3

    check-cast v3, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 689
    const-class v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const v5, 0x7f1401c2

    invoke-virtual {v3, v5, v2, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 381
    invoke-virtual {v0, v3}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setCheckboxIsChecked(Z)V

    .line 382
    new-instance v3, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$goToPage$1$1;

    invoke-direct {v3, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$goToPage$1$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v3}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setOnCheckChangedListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 372
    :cond_4
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->updateSetupInstructions()V

    .line 390
    :goto_0
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->nextButton:Landroid/widget/Button;

    const-string v3, "nextButton"

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v4, :cond_6

    move v4, v5

    goto :goto_1

    :cond_6
    move v4, v6

    :goto_1
    if-eqz v4, :cond_7

    move v4, v6

    goto :goto_2

    :cond_7
    move v4, v1

    .line 690
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->pageMap:Ljava/util/Map;

    iget v4, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 393
    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->pageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v7, ")"

    const-string v8, "; next="

    if-eqz v0, :cond_12

    if-nez v4, :cond_8

    goto/16 :goto_9

    .line 399
    :cond_8
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    :cond_9
    move-object v9, v2

    .line 400
    :goto_3
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    goto :goto_4

    :cond_a
    move-object v10, v2

    :goto_4
    if-eqz v9, :cond_11

    if-nez v10, :cond_b

    goto :goto_8

    .line 407
    :cond_b
    iget v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    if-gt v0, p1, :cond_c

    move v0, v5

    goto :goto_5

    :cond_c
    move v0, v6

    :goto_5
    invoke-direct {p0, v0, v9, v10}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->createTransition(ZLandroid/view/View;Landroid/view/View;)Lcom/google/android/material/transition/MaterialSharedAxis;

    move-result-object v0

    .line 408
    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->container:Landroid/view/ViewGroup;

    if-nez v4, :cond_d

    const-string v4, "container"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_d
    check-cast v0, Landroidx/transition/Transition;

    invoke-static {v4, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 410
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iput p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    .line 415
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->backButton:Landroid/widget/Button;

    if-nez p1, :cond_e

    const-string p1, "backButton"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_e
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->isFirstPage()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 416
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->nextButton:Landroid/widget/Button;

    if-nez p1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move-object v2, p1

    :goto_6
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->isLastPage()Z

    move-result p1

    if-eqz p1, :cond_10

    const p1, 0x7f1402b0

    goto :goto_7

    :cond_10
    const p1, 0x7f1402c2

    :goto_7
    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 402
    :cond_11
    :goto_8
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "View is null (prev="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 395
    :cond_12
    :goto_9
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown page resource (prev="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final isFirstPage()Z
    .locals 1

    .line 649
    iget p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isLastPage()Z
    .locals 1

    .line 651
    iget v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->pageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final onCreate$lambda$3(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Ljava/util/Map;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isGranted"

    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :cond_0
    move p1, v1

    goto :goto_0

    .line 707
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 105
    iget p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 107
    invoke-direct {p0, v1, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->changePage(ZZ)V

    goto :goto_1

    .line 110
    :cond_3
    sget-object p1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1402cb

    const v1, 0x7f1402ca

    invoke-virtual {p1, p0, v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->showAlert(Landroid/content/Context;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-static {p0, v1, v1, p1, v0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->changePage$default(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method private static final onViewCreated$lambda$5(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-static {p0, v1, v2, p1, v0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->changePage$default(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method private static final onViewCreated$lambda$6(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object p1, Lme/timschneeberger/rootlessjamesdsp/flavor/RootShellImpl;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/flavor/RootShellImpl;

    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$onViewCreated$3$1;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$onViewCreated$3$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    check-cast v0, Lme/timschneeberger/rootlessjamesdsp/flavor/RootShellImpl$OnShellAttachedCallback;

    invoke-virtual {p1, v0}, Lme/timschneeberger/rootlessjamesdsp/flavor/RootShellImpl;->getShell(Lme/timschneeberger/rootlessjamesdsp/flavor/RootShellImpl$OnShellAttachedCallback;)V

    return-void
.end method

.method private static final onViewCreated$lambda$7(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object p1, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->Shizuku:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-static {p0, v1, v2, p1, v0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->changePage$default(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method private static final onViewCreated$lambda$8(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object p1, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->Adb:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-static {p0, v1, v2, p1, v0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->changePage$default(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final requestNextPage(IZ)I
    .locals 6

    const/4 v0, 0x3

    const-string v1, "requireContext()"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v3

    goto :goto_2

    .line 447
    :cond_1
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasNotificationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasRecordPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 445
    :cond_2
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasDumpPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->redoAdbSetup:Z

    if-nez v0, :cond_0

    :goto_0
    goto :goto_1

    .line 444
    :cond_3
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasDumpPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->redoAdbSetup:Z

    if-nez v0, :cond_0

    :goto_1
    move v0, v2

    .line 452
    :goto_2
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestNextPage: shouldSkip "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_4

    return p1

    :cond_4
    if-eqz p2, :cond_5

    add-int/2addr p1, v2

    goto :goto_3

    :cond_5
    sub-int/2addr p1, v2

    .line 457
    :goto_3
    invoke-direct {p0, p1, p2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requestNextPage(IZ)I

    move-result p0

    return p0
.end method

.method private final requestShizukuInstallation()V
    .locals 3

    .line 267
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1402a8

    .line 268
    invoke-virtual {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f1402a9

    .line 269
    invoke-virtual {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f140163

    .line 270
    invoke-virtual {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda8;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const/high16 p0, 0x1040000

    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 272
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private static final requestShizukuInstallation$lambda$10(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->viewShizukuInMarket()V

    return-void
.end method

.method private final showDeniedMessage()V
    .locals 3

    .line 314
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f14029d

    const v2, 0x7f14029c

    invoke-virtual {v0, p0, v1, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->showAlert(Landroid/content/Context;II)V

    return-void
.end method

.method private final updateSetupInstructions()V
    .locals 9

    .line 581
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;->adbSetup:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;

    const-string v2, "binding.adbSetup"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step4:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string v3, "page.step4"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    sget-object v4, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->Adb:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    const/16 v4, 0x8

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v4

    .line 696
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step5:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string v3, "page.step5"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    sget-object v7, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->Adb:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    if-ne v3, v7, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_3

    :cond_4
    move v3, v4

    .line 698
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step5bOptional:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string v3, "page.step5bOptional"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    sget-object v7, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->Adb:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    if-ne v3, v7, :cond_5

    move v3, v5

    goto :goto_4

    :cond_5
    move v3, v6

    :goto_4
    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_5

    :cond_6
    move v3, v4

    .line 701
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step5cOptional:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const-string v3, "page.step5cOptional"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    sget-object v7, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->Adb:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    if-ne v3, v7, :cond_7

    move v3, v5

    goto :goto_6

    :cond_7
    move v3, v6

    :goto_6
    if-eqz v3, :cond_8

    move v4, v6

    .line 704
    :cond_8
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v2, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->selectedSetupMethod:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    sget-object v3, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;->Shizuku:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$SetupMethods;

    const v4, 0x7f080160

    const v7, 0x7f08015f

    if-ne v2, v3, :cond_d

    .line 589
    sget-object v1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "moe.shizuku.privileged.api"

    invoke-virtual {v1, v2, v3}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 590
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonEnabled(Z)V

    const v2, 0x7f08016e

    if-eqz v1, :cond_9

    .line 592
    iget-object v3, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v7, 0x7f1402a4

    invoke-virtual {p0, v7}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonText(Ljava/lang/String;)V

    .line 593
    iget-object v3, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {v3, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setIconSrc(I)V

    goto :goto_7

    .line 596
    :cond_9
    iget-object v3, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v8, 0x7f1402a3

    invoke-virtual {p0, v8}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonText(Ljava/lang/String;)V

    .line 597
    iget-object v3, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {v3, v7}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setIconSrc(I)V

    .line 600
    :goto_7
    iget-object v3, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    iget-boolean v7, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->shizukuAlive:Z

    if-eqz v7, :cond_b

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    move v5, v6

    :cond_b
    :goto_8
    invoke-virtual {v3, v5}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonEnabled(Z)V

    .line 601
    iget-boolean v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->shizukuAlive:Z

    if-eqz v3, :cond_c

    if-eqz v1, :cond_c

    .line 602
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v3, 0x7f1402ab

    invoke-virtual {p0, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonText(Ljava/lang/String;)V

    .line 603
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setIconSrc(I)V

    goto :goto_9

    .line 606
    :cond_c
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f1402aa

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonText(Ljava/lang/String;)V

    .line 607
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {v1, v4}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setIconSrc(I)V

    .line 610
    :goto_9
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step3:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f14029b

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonText(Ljava/lang/String;)V

    .line 612
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f1402a5

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 613
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f1402ac

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 614
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step3:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f1402a2

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 616
    iget-object v0, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->title:Landroid/widget/TextView;

    const v1, 0x7f1402ad

    invoke-virtual {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 619
    :cond_d
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {v2, v7}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setIconSrc(I)V

    .line 620
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {v2, v4}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setIconSrc(I)V

    .line 622
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v3, 0x7f140294

    invoke-virtual {p0, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonText(Ljava/lang/String;)V

    .line 623
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {v2, v1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonText(Ljava/lang/String;)V

    .line 624
    iget-object v2, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step3:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    invoke-virtual {v2, v1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setButtonText(Ljava/lang/String;)V

    .line 625
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f140293

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 626
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f140295

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 627
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step3:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f140296

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 628
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step4:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f140297

    invoke-virtual {p0, v3, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 629
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step5:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    const v2, 0x7f140298

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 630
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step5bOptional:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f140299

    invoke-virtual {p0, v3, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 631
    iget-object v1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step5cOptional:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f14029a

    invoke-virtual {p0, v3, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setBodyText(Ljava/lang/String;)V

    .line 633
    iget-object v0, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->title:Landroid/widget/TextView;

    const v1, 0x7f14028f

    invoke-virtual {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    return-void
.end method

.method private final viewShizukuInMarket()V
    .locals 2

    .line 319
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "moe.shizuku.privileged.api"

    invoke-virtual {v0, p0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->openPlayStoreApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()Z
    .locals 3

    .line 284
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->isFirstPage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 285
    invoke-static {p0, v1, v1, v0, v2}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->changePage$default(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;ZZILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast p1, Landroidx/activity/result/contract/ActivityResultContract;

    .line 100
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda5;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    invoke-virtual {p0, p1, v0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    const-string v0, "registerForActivityResul\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->runtimePermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "layoutInflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v0, "RootSetupDumpPerm"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    const/4 p3, 0x1

    iput-boolean p3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->useRoot:Z

    .line 122
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v0, "RootlessRedoAdbSetup"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->redoAdbSetup:Z

    .line 123
    invoke-static {p1, p2, v1}, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;

    move-result-object p1

    const-string p2, "inflate(layoutInflater, viewGroup, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;

    if-nez p1, :cond_0

    const-string p0, "binding"

    .line 124
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const-string p1, "binding.root"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 276
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 278
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binderReceivedListener:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->removeBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)Z

    .line 279
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binderDeadListener:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->removeBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)Z

    .line 280
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requestPermissionResultListener:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$OnRequestPermissionResult;

    check-cast p0, Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    invoke-static {p0}, Lrikka/shizuku/Shizuku;->removeRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentPage"

    .line 262
    iget v1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->currentPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a00b4

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01f0

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "view.findViewById(R.id.onboarding_container)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->container:Landroid/view/ViewGroup;

    const p1, 0x7f0a0064

    .line 130
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "controlsLayout.findViewById(R.id.back_button)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->backButton:Landroid/widget/Button;

    const p1, 0x7f0a01dd

    .line 131
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "controlsLayout.findViewById(R.id.next_button)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->nextButton:Landroid/widget/Button;

    .line 132
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->backButton:Landroid/widget/Button;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "backButton"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda0;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->nextButton:Landroid/widget/Button;

    if-nez p1, :cond_1

    const-string p1, "nextButton"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda1;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-boolean p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->useRoot:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->redoAdbSetup:Z

    if-eqz p1, :cond_3

    .line 136
    :cond_2
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->pageMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->pageMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 138
    invoke-direct {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->goToPage(I)V

    .line 142
    :cond_3
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;

    const-string v1, "binding"

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;->methodSelect:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;

    const-string v2, "binding.methodSelect"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsRootCard:Lcom/google/android/material/card/MaterialCardView;

    const-string v3, "methodPage.methodsRootCard"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    iget-boolean v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->useRoot:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    const/16 v3, 0x8

    .line 679
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuBody:Landroid/widget/TextView;

    .line 145
    iget-boolean v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->useRoot:Z

    if-eqz v3, :cond_6

    const v3, 0x7f1402bb

    goto :goto_1

    :cond_6
    const v3, 0x7f1402be

    .line 144
    :goto_1
    invoke-virtual {p0, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsAdbBody:Landroid/widget/TextView;

    .line 151
    iget-boolean v3, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->useRoot:Z

    if-eqz v3, :cond_7

    const v3, 0x7f1402b9

    goto :goto_2

    :cond_7
    const v3, 0x7f1402bd

    .line 150
    :goto_2
    invoke-virtual {p0, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget-object v2, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;

    invoke-virtual {v2}, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;->isQ()Z

    move-result v2

    if-nez v2, :cond_8

    .line 158
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2, v4}, Lcom/google/android/material/card/MaterialCardView;->setEnabled(Z)V

    .line 159
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2, v4}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 160
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2, v4}, Lcom/google/android/material/card/MaterialCardView;->setFocusable(Z)V

    .line 161
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuBody:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuTitle:Landroid/widget/TextView;

    const v3, 0x7f1402bf

    invoke-virtual {p0, v3}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1402c1

    invoke-virtual {p0, v4}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_8
    iget-boolean v2, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->useRoot:Z

    if-nez v2, :cond_9

    sget-object v2, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;

    invoke-virtual {v2}, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheck;->isQ()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 168
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuCard:Lcom/google/android/material/card/MaterialCardView;

    .line 169
    sget-object v3, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f040128

    invoke-virtual {v3, v4, v5}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->resolveColorAttribute(Landroid/content/Context;I)I

    move-result v3

    .line 168
    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 173
    :cond_9
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsRootCard:Lcom/google/android/material/card/MaterialCardView;

    new-instance v3, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda2;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v2, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsShizukuCard:Lcom/google/android/material/card/MaterialCardView;

    new-instance v3, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda3;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage3Binding;->methodsAdbCard:Lcom/google/android/material/card/MaterialCardView;

    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$$ExternalSyntheticLambda4;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move-object v0, p1

    :goto_3
    iget-object p1, v0, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingFragmentBinding;->adbSetup:Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;

    const-string v0, "binding.adbSetup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step1:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$onViewCreated$6;

    invoke-direct {v1, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$onViewCreated$6;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setOnButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 215
    iget-object v0, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step2:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$onViewCreated$7;

    invoke-direct {v1, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$onViewCreated$7;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setOnButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 222
    iget-object p1, p1, Lme/timschneeberger/rootlessjamesdsp/databinding/OnboardingPage4Binding;->step3:Lme/timschneeberger/rootlessjamesdsp/view/Card;

    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$onViewCreated$8;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$onViewCreated$8;-><init>(Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lme/timschneeberger/rootlessjamesdsp/view/Card;->setOnButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    if-eqz p2, :cond_b

    const-string p1, "currentPage"

    .line 254
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->goToPage(I)V

    .line 256
    :cond_b
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binderReceivedListener:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    invoke-static {p1}, Lrikka/shizuku/Shizuku;->addBinderReceivedListenerSticky(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V

    .line 257
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->binderDeadListener:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    invoke-static {p1}, Lrikka/shizuku/Shizuku;->addBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)V

    .line 258
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->requestPermissionResultListener:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$OnRequestPermissionResult;

    check-cast p0, Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    invoke-static {p0}, Lrikka/shizuku/Shizuku;->addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V

    return-void
.end method
