; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [152 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [304 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 52
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 151
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 57
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 114
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 65
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 82
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 553330995874807190, ; 7: RCL.dll => 0x7add39bec54bd96 => 90
	i64 683390398661839228, ; 8: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 46
	i64 750875890346172408, ; 9: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 141
	i64 799765834175365804, ; 10: System.ComponentModel.dll => 0xb1956c9f18442ac => 101
	i64 849051935479314978, ; 11: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 70
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 87
	i64 1121665720830085036, ; 14: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 15: System.Drawing.dll => 0x119be62002c19ebb => 108
	i64 1369545283391376210, ; 16: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 78
	i64 1404195534211153682, ; 17: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 112
	i64 1476839205573959279, ; 18: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 119
	i64 1486715745332614827, ; 19: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 54
	i64 1513467482682125403, ; 20: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 150
	i64 1537168428375924959, ; 21: System.Threading.Thread.dll => 0x15551e8a954ae0df => 141
	i64 1556147632182429976, ; 22: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 62
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 75
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 116
	i64 1767386781656293639, ; 26: System.Private.Uri.dll => 0x188704e9f5582107 => 126
	i64 1776954265264967804, ; 27: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 53
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 61
	i64 1835311033149317475, ; 29: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 82
	i64 1875417405349196092, ; 31: System.Drawing.Primitives => 0x1a06d2319b6c713c => 107
	i64 1881198190668717030, ; 32: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 33: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 55
	i64 1959996714666907089, ; 34: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 74
	i64 1983698669889758782, ; 36: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 37: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 38: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 107
	i64 2165725771938924357, ; 39: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 63
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 70
	i64 2287834202362508563, ; 41: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 93
	i64 2295368378960711535, ; 42: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 39
	i64 2302323944321350744, ; 43: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 73
	i64 2335503487726329082, ; 45: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 138
	i64 2470498323731680442, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 66
	i64 2497223385847772520, ; 47: System.Runtime => 0x22a7eb7046413568 => 134
	i64 2547086958574651984, ; 48: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 60
	i64 2602673633151553063, ; 49: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2624866290265602282, ; 50: mscorlib.dll => 0x246d65fbde2db8ea => 147
	i64 2632269733008246987, ; 51: System.Net.NameResolution => 0x2487b36034f808cb => 118
	i64 2656907746661064104, ; 52: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 42
	i64 2662981627730767622, ; 53: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2781169761569919449, ; 54: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 53
	i64 2895129759130297543, ; 55: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 56: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 87
	i64 3289520064315143713, ; 57: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 72
	i64 3311221304742556517, ; 58: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 123
	i64 3325875462027654285, ; 59: System.Runtime.Numerics => 0x2e27e21c8958b48d => 131
	i64 3328853167529574890, ; 60: System.Net.Sockets.dll => 0x2e327651a008c1ea => 122
	i64 3344514922410554693, ; 61: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 89
	i64 3396143930648122816, ; 62: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 44
	i64 3429672777697402584, ; 63: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 57
	i64 3494946837667399002, ; 64: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 40
	i64 3522470458906976663, ; 65: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 83
	i64 3531994851595924923, ; 66: System.Numerics => 0x31042a9aade235bb => 124
	i64 3551103847008531295, ; 67: System.Private.CoreLib.dll => 0x31480e226177735f => 148
	i64 3567343442040498961, ; 68: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 69: System.Runtime.dll => 0x319037675df7e556 => 134
	i64 3638003163729360188, ; 70: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 41
	i64 3647754201059316852, ; 71: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 145
	i64 3655542548057982301, ; 72: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 40
	i64 3727469159507183293, ; 73: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 81
	i64 3753897248517198740, ; 74: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 38
	i64 3810661281722352334, ; 75: Hybrid.dll => 0x34e2303ef86542ce => 91
	i64 3869221888984012293, ; 76: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 49
	i64 3889433610606858880, ; 77: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 47
	i64 3890352374528606784, ; 78: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 55
	i64 3933965368022646939, ; 79: System.Net.Requests => 0x369840a8bfadc09b => 120
	i64 3966267475168208030, ; 80: System.Memory => 0x370b03412596249e => 116
	i64 4009997192427317104, ; 81: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 133
	i64 4073500526318903918, ; 82: System.Private.Xml.dll => 0x3887fb25779ae26e => 128
	i64 4120493066591692148, ; 83: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 84: System.ComponentModel => 0x39a7562737acb67e => 101
	i64 4168469861834746866, ; 85: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 135
	i64 4187479170553454871, ; 86: System.Linq.Expressions => 0x3a1cea1e912fa117 => 114
	i64 4205801962323029395, ; 87: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 100
	i64 4356591372459378815, ; 88: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4373617458794931033, ; 89: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 113
	i64 4384840217421645357, ; 90: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 36
	i64 4672453897036726049, ; 91: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 112
	i64 4679594760078841447, ; 92: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4743821336939966868, ; 93: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 98
	i64 4794310189461587505, ; 94: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 60
	i64 4795410492532947900, ; 95: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 83
	i64 4809057822547766521, ; 96: System.Drawing => 0x42bd349c3145ecf9 => 108
	i64 4814660307502931973, ; 97: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 118
	i64 4853321196694829351, ; 98: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 130
	i64 5103417709280584325, ; 99: System.Collections.Specialized => 0x46d2fb5e161b6285 => 96
	i64 5182934613077526976, ; 100: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 96
	i64 5197073077358930460, ; 101: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 37
	i64 5203618020066742981, ; 102: Xamarin.Essentials => 0x4836f704f0e652c5 => 86
	i64 5290786973231294105, ; 103: System.Runtime.Loader => 0x496ca6b869b72699 => 130
	i64 5471532531798518949, ; 104: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5507995362134886206, ; 105: System.Core.dll => 0x4c705499688c873e => 103
	i64 5522859530602327440, ; 106: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 107: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 110
	i64 5573260873512690141, ; 108: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 136
	i64 5692067934154308417, ; 109: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 85
	i64 5979151488806146654, ; 110: System.Formats.Asn1 => 0x52fa3699a489d25e => 109
	i64 6068057819846744445, ; 111: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6200764641006662125, ; 112: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 113: System.Text.Json.dll => 0x565a67a0ffe264a7 => 139
	i64 6251069312384999852, ; 114: System.Transactions.Local => 0x56c0426b870da1ac => 143
	i64 6357457916754632952, ; 115: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 73
	i64 6478287442656530074, ; 117: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6504860066809920875, ; 118: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 63
	i64 6548213210057960872, ; 119: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 69
	i64 6560151584539558821, ; 120: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 51
	i64 6743165466166707109, ; 121: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 122: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 123: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 106
	i64 6876862101832370452, ; 124: System.Xml.Linq => 0x5f6f85a57d108914 => 144
	i64 6894844156784520562, ; 125: System.Numerics.Vectors => 0x5faf683aead1ad72 => 123
	i64 6920570528939222495, ; 126: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 38
	i64 7083547580668757502, ; 127: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 127
	i64 7220009545223068405, ; 128: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 129: System.Linq => 0x64e71ccf51a90a5a => 115
	i64 7316205155833392065, ; 130: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 92
	i64 7377312882064240630, ; 131: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 100
	i64 7488575175965059935, ; 132: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 144
	i64 7489048572193775167, ; 133: System.ObjectModel => 0x67ee71ff6b419e3f => 125
	i64 7637365915383206639, ; 134: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 86
	i64 7654504624184590948, ; 135: System.Net.Http => 0x6a3a4366801b8264 => 117
	i64 7667640967838332169, ; 136: Hybrid => 0x6a68eed5d93c7509 => 91
	i64 7702918024138448955, ; 137: MySqlConnector => 0x6ae6432192b9e03b => 59
	i64 7708790323521193081, ; 138: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 139: System.Private.CoreLib => 0x6b0ff375198b9c17 => 148
	i64 7735352534559001595, ; 140: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 88
	i64 7836164640616011524, ; 141: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 62
	i64 7996916684280368070, ; 142: RCL => 0x6efac15ad8ed0bc6 => 90
	i64 8014722069583580780, ; 143: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 36
	i64 8064050204834738623, ; 144: System.Collections.dll => 0x6fe942efa61731bf => 97
	i64 8083354569033831015, ; 145: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 72
	i64 8087206902342787202, ; 146: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 105
	i64 8167236081217502503, ; 147: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 149
	i64 8185542183669246576, ; 148: System.Collections => 0x7198e33f4794aa70 => 97
	i64 8246048515196606205, ; 149: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 58
	i64 8368701292315763008, ; 150: System.Security.Cryptography => 0x7423997c6fd56140 => 136
	i64 8400357532724379117, ; 151: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 80
	i64 8518412311883997971, ; 152: System.Collections.Immutable => 0x76377add7c28e313 => 94
	i64 8563666267364444763, ; 153: System.Private.Uri => 0x76d841191140ca5b => 126
	i64 8614108721271900878, ; 154: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 155: Java.Interop => 0x77b654e585b55834 => 149
	i64 8639588376636138208, ; 156: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 79
	i64 8677882282824630478, ; 157: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 158: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 105
	i64 9045785047181495996, ; 159: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 160: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 85
	i64 9324707631942237306, ; 161: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 61
	i64 9659729154652888475, ; 162: System.Text.RegularExpressions => 0x860e407c9991dd9b => 140
	i64 9662334977499516867, ; 163: System.Numerics.dll => 0x8617827802b0cfc3 => 124
	i64 9678050649315576968, ; 164: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 66
	i64 9702891218465930390, ; 165: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 95
	i64 9808709177481450983, ; 166: Mono.Android.dll => 0x881f890734e555e7 => 151
	i64 9956195530459977388, ; 167: Microsoft.Maui => 0x8a2b8315b36616ac => 56
	i64 9991543690424095600, ; 168: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 169: System.Net.Http.dll => 0x8b50e941206af13b => 117
	i64 10051358222726253779, ; 170: System.Private.Xml => 0x8b7d990c97ccccd3 => 128
	i64 10092835686693276772, ; 171: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 54
	i64 10143853363526200146, ; 172: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 173: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 69
	i64 10406448008575299332, ; 174: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 89
	i64 10430153318873392755, ; 175: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 67
	i64 10506226065143327199, ; 176: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10670374202010151210, ; 177: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 92
	i64 10734191584620811116, ; 178: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 46
	i64 10785150219063592792, ; 179: System.Net.Primitives => 0x95ac8cfb68830758 => 119
	i64 11002576679268595294, ; 180: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 50
	i64 11009005086950030778, ; 181: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 56
	i64 11023048688141570732, ; 182: System.Core => 0x98f9bc61168392ac => 103
	i64 11051904132540108364, ; 183: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 45
	i64 11103970607964515343, ; 184: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 185: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 84
	i64 11218356222449480316, ; 186: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 35
	i64 11220793807500858938, ; 187: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 188: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 51
	i64 11340910727871153756, ; 189: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 68
	i64 11485890710487134646, ; 190: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 129
	i64 11518296021396496455, ; 191: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 192: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 84
	i64 11530571088791430846, ; 193: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 49
	i64 11705530742807338875, ; 194: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 12048689113179125827, ; 195: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 47
	i64 12058074296353848905, ; 196: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 48
	i64 12145679461940342714, ; 197: System.Text.Json => 0xa88e1f1ebcb62fba => 139
	i64 12201331334810686224, ; 198: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 133
	i64 12269460666702402136, ; 199: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 94
	i64 12451044538927396471, ; 200: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 71
	i64 12466513435562512481, ; 201: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 76
	i64 12475113361194491050, ; 202: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 203: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 106
	i64 12538491095302438457, ; 204: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 64
	i64 12550732019250633519, ; 205: System.IO.Compression => 0xae2d28465e8e1b2f => 111
	i64 12551451704392164662, ; 206: MySqlConnector.dll => 0xae2fb6d31fc42536 => 59
	i64 12681088699309157496, ; 207: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 208: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 65
	i64 12708922737231849740, ; 209: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 137
	i64 12823819093633476069, ; 210: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12835242264250840079, ; 211: System.IO.Pipes => 0xb21ff0d5d6c0740f => 113
	i64 12843321153144804894, ; 212: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 52
	i64 13003699287675270979, ; 213: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 39
	i64 13068258254871114833, ; 214: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 132
	i64 13221551921002590604, ; 215: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 216: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 217: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 150
	i64 13381594904270902445, ; 218: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 219: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 88
	i64 13467053111158216594, ; 220: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 221: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 222: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13550417756503177631, ; 223: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 44
	i64 13572454107664307259, ; 224: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 81
	i64 13717397318615465333, ; 225: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 99
	i64 13755568601956062840, ; 226: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 227: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 228: System.Console.dll => 0xc0a5f3cade5c6774 => 102
	i64 13959074834287824816, ; 229: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 71
	i64 14100563506285742564, ; 230: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 231: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 64
	i64 14125464355221830302, ; 232: System.Threading.dll => 0xc407bafdbc707a9e => 142
	i64 14254574811015963973, ; 233: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 137
	i64 14461014870687870182, ; 234: System.Net.Requests.dll => 0xc8afd8683afdece6 => 120
	i64 14464374589798375073, ; 235: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 236: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 237: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 138
	i64 14622043554576106986, ; 238: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 132
	i64 14669215534098758659, ; 239: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 42
	i64 14705122255218365489, ; 240: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 241: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14832630590065248058, ; 242: System.Security.Claims => 0xcdd816ef5d6e873a => 135
	i64 14852515768018889994, ; 243: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 68
	i64 14892012299694389861, ; 244: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 245: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 246: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 43
	i64 14987728460634540364, ; 247: System.IO.Compression.dll => 0xcfff1ba06622494c => 111
	i64 15015154896917945444, ; 248: System.Net.Security.dll => 0xd0608bd33642dc64 => 121
	i64 15076659072870671916, ; 249: System.ObjectModel.dll => 0xd13b0d8c1620662c => 125
	i64 15111608613780139878, ; 250: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 251: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 110
	i64 15133485256822086103, ; 252: System.Linq.dll => 0xd204f0a9127dd9d7 => 115
	i64 15227001540531775957, ; 253: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 41
	i64 15370334346939861994, ; 254: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 67
	i64 15391712275433856905, ; 255: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 43
	i64 15427448221306938193, ; 256: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 37
	i64 15481710163200268842, ; 257: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 45
	i64 15527772828719725935, ; 258: System.Console => 0xd77dbb1e38cd3d6f => 102
	i64 15536481058354060254, ; 259: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 260: System.Net.Sockets => 0xd7e790fe7a6dc536 => 122
	i64 15582737692548360875, ; 261: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 75
	i64 15609085926864131306, ; 262: System.dll => 0xd89e9cf3334914ea => 146
	i64 15661133872274321916, ; 263: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 145
	i64 15664356999916475676, ; 264: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 265: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 266: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 16154507427712707110, ; 267: System => 0xe03056ea4e39aa26 => 146
	i64 16219561732052121626, ; 268: System.Net.Security => 0xe1177575db7c781a => 121
	i64 16288847719894691167, ; 269: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 270: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 50
	i64 16649148416072044166, ; 271: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 58
	i64 16677317093839702854, ; 272: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 80
	i64 16833383113903931215, ; 273: mscorlib => 0xe99c30c1484d7f4f => 147
	i64 16856067890322379635, ; 274: System.Data.Common.dll => 0xe9ecc87060889373 => 104
	i64 16890310621557459193, ; 275: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 140
	i64 16942731696432749159, ; 276: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 277: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 78
	i64 17008137082415910100, ; 278: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 95
	i64 17031351772568316411, ; 279: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 77
	i64 17062143951396181894, ; 280: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 99
	i64 17079998892748052666, ; 281: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 35
	i64 17089008752050867324, ; 282: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17187273293601214786, ; 283: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 98
	i64 17205988430934219272, ; 284: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 48
	i64 17230721278011714856, ; 285: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 127
	i64 17234219099804750107, ; 286: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 143
	i64 17260702271250283638, ; 287: System.Data.Common => 0xef8a5543bba6bc76 => 104
	i64 17342750010158924305, ; 288: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 289: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 290: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 291: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 292: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 293: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 76
	i64 17710060891934109755, ; 294: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 74
	i64 17712670374920797664, ; 295: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 129
	i64 17777860260071588075, ; 296: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 131
	i64 18025913125965088385, ; 297: System.Threading => 0xfa28e87b91334681 => 142
	i64 18099568558057551825, ; 298: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 299: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 77
	i64 18146411883821974900, ; 300: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 109
	i64 18245806341561545090, ; 301: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 93
	i64 18305135509493619199, ; 302: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 79
	i64 18324163916253801303 ; 303: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [304 x i32] [
	i32 52, ; 0
	i32 151, ; 1
	i32 57, ; 2
	i32 114, ; 3
	i32 65, ; 4
	i32 82, ; 5
	i32 7, ; 6
	i32 90, ; 7
	i32 46, ; 8
	i32 141, ; 9
	i32 101, ; 10
	i32 10, ; 11
	i32 70, ; 12
	i32 87, ; 13
	i32 18, ; 14
	i32 108, ; 15
	i32 78, ; 16
	i32 112, ; 17
	i32 119, ; 18
	i32 54, ; 19
	i32 150, ; 20
	i32 141, ; 21
	i32 16, ; 22
	i32 62, ; 23
	i32 75, ; 24
	i32 116, ; 25
	i32 126, ; 26
	i32 53, ; 27
	i32 61, ; 28
	i32 6, ; 29
	i32 82, ; 30
	i32 107, ; 31
	i32 28, ; 32
	i32 55, ; 33
	i32 28, ; 34
	i32 74, ; 35
	i32 2, ; 36
	i32 20, ; 37
	i32 107, ; 38
	i32 63, ; 39
	i32 70, ; 40
	i32 93, ; 41
	i32 39, ; 42
	i32 24, ; 43
	i32 73, ; 44
	i32 138, ; 45
	i32 66, ; 46
	i32 134, ; 47
	i32 60, ; 48
	i32 27, ; 49
	i32 147, ; 50
	i32 118, ; 51
	i32 42, ; 52
	i32 2, ; 53
	i32 53, ; 54
	i32 7, ; 55
	i32 87, ; 56
	i32 72, ; 57
	i32 123, ; 58
	i32 131, ; 59
	i32 122, ; 60
	i32 89, ; 61
	i32 44, ; 62
	i32 57, ; 63
	i32 40, ; 64
	i32 83, ; 65
	i32 124, ; 66
	i32 148, ; 67
	i32 22, ; 68
	i32 134, ; 69
	i32 41, ; 70
	i32 145, ; 71
	i32 40, ; 72
	i32 81, ; 73
	i32 38, ; 74
	i32 91, ; 75
	i32 49, ; 76
	i32 47, ; 77
	i32 55, ; 78
	i32 120, ; 79
	i32 116, ; 80
	i32 133, ; 81
	i32 128, ; 82
	i32 33, ; 83
	i32 101, ; 84
	i32 135, ; 85
	i32 114, ; 86
	i32 100, ; 87
	i32 30, ; 88
	i32 113, ; 89
	i32 36, ; 90
	i32 112, ; 91
	i32 0, ; 92
	i32 98, ; 93
	i32 60, ; 94
	i32 83, ; 95
	i32 108, ; 96
	i32 118, ; 97
	i32 130, ; 98
	i32 96, ; 99
	i32 96, ; 100
	i32 37, ; 101
	i32 86, ; 102
	i32 130, ; 103
	i32 26, ; 104
	i32 103, ; 105
	i32 29, ; 106
	i32 110, ; 107
	i32 136, ; 108
	i32 85, ; 109
	i32 109, ; 110
	i32 23, ; 111
	i32 23, ; 112
	i32 139, ; 113
	i32 143, ; 114
	i32 34, ; 115
	i32 73, ; 116
	i32 11, ; 117
	i32 63, ; 118
	i32 69, ; 119
	i32 51, ; 120
	i32 19, ; 121
	i32 22, ; 122
	i32 106, ; 123
	i32 144, ; 124
	i32 123, ; 125
	i32 38, ; 126
	i32 127, ; 127
	i32 26, ; 128
	i32 115, ; 129
	i32 92, ; 130
	i32 100, ; 131
	i32 144, ; 132
	i32 125, ; 133
	i32 86, ; 134
	i32 117, ; 135
	i32 91, ; 136
	i32 59, ; 137
	i32 17, ; 138
	i32 148, ; 139
	i32 88, ; 140
	i32 62, ; 141
	i32 90, ; 142
	i32 36, ; 143
	i32 97, ; 144
	i32 72, ; 145
	i32 105, ; 146
	i32 149, ; 147
	i32 97, ; 148
	i32 58, ; 149
	i32 136, ; 150
	i32 80, ; 151
	i32 94, ; 152
	i32 126, ; 153
	i32 21, ; 154
	i32 149, ; 155
	i32 79, ; 156
	i32 21, ; 157
	i32 105, ; 158
	i32 31, ; 159
	i32 85, ; 160
	i32 61, ; 161
	i32 140, ; 162
	i32 124, ; 163
	i32 66, ; 164
	i32 95, ; 165
	i32 151, ; 166
	i32 56, ; 167
	i32 6, ; 168
	i32 117, ; 169
	i32 128, ; 170
	i32 54, ; 171
	i32 3, ; 172
	i32 69, ; 173
	i32 89, ; 174
	i32 67, ; 175
	i32 1, ; 176
	i32 92, ; 177
	i32 46, ; 178
	i32 119, ; 179
	i32 50, ; 180
	i32 56, ; 181
	i32 103, ; 182
	i32 45, ; 183
	i32 12, ; 184
	i32 84, ; 185
	i32 35, ; 186
	i32 15, ; 187
	i32 51, ; 188
	i32 68, ; 189
	i32 129, ; 190
	i32 13, ; 191
	i32 84, ; 192
	i32 49, ; 193
	i32 9, ; 194
	i32 47, ; 195
	i32 48, ; 196
	i32 139, ; 197
	i32 133, ; 198
	i32 94, ; 199
	i32 71, ; 200
	i32 76, ; 201
	i32 34, ; 202
	i32 106, ; 203
	i32 64, ; 204
	i32 111, ; 205
	i32 59, ; 206
	i32 14, ; 207
	i32 65, ; 208
	i32 137, ; 209
	i32 27, ; 210
	i32 113, ; 211
	i32 52, ; 212
	i32 39, ; 213
	i32 132, ; 214
	i32 1, ; 215
	i32 15, ; 216
	i32 150, ; 217
	i32 9, ; 218
	i32 88, ; 219
	i32 29, ; 220
	i32 30, ; 221
	i32 13, ; 222
	i32 44, ; 223
	i32 81, ; 224
	i32 99, ; 225
	i32 8, ; 226
	i32 11, ; 227
	i32 102, ; 228
	i32 71, ; 229
	i32 3, ; 230
	i32 64, ; 231
	i32 142, ; 232
	i32 137, ; 233
	i32 120, ; 234
	i32 24, ; 235
	i32 5, ; 236
	i32 138, ; 237
	i32 132, ; 238
	i32 42, ; 239
	i32 16, ; 240
	i32 32, ; 241
	i32 135, ; 242
	i32 68, ; 243
	i32 33, ; 244
	i32 0, ; 245
	i32 43, ; 246
	i32 111, ; 247
	i32 121, ; 248
	i32 125, ; 249
	i32 17, ; 250
	i32 110, ; 251
	i32 115, ; 252
	i32 41, ; 253
	i32 67, ; 254
	i32 43, ; 255
	i32 37, ; 256
	i32 45, ; 257
	i32 102, ; 258
	i32 4, ; 259
	i32 122, ; 260
	i32 75, ; 261
	i32 146, ; 262
	i32 145, ; 263
	i32 4, ; 264
	i32 12, ; 265
	i32 5, ; 266
	i32 146, ; 267
	i32 121, ; 268
	i32 18, ; 269
	i32 50, ; 270
	i32 58, ; 271
	i32 80, ; 272
	i32 147, ; 273
	i32 104, ; 274
	i32 140, ; 275
	i32 25, ; 276
	i32 78, ; 277
	i32 95, ; 278
	i32 77, ; 279
	i32 99, ; 280
	i32 35, ; 281
	i32 32, ; 282
	i32 98, ; 283
	i32 48, ; 284
	i32 127, ; 285
	i32 143, ; 286
	i32 104, ; 287
	i32 10, ; 288
	i32 25, ; 289
	i32 8, ; 290
	i32 20, ; 291
	i32 31, ; 292
	i32 76, ; 293
	i32 74, ; 294
	i32 129, ; 295
	i32 131, ; 296
	i32 142, ; 297
	i32 19, ; 298
	i32 77, ; 299
	i32 109, ; 300
	i32 93, ; 301
	i32 79, ; 302
	i32 14 ; 303
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
