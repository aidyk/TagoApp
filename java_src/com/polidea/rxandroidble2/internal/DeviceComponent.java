package com.polidea.rxandroidble2.internal;

import bleshadow.dagger.Subcomponent;
import com.polidea.rxandroidble2.RxBleDevice;

@DeviceScope
@Subcomponent(modules = {DeviceModule.class, DeviceModuleBinder.class})
public interface DeviceComponent {

    @Subcomponent.Builder
    public interface Builder {
        DeviceComponent build();

        Builder deviceModule(DeviceModule deviceModule);
    }

    @DeviceScope
    RxBleDevice provideDevice();
}
