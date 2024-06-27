; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [342 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [684 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 250
	i64 54532244727808411, ; 1: Pomelo.EntityFrameworkCore.MySql.dll => 0xc1bcc9a3ce419b => 214
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 205
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 211
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 237
	i64 229794953483747371, ; 7: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 8: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 278
	i64 295915112840604065, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 281
	i64 316157742385208084, ; 10: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 244
	i64 350667413455104241, ; 11: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 12: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 13: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 280
	i64 545109961164950392, ; 14: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 313
	i64 553330995874807190, ; 15: RCL.dll => 0x7add39bec54bd96 => 340
	i64 560278790331054453, ; 16: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 17: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 263
	i64 648449422406355874, ; 18: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 191
	i64 649145001856603771, ; 19: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 20: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 190
	i64 683390398661839228, ; 21: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 198
	i64 750875890346172408, ; 22: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 23: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 238
	i64 799765834175365804, ; 24: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 25: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 316
	i64 870603111519317375, ; 26: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 217
	i64 872800313462103108, ; 27: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 249
	i64 895210737996778430, ; 28: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 264
	i64 940822596282819491, ; 29: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 30: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 31: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1120440138749646132, ; 32: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 294
	i64 1121665720830085036, ; 33: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 324
	i64 1268860745194512059, ; 34: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301485588176585670, ; 35: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 216
	i64 1301626418029409250, ; 36: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 233
	i64 1369545283391376210, ; 38: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 271
	i64 1404195534211153682, ; 39: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 40: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 41: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 42: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 208
	i64 1492954217099365037, ; 43: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 44: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1518315023656898250, ; 45: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 218
	i64 1537168428375924959, ; 46: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 47: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 322
	i64 1576750169145655260, ; 48: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 292
	i64 1624659445732251991, ; 49: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 232
	i64 1628611045998245443, ; 50: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 267
	i64 1636321030536304333, ; 51: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 257
	i64 1651782184287836205, ; 52: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 53: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1672383392659050004, ; 54: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 181
	i64 1682513316613008342, ; 55: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1735388228521408345, ; 56: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 57: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 58: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1776954265264967804, ; 59: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 206
	i64 1795316252682057001, ; 60: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 231
	i64 1825687700144851180, ; 61: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 62: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 312
	i64 1836611346387731153, ; 63: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 278
	i64 1854145951182283680, ; 64: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1875417405349196092, ; 65: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 66: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 228
	i64 1881198190668717030, ; 67: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 334
	i64 1897575647115118287, ; 68: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 280
	i64 1920760634179481754, ; 69: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 209
	i64 1959996714666907089, ; 70: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 334
	i64 1972385128188460614, ; 71: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 265
	i64 1983698669889758782, ; 73: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 308
	i64 2019660174692588140, ; 74: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 326
	i64 2040001226662520565, ; 75: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 76: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 77: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 302
	i64 2080945842184875448, ; 78: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 79: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 80: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2165310824878145998, ; 81: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 225
	i64 2165725771938924357, ; 82: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 235
	i64 2192948757939169934, ; 83: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 183
	i64 2200176636225660136, ; 84: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 203
	i64 2262844636196693701, ; 85: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 249
	i64 2287834202362508563, ; 86: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 87: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 88: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 179
	i64 2302323944321350744, ; 89: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 330
	i64 2304837677853103545, ; 90: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 277
	i64 2315304989185124968, ; 91: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 92: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 260
	i64 2335503487726329082, ; 93: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 94: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 95: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 242
	i64 2479423007379663237, ; 96: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 287
	i64 2497223385847772520, ; 97: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 98: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 226
	i64 2592350477072141967, ; 99: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 100: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 333
	i64 2624866290265602282, ; 101: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 102: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 103: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 193
	i64 2662981627730767622, ; 104: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 308
	i64 2706075432581334785, ; 105: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2781169761569919449, ; 106: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 206
	i64 2783046991838674048, ; 107: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 108: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 282
	i64 2815524396660695947, ; 109: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2895129759130297543, ; 110: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 313
	i64 2923871038697555247, ; 111: Jsr305Binding => 0x2893ad37e69ec52f => 295
	i64 3017136373564924869, ; 112: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 113: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 294
	i64 3106852385031680087, ; 114: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 115: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 116: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3266690593535380875, ; 117: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 174
	i64 3281594302220646930, ; 118: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 119: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 258
	i64 3303437397778967116, ; 120: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 229
	i64 3311221304742556517, ; 121: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 122: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 123: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 124: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 305
	i64 3396143930648122816, ; 125: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 196
	i64 3429672777697402584, ; 126: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 211
	i64 3437845325506641314, ; 127: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 128: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 284
	i64 3494946837667399002, ; 129: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 188
	i64 3508450208084372758, ; 130: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 131: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 283
	i64 3523004241079211829, ; 132: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 187
	i64 3531994851595924923, ; 133: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 134: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 135: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 328
	i64 3571415421602489686, ; 136: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 137: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 189
	i64 3647754201059316852, ; 138: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 139: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 188
	i64 3659371656528649588, ; 140: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 223
	i64 3716579019761409177, ; 141: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 142: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 276
	i64 3753897248517198740, ; 143: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 178
	i64 3772598417116884899, ; 144: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 250
	i64 3794322307918838949, ; 145: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 180
	i64 3810661281722352334, ; 146: Hybrid.dll => 0x34e2303ef86542ce => 0
	i64 3869221888984012293, ; 147: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 201
	i64 3869649043256705283, ; 148: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3889433610606858880, ; 149: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 199
	i64 3890352374528606784, ; 150: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 209
	i64 3919223565570527920, ; 151: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 152: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 153: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 154: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 155: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4073500526318903918, ; 156: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 157: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 207
	i64 4120493066591692148, ; 158: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 339
	i64 4148881117810174540, ; 159: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 160: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 161: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 162: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 163: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 164: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 244
	i64 4205801962323029395, ; 165: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 166: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 167: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4337444564132831293, ; 168: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 215
	i64 4356591372459378815, ; 169: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 336
	i64 4373617458794931033, ; 170: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4384840217421645357, ; 171: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 176
	i64 4397634830160618470, ; 172: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 173: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 174: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4513320955448359355, ; 175: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 184
	i64 4533124835995628778, ; 176: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4612482779465751747, ; 177: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 183
	i64 4636684751163556186, ; 178: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 288
	i64 4672453897036726049, ; 179: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 180: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 306
	i64 4716677666592453464, ; 181: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 182: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 183: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 262
	i64 4794310189461587505, ; 184: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 226
	i64 4795410492532947900, ; 185: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 283
	i64 4809057822547766521, ; 186: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 187: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 188: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 5055365687667823624, ; 189: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 227
	i64 5081566143765835342, ; 190: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 191: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 192: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5129462924058778861, ; 193: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 181
	i64 5182934613077526976, ; 194: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 195: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 177
	i64 5203618020066742981, ; 196: Xamarin.Essentials => 0x4836f704f0e652c5 => 293
	i64 5205316157927637098, ; 197: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 269
	i64 5244375036463807528, ; 198: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 199: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 200: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 201: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 261
	i64 5290786973231294105, ; 202: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5332349484191854038, ; 203: Syncfusion.Maui.Core.dll => 0x4a004f9a977e2dd6 => 220
	i64 5376510917114486089, ; 204: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 287
	i64 5408338804355907810, ; 205: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 285
	i64 5423376490970181369, ; 206: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 207: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 208: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 209: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 240
	i64 5457765010617926378, ; 210: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 211: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 332
	i64 5507995362134886206, ; 212: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 213: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 335
	i64 5527431512186326818, ; 214: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 215: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 216: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 217: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 230
	i64 5591791169662171124, ; 218: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 219: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 220: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 290
	i64 5724799082821825042, ; 221: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 253
	i64 5757522595884336624, ; 222: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 239
	i64 5783556987928984683, ; 223: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 224: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 259
	i64 5959344983920014087, ; 225: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 279
	i64 5979151488806146654, ; 226: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 227: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6068057819846744445, ; 228: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 329
	i64 6102788177522843259, ; 229: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 279
	i64 6183170893902868313, ; 230: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 215
	i64 6200764641006662125, ; 231: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 329
	i64 6222399776351216807, ; 232: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 233: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 234: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 235: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6319713645133255417, ; 236: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 263
	i64 6357457916754632952, ; 237: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 341
	i64 6401687960814735282, ; 238: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 260
	i64 6478287442656530074, ; 239: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 317
	i64 6504860066809920875, ; 240: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 235
	i64 6548213210057960872, ; 241: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 246
	i64 6557084851308642443, ; 242: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 291
	i64 6560151584539558821, ; 243: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 204
	i64 6589202984700901502, ; 244: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 297
	i64 6591971792923354531, ; 245: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 261
	i64 6617685658146568858, ; 246: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 247: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 248: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 249: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 325
	i64 6772837112740759457, ; 250: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 251: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 328
	i64 6786606130239981554, ; 252: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 253: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 254: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 255: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 256: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6920570528939222495, ; 257: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 178
	i64 7011053663211085209, ; 258: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 255
	i64 7060896174307865760, ; 259: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 260: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 261: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 262: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 256
	i64 7112547816752919026, ; 263: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7192745174564810625, ; 264: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 225
	i64 7220009545223068405, ; 265: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 332
	i64 7270811800166795866, ; 266: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 267: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 268: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 269: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 270: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 224
	i64 7377312882064240630, ; 271: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 272: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 273: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7592577537120840276, ; 274: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 275: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7637365915383206639, ; 276: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 293
	i64 7654504624184590948, ; 277: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7667640967838332169, ; 278: Hybrid => 0x6a68eed5d93c7509 => 0
	i64 7694700312542370399, ; 279: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7702918024138448955, ; 280: MySqlConnector => 0x6ae6432192b9e03b => 213
	i64 7708790323521193081, ; 281: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 323
	i64 7714652370974252055, ; 282: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 283: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 264
	i64 7735176074855944702, ; 284: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 285: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 300
	i64 7791074099216502080, ; 286: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 287: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 288: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 232
	i64 7972383140441761405, ; 289: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 186
	i64 7996916684280368070, ; 290: RCL => 0x6efac15ad8ed0bc6 => 340
	i64 8014722069583580780, ; 291: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 176
	i64 8025517457475554965, ; 292: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 293: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 294: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 295: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 258
	i64 8085230611270010360, ; 296: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 297: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 298: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 299: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 300: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 301: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 302: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 304
	i64 8246048515196606205, ; 303: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 212
	i64 8264926008854159966, ; 304: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 305: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 306: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 307: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 308: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 241
	i64 8400357532724379117, ; 309: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 273
	i64 8410671156615598628, ; 310: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 311: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 262
	i64 8518412311883997971, ; 312: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 313: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 314: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 252
	i64 8601935802264776013, ; 315: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 285
	i64 8614108721271900878, ; 316: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 327
	i64 8623059219396073920, ; 317: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 318: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 319: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 320: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 272
	i64 8648495978913578441, ; 321: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 322: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 327
	i64 8684531736582871431, ; 323: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 324: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 325: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 301
	i64 8941376889969657626, ; 326: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 327: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 275
	i64 8954753533646919997, ; 328: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9045785047181495996, ; 329: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 337
	i64 9111603110219107042, ; 330: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 187
	i64 9138683372487561558, ; 331: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 332: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 182
	i64 9312692141327339315, ; 333: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 290
	i64 9324707631942237306, ; 334: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 231
	i64 9468215723722196442, ; 335: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9554839972845591462, ; 336: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 337: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 296
	i64 9584643793929893533, ; 338: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9650158550865574924, ; 339: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 192
	i64 9659729154652888475, ; 340: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 341: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 342: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 343: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 242
	i64 9702891218465930390, ; 344: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 345: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 292
	i64 9808709177481450983, ; 346: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9825649861376906464, ; 347: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 239
	i64 9834056768316610435, ; 348: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 349: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864956466380592553, ; 350: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 185
	i64 9907349773706910547, ; 351: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 252
	i64 9933555792566666578, ; 352: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 353: Microsoft.Maui => 0x8a2b8315b36616ac => 210
	i64 9974604633896246661, ; 354: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9991543690424095600, ; 355: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 312
	i64 10017511394021241210, ; 356: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 203
	i64 10038780035334861115, ; 357: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 358: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 359: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 360: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 361: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 208
	i64 10105485790837105934, ; 362: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 363: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 309
	i64 10205853378024263619, ; 364: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 190
	i64 10226222362177979215, ; 365: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 302
	i64 10229024438826829339, ; 366: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 246
	i64 10236703004850800690, ; 367: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 368: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 369: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 299
	i64 10360651442923773544, ; 370: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 371: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 372: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 284
	i64 10406448008575299332, ; 373: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 305
	i64 10430153318873392755, ; 374: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 243
	i64 10506226065143327199, ; 375: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 307
	i64 10546663366131771576, ; 376: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 377: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 378: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 379: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 380: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10734191584620811116, ; 381: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 198
	i64 10785150219063592792, ; 382: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10811915265162633087, ; 383: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 184
	i64 10822644899632537592, ; 384: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 385: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 386: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 233
	i64 10899834349646441345, ; 387: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 388: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 389: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 390: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 202
	i64 11009005086950030778, ; 391: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 210
	i64 11019817191295005410, ; 392: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 230
	i64 11023048688141570732, ; 393: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 394: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11051904132540108364, ; 395: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 197
	i64 11071824625609515081, ; 396: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 297
	i64 11103970607964515343, ; 397: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 318
	i64 11136029745144976707, ; 398: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 295
	i64 11162124722117608902, ; 399: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 289
	i64 11188319605227840848, ; 400: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11218356222449480316, ; 401: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 175
	i64 11220793807500858938, ; 402: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 321
	i64 11226290749488709958, ; 403: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 204
	i64 11235648312900863002, ; 404: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 405: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 406: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 245
	i64 11347436699239206956, ; 407: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11392833485892708388, ; 408: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 274
	i64 11398376662953476300, ; 409: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 185
	i64 11432101114902388181, ; 410: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 411: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 412: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 413: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 414: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 255
	i64 11513602507638267977, ; 415: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 221
	i64 11518296021396496455, ; 416: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 319
	i64 11529969570048099689, ; 417: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 289
	i64 11530571088791430846, ; 418: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 201
	i64 11580057168383206117, ; 419: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 228
	i64 11591352189662810718, ; 420: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 282
	i64 11597940890313164233, ; 421: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 422: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 256
	i64 11692977985522001935, ; 423: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 424: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 315
	i64 11707554492040141440, ; 425: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 426: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11991047634523762324, ; 427: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 428: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12048689113179125827, ; 429: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 199
	i64 12058074296353848905, ; 430: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 200
	i64 12063623837170009990, ; 431: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 432: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 433: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 434: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 435: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 286
	i64 12145679461940342714, ; 436: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 437: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 222
	i64 12201331334810686224, ; 438: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 439: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12279246230491828964, ; 440: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 218
	i64 12313367145828839434, ; 441: System.IO.Pipelines => 0xaae1de2e1c17f00a => 221
	i64 12332222936682028543, ; 442: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 443: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12451044538927396471, ; 444: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 254
	i64 12466513435562512481, ; 445: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 268
	i64 12475113361194491050, ; 446: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 341
	i64 12487638416075308985, ; 447: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 248
	i64 12517810545449516888, ; 448: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 449: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 236
	i64 12550732019250633519, ; 450: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12551451704392164662, ; 451: MySqlConnector.dll => 0xae2fb6d31fc42536 => 213
	i64 12681088699309157496, ; 452: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 320
	i64 12699999919562409296, ; 453: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 454: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 237
	i64 12708238894395270091, ; 455: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 456: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 457: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 458: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 291
	i64 12823819093633476069, ; 459: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 333
	i64 12828192437253469131, ; 460: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 303
	i64 12835242264250840079, ; 461: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 462: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 205
	i64 12843770487262409629, ; 463: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 464: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12982280885948128408, ; 465: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 247
	i64 13003699287675270979, ; 466: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 179
	i64 13068258254871114833, ; 467: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13129914918964716986, ; 468: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 251
	i64 13173818576982874404, ; 469: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 470: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 307
	i64 13222659110913276082, ; 471: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 321
	i64 13343850469010654401, ; 472: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 473: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 474: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 315
	i64 13401370062847626945, ; 475: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 286
	i64 13404347523447273790, ; 476: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 241
	i64 13431476299110033919, ; 477: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 478: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 298
	i64 13463706743370286408, ; 479: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 480: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 300
	i64 13467053111158216594, ; 481: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 335
	i64 13491513212026656886, ; 482: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 234
	i64 13540124433173649601, ; 483: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 336
	i64 13545416393490209236, ; 484: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 319
	i64 13550417756503177631, ; 485: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 196
	i64 13572454107664307259, ; 486: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 276
	i64 13578472628727169633, ; 487: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 488: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 489: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 247
	i64 13647894001087880694, ; 490: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 491: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 227
	i64 13702626353344114072, ; 492: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 493: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 494: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 495: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 496: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 314
	i64 13768883594457632599, ; 497: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13814445057219246765, ; 498: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 317
	i64 13828521679616088467, ; 499: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 301
	i64 13881769479078963060, ; 500: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 501: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 502: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13955418299340266673, ; 503: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 195
	i64 13959074834287824816, ; 504: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 254
	i64 13970307180132182141, ; 505: Syncfusion.Licensing => 0xc1e0805ccade287d => 219
	i64 14075334701871371868, ; 506: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14082136096249122791, ; 507: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 180
	i64 14100563506285742564, ; 508: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 309
	i64 14124974489674258913, ; 509: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 236
	i64 14125464355221830302, ; 510: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 511: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 182
	i64 14178052285788134900, ; 512: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 223
	i64 14212104595480609394, ; 513: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 514: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 515: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 516: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 517: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 518: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 274
	i64 14298246716367104064, ; 519: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 520: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 521: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 522: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 224
	i64 14346402571976470310, ; 523: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14461014870687870182, ; 524: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 525: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 330
	i64 14486659737292545672, ; 526: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 259
	i64 14495724990987328804, ; 527: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 277
	i64 14522721392235705434, ; 528: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 311
	i64 14538127318538747197, ; 529: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 219
	i64 14551742072151931844, ; 530: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 531: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 532: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 533: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 534: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 269
	i64 14669215534098758659, ; 535: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 193
	i64 14690985099581930927, ; 536: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 537: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 322
	i64 14744092281598614090, ; 538: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 338
	i64 14792063746108907174, ; 539: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 298
	i64 14832630590065248058, ; 540: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 541: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 245
	i64 14889905118082851278, ; 542: GoogleGson.dll => 0xcea391d0969961ce => 173
	i64 14892012299694389861, ; 543: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 339
	i64 14904040806490515477, ; 544: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 306
	i64 14912225920358050525, ; 545: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 546: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 547: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 194
	i64 14984936317414011727, ; 548: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 549: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 550: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 248
	i64 15015154896917945444, ; 551: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 552: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 553: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 554: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 555: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 323
	i64 15115185479366240210, ; 556: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 557: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 558: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 275
	i64 15227001540531775957, ; 559: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 189
	i64 15234786388537674379, ; 560: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 561: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 562: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 238
	i64 15279429628684179188, ; 563: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 304
	i64 15299439993936780255, ; 564: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 565: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 566: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 243
	i64 15391712275433856905, ; 567: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 194
	i64 15427448221306938193, ; 568: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 177
	i64 15481710163200268842, ; 569: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 197
	i64 15526743539506359484, ; 570: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 571: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 572: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 573: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 310
	i64 15541854775306130054, ; 574: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 575: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 576: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 267
	i64 15592226634512578529, ; 577: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 174
	i64 15609085926864131306, ; 578: System.dll => 0xd89e9cf3334914ea => 164
	i64 15620595871140898079, ; 579: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 195
	i64 15661133872274321916, ; 580: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 581: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 310
	i64 15710114879900314733, ; 582: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 583: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 318
	i64 15745825835632158716, ; 584: Syncfusion.Maui.Core => 0xda84692c2c05e7fc => 220
	i64 15755368083429170162, ; 585: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 586: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 281
	i64 15783653065526199428, ; 587: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 311
	i64 15817206913877585035, ; 588: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15827202283623377193, ; 589: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 192
	i64 15847085070278954535, ; 590: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 591: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 592: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 207
	i64 15934062614519587357, ; 593: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 594: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 595: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 596: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 597: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 598: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16154507427712707110, ; 599: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 600: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 601: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 324
	i64 16315482530584035869, ; 602: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 603: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 202
	i64 16337011941688632206, ; 604: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 605: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 253
	i64 16423015068819898779, ; 606: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 303
	i64 16454459195343277943, ; 607: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 608: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16589693266713801121, ; 609: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 266
	i64 16621146507174665210, ; 610: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 240
	i64 16649148416072044166, ; 611: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 212
	i64 16677317093839702854, ; 612: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 273
	i64 16702652415771857902, ; 613: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 614: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 615: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16755018182064898362, ; 616: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 216
	i64 16758309481308491337, ; 617: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 618: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 619: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 620: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 621: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 622: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 623: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 624: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 625: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 331
	i64 16977952268158210142, ; 626: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 627: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 266
	i64 16998075588627545693, ; 628: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 271
	i64 17008137082415910100, ; 629: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 630: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 229
	i64 17031351772568316411, ; 631: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 270
	i64 17037200463775726619, ; 632: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 257
	i64 17047433665992082296, ; 633: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 191
	i64 17062143951396181894, ; 634: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17079998892748052666, ; 635: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 175
	i64 17089008752050867324, ; 636: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 338
	i64 17118171214553292978, ; 637: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17187273293601214786, ; 638: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 639: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 640: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17205988430934219272, ; 641: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 200
	i64 17230721278011714856, ; 642: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 643: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 644: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 645: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 646: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 647: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 316
	i64 17360349973592121190, ; 648: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 296
	i64 17438153253682247751, ; 649: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 331
	i64 17451281075798943988, ; 650: Pomelo.EntityFrameworkCore.MySql => 0xf22f67ad767e28f4 => 214
	i64 17470386307322966175, ; 651: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 652: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 653: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 314
	i64 17522591619082469157, ; 654: GoogleGson => 0xf32cc03d27a5bf25 => 173
	i64 17590473451926037903, ; 655: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 222
	i64 17623389608345532001, ; 656: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 326
	i64 17627500474728259406, ; 657: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 658: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 659: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 337
	i64 17704177640604968747, ; 660: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 268
	i64 17710060891934109755, ; 661: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 265
	i64 17712670374920797664, ; 662: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 663: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17838668724098252521, ; 664: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 665: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 299
	i64 17928294245072900555, ; 666: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17992315986609351877, ; 667: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18017743553296241350, ; 668: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 186
	i64 18025913125965088385, ; 669: System.Threading => 0xfa28e87b91334681 => 148
	i64 18099568558057551825, ; 670: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 325
	i64 18116111925905154859, ; 671: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 234
	i64 18121036031235206392, ; 672: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 270
	i64 18146411883821974900, ; 673: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 674: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 675: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 676: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 677: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 251
	i64 18305135509493619199, ; 678: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 272
	i64 18318849532986632368, ; 679: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 680: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 320
	i64 18370042311372477656, ; 681: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 217
	i64 18380184030268848184, ; 682: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 288
	i64 18439108438687598470 ; 683: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [684 x i32] [
	i32 250, ; 0
	i32 214, ; 1
	i32 205, ; 2
	i32 171, ; 3
	i32 211, ; 4
	i32 58, ; 5
	i32 237, ; 6
	i32 151, ; 7
	i32 278, ; 8
	i32 281, ; 9
	i32 244, ; 10
	i32 132, ; 11
	i32 56, ; 12
	i32 280, ; 13
	i32 313, ; 14
	i32 340, ; 15
	i32 95, ; 16
	i32 263, ; 17
	i32 191, ; 18
	i32 129, ; 19
	i32 190, ; 20
	i32 198, ; 21
	i32 145, ; 22
	i32 238, ; 23
	i32 18, ; 24
	i32 316, ; 25
	i32 217, ; 26
	i32 249, ; 27
	i32 264, ; 28
	i32 150, ; 29
	i32 104, ; 30
	i32 95, ; 31
	i32 294, ; 32
	i32 324, ; 33
	i32 36, ; 34
	i32 216, ; 35
	i32 28, ; 36
	i32 233, ; 37
	i32 271, ; 38
	i32 50, ; 39
	i32 115, ; 40
	i32 70, ; 41
	i32 208, ; 42
	i32 65, ; 43
	i32 170, ; 44
	i32 218, ; 45
	i32 145, ; 46
	i32 322, ; 47
	i32 292, ; 48
	i32 232, ; 49
	i32 267, ; 50
	i32 257, ; 51
	i32 40, ; 52
	i32 89, ; 53
	i32 181, ; 54
	i32 81, ; 55
	i32 66, ; 56
	i32 62, ; 57
	i32 86, ; 58
	i32 206, ; 59
	i32 231, ; 60
	i32 106, ; 61
	i32 312, ; 62
	i32 278, ; 63
	i32 102, ; 64
	i32 35, ; 65
	i32 228, ; 66
	i32 334, ; 67
	i32 280, ; 68
	i32 209, ; 69
	i32 334, ; 70
	i32 119, ; 71
	i32 265, ; 72
	i32 308, ; 73
	i32 326, ; 74
	i32 142, ; 75
	i32 141, ; 76
	i32 302, ; 77
	i32 53, ; 78
	i32 35, ; 79
	i32 141, ; 80
	i32 225, ; 81
	i32 235, ; 82
	i32 183, ; 83
	i32 203, ; 84
	i32 249, ; 85
	i32 8, ; 86
	i32 14, ; 87
	i32 179, ; 88
	i32 330, ; 89
	i32 277, ; 90
	i32 51, ; 91
	i32 260, ; 92
	i32 136, ; 93
	i32 101, ; 94
	i32 242, ; 95
	i32 287, ; 96
	i32 116, ; 97
	i32 226, ; 98
	i32 163, ; 99
	i32 333, ; 100
	i32 166, ; 101
	i32 67, ; 102
	i32 193, ; 103
	i32 308, ; 104
	i32 80, ; 105
	i32 206, ; 106
	i32 101, ; 107
	i32 282, ; 108
	i32 117, ; 109
	i32 313, ; 110
	i32 295, ; 111
	i32 78, ; 112
	i32 294, ; 113
	i32 114, ; 114
	i32 121, ; 115
	i32 48, ; 116
	i32 174, ; 117
	i32 128, ; 118
	i32 258, ; 119
	i32 229, ; 120
	i32 82, ; 121
	i32 110, ; 122
	i32 75, ; 123
	i32 305, ; 124
	i32 196, ; 125
	i32 211, ; 126
	i32 53, ; 127
	i32 284, ; 128
	i32 188, ; 129
	i32 69, ; 130
	i32 283, ; 131
	i32 187, ; 132
	i32 83, ; 133
	i32 172, ; 134
	i32 328, ; 135
	i32 116, ; 136
	i32 189, ; 137
	i32 156, ; 138
	i32 188, ; 139
	i32 223, ; 140
	i32 167, ; 141
	i32 276, ; 142
	i32 178, ; 143
	i32 250, ; 144
	i32 180, ; 145
	i32 0, ; 146
	i32 201, ; 147
	i32 32, ; 148
	i32 199, ; 149
	i32 209, ; 150
	i32 122, ; 151
	i32 72, ; 152
	i32 62, ; 153
	i32 161, ; 154
	i32 113, ; 155
	i32 88, ; 156
	i32 207, ; 157
	i32 339, ; 158
	i32 105, ; 159
	i32 18, ; 160
	i32 146, ; 161
	i32 118, ; 162
	i32 58, ; 163
	i32 244, ; 164
	i32 17, ; 165
	i32 52, ; 166
	i32 92, ; 167
	i32 215, ; 168
	i32 336, ; 169
	i32 55, ; 170
	i32 176, ; 171
	i32 129, ; 172
	i32 152, ; 173
	i32 41, ; 174
	i32 184, ; 175
	i32 92, ; 176
	i32 183, ; 177
	i32 288, ; 178
	i32 50, ; 179
	i32 306, ; 180
	i32 162, ; 181
	i32 13, ; 182
	i32 262, ; 183
	i32 226, ; 184
	i32 283, ; 185
	i32 36, ; 186
	i32 67, ; 187
	i32 109, ; 188
	i32 227, ; 189
	i32 99, ; 190
	i32 99, ; 191
	i32 11, ; 192
	i32 181, ; 193
	i32 11, ; 194
	i32 177, ; 195
	i32 293, ; 196
	i32 269, ; 197
	i32 25, ; 198
	i32 128, ; 199
	i32 76, ; 200
	i32 261, ; 201
	i32 109, ; 202
	i32 220, ; 203
	i32 287, ; 204
	i32 285, ; 205
	i32 106, ; 206
	i32 2, ; 207
	i32 26, ; 208
	i32 240, ; 209
	i32 157, ; 210
	i32 332, ; 211
	i32 21, ; 212
	i32 335, ; 213
	i32 49, ; 214
	i32 43, ; 215
	i32 126, ; 216
	i32 230, ; 217
	i32 59, ; 218
	i32 119, ; 219
	i32 290, ; 220
	i32 253, ; 221
	i32 239, ; 222
	i32 3, ; 223
	i32 259, ; 224
	i32 279, ; 225
	i32 38, ; 226
	i32 124, ; 227
	i32 329, ; 228
	i32 279, ; 229
	i32 215, ; 230
	i32 329, ; 231
	i32 137, ; 232
	i32 149, ; 233
	i32 85, ; 234
	i32 90, ; 235
	i32 263, ; 236
	i32 341, ; 237
	i32 260, ; 238
	i32 317, ; 239
	i32 235, ; 240
	i32 246, ; 241
	i32 291, ; 242
	i32 204, ; 243
	i32 297, ; 244
	i32 261, ; 245
	i32 133, ; 246
	i32 96, ; 247
	i32 3, ; 248
	i32 325, ; 249
	i32 105, ; 250
	i32 328, ; 251
	i32 33, ; 252
	i32 154, ; 253
	i32 158, ; 254
	i32 155, ; 255
	i32 82, ; 256
	i32 178, ; 257
	i32 255, ; 258
	i32 143, ; 259
	i32 87, ; 260
	i32 19, ; 261
	i32 256, ; 262
	i32 51, ; 263
	i32 225, ; 264
	i32 332, ; 265
	i32 61, ; 266
	i32 54, ; 267
	i32 4, ; 268
	i32 97, ; 269
	i32 224, ; 270
	i32 17, ; 271
	i32 155, ; 272
	i32 84, ; 273
	i32 29, ; 274
	i32 45, ; 275
	i32 293, ; 276
	i32 64, ; 277
	i32 0, ; 278
	i32 66, ; 279
	i32 213, ; 280
	i32 323, ; 281
	i32 172, ; 282
	i32 264, ; 283
	i32 1, ; 284
	i32 300, ; 285
	i32 47, ; 286
	i32 24, ; 287
	i32 232, ; 288
	i32 186, ; 289
	i32 340, ; 290
	i32 176, ; 291
	i32 165, ; 292
	i32 108, ; 293
	i32 12, ; 294
	i32 258, ; 295
	i32 63, ; 296
	i32 27, ; 297
	i32 23, ; 298
	i32 93, ; 299
	i32 168, ; 300
	i32 12, ; 301
	i32 304, ; 302
	i32 212, ; 303
	i32 29, ; 304
	i32 103, ; 305
	i32 14, ; 306
	i32 126, ; 307
	i32 241, ; 308
	i32 273, ; 309
	i32 91, ; 310
	i32 262, ; 311
	i32 9, ; 312
	i32 86, ; 313
	i32 252, ; 314
	i32 285, ; 315
	i32 327, ; 316
	i32 71, ; 317
	i32 168, ; 318
	i32 1, ; 319
	i32 272, ; 320
	i32 5, ; 321
	i32 327, ; 322
	i32 44, ; 323
	i32 27, ; 324
	i32 301, ; 325
	i32 158, ; 326
	i32 275, ; 327
	i32 112, ; 328
	i32 337, ; 329
	i32 187, ; 330
	i32 121, ; 331
	i32 182, ; 332
	i32 290, ; 333
	i32 231, ; 334
	i32 159, ; 335
	i32 131, ; 336
	i32 296, ; 337
	i32 57, ; 338
	i32 192, ; 339
	i32 138, ; 340
	i32 83, ; 341
	i32 30, ; 342
	i32 242, ; 343
	i32 10, ; 344
	i32 292, ; 345
	i32 171, ; 346
	i32 239, ; 347
	i32 150, ; 348
	i32 94, ; 349
	i32 185, ; 350
	i32 252, ; 351
	i32 60, ; 352
	i32 210, ; 353
	i32 157, ; 354
	i32 312, ; 355
	i32 203, ; 356
	i32 64, ; 357
	i32 88, ; 358
	i32 79, ; 359
	i32 47, ; 360
	i32 208, ; 361
	i32 143, ; 362
	i32 309, ; 363
	i32 190, ; 364
	i32 302, ; 365
	i32 246, ; 366
	i32 74, ; 367
	i32 91, ; 368
	i32 299, ; 369
	i32 135, ; 370
	i32 90, ; 371
	i32 284, ; 372
	i32 305, ; 373
	i32 243, ; 374
	i32 307, ; 375
	i32 112, ; 376
	i32 42, ; 377
	i32 159, ; 378
	i32 4, ; 379
	i32 103, ; 380
	i32 198, ; 381
	i32 70, ; 382
	i32 184, ; 383
	i32 60, ; 384
	i32 39, ; 385
	i32 233, ; 386
	i32 153, ; 387
	i32 56, ; 388
	i32 34, ; 389
	i32 202, ; 390
	i32 210, ; 391
	i32 230, ; 392
	i32 21, ; 393
	i32 163, ; 394
	i32 197, ; 395
	i32 297, ; 396
	i32 318, ; 397
	i32 295, ; 398
	i32 289, ; 399
	i32 140, ; 400
	i32 175, ; 401
	i32 321, ; 402
	i32 204, ; 403
	i32 89, ; 404
	i32 147, ; 405
	i32 245, ; 406
	i32 162, ; 407
	i32 274, ; 408
	i32 185, ; 409
	i32 6, ; 410
	i32 169, ; 411
	i32 31, ; 412
	i32 107, ; 413
	i32 255, ; 414
	i32 221, ; 415
	i32 319, ; 416
	i32 289, ; 417
	i32 201, ; 418
	i32 228, ; 419
	i32 282, ; 420
	i32 167, ; 421
	i32 256, ; 422
	i32 140, ; 423
	i32 315, ; 424
	i32 59, ; 425
	i32 144, ; 426
	i32 81, ; 427
	i32 74, ; 428
	i32 199, ; 429
	i32 200, ; 430
	i32 130, ; 431
	i32 25, ; 432
	i32 7, ; 433
	i32 93, ; 434
	i32 286, ; 435
	i32 137, ; 436
	i32 222, ; 437
	i32 113, ; 438
	i32 9, ; 439
	i32 218, ; 440
	i32 221, ; 441
	i32 104, ; 442
	i32 19, ; 443
	i32 254, ; 444
	i32 268, ; 445
	i32 341, ; 446
	i32 248, ; 447
	i32 33, ; 448
	i32 236, ; 449
	i32 46, ; 450
	i32 213, ; 451
	i32 320, ; 452
	i32 30, ; 453
	i32 237, ; 454
	i32 57, ; 455
	i32 134, ; 456
	i32 114, ; 457
	i32 291, ; 458
	i32 333, ; 459
	i32 303, ; 460
	i32 55, ; 461
	i32 205, ; 462
	i32 6, ; 463
	i32 77, ; 464
	i32 247, ; 465
	i32 179, ; 466
	i32 111, ; 467
	i32 251, ; 468
	i32 102, ; 469
	i32 307, ; 470
	i32 321, ; 471
	i32 170, ; 472
	i32 115, ; 473
	i32 315, ; 474
	i32 286, ; 475
	i32 241, ; 476
	i32 76, ; 477
	i32 298, ; 478
	i32 85, ; 479
	i32 300, ; 480
	i32 335, ; 481
	i32 234, ; 482
	i32 336, ; 483
	i32 319, ; 484
	i32 196, ; 485
	i32 276, ; 486
	i32 160, ; 487
	i32 2, ; 488
	i32 247, ; 489
	i32 24, ; 490
	i32 227, ; 491
	i32 32, ; 492
	i32 117, ; 493
	i32 37, ; 494
	i32 16, ; 495
	i32 314, ; 496
	i32 52, ; 497
	i32 317, ; 498
	i32 301, ; 499
	i32 20, ; 500
	i32 123, ; 501
	i32 154, ; 502
	i32 195, ; 503
	i32 254, ; 504
	i32 219, ; 505
	i32 131, ; 506
	i32 180, ; 507
	i32 309, ; 508
	i32 236, ; 509
	i32 148, ; 510
	i32 182, ; 511
	i32 223, ; 512
	i32 120, ; 513
	i32 28, ; 514
	i32 132, ; 515
	i32 100, ; 516
	i32 134, ; 517
	i32 274, ; 518
	i32 153, ; 519
	i32 97, ; 520
	i32 125, ; 521
	i32 224, ; 522
	i32 69, ; 523
	i32 72, ; 524
	i32 330, ; 525
	i32 259, ; 526
	i32 277, ; 527
	i32 311, ; 528
	i32 219, ; 529
	i32 136, ; 530
	i32 124, ; 531
	i32 71, ; 532
	i32 111, ; 533
	i32 269, ; 534
	i32 193, ; 535
	i32 152, ; 536
	i32 322, ; 537
	i32 338, ; 538
	i32 298, ; 539
	i32 118, ; 540
	i32 245, ; 541
	i32 173, ; 542
	i32 339, ; 543
	i32 306, ; 544
	i32 127, ; 545
	i32 133, ; 546
	i32 194, ; 547
	i32 77, ; 548
	i32 46, ; 549
	i32 248, ; 550
	i32 73, ; 551
	i32 63, ; 552
	i32 98, ; 553
	i32 84, ; 554
	i32 323, ; 555
	i32 43, ; 556
	i32 61, ; 557
	i32 275, ; 558
	i32 189, ; 559
	i32 37, ; 560
	i32 40, ; 561
	i32 238, ; 562
	i32 304, ; 563
	i32 160, ; 564
	i32 98, ; 565
	i32 243, ; 566
	i32 194, ; 567
	i32 177, ; 568
	i32 197, ; 569
	i32 135, ; 570
	i32 20, ; 571
	i32 65, ; 572
	i32 310, ; 573
	i32 125, ; 574
	i32 75, ; 575
	i32 267, ; 576
	i32 174, ; 577
	i32 164, ; 578
	i32 195, ; 579
	i32 156, ; 580
	i32 310, ; 581
	i32 5, ; 582
	i32 318, ; 583
	i32 220, ; 584
	i32 49, ; 585
	i32 281, ; 586
	i32 311, ; 587
	i32 144, ; 588
	i32 192, ; 589
	i32 139, ; 590
	i32 100, ; 591
	i32 207, ; 592
	i32 123, ; 593
	i32 120, ; 594
	i32 142, ; 595
	i32 39, ; 596
	i32 68, ; 597
	i32 41, ; 598
	i32 164, ; 599
	i32 73, ; 600
	i32 324, ; 601
	i32 165, ; 602
	i32 202, ; 603
	i32 127, ; 604
	i32 253, ; 605
	i32 303, ; 606
	i32 68, ; 607
	i32 169, ; 608
	i32 266, ; 609
	i32 240, ; 610
	i32 212, ; 611
	i32 273, ; 612
	i32 151, ; 613
	i32 45, ; 614
	i32 108, ; 615
	i32 216, ; 616
	i32 48, ; 617
	i32 96, ; 618
	i32 31, ; 619
	i32 23, ; 620
	i32 166, ; 621
	i32 22, ; 622
	i32 138, ; 623
	i32 78, ; 624
	i32 331, ; 625
	i32 54, ; 626
	i32 266, ; 627
	i32 271, ; 628
	i32 10, ; 629
	i32 229, ; 630
	i32 270, ; 631
	i32 257, ; 632
	i32 191, ; 633
	i32 16, ; 634
	i32 175, ; 635
	i32 338, ; 636
	i32 139, ; 637
	i32 13, ; 638
	i32 15, ; 639
	i32 122, ; 640
	i32 200, ; 641
	i32 87, ; 642
	i32 149, ; 643
	i32 22, ; 644
	i32 34, ; 645
	i32 79, ; 646
	i32 316, ; 647
	i32 296, ; 648
	i32 331, ; 649
	i32 214, ; 650
	i32 147, ; 651
	i32 80, ; 652
	i32 314, ; 653
	i32 173, ; 654
	i32 222, ; 655
	i32 326, ; 656
	i32 42, ; 657
	i32 26, ; 658
	i32 337, ; 659
	i32 268, ; 660
	i32 265, ; 661
	i32 107, ; 662
	i32 110, ; 663
	i32 7, ; 664
	i32 299, ; 665
	i32 44, ; 666
	i32 161, ; 667
	i32 186, ; 668
	i32 148, ; 669
	i32 325, ; 670
	i32 234, ; 671
	i32 270, ; 672
	i32 38, ; 673
	i32 15, ; 674
	i32 146, ; 675
	i32 8, ; 676
	i32 251, ; 677
	i32 272, ; 678
	i32 130, ; 679
	i32 320, ; 680
	i32 217, ; 681
	i32 288, ; 682
	i32 94 ; 683
], align 4

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
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
