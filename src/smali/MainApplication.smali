.class public Lme/timschneeberger/rootlessjamesdsp/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/timschneeberger/rootlessjamesdsp/MainApplication$CrashReportingTree;,
        Lme/timschneeberger/rootlessjamesdsp/MainApplication$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainApplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainApplication.kt\nme/timschneeberger/rootlessjamesdsp/MainApplication\n+ 2 SdkCheck.kt\nme/timschneeberger/rootlessjamesdsp/utils/SdkCheckKt\n+ 3 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 4 Preferences.kt\nme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences\n+ 5 FlavorConditionals.kt\nme/timschneeberger/rootlessjamesdsp/utils/FlavorConditionalsKt\n*L\n1#1,299:1\n13#2,2:300\n40#3,5:302\n56#4:307\n56#4:308\n56#4:309\n132#4,3:310\n132#4,3:313\n56#4:317\n7#5:316\n*S KotlinDebug\n*F\n+ 1 MainApplication.kt\nme/timschneeberger/rootlessjamesdsp/MainApplication\n*L\n59#1:300,2\n64#1:302,5\n69#1:307\n72#1:308\n181#1:309\n184#1:310,3\n185#1:313,3\n226#1:317\n197#1:316\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001-\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002:\u0001@B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u00106\u001a\u000207H\u0002J\u0008\u00108\u001a\u000207H\u0016J\u0008\u00109\u001a\u000207H\u0016J\u001c\u0010:\u001a\u0002072\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0016J\u0008\u0010?\u001a\u000207H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0018R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001f\u0010 \u001a\u00060!R\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u000b\u001a\u0004\u0008#\u0010$R\u001a\u0010&\u001a\u00020\'X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001b\u0010,\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010\u000b\u001a\u0004\u0008.\u0010/R\u001b\u00101\u001a\u0002028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010\u000b\u001a\u0004\u00083\u00104\u00a8\u0006A"
    }
    d2 = {
        "Lme/timschneeberger/rootlessjamesdsp/MainApplication;",
        "Landroid/app/Application;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "()V",
        "applicationScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "blockedAppDatabase",
        "Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;",
        "getBlockedAppDatabase",
        "()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;",
        "blockedAppDatabase$delegate",
        "Lkotlin/Lazy;",
        "blockedAppRepository",
        "Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;",
        "getBlockedAppRepository",
        "()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;",
        "blockedAppRepository$delegate",
        "<set-?>",
        "",
        "engineSampleRate",
        "getEngineSampleRate",
        "()F",
        "isEnhancedProcessing",
        "",
        "()Z",
        "isLegacyMode",
        "mediaProjectionStartIntent",
        "Landroid/content/Intent;",
        "getMediaProjectionStartIntent",
        "()Landroid/content/Intent;",
        "setMediaProjectionStartIntent",
        "(Landroid/content/Intent;)V",
        "prefs",
        "Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;",
        "Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences;",
        "getPrefs",
        "()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;",
        "prefs$delegate",
        "profileManager",
        "Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;",
        "getProfileManager",
        "()Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;",
        "setProfileManager",
        "(Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;)V",
        "receiver",
        "me/timschneeberger/rootlessjamesdsp/MainApplication$receiver$2$1",
        "getReceiver",
        "()Lme/timschneeberger/rootlessjamesdsp/MainApplication$receiver$2$1;",
        "receiver$delegate",
        "rootSessionDatabase",
        "Lme/timschneeberger/rootlessjamesdsp/session/root/RootSessionDatabase;",
        "getRootSessionDatabase",
        "()Lme/timschneeberger/rootlessjamesdsp/session/root/RootSessionDatabase;",
        "rootSessionDatabase$delegate",
        "enableDebugTools",
        "",
        "onCreate",
        "onLowMemory",
        "onSharedPreferenceChanged",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "key",
        "",
        "onTerminate",
        "CrashReportingTree",
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


# instance fields
.field private final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field private final blockedAppDatabase$delegate:Lkotlin/Lazy;

.field private final blockedAppRepository$delegate:Lkotlin/Lazy;

.field private engineSampleRate:F

.field private mediaProjectionStartIntent:Landroid/content/Intent;

.field private final prefs$delegate:Lkotlin/Lazy;

.field public profileManager:Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;

.field private final receiver$delegate:Lkotlin/Lazy;

.field private final rootSessionDatabase$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$--KJTQNYkJ9bPztuFZqSxkEWKSM(Ljava/lang/Thread;Lcom/pluto/plugins/exceptions/ANRException;)V
    .locals 0

    invoke-static {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->enableDebugTools$lambda$4(Ljava/lang/Thread;Lcom/pluto/plugins/exceptions/ANRException;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 57
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "L"

    .line 60
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lsposed/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 301
    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;

    invoke-direct {v1, v0}, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;-><init>(Ljava/lang/Object;)V

    .line 64
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 304
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 306
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/MainApplication$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/MainApplication$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->prefs$delegate:Lkotlin/Lazy;

    .line 67
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/MainApplication$rootSessionDatabase$2;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication$rootSessionDatabase$2;-><init>(Lme/timschneeberger/rootlessjamesdsp/MainApplication;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->rootSessionDatabase$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 74
    invoke-static {v3, v0, v3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 75
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/MainApplication$blockedAppDatabase$2;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication$blockedAppDatabase$2;-><init>(Lme/timschneeberger/rootlessjamesdsp/MainApplication;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->blockedAppDatabase$delegate:Lkotlin/Lazy;

    .line 76
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/MainApplication$blockedAppRepository$2;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication$blockedAppRepository$2;-><init>(Lme/timschneeberger/rootlessjamesdsp/MainApplication;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->blockedAppRepository$delegate:Lkotlin/Lazy;

    .line 84
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/MainApplication$receiver$2;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication$receiver$2;-><init>(Lme/timschneeberger/rootlessjamesdsp/MainApplication;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->receiver$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getApplicationScope$p(Lme/timschneeberger/rootlessjamesdsp/MainApplication;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 57
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getBlockedAppDatabase(Lme/timschneeberger/rootlessjamesdsp/MainApplication;)Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;
    .locals 0

    .line 57
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getBlockedAppDatabase()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setEngineSampleRate$p(Lme/timschneeberger/rootlessjamesdsp/MainApplication;F)V
    .locals 0

    .line 57
    iput p1, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->engineSampleRate:F

    return-void
.end method

.method private final enableDebugTools()V
    .locals 2

    .line 238
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 240
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 244
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 250
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 252
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 253
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 255
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 256
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 264
    new-instance v0, Lcom/pluto/Pluto$Installer;

    check-cast p0, Landroid/app/Application;

    invoke-direct {v0, p0}, Lcom/pluto/Pluto$Installer;-><init>(Landroid/app/Application;)V

    .line 265
    new-instance p0, Lcom/pluto/plugins/network/PlutoNetworkPlugin;

    const-string v1, "network"

    invoke-direct {p0, v1}, Lcom/pluto/plugins/network/PlutoNetworkPlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/pluto/Pluto$Installer;->addPlugin(Ljava/lang/Object;)Lcom/pluto/Pluto$Installer;

    move-result-object p0

    .line 266
    new-instance v0, Lcom/pluto/plugins/exceptions/PlutoExceptionsPlugin;

    const-string v1, "exceptions"

    invoke-direct {v0, v1}, Lcom/pluto/plugins/exceptions/PlutoExceptionsPlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pluto/Pluto$Installer;->addPlugin(Ljava/lang/Object;)Lcom/pluto/Pluto$Installer;

    move-result-object p0

    .line 267
    new-instance v0, Lcom/pluto/plugins/logger/PlutoLoggerPlugin;

    const-string v1, "logger"

    invoke-direct {v0, v1}, Lcom/pluto/plugins/logger/PlutoLoggerPlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pluto/Pluto$Installer;->addPlugin(Ljava/lang/Object;)Lcom/pluto/Pluto$Installer;

    move-result-object p0

    .line 268
    new-instance v0, Lcom/pluto/plugins/preferences/PlutoSharePreferencesPlugin;

    const-string v1, "sharedPref"

    invoke-direct {v0, v1}, Lcom/pluto/plugins/preferences/PlutoSharePreferencesPlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pluto/Pluto$Installer;->addPlugin(Ljava/lang/Object;)Lcom/pluto/Pluto$Installer;

    move-result-object p0

    .line 269
    new-instance v0, Lcom/pluto/plugins/rooms/db/PlutoRoomsDatabasePlugin;

    const-string v1, "rooms-db"

    invoke-direct {v0, v1}, Lcom/pluto/plugins/rooms/db/PlutoRoomsDatabasePlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pluto/Pluto$Installer;->addPlugin(Ljava/lang/Object;)Lcom/pluto/Pluto$Installer;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Lcom/pluto/Pluto$Installer;->install()V

    .line 271
    sget-object p0, Lcom/pluto/Pluto;->INSTANCE:Lcom/pluto/Pluto;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pluto/Pluto;->showNotch(Z)V

    .line 273
    sget-object p0, Lcom/pluto/plugins/exceptions/PlutoExceptions;->INSTANCE:Lcom/pluto/plugins/exceptions/PlutoExceptions;

    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/MainApplication$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/pluto/plugins/exceptions/PlutoExceptions;->setANRHandler(Lcom/pluto/plugins/exceptions/UncaughtANRHandler;)V

    .line 277
    sget-object p0, Lcom/pluto/plugins/rooms/db/PlutoRoomsDBWatcher;->INSTANCE:Lcom/pluto/plugins/rooms/db/PlutoRoomsDBWatcher;

    const-string v0, "blocked_apps.db"

    const-class v1, Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;

    invoke-virtual {p0, v0, v1}, Lcom/pluto/plugins/rooms/db/PlutoRoomsDBWatcher;->watch(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private static final enableDebugTools$lambda$4(Ljava/lang/Thread;Lcom/pluto/plugins/exceptions/ANRException;)V
    .locals 3

    const-string v0, "thread"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unhandled ANR handled on thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final getBlockedAppDatabase()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;
    .locals 0

    .line 75
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->blockedAppDatabase$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;

    return-object p0
.end method

.method private final getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;
    .locals 0

    .line 64
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->prefs$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    return-object p0
.end method

.method private final getReceiver()Lme/timschneeberger/rootlessjamesdsp/MainApplication$receiver$2$1;
    .locals 0

    .line 84
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->receiver$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication$receiver$2$1;

    return-object p0
.end method


# virtual methods
.method public final getBlockedAppRepository()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;
    .locals 0

    .line 76
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->blockedAppRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;

    return-object p0
.end method

.method public final getEngineSampleRate()F
    .locals 0

    .line 81
    iget p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->engineSampleRate:F

    return p0
.end method

.method public final getMediaProjectionStartIntent()Landroid/content/Intent;
    .locals 0

    .line 79
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->mediaProjectionStartIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getProfileManager()Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->profileManager:Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "profileManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRootSessionDatabase()Lme/timschneeberger/rootlessjamesdsp/session/root/RootSessionDatabase;
    .locals 0

    .line 67
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->rootSessionDatabase$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/session/root/RootSessionDatabase;

    return-object p0
.end method

.method public final isEnhancedProcessing()Z
    .locals 3

    .line 71
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->isLegacyMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 308
    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const v1, 0x7f14017a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLegacyMode()Z
    .locals 3

    .line 69
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 307
    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const v1, 0x7f14017e

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onCreate()V
    .locals 7

    .line 103
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ltimber/log/Timber$DebugTree;

    invoke-direct {v1}, Ltimber/log/Timber$DebugTree;-><init>()V

    check-cast v1, Ltimber/log/Timber$Tree;

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->plant(Ltimber/log/Timber$Tree;)V

    .line 113
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/storage/Cache;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/storage/Cache;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/storage/Cache;->cleanup(Landroid/content/Context;)V

    .line 115
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Lfr/bipi/tressence/file/FileLoggerTree$Builder;

    invoke-direct {v2}, Lfr/bipi/tressence/file/FileLoggerTree$Builder;-><init>()V

    const-string v3, "application.log"

    .line 116
    invoke-virtual {v2, v3}, Lfr/bipi/tressence/file/FileLoggerTree$Builder;->withFileName(Ljava/lang/String;)Lfr/bipi/tressence/file/FileLoggerTree$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this.cacheDir.absolutePath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lfr/bipi/tressence/file/FileLoggerTree$Builder;->withDirName(Ljava/lang/String;)Lfr/bipi/tressence/file/FileLoggerTree$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 118
    invoke-virtual {v2, v3}, Lfr/bipi/tressence/file/FileLoggerTree$Builder;->withMinPriority(I)Lfr/bipi/tressence/file/FileLoggerTree$Builder;

    move-result-object v2

    const v3, 0x1e8480

    .line 119
    invoke-virtual {v2, v3}, Lfr/bipi/tressence/file/FileLoggerTree$Builder;->withSizeLimit(I)Lfr/bipi/tressence/file/FileLoggerTree$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 120
    invoke-virtual {v2, v3}, Lfr/bipi/tressence/file/FileLoggerTree$Builder;->withFileLimit(I)Lfr/bipi/tressence/file/FileLoggerTree$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v2, v4}, Lfr/bipi/tressence/file/FileLoggerTree$Builder;->appendToFile(Z)Lfr/bipi/tressence/file/FileLoggerTree$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lfr/bipi/tressence/file/FileLoggerTree$Builder;->build()Lfr/bipi/tressence/file/FileLoggerTree;

    move-result-object v2

    check-cast v2, Ltimber/log/Timber$Tree;

    .line 115
    invoke-virtual {v0, v2}, Ltimber/log/Timber$Forest;->plant(Ltimber/log/Timber$Tree;)V

    .line 123
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "====> Application starting up"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v5, "dump.txt"

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 130
    :cond_0
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/notifications/Notifications;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/notifications/Notifications;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/notifications/Notifications;->createChannels(Landroid/content/Context;)V

    .line 132
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/MainApplication$onCreate$appModule$1;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/MainApplication$onCreate$appModule$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-static {v4, v0, v3, v2}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    .line 140
    sget-object v5, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    new-instance v6, Lme/timschneeberger/rootlessjamesdsp/MainApplication$onCreate$1;

    invoke-direct {v6, p0, v0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication$onCreate$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/MainApplication;Lorg/koin/core/module/Module;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v6}, Lorg/koin/core/context/GlobalContext;->startKoin(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    .line 147
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;

    invoke-direct {v0}, Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;-><init>()V

    invoke-virtual {p0, v0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->setProfileManager(Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;)V

    .line 181
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    check-cast v0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 309
    const-class v5, Ljava/lang/Boolean;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const v6, 0x7f1401b9

    invoke-virtual {v0, v6, v2, v5}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "Applying service dump mode fix once"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    check-cast v0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    sget-object v2, Lme/timschneeberger/rootlessjamesdsp/session/dump/DumpManager$Method;->AudioService:Lme/timschneeberger/rootlessjamesdsp/session/dump/DumpManager$Method;

    invoke-virtual {v2}, Lme/timschneeberger/rootlessjamesdsp/session/dump/DumpManager$Method;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const v5, 0x7f1401bf

    invoke-virtual {v0, v5, v2, v3, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->set(ILjava/lang/Object;ZLkotlin/reflect/KClass;)V

    .line 185
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    check-cast v0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 314
    const-class v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v6, v2, v3, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->set(ILjava/lang/Object;ZLkotlin/reflect/KClass;)V

    .line 188
    :cond_1
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    invoke-virtual {v0}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x7f140176

    invoke-virtual {p0, v2}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 191
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getReceiver()Lme/timschneeberger/rootlessjamesdsp/MainApplication$receiver$2$1;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "me.timschneeberger.rootlessjamesdsp.action.service.REPORT_SAMPLE_RATE"

    .line 192
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "me.timschneeberger.rootlessjamesdsp.action.service.DISCARD_AUTHORIZATION"

    .line 193
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 191
    invoke-virtual {v0, v1, v2, v3}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->registerLocalReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 208
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/ksn/audiomax/core/DtsSelfTest;->probe(Landroid/content/Context;)V

    # KsnDtsSys: 免 root 注入执行日志(版本/多方法/回退) + 常驻(电池白名单 + WakeLock) + DTS:X
    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ksn/audiomax/core/KsnDtsSys;->setLogDir(Ljava/io/File;)V

    const-string v0, "auto"

    invoke-static {p0, v0}, Lcom/ksn/audiomax/core/KsnDtsSys;->inject(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lcom/ksn/audiomax/core/KsnDtsSys;->keepAlive(Landroid/content/Context;)Z

    move-result v1

    # DtsReal: 从设置读 DTS:X 风格/注入状态 + 监听实时切换
    invoke-static {p0}, Lcom/ksn/audiomax/core/DtsReal;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 4

    .line 218
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onLowMemory: Running low on memory"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/flavor/CrashlyticsImpl;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/flavor/CrashlyticsImpl;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd HHmmss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleDateFormat(\"yyyyMM\u2026Locale.US).format(Date())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "last_low_memory_event"

    invoke-virtual {v0, v2, v1}, Lme/timschneeberger/rootlessjamesdsp/flavor/CrashlyticsImpl;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const p1, 0x7f140176

    .line 224
    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 226
    sget-object p2, Lme/timschneeberger/rootlessjamesdsp/model/preference/ThemeMode;->Companion:Lme/timschneeberger/rootlessjamesdsp/model/preference/ThemeMode$Companion;

    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 317
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    .line 226
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lme/timschneeberger/rootlessjamesdsp/model/preference/ThemeMode$Companion;->fromInt(I)Lme/timschneeberger/rootlessjamesdsp/model/preference/ThemeMode;

    move-result-object p0

    sget-object p1, Lme/timschneeberger/rootlessjamesdsp/MainApplication$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/model/preference/ThemeMode;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    .line 229
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 225
    :cond_2
    :goto_1
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :cond_3
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 212
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getPrefs()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 213
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->getReceiver()Lme/timschneeberger/rootlessjamesdsp/MainApplication$receiver$2$1;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public final setMediaProjectionStartIntent(Landroid/content/Intent;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->mediaProjectionStartIntent:Landroid/content/Intent;

    return-void
.end method

.method public final setProfileManager(Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;->profileManager:Lme/timschneeberger/rootlessjamesdsp/utils/ProfileManager;

    return-void
.end method
