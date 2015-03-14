#if defined(__arm__)
.text
	.align 3
methods:
	.space 16
	.align 2
Lm_0:
m_NativeUI__ctor:
_m_0:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_1

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_0:
	.align 2
Lm_1:
m_NativeUI__cctor:
_m_1:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,13,176,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . -4
	.byte 0,0,159,231,1,16,160,227,0,16,192,229,0,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1:
	.align 2
Lm_2:
m_NativeUI_Awake:
_m_2:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_2

	.byte 0,32,160,225,0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - .
	.byte 1,16,159,231,2,0,160,225,0,224,146,229
bl p_3

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_2:
	.align 2
Lm_3:
m_NativeUI_get_pause:
_m_3:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,13,176,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . -4
	.byte 0,0,159,231,0,0,208,229,0,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_3:
	.align 2
Lm_4:
m_NativeUI_set_pause_bool:
_m_4:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,203,229,0,0,219,229
bl _m_10

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . -4
	.byte 0,0,159,231,0,16,219,229,0,16,192,229,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_4:
	.align 2
Lm_6:
m_NativeUI_showStoryboard_string_NativeTransitionAnimation:
_m_6:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,93,45,233,12,208,77,226,13,176,160,225,0,0,139,229,1,160,160,225
	.byte 1,160,74,226
bl p_4

	.byte 8,0,80,227,3,0,0,26,0,0,155,229,10,16,160,225
bl p_5

	.byte 4,0,0,234,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231
bl p_6

	.byte 12,208,139,226,0,13,189,232,8,112,157,229,0,160,157,232

Lme_6:
	.align 2
Lm_8:
m_NativeUI_showViewControllerFromXibWithAnimation_string_NativeTransitionAnimation:
_m_8:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,93,45,233,12,208,77,226,13,176,160,225,0,0,139,229,1,160,160,225
	.byte 1,160,74,226
bl p_4

	.byte 8,0,80,227,3,0,0,26,0,0,155,229,10,16,160,225
bl p_7

	.byte 4,0,0,234,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231
bl p_6

	.byte 12,208,139,226,0,13,189,232,8,112,157,229,0,160,157,232

Lme_8:
	.align 2
Lm_a:
m_NativeUI_showViewControllerFromXibWithFrame_string_UnityEngine_Rect:
_m_a:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,56,208,77,226,13,176,160,225,32,0,139,229,36,16,139,229
	.byte 40,32,139,229,44,48,139,229,80,224,157,229,48,224,139,229
bl p_4

	.byte 8,0,80,227,37,0,0,26,9,10,155,237,192,42,183,238,194,11,183,238,4,10,139,237,4,10,155,237,192,90,183,238
	.byte 10,10,155,237,192,42,183,238,194,11,183,238,5,10,139,237,5,10,155,237,192,74,183,238,11,10,155,237,192,42,183,238
	.byte 194,11,183,238,6,10,139,237,6,10,155,237,192,58,183,238,12,10,155,237,192,42,183,238,194,11,183,238,7,10,139,237
	.byte 7,10,155,237,192,42,183,238,32,0,155,229,197,11,183,238,2,10,13,237,8,16,29,229,196,11,183,238,2,10,13,237
	.byte 8,32,29,229,195,11,183,238,2,10,13,237,8,48,29,229,194,11,183,238,0,10,141,237
bl p_8

	.byte 4,0,0,234,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 8
	.byte 0,0,159,231
bl p_6

	.byte 56,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_a:
	.align 2
Lm_c:
m_NativeUI_sendMessageToListener_string_string_string:
_m_c:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,40,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 8,32,139,229
bl p_4

	.byte 8,0,80,227,4,0,0,26,0,0,155,229,4,16,155,229,8,32,155,229
bl p_9

	.byte 52,0,0,234,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 12
	.byte 0,0,159,231,6,16,160,227
bl p_10

	.byte 0,16,160,225,36,16,139,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 16
	.byte 2,32,159,231,0,16,160,227
bl p_11

	.byte 36,0,155,229,0,16,160,225,32,16,139,229,1,16,160,227,4,32,155,229
bl p_11

	.byte 32,0,155,229,0,16,160,225,28,16,139,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 20
	.byte 2,32,159,231,2,16,160,227
bl p_11

	.byte 28,0,155,229,0,16,160,225,24,16,139,229,3,16,160,227,8,32,155,229
bl p_11

	.byte 24,0,155,229,0,16,160,225,20,16,139,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 24
	.byte 2,32,159,231,4,16,160,227
bl p_11

	.byte 20,0,155,229,0,16,160,225,16,16,139,229,5,16,160,227,0,32,155,229
bl p_11

	.byte 16,0,155,229
bl p_12
bl p_6

	.byte 40,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_c:
	.align 2
Lm_e:
m_NativeUI_hideUI:
_m_e:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,13,176,160,225
bl p_4

	.byte 8,0,80,227,1,0,0,26
bl p_13

	.byte 1,0,0,234
bl p_4

	.byte 11,0,80,227,0,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_e:
	.align 2
Lm_10:
m_NativeUI_setPauseUnity_bool:
_m_10:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,203,229
bl p_4

	.byte 8,0,80,227,2,0,0,26,0,0,219,229
bl p_14

	.byte 1,0,0,234
bl p_4

	.byte 11,0,80,227,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_10:
	.align 2
Lm_11:
m_Starter__ctor:
_m_11:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_1

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_11:
	.align 2
Lm_12:
m_Starter_Start:
_m_12:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 28
	.byte 0,0,159,231
bl p_15

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 32
	.byte 0,0,159,231,2,16,160,227
bl p_16

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_12:
	.align 2
Lm_13:
m_Starter_Update:
_m_13:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,8,208,139,226
	.byte 0,9,189,232,8,112,157,229,0,160,157,232

Lme_13:
	.align 2
Lm_15:
m_wrapper_managed_to_native_System_Array_GetGenericValueImpl_int_object_:
_m_15:

	.byte 13,192,160,225,240,95,45,233,120,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229,8,32,139,229
bl p_17

	.byte 16,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 0,0,155,229,0,0,80,227,16,0,0,10,0,0,155,229,4,16,155,229,8,32,155,229
bl p_18

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,10,0,0,26,16,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232,150,0,160,227,6,12,128,226,2,4,128,226
bl p_19
bl p_20
bl p_21

	.byte 242,255,255,234

Lme_15:
	.align 2
Lm_16:
m_wrapper_managed_to_native_NativeUI__showStoryboard_string_int:
_m_16:

	.byte 13,192,160,225,240,95,45,233,112,208,77,226,13,176,160,225,0,96,160,225,0,16,139,229
bl p_17

	.byte 8,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 6,0,160,225
bl p_22

	.byte 0,96,160,225,0,16,155,229
bl p_23

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,6,0,160,225
bl p_24

	.byte 8,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_21

	.byte 245,255,255,234

Lme_16:
	.align 2
Lm_17:
m_wrapper_managed_to_native_NativeUI__showViewControllerFromXibWithAnimation_string_int:
_m_17:

	.byte 13,192,160,225,240,95,45,233,112,208,77,226,13,176,160,225,0,96,160,225,0,16,139,229
bl p_17

	.byte 8,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 6,0,160,225
bl p_22

	.byte 0,96,160,225,0,16,155,229
bl p_25

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,6,0,160,225
bl p_24

	.byte 8,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_21

	.byte 245,255,255,234

Lme_17:
	.align 2
Lm_18:
m_wrapper_managed_to_native_NativeUI__showViewControllerFromXibWithFrame_string_single_single_single_single:
_m_18:

	.byte 13,192,160,225,240,95,45,233,136,208,77,226,13,176,160,225,0,160,160,225,16,16,139,229,20,32,139,229,24,48,139,229
	.byte 176,224,157,229,28,224,139,229
bl p_17

	.byte 32,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 10,0,160,225
bl p_22

	.byte 0,160,160,225,4,10,155,237,192,90,183,238,5,10,155,237,192,74,183,238,6,10,155,237,192,58,183,238,7,10,155,237
	.byte 192,42,183,238,197,11,183,238,2,10,13,237,8,16,29,229,196,11,183,238,2,10,13,237,8,32,29,229,195,11,183,238
	.byte 2,10,13,237,8,48,29,229,194,11,183,238,0,10,141,237
bl p_26

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,10,0,160,225
bl p_24

	.byte 32,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_21

	.byte 245,255,255,234

Lme_18:
	.align 2
Lm_19:
m_wrapper_managed_to_native_NativeUI__sendMessageToListener_string_string_string:
_m_19:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225,0,80,160,225,1,96,160,225,2,160,160,225
bl p_17

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 5,0,160,225
bl p_22

	.byte 0,80,160,225,6,0,160,225
bl p_22

	.byte 0,96,160,225,10,0,160,225
bl p_22

	.byte 0,160,160,225,5,0,160,225,6,16,160,225,10,32,160,225
bl p_27

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,11,0,0,26,5,0,160,225
bl p_24

	.byte 6,0,160,225
bl p_24

	.byte 10,0,160,225
bl p_24

	.byte 0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_21

	.byte 241,255,255,234

Lme_19:
	.align 2
Lm_1a:
m_wrapper_managed_to_native_NativeUI__hideUI:
_m_1a:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225
bl p_17

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
bl p_28

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,5,0,0,26,0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232
bl p_21

	.byte 247,255,255,234

Lme_1a:
	.align 2
Lm_1b:
m_wrapper_managed_to_native_NativeUI__setPauseUnity_bool:
_m_1b:

	.byte 13,192,160,225,240,95,45,233,112,208,77,226,13,176,160,225,0,0,203,229
bl p_17

	.byte 8,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 0,160,160,227,0,0,219,229,0,0,80,227,0,0,0,10,1,160,160,227,10,0,160,225
bl p_29

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,5,0,0,26,8,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232
bl p_21

	.byte 247,255,255,234

Lme_1b:
.text
	.align 3
methods_end:
.data
	.align 3
method_addresses:
	.align 2
	.long _m_0
	.align 2
	.long _m_1
	.align 2
	.long _m_2
	.align 2
	.long _m_3
	.align 2
	.long _m_4
	.align 2
	.long 0
	.align 2
	.long _m_6
	.align 2
	.long 0
	.align 2
	.long _m_8
	.align 2
	.long 0
	.align 2
	.long _m_a
	.align 2
	.long 0
	.align 2
	.long _m_c
	.align 2
	.long 0
	.align 2
	.long _m_e
	.align 2
	.long 0
	.align 2
	.long _m_10
	.align 2
	.long _m_11
	.align 2
	.long _m_12
	.align 2
	.long _m_13
	.align 2
	.long 0
	.align 2
	.long _m_15
	.align 2
	.long _m_16
	.align 2
	.long _m_17
	.align 2
	.long _m_18
	.align 2
	.long _m_19
	.align 2
	.long _m_1a
	.align 2
	.long _m_1b
.text
	.align 3
method_offsets:

	.long Lm_0 - methods,Lm_1 - methods,Lm_2 - methods,Lm_3 - methods,Lm_4 - methods,-1,Lm_6 - methods,-1
	.long Lm_8 - methods,-1,Lm_a - methods,-1,Lm_c - methods,-1,Lm_e - methods,-1
	.long Lm_10 - methods,Lm_11 - methods,Lm_12 - methods,Lm_13 - methods,-1,Lm_15 - methods,Lm_16 - methods,Lm_17 - methods
	.long Lm_18 - methods,Lm_19 - methods,Lm_1a - methods,Lm_1b - methods

.text
	.align 3
method_info:
mi:
Lm_0_p:

	.byte 3,0,0
Lm_1_p:

	.byte 3,0,1,2
Lm_2_p:

	.byte 3,0,1,3
Lm_3_p:

	.byte 3,0,1,2
Lm_4_p:

	.byte 3,0,1,2
Lm_6_p:

	.byte 3,0,1,4
Lm_8_p:

	.byte 3,0,1,4
Lm_a_p:

	.byte 3,0,1,5
Lm_c_p:

	.byte 3,0,4,6,7,8,9
Lm_e_p:

	.byte 3,0,0
Lm_10_p:

	.byte 3,0,0
Lm_11_p:

	.byte 0,0
Lm_12_p:

	.byte 0,2,10,11
Lm_13_p:

	.byte 0,0
Lm_15_p:

	.byte 0,1,12
Lm_16_p:

	.byte 3,0,1,12
Lm_17_p:

	.byte 3,0,1,12
Lm_18_p:

	.byte 3,0,1,12
Lm_19_p:

	.byte 3,0,1,12
Lm_1a_p:

	.byte 3,0,1,12
Lm_1b_p:

	.byte 3,0,1,12
.text
	.align 3
method_info_offsets:

	.long Lm_0_p - mi,Lm_1_p - mi,Lm_2_p - mi,Lm_3_p - mi,Lm_4_p - mi,0,Lm_6_p - mi,0
	.long Lm_8_p - mi,0,Lm_a_p - mi,0,Lm_c_p - mi,0,Lm_e_p - mi,0
	.long Lm_10_p - mi,Lm_11_p - mi,Lm_12_p - mi,Lm_13_p - mi,0,Lm_15_p - mi,Lm_16_p - mi,Lm_17_p - mi
	.long Lm_18_p - mi,Lm_19_p - mi,Lm_1a_p - mi,Lm_1b_p - mi

.text
	.align 3
extra_method_info:

	.byte 0,1,6,83,121,115,116,101,109,46,65,114,114,97,121,58,71,101,116,71,101,110,101,114,105,99,86,97,108,117,101,73
	.byte 109,112,108,32,40,105,110,116,44,111,98,106,101,99,116,38,41,0,1,6,78,97,116,105,118,101,85,73,58,95,115,104
	.byte 111,119,83,116,111,114,121,98,111,97,114,100,32,40,115,116,114,105,110,103,44,105,110,116,41,0,1,6,78,97,116,105
	.byte 118,101,85,73,58,95,115,104,111,119,86,105,101,119,67,111,110,116,114,111,108,108,101,114,70,114,111,109,88,105,98,87
	.byte 105,116,104,65,110,105,109,97,116,105,111,110,32,40,115,116,114,105,110,103,44,105,110,116,41,0,1,6,78,97,116,105
	.byte 118,101,85,73,58,95,115,104,111,119,86,105,101,119,67,111,110,116,114,111,108,108,101,114,70,114,111,109,88,105,98,87
	.byte 105,116,104,70,114,97,109,101,32,40,115,116,114,105,110,103,44,115,105,110,103,108,101,44,115,105,110,103,108,101,44,115
	.byte 105,110,103,108,101,44,115,105,110,103,108,101,41,0,1,6,78,97,116,105,118,101,85,73,58,95,115,101,110,100,77,101
	.byte 115,115,97,103,101,84,111,76,105,115,116,101,110,101,114,32,40,115,116,114,105,110,103,44,115,116,114,105,110,103,44,115
	.byte 116,114,105,110,103,41,0,1,6,78,97,116,105,118,101,85,73,58,95,104,105,100,101,85,73,32,40,41,0,1,6,78
	.byte 97,116,105,118,101,85,73,58,95,115,101,116,80,97,117,115,101,85,110,105,116,121,32,40,98,111,111,108,41,0

.text
	.align 3
extra_method_table:

	.long 11,0,0,0,1,21,0,50
	.long 22,11,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,90,23,12,154,24,13
	.long 238,25,14,295,26,15,317,27
	.long 0
.text
	.align 3
extra_method_info_offsets:

	.long 7,21,1,22,50,23,90,24
	.long 154,25,238,26,295,27,317
.text
	.align 3
method_order:

	.long 0,16777215,0,1,2,3,4,6
	.long 8,10,12,14,16,17,18,19
	.long 21,22,23,24,25,26,27

.text
method_order_end:
.text
	.align 3
class_name_table:

	.short 11, 1, 11, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 2, 0, 4
	.short 0, 0, 0, 0, 0, 0, 0, 3
	.short 0
.text
	.align 3
got_info:

	.byte 12,0,39,16,3,0,6,17,0,1,17,0,19,17,0,107,14,194,0,0,0,1,1,28,1,17,0,128,181,17,0,128
	.byte 225,17,0,128,229,17,0,129,3,17,0,129,31,33,3,194,0,20,202,3,194,0,21,123,3,194,0,21,92,3,194,0
	.byte 19,208,3,6,3,194,0,20,172,3,8,3,10,3,12,7,23,109,111,110,111,95,97,114,114,97,121,95,110,101,119,95
	.byte 115,112,101,99,105,102,105,99,0,3,255,253,0,0,0,21,3,193,0,2,83,3,14,3,16,3,194,0,20,163,3,7
	.byte 7,17,109,111,110,111,95,103,101,116,95,108,109,102,95,97,100,100,114,0,31,255,254,0,0,0,41,1,1,198,0,4
	.byte 3,0,1,1,2,1,7,30,109,111,110,111,95,99,114,101,97,116,101,95,99,111,114,108,105,98,95,101,120,99,101,112
	.byte 116,105,111,110,95,48,0,7,25,109,111,110,111,95,97,114,99,104,95,116,104,114,111,119,95,101,120,99,101,112,116,105
	.byte 111,110,0,7,35,109,111,110,111,95,116,104,114,101,97,100,95,105,110,116,101,114,114,117,112,116,105,111,110,95,99,104
	.byte 101,99,107,112,111,105,110,116,0,7,20,109,111,110,111,95,115,116,114,105,110,103,95,116,111,95,108,112,115,116,114,0
	.byte 31,6,7,17,109,111,110,111,95,109,97,114,115,104,97,108,95,102,114,101,101,0,31,8,31,10,31,12,31,14,31,16
.text
	.align 3
got_info_offsets:

	.long 0,2,3,7,10,13,16,25
	.long 29,33,37,41,45
.text
	.align 3
ex_info:
ex:
Le_0_p:

	.byte 52,2,0,0
Le_1_p:

	.byte 60,2,26,0
Le_2_p:

	.byte 84,2,0,0
Le_3_p:

	.byte 56,2,26,0
Le_4_p:

	.byte 76,2,0,0
Le_6_p:

	.byte 100,2,49,0
Le_8_p:

	.byte 100,2,49,0
Le_a_p:

	.byte 128,248,2,77,0
Le_c_p:

	.byte 129,40,2,103,0
Le_e_p:

	.byte 64,2,26,0
Le_10_p:

	.byte 76,2,0,0
Le_11_p:

	.byte 52,2,0,0
Le_12_p:

	.byte 88,2,0,0
Le_13_p:

	.byte 44,2,0,0
Le_15_p:

	.byte 128,172,2,128,129,0
Le_16_p:

	.byte 128,148,2,128,163,0
Le_17_p:

	.byte 128,148,2,128,163,0
Le_18_p:

	.byte 128,236,2,128,197,0
Le_19_p:

	.byte 128,200,2,128,231,0
Le_1a_p:

	.byte 116,2,128,231,0
Le_1b_p:

	.byte 128,144,2,128,163,0
.text
	.align 3
ex_info_offsets:

	.long Le_0_p - ex,Le_1_p - ex,Le_2_p - ex,Le_3_p - ex,Le_4_p - ex,0,Le_6_p - ex,0
	.long Le_8_p - ex,0,Le_a_p - ex,0,Le_c_p - ex,0,Le_e_p - ex,0
	.long Le_10_p - ex,Le_11_p - ex,Le_12_p - ex,Le_13_p - ex,0,Le_15_p - ex,Le_16_p - ex,Le_17_p - ex
	.long Le_18_p - ex,Le_19_p - ex,Le_1a_p - ex,Le_1b_p - ex

.text
	.align 3
unwind_info:

	.byte 25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,14,32,68,13,11,22,12,13,0,76,14
	.byte 8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,13,11,27,12,13,0,76,14,8,135,2,68,14,28,136,7,138
	.byte 6,139,5,140,4,142,3,68,14,40,68,13,11,25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142
	.byte 3,68,14,80,68,13,11,25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,14,64,68,13
	.byte 11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2,142,1,68,14,160,1
	.byte 68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2,142,1,68,14
	.byte 152,1,68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2,142,1
	.byte 68,14,176,1,68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2
	.byte 142,1,68,14,144,1,68,13,11
.text
	.align 3
class_info:
LK_I_0:

	.byte 0,128,144,8,0,0,1
LK_I_1:

	.byte 23,128,144,12,0,0,4,193,0,3,216,193,0,3,231,193,0,0,4,193,0,3,229,193,0,3,219,193,0,3,200,193
	.byte 0,3,185,193,0,3,186,193,0,3,187,193,0,3,188,193,0,3,189,193,0,3,190,193,0,3,191,193,0,3,192,193
	.byte 0,3,193,193,0,3,194,193,0,3,195,193,0,3,217,193,0,3,196,193,0,3,197,193,0,3,198,193,0,3,199,193
	.byte 0,3,215
LK_I_2:

	.byte 4,128,132,2,16,1,0,4,194,0,21,101,194,0,21,75,193,0,0,4,194,0,21,74
LK_I_3:

	.byte 4,128,144,16,0,0,4,194,0,21,101,194,0,21,75,193,0,0,4,194,0,21,74
.text
	.align 3
class_info_offsets:

	.long LK_I_0 - class_info,LK_I_1 - class_info,LK_I_2 - class_info,LK_I_3 - class_info


.text
	.align 4
plt:
mono_aot_Assembly_CSharp_firstpass_plt:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 48,0
p_1:
plt_UnityEngine_MonoBehaviour__ctor:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 52,46
p_2:
plt_UnityEngine_Component_get_gameObject:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 56,51
p_3:
plt_UnityEngine_Object_set_name_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 60,56
p_4:
plt_UnityEngine_Application_get_platform:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 64,61
p_5:
plt_NativeUI__showStoryboard_string_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 68,66
p_6:
plt_UnityEngine_Debug_LogWarning_object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 72,68
p_7:
plt_NativeUI__showViewControllerFromXibWithAnimation_string_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 76,73
p_8:
plt_NativeUI__showViewControllerFromXibWithFrame_string_single_single_single_single:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 80,75
p_9:
plt_NativeUI__sendMessageToListener_string_string_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 84,77
p_10:
plt__jit_icall_mono_array_new_specific:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 88,79
p_11:
plt_wrapper_stelemref_object_stelemref_object_intptr_object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 92,105
p_12:
plt_string_Concat_string__:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 96,112
p_13:
plt_NativeUI__hideUI:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 100,117
p_14:
plt_NativeUI__setPauseUnity_bool:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 104,119
p_15:
plt_UnityEngine_Debug_Log_object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 108,121
p_16:
plt_NativeUI_showStoryboard_string_NativeTransitionAnimation:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 112,126
p_17:
plt__jit_icall_mono_get_lmf_addr:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 116,128
p_18:
plt__icall_native_System_Array_GetGenericValueImpl_object_int_object_:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 120,148
p_19:
plt__jit_icall_mono_create_corlib_exception_0:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 124,166
p_20:
plt__jit_icall_mono_arch_throw_exception:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 128,199
p_21:
plt__jit_icall_mono_thread_interruption_checkpoint:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 132,227
p_22:
plt__jit_icall_mono_string_to_lpstr:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 136,265
p_23:
plt__icall_native_NativeUI__showStoryboard_string_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 140,288
p_24:
plt__jit_icall_mono_marshal_free:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 144,290
p_25:
plt__icall_native_NativeUI__showViewControllerFromXibWithAnimation_string_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 148,310
p_26:
plt__icall_native_NativeUI__showViewControllerFromXibWithFrame_string_single_single_single_single:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 152,312
p_27:
plt__icall_native_NativeUI__sendMessageToListener_string_string_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 156,314
p_28:
plt__icall_native_NativeUI__hideUI:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 160,316
p_29:
plt__icall_native_NativeUI__setPauseUnity_bool:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 164,318
plt_end:
.text
	.align 3
mono_image_table:

	.long 3
	.asciz "Assembly-CSharp-firstpass"
	.asciz "3FDDEEEA-2639-467F-B404-93ABF1E7F6D4"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
	.asciz "mscorlib"
	.asciz "A5BD0D47-DA83-4071-B3F9-00CCC7E4A642"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
	.asciz "UnityEngine"
	.asciz "F80A70BF-CDBC-44B9-AC00-96B9BB9FCBF0"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
.data
	.align 3
mono_aot_Assembly_CSharp_firstpass_got:
	.space 172
got_end:
.data
	.align 3
mono_aot_got_addr:
	.align 2
	.long mono_aot_Assembly_CSharp_firstpass_got
.data
	.align 3
mono_aot_file_info:

	.long 13,172,30,28,1024,1024,128,0
	.long 0,0,0,0,0
.text
	.align 2
mono_assembly_guid:
	.asciz "3FDDEEEA-2639-467F-B404-93ABF1E7F6D4"
.text
	.align 2
mono_aot_version:
	.asciz "66"
.text
	.align 2
mono_aot_opt_flags:
	.asciz "55650815"
.text
	.align 2
mono_aot_full_aot:
	.asciz "TRUE"
.text
	.align 2
mono_runtime_version:
	.asciz ""
.text
	.align 2
mono_aot_assembly_name:
	.asciz "Assembly-CSharp-firstpass"
.text
	.align 3
Lglobals_hash:

	.short 73, 27, 0, 0, 0, 0, 0, 0
	.short 0, 15, 0, 19, 0, 0, 0, 0
	.short 0, 6, 0, 0, 0, 3, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 29
	.short 0, 13, 0, 5, 0, 0, 0, 0
	.short 0, 4, 0, 28, 0, 0, 0, 9
	.short 0, 0, 0, 0, 0, 0, 0, 14
	.short 0, 1, 0, 0, 0, 0, 0, 12
	.short 74, 0, 0, 0, 0, 0, 0, 30
	.short 0, 2, 75, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 22, 0, 0, 0, 0, 0, 0
	.short 0, 11, 0, 17, 0, 8, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 16, 0, 20
	.short 0, 7, 73, 24, 0, 10, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 21, 0, 18, 76, 23, 0, 25
	.short 0, 26, 0
.text
	.align 2
name_0:
	.asciz "methods"
.text
	.align 2
name_1:
	.asciz "methods_end"
.text
	.align 2
name_2:
	.asciz "method_addresses"
.text
	.align 2
name_3:
	.asciz "method_offsets"
.text
	.align 2
name_4:
	.asciz "method_info"
.text
	.align 2
name_5:
	.asciz "method_info_offsets"
.text
	.align 2
name_6:
	.asciz "extra_method_info"
.text
	.align 2
name_7:
	.asciz "extra_method_table"
.text
	.align 2
name_8:
	.asciz "extra_method_info_offsets"
.text
	.align 2
name_9:
	.asciz "method_order"
.text
	.align 2
name_10:
	.asciz "method_order_end"
.text
	.align 2
name_11:
	.asciz "class_name_table"
.text
	.align 2
name_12:
	.asciz "got_info"
.text
	.align 2
name_13:
	.asciz "got_info_offsets"
.text
	.align 2
name_14:
	.asciz "ex_info"
.text
	.align 2
name_15:
	.asciz "ex_info_offsets"
.text
	.align 2
name_16:
	.asciz "unwind_info"
.text
	.align 2
name_17:
	.asciz "class_info"
.text
	.align 2
name_18:
	.asciz "class_info_offsets"
.text
	.align 2
name_19:
	.asciz "plt"
.text
	.align 2
name_20:
	.asciz "plt_end"
.text
	.align 2
name_21:
	.asciz "mono_image_table"
.text
	.align 2
name_22:
	.asciz "mono_aot_got_addr"
.text
	.align 2
name_23:
	.asciz "mono_aot_file_info"
.text
	.align 2
name_24:
	.asciz "mono_assembly_guid"
.text
	.align 2
name_25:
	.asciz "mono_aot_version"
.text
	.align 2
name_26:
	.asciz "mono_aot_opt_flags"
.text
	.align 2
name_27:
	.asciz "mono_aot_full_aot"
.text
	.align 2
name_28:
	.asciz "mono_runtime_version"
.text
	.align 2
name_29:
	.asciz "mono_aot_assembly_name"
.data
	.align 3
Lglobals:
	.align 2
	.long Lglobals_hash
	.align 2
	.long name_0
	.align 2
	.long methods
	.align 2
	.long name_1
	.align 2
	.long methods_end
	.align 2
	.long name_2
	.align 2
	.long method_addresses
	.align 2
	.long name_3
	.align 2
	.long method_offsets
	.align 2
	.long name_4
	.align 2
	.long method_info
	.align 2
	.long name_5
	.align 2
	.long method_info_offsets
	.align 2
	.long name_6
	.align 2
	.long extra_method_info
	.align 2
	.long name_7
	.align 2
	.long extra_method_table
	.align 2
	.long name_8
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long name_9
	.align 2
	.long method_order
	.align 2
	.long name_10
	.align 2
	.long method_order_end
	.align 2
	.long name_11
	.align 2
	.long class_name_table
	.align 2
	.long name_12
	.align 2
	.long got_info
	.align 2
	.long name_13
	.align 2
	.long got_info_offsets
	.align 2
	.long name_14
	.align 2
	.long ex_info
	.align 2
	.long name_15
	.align 2
	.long ex_info_offsets
	.align 2
	.long name_16
	.align 2
	.long unwind_info
	.align 2
	.long name_17
	.align 2
	.long class_info
	.align 2
	.long name_18
	.align 2
	.long class_info_offsets
	.align 2
	.long name_19
	.align 2
	.long plt
	.align 2
	.long name_20
	.align 2
	.long plt_end
	.align 2
	.long name_21
	.align 2
	.long mono_image_table
	.align 2
	.long name_22
	.align 2
	.long mono_aot_got_addr
	.align 2
	.long name_23
	.align 2
	.long mono_aot_file_info
	.align 2
	.long name_24
	.align 2
	.long mono_assembly_guid
	.align 2
	.long name_25
	.align 2
	.long mono_aot_version
	.align 2
	.long name_26
	.align 2
	.long mono_aot_opt_flags
	.align 2
	.long name_27
	.align 2
	.long mono_aot_full_aot
	.align 2
	.long name_28
	.align 2
	.long mono_runtime_version
	.align 2
	.long name_29
	.align 2
	.long mono_aot_assembly_name

	.long 0,0
	.globl _mono_aot_module_Assembly_CSharp_firstpass_info
	.align 3
_mono_aot_module_Assembly_CSharp_firstpass_info:
	.align 2
	.long Lglobals
.text
	.align 3
mem_end:
#endif
