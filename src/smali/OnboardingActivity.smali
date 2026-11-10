.class public final Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;
.super Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;
.source "OnboardingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnboardingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnboardingActivity.kt\nme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity\n+ 2 FlavorConditionals.kt\nme/timschneeberger/rootlessjamesdsp/utils/FlavorConditionalsKt\n*L\n1#1,78:1\n6#2:79\n*S KotlinDebug\n*F\n+ 1 OnboardingActivity.kt\nme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity\n*L\n39#1:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\rH\u0014J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;",
        "Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;",
        "()V",
        "binding",
        "Lme/timschneeberger/rootlessjamesdsp/databinding/ActivityOnboardingBinding;",
        "fragment",
        "Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;",
        "navigateUp",
        "",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "onSupportNavigateUp",
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
.field public static final Companion:Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity$Companion;

.field public static final EXTRA_FIX_PERMS:Ljava/lang/String; = "FixPermissions"

.field public static final EXTRA_ROOTLESS_REDO_ADB_SETUP:Ljava/lang/String; = "RootlessRedoAdbSetup"

.field public static final EXTRA_ROOT_SETUP_DUMP_PERM:Ljava/lang/String; = "RootSetupDumpPerm"


# instance fields
.field private binding:Lme/timschneeberger/rootlessjamesdsp/databinding/ActivityOnboardingBinding;

.field private fragment:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->Companion:Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private final navigateUp()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->fragment:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;

    if-nez v0, :cond_0

    const-string v0, "fragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->onBackPressed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->finish()V

    :cond_1
    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->navigateUp()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 21
    invoke-super {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    # ===== DTS root 通道: 检测到 root(KernelSU/Magisk) 就跳过 Shizuku onboarding, 直接进主页 =====
    invoke-static {}, Lcom/ksn/audiomax/core/KsnDtsSys;->rootAvailable()Z

    move-result v0

    if-eqz v0, :cond_rootskip

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lme/timschneeberger/rootlessjamesdsp/activity/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_rootskip
    # ===== DTS root 通道 end =====

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "onboarding"

    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type me.timschneeberger.rootlessjamesdsp.fragment.OnboardingFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;

    goto :goto_0

    .line 26
    :cond_0
    sget-object p1, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;->Companion:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$Companion;

    invoke-virtual {p1}, Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment$Companion;->newInstance()Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;

    move-result-object p1

    .line 23
    :goto_0
    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->fragment:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;

    .line 29
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lme/timschneeberger/rootlessjamesdsp/databinding/ActivityOnboardingBinding;->inflate(Landroid/view/LayoutInflater;)Lme/timschneeberger/rootlessjamesdsp/databinding/ActivityOnboardingBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->binding:Lme/timschneeberger/rootlessjamesdsp/databinding/ActivityOnboardingBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "binding"

    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Lme/timschneeberger/rootlessjamesdsp/databinding/ActivityOnboardingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->setContentView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 34
    iget-object v2, p0, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->fragment:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;

    if-nez v2, :cond_2

    const-string v2, "fragment"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    check-cast v0, Landroidx/fragment/app/Fragment;

    const v2, 0x7f0a01f1

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 45
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FixPermissions"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 46
    sget-object p1, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->INSTANCE:Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;

    check-cast p0, Landroid/content/Context;

    const v0, 0x7f1402b4

    const v1, 0x7f1402b3

    invoke-virtual {p1, p0, v0, v1}, Lme/timschneeberger/rootlessjamesdsp/utils/extensions/ContextExtensions;->showAlert(Landroid/content/Context;II)V

    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lme/timschneeberger/rootlessjamesdsp/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object p0, p0, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->fragment:Lme/timschneeberger/rootlessjamesdsp/fragment/OnboardingFragment;

    if-nez p0, :cond_0

    const-string p0, "fragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    const-string v1, "onboarding"

    invoke-virtual {v0, p1, v1, p0}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lme/timschneeberger/rootlessjamesdsp/activity/OnboardingActivity;->navigateUp()Z

    move-result p0

    return p0
.end method
