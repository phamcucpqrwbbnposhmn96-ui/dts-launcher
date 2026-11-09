.class public abstract Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lorg/koin/core/component/KoinComponent;
.implements Lme/timschneeberger/rootlessjamesdsp/delegates/ThemingDelegate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseActivity.kt\nme/timschneeberger/rootlessjamesdsp/activity/BaseActivity\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Context.kt\nandroidx/core/content/ContextKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Preferences.kt\nme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences\n*L\n1#1,61:1\n40#2,5:62\n40#2,5:67\n31#3:72\n1#4:73\n1855#5:74\n1856#5:76\n56#6:75\n*S KotlinDebug\n*F\n+ 1 BaseActivity.kt\nme/timschneeberger/rootlessjamesdsp/activity/BaseActivity\n*L\n24#1:62,5\n25#1:67,5\n48#1:72\n48#1:74\n48#1:76\n49#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0096\u0001J\u0012\u0010\u001e\u001a\u00020\u001b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0008\u0010!\u001a\u00020\u001bH\u0014J\u0008\u0010\"\u001a\u00020\u001bH\u0014J\u001c\u0010#\u001a\u00020\u001b2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001f\u0010\u000e\u001a\u00060\u000fR\u00020\u00108DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u001f\u0010\u0015\u001a\u00060\u0016R\u00020\u00108DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006("
    }
    d2 = {
        "Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Lorg/koin/core/component/KoinComponent;",
        "Lme/timschneeberger/rootlessjamesdsp/delegates/ThemingDelegate;",
        "()V",
        "app",
        "Lme/timschneeberger/rootlessjamesdsp/MainApplication;",
        "getApp",
        "()Lme/timschneeberger/rootlessjamesdsp/MainApplication;",
        "disableAppTheme",
        "",
        "getDisableAppTheme",
        "()Z",
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
        "applyAppTheme",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "onSharedPreferenceChanged",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "key",
        "",
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
.field private final synthetic $$delegate_0:Lme/timschneeberger/rootlessjamesdsp/delegates/ThemingDelegateImpl;

.field private final disableAppTheme:Z

.field private final prefsApp$delegate:Lkotlin/Lazy;

.field private final prefsVar$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 21
    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/delegates/ThemingDelegateImpl;

    invoke-direct {v0}, Lme/timschneeberger/rootlessjamesdsp/delegates/ThemingDelegateImpl;-><init>()V

    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->$$delegate_0:Lme/timschneeberger/rootlessjamesdsp/delegates/ThemingDelegateImpl;

    .line 24
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 64
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 66
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 24
    iput-object v1, p0, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->prefsApp$delegate:Lkotlin/Lazy;

    .line 69
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 71
    new-instance v2, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->prefsVar$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public applyAppTheme(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->$$delegate_0:Lme/timschneeberger/rootlessjamesdsp/delegates/ThemingDelegateImpl;

    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/delegates/ThemingDelegateImpl;->applyAppTheme(Landroid/app/Activity;)V

    return-void
.end method

.method protected final getApp()Lme/timschneeberger/rootlessjamesdsp/MainApplication;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type me.timschneeberger.rootlessjamesdsp.MainApplication"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/MainApplication;

    return-object p0
.end method

.method protected getDisableAppTheme()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->disableAppTheme:Z

    return p0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 17
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object p0

    return-object p0
.end method

.method protected final getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;
    .locals 0

    .line 24
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->prefsApp$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    return-object p0
.end method

.method protected final getPrefsVar()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;
    .locals 0

    .line 25
    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->prefsVar$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$Var;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->getDisableAppTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->applyAppTheme(Landroid/app/Activity;)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/ksn/audiomax/core/LiquidGlass;->applyToActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 41
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 45
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 48
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 72
    const-class v1, Landroid/app/ActivityManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 74
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 49
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->getPrefsApp()Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$App;

    move-result-object v3

    check-cast v3, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;

    .line 75
    const-class v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const v5, 0x7f1401a4

    invoke-virtual {v3, v5, v2, v4}, Lme/timschneeberger/rootlessjamesdsp/utils/preferences/Preferences$AbstractPreferences;->get(ILjava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 49
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f140174

    .line 54
    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f140172

    .line 55
    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->getDisableAppTheme()Z

    move-result p1

    if-nez p1, :cond_1

    .line 57
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
