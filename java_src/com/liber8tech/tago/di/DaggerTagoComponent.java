package com.liber8tech.tago.di;

import android.content.Context;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.analytics.AnalyticsService_Factory;
import com.liber8tech.tago.android.TagoApplication;
import com.liber8tech.tago.android.TagoApplication_MembersInjector;
import com.liber8tech.tago.android.activity.AboutActivity;
import com.liber8tech.tago.android.activity.AboutActivity_MembersInjector;
import com.liber8tech.tago.android.activity.AddTagoActivity;
import com.liber8tech.tago.android.activity.AddTagoActivity_MembersInjector;
import com.liber8tech.tago.android.activity.AttachmentActivity;
import com.liber8tech.tago.android.activity.AttachmentActivity_MembersInjector;
import com.liber8tech.tago.android.activity.CameraActivity;
import com.liber8tech.tago.android.activity.CameraActivity_MembersInjector;
import com.liber8tech.tago.android.activity.ChangePasswordActivity;
import com.liber8tech.tago.android.activity.ChangePasswordActivity_MembersInjector;
import com.liber8tech.tago.android.activity.ContactUsActivity;
import com.liber8tech.tago.android.activity.ContactUsActivity_MembersInjector;
import com.liber8tech.tago.android.activity.ForgetPasswordActivity;
import com.liber8tech.tago.android.activity.ForgetPasswordActivity_MembersInjector;
import com.liber8tech.tago.android.activity.ImageEditorActivity;
import com.liber8tech.tago.android.activity.ImageEditorActivity_MembersInjector;
import com.liber8tech.tago.android.activity.IntroActivity;
import com.liber8tech.tago.android.activity.IntroActivity_MembersInjector;
import com.liber8tech.tago.android.activity.KioskActivity;
import com.liber8tech.tago.android.activity.KioskActivity_MembersInjector;
import com.liber8tech.tago.android.activity.MainActivity;
import com.liber8tech.tago.android.activity.MainActivity_MembersInjector;
import com.liber8tech.tago.android.activity.PackActivity;
import com.liber8tech.tago.android.activity.PackActivity_MembersInjector;
import com.liber8tech.tago.android.activity.ProfileActivity;
import com.liber8tech.tago.android.activity.ProfileActivity_MembersInjector;
import com.liber8tech.tago.android.activity.ResetActivity;
import com.liber8tech.tago.android.activity.ResetActivity_MembersInjector;
import com.liber8tech.tago.android.activity.ResetChooseDeviceActivity;
import com.liber8tech.tago.android.activity.ResetChooseDeviceActivity_MembersInjector;
import com.liber8tech.tago.android.activity.ResetSyncActivity;
import com.liber8tech.tago.android.activity.ResetSyncActivity_MembersInjector;
import com.liber8tech.tago.android.activity.SelectTagoActivity;
import com.liber8tech.tago.android.activity.SelectTagoActivity_MembersInjector;
import com.liber8tech.tago.android.activity.SettingsActivity;
import com.liber8tech.tago.android.activity.SettingsActivity_MembersInjector;
import com.liber8tech.tago.android.activity.SignInActivity;
import com.liber8tech.tago.android.activity.SignInActivity_MembersInjector;
import com.liber8tech.tago.android.activity.SignUpActivity;
import com.liber8tech.tago.android.activity.SignUpActivity_MembersInjector;
import com.liber8tech.tago.android.activity.StoreActivity;
import com.liber8tech.tago.android.activity.StoreActivity_MembersInjector;
import com.liber8tech.tago.android.activity.SyncActivity;
import com.liber8tech.tago.android.activity.SyncActivity_MembersInjector;
import com.liber8tech.tago.android.activity.TagoDetailsActivity;
import com.liber8tech.tago.android.activity.TagoDetailsActivity_MembersInjector;
import com.liber8tech.tago.service.AuthService;
import com.liber8tech.tago.service.AuthService_Factory;
import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.BluetoothService_Factory;
import com.liber8tech.tago.service.FirmwareService;
import com.liber8tech.tago.service.FirmwareService_Factory;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.IAPService_Factory;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.ImageEditorService_Factory;
import com.liber8tech.tago.service.LocationService;
import com.liber8tech.tago.service.LocationService_Factory;
import com.liber8tech.tago.service.ProfileService;
import com.liber8tech.tago.service.ProfileService_Factory;
import com.liber8tech.tago.service.StoreService;
import com.liber8tech.tago.service.StoreService_Factory;
import com.liber8tech.tago.service.TagoApiService;
import com.liber8tech.tago.service.TagoApiService_Factory;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.service.TagoService_Factory;
import com.liber8tech.tago.util.ImageSizeStore;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.RuntimeConfig_Factory;
import com.polidea.rxandroidble2.RxBleClient;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.greenrobot.eventbus.EventBus;
import retrofit2.Retrofit;

public final class DaggerTagoComponent implements TagoComponent {
    private Provider<AnalyticsService> analyticsServiceProvider;
    private Provider<AuthService> authServiceProvider;
    private Provider<BluetoothService> bluetoothServiceProvider;
    private Provider<Context> contextProvider;
    private Provider<EventBus> eventBusProvider;
    private Provider<FirmwareService> firmwareServiceProvider;
    private Provider<IAPService> iAPServiceProvider;
    private Provider<ImageEditorService> imageEditorServiceProvider;
    private Provider<ImageSizeStore> imageSizeStoreProvider;
    private Provider<LocationService> locationServiceProvider;
    private Provider<ProfileService> profileServiceProvider;
    private Provider<Interceptor> provideAuthInterceptorProvider;
    private Provider<RxBleClient> provideBleClientProvider;
    private AnalyticsModule_ProvideGoogleTrackerXmlFactory provideGoogleTrackerXmlProvider;
    private Provider<OkHttpClient> provideHttpClientProvider;
    private Provider<Retrofit> provideRetrofitProvider;
    private Provider<RuntimeConfig> runtimeConfigProvider;
    private Provider<StoreService> storeServiceProvider;
    private Provider<TagoApiService> tagoApiServiceProvider;
    private Provider<TagoService> tagoServiceProvider;

    private DaggerTagoComponent(Builder builder) {
        initialize(builder);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(Builder builder) {
        this.contextProvider = DoubleCheck.provider(CoreModule_ContextFactory.create(builder.coreModule));
        this.runtimeConfigProvider = DoubleCheck.provider(RuntimeConfig_Factory.create(this.contextProvider));
        this.locationServiceProvider = DoubleCheck.provider(LocationService_Factory.create(this.contextProvider));
        this.provideAuthInterceptorProvider = DoubleCheck.provider(TagoModule_ProvideAuthInterceptorFactory.create(builder.tagoModule, this.runtimeConfigProvider));
        this.provideHttpClientProvider = DoubleCheck.provider(TagoModule_ProvideHttpClientFactory.create(builder.tagoModule, this.provideAuthInterceptorProvider));
        this.provideRetrofitProvider = DoubleCheck.provider(TagoModule_ProvideRetrofitFactory.create(builder.tagoModule, this.provideHttpClientProvider));
        this.imageEditorServiceProvider = DoubleCheck.provider(ImageEditorService_Factory.create(this.provideRetrofitProvider, this.contextProvider, this.runtimeConfigProvider));
        this.provideGoogleTrackerXmlProvider = AnalyticsModule_ProvideGoogleTrackerXmlFactory.create(builder.analyticsModule);
        this.analyticsServiceProvider = DoubleCheck.provider(AnalyticsService_Factory.create(this.contextProvider, this.provideGoogleTrackerXmlProvider));
        this.firmwareServiceProvider = DoubleCheck.provider(FirmwareService_Factory.create(this.provideRetrofitProvider, this.contextProvider, this.runtimeConfigProvider));
        this.storeServiceProvider = DoubleCheck.provider(StoreService_Factory.create(this.provideRetrofitProvider));
        this.iAPServiceProvider = DoubleCheck.provider(IAPService_Factory.create());
        this.profileServiceProvider = DoubleCheck.provider(ProfileService_Factory.create(this.provideRetrofitProvider));
        this.tagoApiServiceProvider = DoubleCheck.provider(TagoApiService_Factory.create(this.provideRetrofitProvider));
        this.provideBleClientProvider = DoubleCheck.provider(TagoModule_ProvideBleClientFactory.create(builder.tagoModule));
        this.eventBusProvider = DoubleCheck.provider(CoreModule_EventBusFactory.create(builder.coreModule));
        this.bluetoothServiceProvider = DoubleCheck.provider(BluetoothService_Factory.create(this.contextProvider, this.provideBleClientProvider, this.eventBusProvider, this.runtimeConfigProvider));
        this.tagoServiceProvider = DoubleCheck.provider(TagoService_Factory.create(this.tagoApiServiceProvider, this.bluetoothServiceProvider, this.locationServiceProvider));
        this.authServiceProvider = DoubleCheck.provider(AuthService_Factory.create(this.provideRetrofitProvider, this.runtimeConfigProvider));
        this.imageSizeStoreProvider = DoubleCheck.provider(TagoModule_ImageSizeStoreFactory.create(builder.tagoModule));
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(MainActivity mainActivity) {
        injectMainActivity(mainActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(SelectTagoActivity selectTagoActivity) {
        injectSelectTagoActivity(selectTagoActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(SyncActivity syncActivity) {
        injectSyncActivity(syncActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(SignInActivity signInActivity) {
        injectSignInActivity(signInActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(IntroActivity introActivity) {
        injectIntroActivity(introActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(SignUpActivity signUpActivity) {
        injectSignUpActivity(signUpActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(ChangePasswordActivity changePasswordActivity) {
        injectChangePasswordActivity(changePasswordActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(SettingsActivity settingsActivity) {
        injectSettingsActivity(settingsActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(AddTagoActivity addTagoActivity) {
        injectAddTagoActivity(addTagoActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(TagoDetailsActivity tagoDetailsActivity) {
        injectTagoDetailsActivity(tagoDetailsActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(ResetChooseDeviceActivity resetChooseDeviceActivity) {
        injectResetChooseDeviceActivity(resetChooseDeviceActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(ResetSyncActivity resetSyncActivity) {
        injectResetSyncActivity(resetSyncActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(CameraActivity cameraActivity) {
        injectCameraActivity(cameraActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(ImageEditorActivity imageEditorActivity) {
        injectImageEditorActivity(imageEditorActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(StoreActivity storeActivity) {
        injectStoreActivity(storeActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(AboutActivity aboutActivity) {
        injectAboutActivity(aboutActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(ResetActivity resetActivity) {
        injectResetActivity(resetActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(PackActivity packActivity) {
        injectPackActivity(packActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(ForgetPasswordActivity forgetPasswordActivity) {
        injectForgetPasswordActivity(forgetPasswordActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(KioskActivity kioskActivity) {
        injectKioskActivity(kioskActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(ProfileActivity profileActivity) {
        injectProfileActivity(profileActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(ContactUsActivity contactUsActivity) {
        injectContactUsActivity(contactUsActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(AttachmentActivity attachmentActivity) {
        injectAttachmentActivity(attachmentActivity);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public void inject(TagoApplication tagoApplication) {
        injectTagoApplication(tagoApplication);
    }

    @Override // com.liber8tech.tago.di.TagoComponent
    public ImageSizeStore imageSizeStore() {
        return this.imageSizeStoreProvider.get();
    }

    private MainActivity injectMainActivity(MainActivity mainActivity) {
        MainActivity_MembersInjector.injectRuntimeConfig(mainActivity, this.runtimeConfigProvider.get());
        MainActivity_MembersInjector.injectLocationService(mainActivity, this.locationServiceProvider.get());
        MainActivity_MembersInjector.injectImageEditorService(mainActivity, this.imageEditorServiceProvider.get());
        MainActivity_MembersInjector.injectAnalytics(mainActivity, this.analyticsServiceProvider.get());
        MainActivity_MembersInjector.injectFirmwareService(mainActivity, this.firmwareServiceProvider.get());
        MainActivity_MembersInjector.injectStoreService(mainActivity, this.storeServiceProvider.get());
        MainActivity_MembersInjector.injectIapService(mainActivity, this.iAPServiceProvider.get());
        MainActivity_MembersInjector.injectProfileService(mainActivity, this.profileServiceProvider.get());
        MainActivity_MembersInjector.injectTagoService(mainActivity, this.tagoServiceProvider.get());
        return mainActivity;
    }

    private SelectTagoActivity injectSelectTagoActivity(SelectTagoActivity selectTagoActivity) {
        SelectTagoActivity_MembersInjector.injectBluetoothService(selectTagoActivity, this.bluetoothServiceProvider.get());
        SelectTagoActivity_MembersInjector.injectTagoService(selectTagoActivity, this.tagoServiceProvider.get());
        SelectTagoActivity_MembersInjector.injectRuntimeConfig(selectTagoActivity, this.runtimeConfigProvider.get());
        SelectTagoActivity_MembersInjector.injectAnalytics(selectTagoActivity, this.analyticsServiceProvider.get());
        return selectTagoActivity;
    }

    private SyncActivity injectSyncActivity(SyncActivity syncActivity) {
        SyncActivity_MembersInjector.injectBluetoothService(syncActivity, this.bluetoothServiceProvider.get());
        SyncActivity_MembersInjector.injectTagoService(syncActivity, this.tagoServiceProvider.get());
        SyncActivity_MembersInjector.injectFirmwareService(syncActivity, this.firmwareServiceProvider.get());
        SyncActivity_MembersInjector.injectAnalytics(syncActivity, this.analyticsServiceProvider.get());
        return syncActivity;
    }

    private SignInActivity injectSignInActivity(SignInActivity signInActivity) {
        SignInActivity_MembersInjector.injectAuthService(signInActivity, this.authServiceProvider.get());
        SignInActivity_MembersInjector.injectTagoService(signInActivity, this.tagoServiceProvider.get());
        SignInActivity_MembersInjector.injectAnalytics(signInActivity, this.analyticsServiceProvider.get());
        return signInActivity;
    }

    private IntroActivity injectIntroActivity(IntroActivity introActivity) {
        IntroActivity_MembersInjector.injectRunTimeConfig(introActivity, this.runtimeConfigProvider.get());
        IntroActivity_MembersInjector.injectAuthService(introActivity, this.authServiceProvider.get());
        return introActivity;
    }

    private SignUpActivity injectSignUpActivity(SignUpActivity signUpActivity) {
        SignUpActivity_MembersInjector.injectAuthService(signUpActivity, this.authServiceProvider.get());
        SignUpActivity_MembersInjector.injectAnalytics(signUpActivity, this.analyticsServiceProvider.get());
        return signUpActivity;
    }

    private ChangePasswordActivity injectChangePasswordActivity(ChangePasswordActivity changePasswordActivity) {
        ChangePasswordActivity_MembersInjector.injectAuthService(changePasswordActivity, this.authServiceProvider.get());
        ChangePasswordActivity_MembersInjector.injectAnalytics(changePasswordActivity, this.analyticsServiceProvider.get());
        return changePasswordActivity;
    }

    private SettingsActivity injectSettingsActivity(SettingsActivity settingsActivity) {
        SettingsActivity_MembersInjector.injectRuntimeConfig(settingsActivity, this.runtimeConfigProvider.get());
        SettingsActivity_MembersInjector.injectTagoService(settingsActivity, this.tagoServiceProvider.get());
        SettingsActivity_MembersInjector.injectImageEditorService(settingsActivity, this.imageEditorServiceProvider.get());
        SettingsActivity_MembersInjector.injectStoreService(settingsActivity, this.storeServiceProvider.get());
        SettingsActivity_MembersInjector.injectIapService(settingsActivity, this.iAPServiceProvider.get());
        SettingsActivity_MembersInjector.injectAnalytics(settingsActivity, this.analyticsServiceProvider.get());
        return settingsActivity;
    }

    private AddTagoActivity injectAddTagoActivity(AddTagoActivity addTagoActivity) {
        AddTagoActivity_MembersInjector.injectLocationService(addTagoActivity, this.locationServiceProvider.get());
        AddTagoActivity_MembersInjector.injectTagoService(addTagoActivity, this.tagoServiceProvider.get());
        AddTagoActivity_MembersInjector.injectImageEditorService(addTagoActivity, this.imageEditorServiceProvider.get());
        AddTagoActivity_MembersInjector.injectAnalytics(addTagoActivity, this.analyticsServiceProvider.get());
        return addTagoActivity;
    }

    private TagoDetailsActivity injectTagoDetailsActivity(TagoDetailsActivity tagoDetailsActivity) {
        TagoDetailsActivity_MembersInjector.injectTagoService(tagoDetailsActivity, this.tagoServiceProvider.get());
        TagoDetailsActivity_MembersInjector.injectAnalytics(tagoDetailsActivity, this.analyticsServiceProvider.get());
        return tagoDetailsActivity;
    }

    private ResetChooseDeviceActivity injectResetChooseDeviceActivity(ResetChooseDeviceActivity resetChooseDeviceActivity) {
        ResetChooseDeviceActivity_MembersInjector.injectTagoService(resetChooseDeviceActivity, this.tagoServiceProvider.get());
        ResetChooseDeviceActivity_MembersInjector.injectBluetoothService(resetChooseDeviceActivity, this.bluetoothServiceProvider.get());
        return resetChooseDeviceActivity;
    }

    private ResetSyncActivity injectResetSyncActivity(ResetSyncActivity resetSyncActivity) {
        ResetSyncActivity_MembersInjector.injectBluetoothService(resetSyncActivity, this.bluetoothServiceProvider.get());
        ResetSyncActivity_MembersInjector.injectAnalytics(resetSyncActivity, this.analyticsServiceProvider.get());
        return resetSyncActivity;
    }

    private CameraActivity injectCameraActivity(CameraActivity cameraActivity) {
        CameraActivity_MembersInjector.injectImageEditorService(cameraActivity, this.imageEditorServiceProvider.get());
        CameraActivity_MembersInjector.injectAnalytics(cameraActivity, this.analyticsServiceProvider.get());
        return cameraActivity;
    }

    private ImageEditorActivity injectImageEditorActivity(ImageEditorActivity imageEditorActivity) {
        ImageEditorActivity_MembersInjector.injectImageEditorService(imageEditorActivity, this.imageEditorServiceProvider.get());
        return imageEditorActivity;
    }

    private StoreActivity injectStoreActivity(StoreActivity storeActivity) {
        StoreActivity_MembersInjector.injectStoreService(storeActivity, this.storeServiceProvider.get());
        StoreActivity_MembersInjector.injectIapService(storeActivity, this.iAPServiceProvider.get());
        StoreActivity_MembersInjector.injectImageService(storeActivity, this.imageEditorServiceProvider.get());
        StoreActivity_MembersInjector.injectAnalytics(storeActivity, this.analyticsServiceProvider.get());
        return storeActivity;
    }

    private AboutActivity injectAboutActivity(AboutActivity aboutActivity) {
        AboutActivity_MembersInjector.injectAnalytics(aboutActivity, this.analyticsServiceProvider.get());
        return aboutActivity;
    }

    private ResetActivity injectResetActivity(ResetActivity resetActivity) {
        ResetActivity_MembersInjector.injectAnalytics(resetActivity, this.analyticsServiceProvider.get());
        return resetActivity;
    }

    private PackActivity injectPackActivity(PackActivity packActivity) {
        PackActivity_MembersInjector.injectIapService(packActivity, this.iAPServiceProvider.get());
        PackActivity_MembersInjector.injectImageService(packActivity, this.imageEditorServiceProvider.get());
        PackActivity_MembersInjector.injectAnalytics(packActivity, this.analyticsServiceProvider.get());
        return packActivity;
    }

    private ForgetPasswordActivity injectForgetPasswordActivity(ForgetPasswordActivity forgetPasswordActivity) {
        ForgetPasswordActivity_MembersInjector.injectAuthService(forgetPasswordActivity, this.authServiceProvider.get());
        ForgetPasswordActivity_MembersInjector.injectAnalytics(forgetPasswordActivity, this.analyticsServiceProvider.get());
        return forgetPasswordActivity;
    }

    private KioskActivity injectKioskActivity(KioskActivity kioskActivity) {
        KioskActivity_MembersInjector.injectLocationService(kioskActivity, this.locationServiceProvider.get());
        KioskActivity_MembersInjector.injectTagoService(kioskActivity, this.tagoServiceProvider.get());
        KioskActivity_MembersInjector.injectBluetoothService(kioskActivity, this.bluetoothServiceProvider.get());
        return kioskActivity;
    }

    private ProfileActivity injectProfileActivity(ProfileActivity profileActivity) {
        ProfileActivity_MembersInjector.injectProfileService(profileActivity, this.profileServiceProvider.get());
        ProfileActivity_MembersInjector.injectAnalytics(profileActivity, this.analyticsServiceProvider.get());
        ProfileActivity_MembersInjector.injectRuntimeConfig(profileActivity, this.runtimeConfigProvider.get());
        return profileActivity;
    }

    private ContactUsActivity injectContactUsActivity(ContactUsActivity contactUsActivity) {
        ContactUsActivity_MembersInjector.injectAnalytics(contactUsActivity, this.analyticsServiceProvider.get());
        return contactUsActivity;
    }

    private AttachmentActivity injectAttachmentActivity(AttachmentActivity attachmentActivity) {
        AttachmentActivity_MembersInjector.injectImageEditorService(attachmentActivity, this.imageEditorServiceProvider.get());
        return attachmentActivity;
    }

    private TagoApplication injectTagoApplication(TagoApplication tagoApplication) {
        TagoApplication_MembersInjector.injectRuntimeConfig(tagoApplication, this.runtimeConfigProvider.get());
        TagoApplication_MembersInjector.injectAnalytics(tagoApplication, this.analyticsServiceProvider.get());
        return tagoApplication;
    }

    public static final class Builder {
        private AnalyticsModule analyticsModule;
        private CoreModule coreModule;
        private TagoModule tagoModule;

        private Builder() {
        }

        public TagoComponent build() {
            if (this.coreModule == null) {
                throw new IllegalStateException(CoreModule.class.getCanonicalName() + " must be set");
            } else if (this.tagoModule != null) {
                if (this.analyticsModule == null) {
                    this.analyticsModule = new AnalyticsModule();
                }
                return new DaggerTagoComponent(this);
            } else {
                throw new IllegalStateException(TagoModule.class.getCanonicalName() + " must be set");
            }
        }

        public Builder coreModule(CoreModule coreModule2) {
            this.coreModule = (CoreModule) Preconditions.checkNotNull(coreModule2);
            return this;
        }

        public Builder tagoModule(TagoModule tagoModule2) {
            this.tagoModule = (TagoModule) Preconditions.checkNotNull(tagoModule2);
            return this;
        }

        public Builder analyticsModule(AnalyticsModule analyticsModule2) {
            this.analyticsModule = (AnalyticsModule) Preconditions.checkNotNull(analyticsModule2);
            return this;
        }
    }
}
