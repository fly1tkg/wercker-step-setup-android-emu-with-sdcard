
echo no | android create avd --force -n $WERCKER_SETUP_ANDROID_EMULATOR_NAME -t $WERCKER_SETUP_ANDROID_EMULATOR_TARGET --abi $WERCKER_SETUP_ANDROID_EMULATOR_ABI
emulator -avd $WERCKER_SETUP_ANDROID_EMULATOR_NAME -no-skin -no-audio -no-window  &
$WERCKER_STEP_ROOT/wait_for_emulator.sh