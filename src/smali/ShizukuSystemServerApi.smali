.class public Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;
.super Ljava/lang/Object;
.source "ShizukuSystemServerApi.java"


# static fields
.field public static final APP_OPS_MODE_ALLOW:Ljava/lang/String; = "allow"

.field public static final APP_OPS_MODE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APP_OPS_MODE_DENY:Ljava/lang/String; = "deny"

.field public static final APP_OPS_MODE_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final APP_OPS_MODE_IGNORE:Ljava/lang/String; = "ignore"

.field public static final APP_OPS_OP_PROJECT_MEDIA:Ljava/lang/String; = "PROJECT_MEDIA"

.field public static final APP_OPS_OP_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "SYSTEM_ALERT_WINDOW"

.field public static final APP_OPS_SERVICE:Lme/timschneeberger/hiddenapi_impl/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/timschneeberger/hiddenapi_impl/Singleton<",
            "Lcom/android/internal/app/IAppOpsService;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUDIO_POLICY_SERVICE:Lme/timschneeberger/hiddenapi_impl/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/timschneeberger/hiddenapi_impl/Singleton<",
            "Landroid/media/IAudioPolicyService;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERMISSION_MANAGER:Lme/timschneeberger/hiddenapi_impl/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/timschneeberger/hiddenapi_impl/Singleton<",
            "Landroid/permission/IPermissionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi$1;

    invoke-direct {v0}, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi$1;-><init>()V

    sput-object v0, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->PERMISSION_MANAGER:Lme/timschneeberger/hiddenapi_impl/Singleton;

    .line 29
    new-instance v0, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi$2;

    invoke-direct {v0}, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi$2;-><init>()V

    sput-object v0, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->APP_OPS_SERVICE:Lme/timschneeberger/hiddenapi_impl/Singleton;

    .line 38
    new-instance v0, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi$3;

    invoke-direct {v0}, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi$3;-><init>()V

    sput-object v0, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->AUDIO_POLICY_SERVICE:Lme/timschneeberger/hiddenapi_impl/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppOpsService_setMode(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, -0x1

    if-gt v1, v2, :cond_1

    .line 68
    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 76
    :goto_1
    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    :try_start_1
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-ltz v1, :cond_3

    if-gez v3, :cond_2

    goto :goto_2

    .line 88
    :cond_2
    :try_start_2
    sget-object p0, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->APP_OPS_SERVICE:Lme/timschneeberger/hiddenapi_impl/Singleton;

    invoke-virtual {p0}, Lme/timschneeberger/hiddenapi_impl/Singleton;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p0, v3, p1, p2, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 p0, 0x1

    return p0

    :catch_2
    const-string p0, "ShizukuSystemServerApi"

    const-string p1, "Failed to call app ops service"

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return v0
.end method

.method public static AudioPolicyService_setAllowedCapturePolicy(ILme/timschneeberger/hiddenapi_impl/CapturePolicy;)V
    .locals 3

    const-string v0, "ShizukuSystemServerApi"

    const-string v1, "AudioPolicyService_setAllowedCapturePolicy flags="

    .line 105
    sget-object v2, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi$4;->$SwitchMap$me$timschneeberger$hiddenapi_impl$CapturePolicy:[I

    invoke-virtual {p1}, Lme/timschneeberger/hiddenapi_impl/CapturePolicy;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/16 p1, 0x1400

    goto :goto_0

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/16 p1, 0x400

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 121
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v1, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->AUDIO_POLICY_SERVICE:Lme/timschneeberger/hiddenapi_impl/Singleton;

    invoke-virtual {v1}, Lme/timschneeberger/hiddenapi_impl/Singleton;->getOrThrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioPolicyService;

    invoke-interface {v1, p0, p1}, Landroid/media/IAudioPolicyService;->setAllowedCapturePolicy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static PermissionManager_grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    sget-object v1, Lme/timschneeberger/hiddenapi_impl/ShizukuSystemServerApi;->PERMISSION_MANAGER:Lme/timschneeberger/hiddenapi_impl/Singleton;

    invoke-virtual {v1}, Lme/timschneeberger/hiddenapi_impl/Singleton;->getOrThrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/IPermissionManager;

    # A<=14 老 3 参 (String, String, int userId)
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :try2
    goto :done

    # A15 新 4 参 (String, String, String persistentDeviceId, int userId); persistentDeviceId = "phone"
    :try2
    :try_start_1
    const-string v0, "phone"
    invoke-interface {v1, p0, p1, v0, p2}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :done

    :done
    return-void
.end method
