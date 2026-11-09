.class public final Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;
.super Lme/timschneeberger/rootlessjamesdsp/service/BaseAudioProcessorService;
.source "RootlessAudioProcessorService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$Companion;,
        Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootlessAudioProcessorService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootlessAudioProcessorService.kt\nme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Context.kt\nandroidx/core/content/ContextKt\n+ 4 CompatExtensions.kt\nme/timschneeberger/rootlessjamesdsp/utils/extensions/CompatExtensions\n+ 5 SdkCheck.kt\nme/timschneeberger/rootlessjamesdsp/utils/SdkCheckKt\n+ 6 Preferences.kt\nme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,685:1\n40#2,5:686\n40#2,5:691\n31#3:696\n31#3:697\n31#3:698\n23#4:699\n24#4,2:702\n13#5,2:700\n13#5,2:708\n56#6:704\n56#6:705\n56#6:706\n56#6:707\n1549#7:710\n1620#7,3:711\n1855#7,2:714\n37#8,2:716\n1#9:718\n*S KotlinDebug\n*F\n+ 1 RootlessAudioProcessorService.kt\nme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService\n*L\n88#1:686,5\n89#1:691,5\n106#1:696\n107#1:697\n108#1:698\n179#1:699\n179#1:702,2\n179#1:700,2\n569#1:708,2\n376#1:704\n380#1:705\n410#1:706\n412#1:707\n626#1:710\n626#1:711,3\n630#1:714,2\n631#1:716,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d3\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c*\u0005/258H\u0008\u0007\u0018\u0000 i2\u00020\u0001:\u0001iB\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020N2\u0006\u0010U\u001a\u00020N2\u0006\u0010V\u001a\u00020NH\u0003J \u0010W\u001a\u00020X2\u0006\u0010T\u001a\u00020N2\u0006\u0010U\u001a\u00020N2\u0006\u0010V\u001a\u00020NH\u0002J\u0008\u0010Y\u001a\u00020NH\u0002J\u0008\u0010Z\u001a\u00020NH\u0002J\u0010\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020^H\u0002J\u0008\u0010_\u001a\u00020\\H\u0016J\u0008\u0010`\u001a\u00020\\H\u0016J \u0010a\u001a\u00020N2\u0006\u0010b\u001a\u00020+2\u0006\u0010c\u001a\u00020N2\u0006\u0010d\u001a\u00020NH\u0016J\u0006\u0010e\u001a\u00020\\J\u0006\u0010f\u001a\u00020\\J\u0008\u0010g\u001a\u00020\\H\u0003J\u0006\u0010h\u001a\u00020\\R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\r\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u0014R\'\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000c\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020 8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u000e\u0010%\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00100R\u0010\u00101\u001a\u000202X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00103R\u0010\u00104\u001a\u000205X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00106R\u0010\u00107\u001a\u000208X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00109R\u001f\u0010:\u001a\u00060;R\u00020<8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010\u000c\u001a\u0004\u0008=\u0010>R\u000e\u0010@\u001a\u00020AX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010B\u001a\u00060CR\u00020<8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008F\u0010\u000c\u001a\u0004\u0008D\u0010ER\u0010\u0010G\u001a\u00020HX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010IR\u0010\u0010J\u001a\u0004\u0018\u00010KX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020NX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020PX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006j"
    }
    d2 = {
        "Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;",
        "Lme/timschneeberger/rootlessjamesdsp/service/BaseAudioProcessorService;",
        "()V",
        "applicationScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "blockedAppDatabase",
        "Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;",
        "getBlockedAppDatabase",
        "()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;",
        "blockedAppDatabase$delegate",
        "Lkotlin/Lazy;",
        "blockedAppObserver",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lme/timschneeberger/rootlessjamesdsp/model/room/BlockedApp;",
        "blockedAppRepository",
        "Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;",
        "getBlockedAppRepository",
        "()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;",
        "blockedAppRepository$delegate",
        "blockedApps",
        "Landroidx/lifecycle/LiveData;",
        "getBlockedApps",
        "()Landroidx/lifecycle/LiveData;",
        "blockedApps$delegate",
        "broadcastReceiver",
        "Landroid/content/BroadcastReceiver;",
        "engine",
        "Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;",
        "excludeRestrictedSessions",
        "",
        "isProcessorDisposing",
        "isProcessorIdle",
        "isRunning",
        "()Z",
        "isServiceDisposing",
        "mediaProjection",
        "Landroid/media/projection/MediaProjection;",
        "mediaProjectionManager",
        "Landroid/media/projection/MediaProjectionManager;",
        "mediaProjectionStartIntent",
        "Landroid/content/Intent;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "onAppProblemListener",
        "me/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onAppProblemListener$1",
        "Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onAppProblemListener$1;",
        "onSessionChangeListener",
        "me/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionChangeListener$1",
        "Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionChangeListener$1;",
        "onSessionLossListener",
        "me/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionLossListener$1",
        "Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionLossListener$1;",
        "onSessionPolicyChangeListener",
        "me/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionPolicyChangeListener$1",
        "Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionPolicyChangeListener$1;",
        "preferences",
        "Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;",
        "Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences;",
        "getPreferences",
        "()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;",
        "preferences$delegate",
        "preferencesListener",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "preferencesVar",
        "Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;",
        "getPreferencesVar",
        "()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;",
        "preferencesVar$delegate",
        "projectionCallback",
        "me/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$projectionCallback$1",
        "Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$projectionCallback$1;",
        "recorderThread",
        "Ljava/lang/Thread;",
        "recreateRecorderRequested",
        "sessionLossRetryCount",
        "",
        "sessionManager",
        "Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;",
        "suspendOnIdle",
        "buildAudioRecord",
        "Landroid/media/AudioRecord;",
        "encoding",
        "sampleRate",
        "bufferSizeBytes",
        "buildAudioTrack",
        "Landroid/media/AudioTrack;",
        "determineBufferSize",
        "determineSamplingRate",
        "loadFromPreferences",
        "",
        "key",
        "",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "intent",
        "flags",
        "startId",
        "requestAudioRecordRecreation",
        "restartRecording",
        "startRecording",
        "stopRecording",
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
.field public static final ACTION_START:Ljava/lang/String; = "me.timschneeberger.rootlessjamesdsp.rootless.service.START"

.field public static final ACTION_STOP:Ljava/lang/String; = "me.timschneeberger.rootlessjamesdsp.rootless.service.STOP"

.field public static final Companion:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$Companion;

.field public static final EXTRA_APP_COMPAT_INTERNAL_CALL:Ljava/lang/String; = "appCompatInternalCall"

.field public static final EXTRA_APP_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_MEDIA_PROJECTION_DATA:Ljava/lang/String; = "mediaProjectionData"

.field public static final SESSION_LOSS_MAX_RETRIES:I = 0x1


# instance fields
.field private final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field private audioManager:Landroid/media/AudioManager;

.field private final blockedAppDatabase$delegate:Lkotlin/Lazy;

.field private final blockedAppObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lme/timschneeberger/rootlessjamesdsp/model/room/BlockedApp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blockedAppRepository$delegate:Lkotlin/Lazy;

.field private final blockedApps$delegate:Lkotlin/Lazy;

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private engine:Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

.field private excludeRestrictedSessions:Z

.field private isProcessorDisposing:Z

.field private isProcessorIdle:Z

.field private isServiceDisposing:Z

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mediaProjectionStartIntent:Landroid/content/Intent;

.field private notificationManager:Landroid/app/NotificationManager;

.field private final onAppProblemListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onAppProblemListener$1;

.field private final onSessionChangeListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionChangeListener$1;

.field private final onSessionLossListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionLossListener$1;

.field private final onSessionPolicyChangeListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionPolicyChangeListener$1;

.field private final preferences$delegate:Lkotlin/Lazy;

.field private final preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final preferencesVar$delegate:Lkotlin/Lazy;

.field private final projectionCallback:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$projectionCallback$1;

.field private recorderThread:Ljava/lang/Thread;

.field private recreateRecorderRequested:Z

.field private sessionLossRetryCount:I

.field private sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

.field private suspendOnIdle:Z


# direct methods
.method public static synthetic $r8$lambda$5g-qaBalXg6MCIyUvaOcIylNBOE(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->preferencesListener$lambda$1(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnsmgiPAN3m0KXWw-XmQ0IxTpbg(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/AudioTrack;IIILme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->startRecording$lambda$2(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/AudioTrack;IIILme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uBxMUT01bk6bPci1W6YOJCr6idg(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedAppObserver$lambda$0(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->Companion:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 55
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/BaseAudioProcessorService;-><init>()V

    .line 88
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 688
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 690
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 88
    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->preferences$delegate:Lkotlin/Lazy;

    .line 693
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 695
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->preferencesVar$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 92
    invoke-static {v3, v0, v3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 93
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$blockedAppDatabase$2;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$blockedAppDatabase$2;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedAppDatabase$delegate:Lkotlin/Lazy;

    .line 94
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$blockedAppRepository$2;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$blockedAppRepository$2;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedAppRepository$delegate:Lkotlin/Lazy;

    .line 95
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$blockedApps$2;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$blockedApps$2;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedApps$delegate:Lkotlin/Lazy;

    .line 96
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$$ExternalSyntheticLambda1;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedAppObserver:Landroidx/lifecycle/Observer;

    .line 240
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$$ExternalSyntheticLambda2;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 246
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$projectionCallback$1;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$projectionCallback$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->projectionCallback:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$projectionCallback$1;

    .line 270
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$broadcastReceiver$1;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$broadcastReceiver$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionLossListener$1;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionLossListener$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onSessionLossListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionLossListener$1;

    .line 312
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionChangeListener$1;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionChangeListener$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onSessionChangeListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionChangeListener$1;

    .line 325
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onAppProblemListener$1;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onAppProblemListener$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onAppProblemListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onAppProblemListener$1;

    .line 356
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionPolicyChangeListener$1;

    invoke-direct {v0, p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionPolicyChangeListener$1;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onSessionPolicyChangeListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionPolicyChangeListener$1;

    return-void
.end method

.method public static final synthetic access$getApplicationScope$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 54
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getBlockedAppDatabase(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;
    .locals 0

    .line 54
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getBlockedAppDatabase()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBlockedAppRepository(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;
    .locals 0

    .line 54
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getBlockedAppRepository()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEngine$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;
    .locals 0

    .line 54
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->engine:Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

    return-object p0
.end method

.method public static final synthetic access$getExcludeRestrictedSessions$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->excludeRestrictedSessions:Z

    return p0
.end method

.method public static final synthetic access$getMediaProjectionStartIntent$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Landroid/content/Intent;
    .locals 0

    .line 54
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjectionStartIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static final synthetic access$getNotificationManager$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Landroid/app/NotificationManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->notificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static final synthetic access$getPreferences(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;
    .locals 0

    .line 54
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getPreferences()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPreferencesVar(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;
    .locals 0

    .line 54
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getPreferencesVar()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSessionLossRetryCount$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)I
    .locals 0

    .line 54
    iget p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionLossRetryCount:I

    return p0
.end method

.method public static final synthetic access$getSessionManager$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    return-object p0
.end method

.method public static final synthetic access$isProcessorIdle$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isProcessorIdle:Z

    return p0
.end method

.method public static final synthetic access$isServiceDisposing$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isServiceDisposing:Z

    return p0
.end method

.method public static final synthetic access$setProcessorIdle$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isProcessorIdle:Z

    return-void
.end method

.method public static final synthetic access$setSessionLossRetryCount$p(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;I)V
    .locals 0

    .line 54
    iput p1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionLossRetryCount:I

    return-void
.end method

.method private static final blockedAppObserver$lambda$0(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;Ljava/util/List;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "blockedAppObserver: Database changed; ignored="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iput-boolean v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recreateRecorderRequested:Z

    :cond_0
    return-void
.end method

.method private final buildAudioRecord(III)Landroid/media/AudioRecord;
    .locals 18

    move-object/from16 v0, p0

    .line 603
    sget-object v1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasRecordPermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 608
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    move/from16 v3, p1

    .line 609
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    move/from16 v3, p2

    .line 610
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    const/16 v3, 0xc

    .line 611
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 612
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 614
    new-instance v3, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    iget-object v4, v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    const/4 v4, 0x1

    .line 615
    invoke-virtual {v3, v4}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v3

    const/16 v4, 0xe

    .line 616
    invoke-virtual {v3, v4}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v3

    .line 617
    invoke-virtual {v3, v2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v3

    const-string v4, "Builder(mediaProjection!\u2026Attributes.USAGE_UNKNOWN)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iget-boolean v4, v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->excludeRestrictedSessions:Z

    const/4 v5, 0x0

    const-string v6, "sessionManager"

    if-eqz v4, :cond_1

    .line 620
    iget-object v4, v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    if-nez v4, :cond_0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_0
    invoke-virtual {v4}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->getSessionPolicyDatabase()Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager;->getRestrictedUids()[Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 622
    :cond_1
    iget-object v4, v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    if-nez v4, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_2
    invoke-virtual {v4, v2}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->pollOnce(Z)V

    .line 623
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_0
    check-cast v4, Ljava/util/Collection;

    .line 624
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 626
    invoke-direct/range {p0 .. p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getBlockedApps()Landroidx/lifecycle/LiveData;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_4

    check-cast v7, Ljava/lang/Iterable;

    .line 710
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 711
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 712
    check-cast v9, Lme/timschneeberger/rootlessjamesdsp/model/room/BlockedApp;

    .line 626
    invoke-virtual {v9}, Lme/timschneeberger/rootlessjamesdsp/model/room/BlockedApp;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 712
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 713
    :cond_3
    check-cast v8, Ljava/util/List;

    .line 627
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 630
    :cond_4
    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    .line 714
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 630
    invoke-virtual {v3, v8}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->excludeUid(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    goto :goto_2

    .line 631
    :cond_5
    iget-object v7, v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    if-nez v7, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_6
    invoke-virtual {v7}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->getSessionDatabase()Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;

    move-result-object v7

    check-cast v4, Ljava/util/Collection;

    new-array v8, v2, [Ljava/lang/Integer;

    .line 717
    invoke-interface {v4, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    .line 631
    invoke-virtual {v7, v4}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;->setExcludedUids([Ljava/lang/Integer;)V

    .line 632
    iget-object v0, v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    if-nez v0, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v5, v0

    :goto_3
    invoke-virtual {v5, v2}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->pollOnce(Z)V

    .line 634
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v4, "; "

    move-object v10, v4

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildAudioRecord: Excluded UIDs: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 637
    invoke-virtual {v0, v1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    move/from16 v1, p3

    .line 638
    invoke-virtual {v0, v1}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 639
    invoke-virtual {v3}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    const-string v1, "Builder()\n            .s\u2026d())\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 604
    :cond_8
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "buildAudioRecord: RECORD_AUDIO not granted"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RECORD_AUDIO not granted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final buildAudioTrack(III)Landroid/media/AudioTrack;
    .locals 4

    .line 564
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 566
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 567
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 v1, 0x3

    .line 570
    invoke-virtual {p0, v1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 709
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;

    invoke-direct {v2, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;-><init>(Ljava/lang/Object;)V

    .line 573
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v2, 0xc

    .line 574
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 575
    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 576
    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p2

    .line 577
    invoke-virtual {p2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 585
    :goto_0
    rem-int p1, p3, p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-ge p3, v1, :cond_2

    .line 586
    :cond_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid audio buffer size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    div-int/lit16 p3, p3, 0x80

    mul-int/lit16 p3, p3, 0x80

    .line 591
    :cond_2
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using buffer size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    new-instance p1, Landroid/media/AudioTrack$Builder;

    invoke-direct {p1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 594
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 595
    invoke-virtual {p1, v1}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 596
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 597
    invoke-virtual {p0, p3}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 598
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    const-string p1, "Builder()\n            .s\u2026ize)\n            .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final determineBufferSize()I
    .locals 2

    .line 653
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "audioManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 654
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    move-object v0, p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_3
    const/16 p0, 0x100

    :goto_1
    return p0
.end method

.method private final determineSamplingRate()I
    .locals 4

    .line 645
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "audioManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 646
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    move-object v0, p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_3
    const p0, 0xbb80

    .line 647
    :goto_1
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Real HAL sampling rate is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private final getBlockedAppDatabase()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;
    .locals 0

    .line 93
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedAppDatabase$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistDatabase;

    return-object p0
.end method

.method private final getBlockedAppRepository()Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;
    .locals 0

    .line 94
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedAppRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/model/room/AppBlocklistRepository;

    return-object p0
.end method

.method private final getBlockedApps()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lme/timschneeberger/rootlessjamesdsp/model/room/BlockedApp;",
            ">;>;"
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedApps$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method private final getPreferences()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;
    .locals 0

    .line 88
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->preferences$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    return-object p0
.end method

.method private final getPreferencesVar()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;
    .locals 0

    .line 89
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->preferencesVar$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;

    return-object p0
.end method

.method private final isRunning()Z
    .locals 0

    .line 70
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recorderThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final loadFromPreferences(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f1401b7

    .line 375
    invoke-virtual {p0, v0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 376
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getPreferences()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object p1

    check-cast p1, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 704
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 376
    iput-boolean p1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->suspendOnIdle:Z

    .line 377
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    iget-boolean p0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->suspendOnIdle:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Suspend on idle set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1401c0

    .line 379
    invoke-virtual {p0, v0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 380
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getPreferences()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object p1

    check-cast p1, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 705
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 380
    iput-boolean p1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->excludeRestrictedSessions:Z

    .line 381
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->excludeRestrictedSessions:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exclude restricted set to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->requestAudioRecordRecreation()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final preferencesListener$lambda$1(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    .line 242
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->loadFromPreferences(Ljava/lang/String;)V

    return-void
.end method

.method private final startRecording()V
    .locals 15

    .line 402
    # KsnDts: proxy on -> 启用 DTS:X 注入(捕获音频过真 DTS)
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ksn/audiomax/core/DtsReal;->setInject(Z)V

    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/PermissionExtensions;->hasRecordPermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "Record audio permission missing. Can\'t record"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopSelf()V

    return-void

    .line 409
    :cond_0
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;->Companion:Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding$Companion;

    .line 410
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getPreferences()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v2

    check-cast v2, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 706
    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const v4, 0x7f140179

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    .line 410
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 409
    :goto_0
    invoke-virtual {v0, v2}, Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding$Companion;->fromInt(I)Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;

    move-result-object v14

    .line 412
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getPreferences()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    check-cast v0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 707
    const-class v2, Ljava/lang/Float;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const v4, 0x7f140178

    invoke-virtual {v0, v4, v5, v2}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v8, v0

    .line 413
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v14}, Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-ne v0, v3, :cond_2

    mul-int/lit8 v0, v8, 0x4

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v8, 0x2

    :goto_1
    move v13, v0

    .line 417
    sget-object v0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v14}, Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    move v11, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    move v11, v0

    .line 421
    :goto_2
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->determineSamplingRate()I

    move-result v0

    const v2, 0xac44

    const v3, 0xbb80

    invoke-static {v0, v2, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v12

    .line 423
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v14}, Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;->name()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->determineBufferSize()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Sample rate: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; Encoding: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; Buffer size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; Buffer size (bytes): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ; HAL buffer size (bytes): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 423
    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 431
    :try_start_0
    invoke-direct {p0, v11, v12, v13}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->buildAudioRecord(III)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 432
    invoke-direct {p0, v11, v12, v13}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->buildAudioTrack(III)Landroid/media/AudioTrack;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->engine:Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

    const-string v2, "engine"

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_4
    invoke-virtual {v0}, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;->getSampleRate()F

    move-result v0

    float-to-int v0, v0

    if-eq v0, v12, :cond_6

    .line 442
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sampling rate changed to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->engine:Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v5, v0

    :goto_3
    int-to-float v0, v12

    invoke-virtual {v5, v0}, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;->setSampleRate(F)V

    .line 447
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$$ExternalSyntheticLambda0;

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v14}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$$ExternalSyntheticLambda0;-><init>(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/AudioTrack;IIILme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recorderThread:Ljava/lang/Thread;

    .line 537
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    .line 435
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v3, "Failed to create initial audio record/track"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 437
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopSelf()V

    return-void
.end method

.method private static final startRecording$lambda$2(Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/AudioTrack;IIILme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    const-string v5, "this$0"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$recorder"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$track"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$encoding"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 449
    :try_start_0

    # KsnDts: JAMU re-outputs captured audio to track v3; attach DTS DSP (EQ/surround/loudness) to that session
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v5

    invoke-static {v5}, Lcom/ksn/audiomax/core/DtsSelfTest;->applyDts(I)V

    const/4 v5, 0x0

    sget-object v6, Lme/timschneeberger/rootlessjamesdsp/utils/notifications/ServiceNotificationHelper;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/notifications/ServiceNotificationHelper;

    invoke-virtual/range {p0 .. p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "applicationContext"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v5, [Lme/timschneeberger/rootlessjamesdsp/model/IEffectSession;

    invoke-virtual {v6, v7, v8}, Lme/timschneeberger/rootlessjamesdsp/utils/notifications/ServiceNotificationHelper;->pushServiceNotification(Landroid/content/Context;[Lme/timschneeberger/rootlessjamesdsp/model/IEffectSession;)V

    .line 451
    new-array v6, v0, [F

    .line 452
    new-array v7, v0, [F

    .line 453
    new-array v15, v0, [S

    .line 454
    new-array v14, v0, [S

    .line 455
    :goto_0
    iget-boolean v8, v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isProcessorDisposing:Z

    if-nez v8, :cond_c

    .line 456
    iget-boolean v8, v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recreateRecorderRequested:Z

    if-eqz v8, :cond_3

    .line 457
    iput-boolean v5, v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recreateRecorderRequested:Z

    .line 458
    sget-object v8, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v9, "Recreating recorder without stopping thread..."

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->stop()V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->stop()V

    .line 463
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->release()V

    .line 466
    iget-object v8, v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v8, :cond_2

    .line 467
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v4, "Media projection handle is null, stopping service"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopSelf()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 529
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->stop()V

    .line 533
    :cond_1
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->release()V

    return-void

    :cond_2
    move/from16 v13, p4

    move/from16 v12, p5

    move/from16 v11, p6

    .line 473
    :try_start_1
    invoke-direct {v1, v13, v12, v11}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->buildAudioRecord(III)Landroid/media/AudioRecord;

    move-result-object v8

    iput-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 474
    sget-object v8, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v9, "Recorder recreated"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move/from16 v13, p4

    move/from16 v12, p5

    move/from16 v11, p6

    .line 478
    :goto_1
    iget-boolean v8, v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isProcessorIdle:Z

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v8, :cond_6

    iget-boolean v8, v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->suspendOnIdle:Z

    if-eqz v8, :cond_6

    .line 480
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->getState()I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 481
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v8

    if-ne v8, v9, :cond_4

    .line 482
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->stop()V

    .line 483
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->getState()I

    move-result v8

    if-ne v8, v10, :cond_5

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v8

    if-eq v8, v10, :cond_5

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    const-wide/16 v8, 0x32

    .line 488
    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 497
    :cond_6
    :try_start_3
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v8

    if-ne v8, v10, :cond_7

    .line 498
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->startRecording()V

    .line 501
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v8

    if-eq v8, v9, :cond_8

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->play()V

    .line 506
    :cond_8
    sget-object v8, Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;->PcmShort:Lme/timschneeberger/rootlessjamesdsp/model/preference/AudioEncoding;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x0

    const-string v10, "engine"

    if-ne v4, v8, :cond_a

    .line 507
    :try_start_4
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8, v15, v5, v0, v5}, Landroid/media/AudioRecord;->read([SIII)I

    .line 508
    iget-object v8, v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->engine:Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

    if-nez v8, :cond_9

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v9

    :cond_9
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x0

    move-object v9, v15

    move-object v10, v14

    move/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v14, v19

    invoke-static/range {v8 .. v14}, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;->processInt16$default(Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;[S[SIIILjava/lang/Object;)V

    .line 509
    # KsnDts: captured PCM (v15, sizeInShorts v0) through real DTS encode/decode in place.
    # void 2-arg call using only already-valid regs v15/v0 -> no new register, no ART VerifyError.
    invoke-static {v15, v0}, Lcom/ksn/audiomax/core/DtsReal;->process([SI)V

    invoke-virtual {v3, v15, v5, v0, v5}, Landroid/media/AudioTrack;->write([SIII)I

    move-object v14, v15

    move-object/from16 v15, v16

    goto/16 :goto_0

    :cond_a
    move-object/from16 v16, v15

    move-object v15, v14

    .line 512
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioRecord;

    invoke-virtual {v8, v6, v5, v0, v5}, Landroid/media/AudioRecord;->read([FIII)I

    .line 513
    iget-object v8, v1, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->engine:Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

    if-nez v8, :cond_b

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v9, v8

    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v8, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object/from16 v17, v15

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;->processFloat$default(Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;[F[FIIILjava/lang/Object;)V

    .line 514
    # KsnDts: PcmFloat 路径: 捕获 float PCM (v7, sizeInFloats v0) 经真 DTS 编码→解码 in-place.
    invoke-static {v7, v0}, Lcom/ksn/audiomax/core/DtsReal;->processFloat([FI)V

    invoke-virtual {v3, v7, v5, v0, v5}, Landroid/media/AudioTrack;->write([FIII)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    goto/16 :goto_0

    .line 526
    :catch_0
    :cond_c
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_d

    .line 527
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 529
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 521
    :try_start_5
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v6, "Exception in recorderThread raised"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v5}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v4, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopSelf()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 526
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_e

    .line 527
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 529
    :cond_e
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    :catch_2
    move-exception v0

    .line 518
    :try_start_6
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->w(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 526
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_f

    .line 527
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 529
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_10

    .line 530
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->stop()V

    .line 533
    :cond_10
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->release()V

    return-void

    .line 526
    :goto_4
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eqz v1, :cond_11

    .line 527
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 529
    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eqz v1, :cond_12

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->stop()V

    .line 533
    :cond_12
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioTrack;->release()V

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .line 103
    invoke-super {p0}, Lme/timschneeberger/rootlessjamesdsp/service/BaseAudioProcessorService;->onCreate()V

    .line 106
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 696
    const-class v1, Landroid/media/AudioManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/media/AudioManager;

    .line 106
    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->audioManager:Landroid/media/AudioManager;

    .line 697
    const-class v1, Landroid/media/projection/MediaProjectionManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    .line 107
    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 698
    const-class v1, Landroid/app/NotificationManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/app/NotificationManager;

    .line 108
    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->notificationManager:Landroid/app/NotificationManager;

    .line 111
    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    invoke-direct {v1, v0}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    .line 112
    invoke-virtual {v1}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->getSessionDatabase()Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;

    move-result-object v1

    iget-object v2, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onSessionLossListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionLossListener$1;

    check-cast v2, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase$OnSessionLossListener;

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;->setOnSessionLossListener(Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase$OnSessionLossListener;)V

    .line 113
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    const-string v2, "sessionManager"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->getSessionDatabase()Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;

    move-result-object v1

    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onAppProblemListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onAppProblemListener$1;

    check-cast v4, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase$OnAppProblemListener;

    invoke-virtual {v1, v4}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;->setOnAppProblemListener(Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase$OnAppProblemListener;)V

    .line 114
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->getSessionDatabase()Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;

    move-result-object v1

    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onSessionChangeListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionChangeListener$1;

    check-cast v4, Lme/timschneeberger/rootlessjamesdsp/session/shared/BaseSessionDatabase$OnSessionChangeListener;

    invoke-virtual {v1, v4}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;->registerOnSessionChangeListener(Lme/timschneeberger/rootlessjamesdsp/session/shared/BaseSessionDatabase$OnSessionChangeListener;)V

    .line 115
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->getSessionPolicyDatabase()Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager;

    move-result-object v1

    iget-object v2, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onSessionPolicyChangeListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionPolicyChangeListener$1;

    check-cast v2, Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager$OnSessionRecordingPolicyChangeListener;

    invoke-virtual {v1, v2}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager;->registerOnRestrictedSessionChangeListener(Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager$OnSessionRecordingPolicyChangeListener;)V

    .line 118
    new-instance v1, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/interop/ProcessorMessageHandler;

    invoke-direct {v2}, Lme/timschneeberger/rootlessjamesdsp/interop/ProcessorMessageHandler;-><init>()V

    check-cast v2, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspWrapper$JamesDspCallbacks;

    invoke-direct {v1, v0, v2}, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;-><init>(Landroid/content/Context;Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspWrapper$JamesDspCallbacks;)V

    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->engine:Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

    .line 119
    check-cast v1, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspBaseEngine;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2, v3}, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspBaseEngine;->syncWithPreferences$default(Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspBaseEngine;[Ljava/lang/String;ILjava/lang/Object;)V

    .line 122
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "me.timschneeberger.rootlessjamesdsp.action.preferences.UPDATED"

    .line 123
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "me.timschneeberger.rootlessjamesdsp.action.sample_rate.UPDATED"

    .line 124
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "me.timschneeberger.rootlessjamesdsp.action.service.RELOAD_LIVEPROG"

    .line 125
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "me.timschneeberger.rootlessjamesdsp.action.service.HARD_REBOOT_CORE"

    .line 126
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "me.timschneeberger.rootlessjamesdsp.action.service.SOFT_REBOOT_CORE"

    .line 127
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    sget-object v4, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    iget-object v5, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v5, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->registerLocalReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 131
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getPreferences()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v1

    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const v1, 0x7f1401b7

    .line 132
    invoke-virtual {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.key_powersave_suspend)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->loadFromPreferences(Ljava/lang/String;)V

    const v1, 0x7f1401c0

    .line 133
    invoke-virtual {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.key_session_exclude_restricted)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->loadFromPreferences(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getBlockedApps()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedAppObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 138
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->notificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_3

    const-string v1, "notificationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x0

    .line 141
    iput-boolean v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recreateRecorderRequested:Z

    .line 146
    sget-object v3, Lme/timschneeberger/rootlessjamesdsp/utils/notifications/ServiceNotificationHelper;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/notifications/ServiceNotificationHelper;

    new-array v1, v1, [Lme/timschneeberger/rootlessjamesdsp/model/IEffectSession;

    invoke-virtual {v3, v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/notifications/ServiceNotificationHelper;->createServiceNotification(Landroid/content/Context;[Lme/timschneeberger/rootlessjamesdsp/model/IEffectSession;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x20

    .line 144
    invoke-virtual {p0, v2, v0, v1}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 6

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isServiceDisposing:Z

    .line 211
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopRecording()V

    .line 212
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->engine:Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "engine"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lme/timschneeberger/rootlessjamesdsp/interop/JamesDspLocalEngine;->close()V

    .line 215
    invoke-virtual {p0, v0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopForeground(I)V

    .line 218
    sget-object v1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "me.timschneeberger.rootlessjamesdsp.action.service.STOPPED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 221
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getBlockedApps()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->blockedAppObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 224
    sget-object v1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->unregisterLocalReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 225
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->projectionCallback:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$projectionCallback$1;

    check-cast v3, Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v1, v3}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 226
    :cond_1
    iput-object v2, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 228
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    const-string v3, "sessionManager"

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->getSessionPolicyDatabase()Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager;

    move-result-object v1

    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onSessionPolicyChangeListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionPolicyChangeListener$1;

    check-cast v4, Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager$OnSessionRecordingPolicyChangeListener;

    invoke-virtual {v1, v4}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager;->unregisterOnRestrictedSessionChangeListener(Lme/timschneeberger/rootlessjamesdsp/session/rootless/SessionRecordingPolicyManager$OnSessionRecordingPolicyChangeListener;)V

    .line 229
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    invoke-virtual {v1}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->getSessionDatabase()Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;

    move-result-object v1

    iget-object v4, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->onSessionChangeListener:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onSessionChangeListener$1;

    check-cast v4, Lme/timschneeberger/rootlessjamesdsp/session/shared/BaseSessionDatabase$OnSessionChangeListener;

    invoke-virtual {v1, v4}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionDatabase;->unregisterOnSessionChangeListener(Lme/timschneeberger/rootlessjamesdsp/session/shared/BaseSessionDatabase$OnSessionChangeListener;)V

    .line 230
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->sessionManager:Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    invoke-virtual {v1}, Lme/timschneeberger/rootlessjamesdsp/session/rootless/RootlessSessionManager;->destroy()V

    .line 232
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->getPreferences()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v1

    iget-object v3, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v3}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 233
    iget-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->notificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_5

    const-string v1, "notificationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 235
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopSelf()V

    .line 236
    invoke-super {p0}, Lme/timschneeberger/rootlessjamesdsp/service/BaseAudioProcessorService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "onStartCommand"

    invoke-virtual {p2, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x8b5e4a9

    if-eq v1, v2, :cond_2

    const v2, 0xe067c7b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "me.timschneeberger.rootlessjamesdsp.rootless.service.START"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "Starting service"

    new-array v2, p3, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "me.timschneeberger.rootlessjamesdsp.rootless.service.STOP"

    .line 156
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 164
    :cond_3
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string p2, "Stopping service"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopSelf()V

    return v0

    .line 158
    :cond_4
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "onStartCommand: intent.action is null"

    new-array v2, p3, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2}, Ltimber/log/Timber$Forest;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :goto_0
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_5

    return v0

    .line 175
    :cond_5
    iget-object p2, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->notificationManager:Landroid/app/NotificationManager;

    const-string v1, "notificationManager"

    const/4 v2, 0x0

    if-nez p2, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v2

    :cond_6
    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 176
    iget-object p2, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->notificationManager:Landroid/app/NotificationManager;

    if-nez p2, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v2

    :cond_7
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object p2, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/CompatExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/CompatExtensions;

    const/16 p2, 0x21

    .line 700
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, p2, :cond_8

    const/4 p2, 0x1

    goto :goto_1

    :cond_8
    move p2, p3

    :goto_1
    const-string v1, "mediaProjectionData"

    if-eqz p2, :cond_9

    .line 702
    const-class p2, Landroid/content/Intent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    goto :goto_2

    :cond_9
    move-object p2, v2

    .line 701
    :goto_2
    new-instance v3, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;

    invoke-direct {v3, p2}, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;-><init>(Ljava/lang/Object;)V

    .line 703
    new-instance p2, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onStartCommand$$inlined$getParcelableAs$1;

    invoke-direct {p2, p1, v1}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$onStartCommand$$inlined$getParcelableAs$1;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, p2}, Lme/timschneeberger/rootlessjamesdsp/utils/SdkCheckElseBranch;->below(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 699
    check-cast p1, Landroid/content/Intent;

    goto :goto_3

    :cond_a
    move-object p1, v2

    .line 179
    :goto_3
    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjectionStartIntent:Landroid/content/Intent;

    .line 182
    :try_start_0
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    if-nez p1, :cond_b

    const-string p1, "mediaProjectionManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    .line 184
    :cond_b
    iget-object p2, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjectionStartIntent:Landroid/content/Intent;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 182
    invoke-virtual {p1, v1, p2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 188
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "Failed to acquire media projection"

    new-array v3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    sget-object p2, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "me.timschneeberger.rootlessjamesdsp.action.service.DISCARD_AUTHORIZATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v3}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 190
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 181
    :goto_4
    iput-object v2, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v2, :cond_c

    .line 194
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->projectionCallback:Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService$projectionCallback$1;

    check-cast p1, Landroid/media/projection/MediaProjection$Callback;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, p1, p2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 196
    :cond_c
    iget-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz p1, :cond_d

    .line 197
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->startRecording()V

    .line 198
    sget-object p1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    check-cast p0, Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "me.timschneeberger.rootlessjamesdsp.action.service.STARTED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_5

    .line 200
    :cond_d
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string p2, "Failed to capture audio"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopSelf()V

    :goto_5
    return v0
.end method

.method public final requestAudioRecordRecreation()V
    .locals 2

    .line 390
    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isProcessorDisposing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isServiceDisposing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recreateRecorderRequested:Z

    return-void

    .line 391
    :cond_1
    :goto_0
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "recreateAudioRecorder: service or processor already disposing"

    invoke-virtual {p0, v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final restartRecording()V
    .locals 2

    .line 552
    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isProcessorDisposing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isServiceDisposing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->stopRecording()V

    .line 558
    iput-boolean v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isProcessorDisposing:Z

    .line 559
    iput-boolean v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recreateRecorderRequested:Z

    .line 560
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->startRecording()V

    return-void

    .line 553
    :cond_1
    :goto_0
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v0, "restartRecording: service or processor already disposing"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final stopRecording()V
    .locals 3

    .line 542
    # KsnDts: proxy off -> 取消 DTS:X 注入(纯透传原声) + 释放 DSP + 真 DTS 引擎状态
    invoke-static {}, Lcom/ksn/audiomax/core/DtsSelfTest;->releaseDts()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ksn/audiomax/core/DtsReal;->setInject(Z)V

    invoke-static {}, Lcom/ksn/audiomax/core/DtsReal;->releaseAll()V

    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recorderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 543
    iput-boolean v1, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->isProcessorDisposing:Z

    .line 544
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 545
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recorderThread:Ljava/lang/Thread;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/service/RootlessAudioProcessorService;->recorderThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
