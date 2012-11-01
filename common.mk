# Settings for UpdateMe
PRODUCT_PROPERTY_OVERRIDES += \
    updateme.name=OpenSensation \
    updateme.version=$(shell date +%Y.%m.%d) \
    updateme.urlcheck=http://files.tamcore.eu/android/$(CM_BUILD)/update_me_check.xml \
    updateme.urlelement=http://files.tamcore.eu/android/$(CM_BUILD)/update_me_parts.xml

# Additional settings for UpdateMe
PRODUCT_PROPERTY_OVERRIDES += \
    updateme.disableinstalledapps=1 \
    updateme.disablescripts=1 \
    updateme.downloaddir=/mnt/sdcard/Download

# But don't forget to include it
PRODUCT_COPY_FILES += \
    vendor/updateme/proprietary/UpdateMe.apk:system/app/UpdateMe.apk
