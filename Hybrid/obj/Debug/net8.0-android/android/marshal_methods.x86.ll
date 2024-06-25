; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [341 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [676 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 259
	i32 33410221, ; 4: Hybrid.dll => 0x1fdccad => 0
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 294
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 335
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 208
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 277
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 277
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 298
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 233
	i32 172961045, ; 23: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 216
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 279
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 332
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 333
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 231
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 253
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 37: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 175
	i32 261689757, ; 38: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 236
	i32 276479776, ; 39: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 255
	i32 280482487, ; 41: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 252
	i32 280992041, ; 42: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 304
	i32 289079366, ; 43: RCL.dll => 0x113b0046 => 336
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 332
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 222
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 49: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 317
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 254
	i32 347068432, ; 51: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 213
	i32 356389973, ; 52: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 316
	i32 360082299, ; 53: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 54: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 337
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 62: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 328
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 237
	i32 442521989, ; 64: Xamarin.Essentials => 0x1a605985 => 289
	i32 442565967, ; 65: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 66: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 250
	i32 451504562, ; 67: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 70: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 71: System.dll => 0x1bff388e => 164
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 252
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 265
	i32 498788369, ; 74: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 75: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 315
	i32 503918385, ; 76: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 309
	i32 513247710, ; 77: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 201
	i32 526420162, ; 78: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 79: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 298
	i32 530272170, ; 80: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 81: Microsoft.Extensions.Logging => 0x20216150 => 197
	i32 540030774, ; 82: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 83: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 84: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 85: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 86: Jsr305Binding => 0x213954e7 => 291
	i32 569601784, ; 87: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 288
	i32 571435654, ; 88: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 194
	i32 577335427, ; 89: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 90: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 323
	i32 601371474, ; 91: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 92: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 93: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 94: Xamarin.AndroidX.CustomView => 0x2568904f => 242
	i32 627931235, ; 95: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 321
	i32 639843206, ; 96: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 248
	i32 643868501, ; 97: System.Net => 0x2660a755 => 81
	i32 662205335, ; 98: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 99: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 284
	i32 666292255, ; 100: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 229
	i32 672442732, ; 101: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 102: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 103: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 303
	i32 690569205, ; 104: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 105: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 300
	i32 693804605, ; 106: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 107: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 108: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 295
	i32 700358131, ; 109: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 110: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 318
	i32 709557578, ; 111: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 306
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 299
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 114: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 115: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 211
	i32 752232764, ; 116: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 117: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 219
	i32 759454413, ; 118: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 119: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 120: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 121: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 327
	i32 789151979, ; 122: Microsoft.Extensions.Options => 0x2f0980eb => 200
	i32 790371945, ; 123: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 243
	i32 804008546, ; 124: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 179
	i32 804715423, ; 125: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 257
	i32 823281589, ; 127: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 128: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 129: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 130: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 131: Xamarin.AndroidX.Print => 0x3246f6cd => 270
	i32 873119928, ; 132: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 133: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 134: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 135: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 136: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 137: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 330
	i32 928116545, ; 138: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 294
	i32 952186615, ; 139: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 140: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 299
	i32 966729478, ; 141: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 292
	i32 967690846, ; 142: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 254
	i32 975236339, ; 143: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 144: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 145: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 146: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 148: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 149: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 196
	i32 1001831731, ; 150: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 151: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 274
	i32 1019214401, ; 152: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 153: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 191
	i32 1029334545, ; 154: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 305
	i32 1031528504, ; 155: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 293
	i32 1035644815, ; 156: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 227
	i32 1036536393, ; 157: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 158: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 261
	i32 1067306892, ; 160: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 161: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 162: Xamarin.Kotlin.StdLib => 0x409e66d8 => 296
	i32 1098259244, ; 163: System => 0x41761b2c => 164
	i32 1106973742, ; 164: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 188
	i32 1118262833, ; 165: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 318
	i32 1121599056, ; 166: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 260
	i32 1127624469, ; 167: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 199
	i32 1149092582, ; 168: Xamarin.AndroidX.Window => 0x447dc2e6 => 287
	i32 1157931901, ; 169: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 182
	i32 1168523401, ; 170: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 324
	i32 1170634674, ; 171: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 172: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 192
	i32 1175144683, ; 173: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 283
	i32 1178241025, ; 174: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 268
	i32 1202000627, ; 175: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 182
	i32 1203215381, ; 176: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 322
	i32 1204270330, ; 177: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 229
	i32 1204575371, ; 178: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 184
	i32 1208641965, ; 179: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 180: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 181: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 320
	i32 1243150071, ; 182: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 288
	i32 1253011324, ; 183: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 184: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 304
	i32 1264511973, ; 185: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 278
	i32 1267360935, ; 186: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 282
	i32 1273260888, ; 187: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 234
	i32 1275534314, ; 188: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 300
	i32 1278448581, ; 189: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 226
	i32 1292207520, ; 190: SQLitePCLRaw.core.dll => 0x4d0585a0 => 212
	i32 1293217323, ; 191: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 245
	i32 1309188875, ; 192: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 193: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 287
	i32 1324164729, ; 194: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 195: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 196: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 197: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 334
	i32 1376866003, ; 198: Xamarin.AndroidX.SavedState => 0x52114ed3 => 274
	i32 1379779777, ; 199: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 200: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 201: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 238
	i32 1408764838, ; 202: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 203: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1420119549, ; 204: Hybrid => 0x54a54dfd => 0
	i32 1422545099, ; 205: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 206: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 302
	i32 1434145427, ; 207: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 208: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 292
	i32 1439761251, ; 209: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 210: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 211: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 212: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 193
	i32 1457743152, ; 213: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 214: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 215: es\Microsoft.Maui.Controls.resources => 0x57152abe => 308
	i32 1461234159, ; 216: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 217: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 218: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 219: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 228
	i32 1470490898, ; 220: Microsoft.Extensions.Primitives => 0x57a5e912 => 201
	i32 1474490617, ; 221: RCL => 0x57e2f0f9 => 336
	i32 1479771757, ; 222: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 223: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 224: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 225: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 275
	i32 1493001747, ; 226: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 312
	i32 1511525525, ; 227: MySqlConnector => 0x5a180c95 => 209
	i32 1514721132, ; 228: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 307
	i32 1521091094, ; 229: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 196
	i32 1536373174, ; 230: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 231: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 232: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 233: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 179
	i32 1550322496, ; 234: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 235: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 327
	i32 1565862583, ; 236: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 237: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 238: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 239: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 240: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 244
	i32 1592978981, ; 241: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 242: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 293
	i32 1601112923, ; 243: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 244: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 245: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 246: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 264
	i32 1622358360, ; 247: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 248: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 286
	i32 1632842087, ; 249: Microsoft.Extensions.Configuration.Json => 0x61533167 => 189
	i32 1635184631, ; 250: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 248
	i32 1636350590, ; 251: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 241
	i32 1639515021, ; 252: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 253: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 254: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 255: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 178
	i32 1657153582, ; 256: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 257: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 280
	i32 1658251792, ; 258: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 290
	i32 1670060433, ; 259: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 236
	i32 1675553242, ; 260: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 261: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 262: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 263: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 264: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 181
	i32 1691477237, ; 265: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 266: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 267: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 297
	i32 1701541528, ; 268: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 269: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 213
	i32 1720223769, ; 270: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 257
	i32 1726116996, ; 271: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 272: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 273: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 232
	i32 1736233607, ; 274: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 325
	i32 1743415430, ; 275: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 303
	i32 1744735666, ; 276: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 277: System.IO.Pipelines.dll => 0x68139a0d => 217
	i32 1746316138, ; 278: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 279: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 280: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 281: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 177
	i32 1763938596, ; 282: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 283: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 284: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 279
	i32 1770582343, ; 285: Microsoft.Extensions.Logging.dll => 0x6988f147 => 197
	i32 1776026572, ; 286: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 287: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 288: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 289: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 319
	i32 1788241197, ; 290: Xamarin.AndroidX.Fragment => 0x6a96652d => 250
	i32 1793755602, ; 291: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 311
	i32 1808609942, ; 292: Xamarin.AndroidX.Loader => 0x6bcd3296 => 264
	i32 1813058853, ; 293: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 296
	i32 1813201214, ; 294: Xamarin.Google.Android.Material => 0x6c13413e => 290
	i32 1818569960, ; 295: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 269
	i32 1818787751, ; 296: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 297: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 298: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 299: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 198
	i32 1842015223, ; 300: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 331
	i32 1847515442, ; 301: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 219
	i32 1853025655, ; 302: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 328
	i32 1858542181, ; 303: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1867746548, ; 304: Xamarin.Essentials.dll => 0x6f538cf4 => 289
	i32 1870277092, ; 305: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 306: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 310
	i32 1879696579, ; 307: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 308: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 230
	i32 1888955245, ; 309: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 310: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 311: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 312: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 313: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 314: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 315: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 316: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 276
	i32 1968388702, ; 317: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 185
	i32 1983156543, ; 318: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 297
	i32 1985761444, ; 319: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 221
	i32 2003115576, ; 320: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 307
	i32 2011961780, ; 321: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 322: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 261
	i32 2025202353, ; 323: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 302
	i32 2031763787, ; 324: Xamarin.Android.Glide => 0x791a414b => 218
	i32 2045470958, ; 325: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 326: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 187
	i32 2055257422, ; 327: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 256
	i32 2060060697, ; 328: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 329: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 306
	i32 2070888862, ; 330: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 331: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 195
	i32 2079903147, ; 332: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 333: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 334: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 214
	i32 2127167465, ; 335: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 336: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 337: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 338: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 339: Microsoft.Maui => 0x80bd55ad => 206
	i32 2169148018, ; 340: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 314
	i32 2181898931, ; 341: Microsoft.Extensions.Options.dll => 0x820d22b3 => 200
	i32 2192057212, ; 342: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 198
	i32 2193016926, ; 343: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 344: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 301
	i32 2201231467, ; 345: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 346: it\Microsoft.Maui.Controls.resources => 0x839595db => 316
	i32 2217644978, ; 347: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 283
	i32 2222056684, ; 348: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 349: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 265
	i32 2252106437, ; 350: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 351: Microsoft.EntityFrameworkCore => 0x86487ec9 => 181
	i32 2256313426, ; 352: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 353: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 354: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 186
	i32 2267999099, ; 355: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 220
	i32 2270573516, ; 356: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 310
	i32 2279755925, ; 357: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 272
	i32 2293034957, ; 358: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 359: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 360: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 361: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 320
	i32 2305521784, ; 362: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 363: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 224
	i32 2320631194, ; 364: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 365: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 366: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 367: System.Net.Primitives => 0x8c40e0db => 70
	i32 2354730003, ; 368: Syncfusion.Licensing => 0x8c5a5413 => 215
	i32 2368005991, ; 369: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 370: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 185
	i32 2378619854, ; 371: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 372: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 373: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 315
	i32 2401565422, ; 374: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 375: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 247
	i32 2411328690, ; 376: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 175
	i32 2421380589, ; 377: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 378: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 234
	i32 2427813419, ; 379: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 312
	i32 2435356389, ; 380: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 381: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 382: Microsoft.JSInterop.dll => 0x919672ca => 202
	i32 2454642406, ; 383: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 384: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 385: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 386: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 211
	i32 2465532216, ; 387: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 237
	i32 2471841756, ; 388: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 389: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 390: Microsoft.Maui.Controls => 0x93dba8a1 => 204
	i32 2483903535, ; 391: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 392: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 393: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 394: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 395: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 259
	i32 2522472828, ; 396: Xamarin.Android.Glide.dll => 0x9659e17c => 218
	i32 2537015816, ; 397: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 174
	i32 2538310050, ; 398: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 399: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 313
	i32 2562349572, ; 400: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 401: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 402: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 260
	i32 2581819634, ; 403: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 282
	i32 2585220780, ; 404: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 405: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 406: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 176
	i32 2589602615, ; 407: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 408: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 192
	i32 2593496499, ; 409: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 322
	i32 2605712449, ; 410: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 301
	i32 2615233544, ; 411: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 251
	i32 2616218305, ; 412: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 199
	i32 2617129537, ; 413: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 414: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 415: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 241
	i32 2624644809, ; 416: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 246
	i32 2626831493, ; 417: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 317
	i32 2627185994, ; 418: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 419: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 420: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 255
	i32 2663391936, ; 421: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 220
	i32 2663698177, ; 422: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 423: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 424: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 425: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 426: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 427: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 178
	i32 2693849962, ; 428: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 429: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 280
	i32 2715334215, ; 430: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 431: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 432: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 433: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 434: Xamarin.AndroidX.Activity => 0xa2e0939b => 222
	i32 2735172069, ; 435: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 436: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 174
	i32 2737747696, ; 437: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 228
	i32 2740948882, ; 438: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 439: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 440: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 323
	i32 2758225723, ; 441: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 205
	i32 2764765095, ; 442: Microsoft.Maui.dll => 0xa4caf7a7 => 206
	i32 2765824710, ; 443: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 444: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 295
	i32 2778768386, ; 445: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 285
	i32 2779977773, ; 446: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 273
	i32 2785988530, ; 447: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 329
	i32 2788224221, ; 448: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 251
	i32 2801831435, ; 449: Microsoft.Maui.Graphics => 0xa7008e0b => 208
	i32 2803228030, ; 450: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 451: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 308
	i32 2810250172, ; 452: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 238
	i32 2819470561, ; 453: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 454: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 455: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 273
	i32 2824502124, ; 456: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 457: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 321
	i32 2833784645, ; 458: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 180
	i32 2838993487, ; 459: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 262
	i32 2849599387, ; 460: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 461: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 285
	i32 2855708567, ; 462: Xamarin.AndroidX.Transition => 0xaa36a797 => 281
	i32 2861098320, ; 463: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 464: Microsoft.Maui.Essentials => 0xaa8a4878 => 207
	i32 2868557005, ; 465: Syncfusion.Licensing.dll => 0xaafab4cd => 215
	i32 2870099610, ; 466: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 223
	i32 2875164099, ; 467: Jsr305Binding.dll => 0xab5f85c3 => 291
	i32 2875220617, ; 468: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 469: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 249
	i32 2887636118, ; 470: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 471: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 177
	i32 2899753641, ; 472: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 473: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 474: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 475: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 476: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 477: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 195
	i32 2916838712, ; 478: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 286
	i32 2919462931, ; 479: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 480: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 225
	i32 2936416060, ; 481: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 482: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 483: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 484: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 485: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 486: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 487: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 245
	i32 2987532451, ; 488: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 276
	i32 2996846495, ; 489: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 258
	i32 3016983068, ; 490: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 278
	i32 3023353419, ; 491: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 492: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 253
	i32 3038032645, ; 493: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 337
	i32 3056245963, ; 494: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 275
	i32 3057625584, ; 495: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 266
	i32 3059408633, ; 496: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 497: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 498: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 183
	i32 3075834255, ; 499: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 500: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 314
	i32 3090735792, ; 501: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 502: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 503: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 504: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 505: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 506: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 507: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 508: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3147228406, ; 509: Syncfusion.Maui.Core => 0xbb96e4f6 => 216
	i32 3148237826, ; 510: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 511: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 512: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 513: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 267
	i32 3192346100, ; 514: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 515: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 516: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 183
	i32 3204380047, ; 517: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 518: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 519: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 244
	i32 3220365878, ; 520: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 521: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 522: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 523: Xamarin.AndroidX.CardView => 0xc235e84d => 232
	i32 3265493905, ; 524: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 525: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 526: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 527: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 528: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 529: SQLite-net.dll => 0xc3e9b3a2 => 210
	i32 3290767353, ; 530: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 531: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 532: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 533: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 309
	i32 3316684772, ; 534: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 535: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 242
	i32 3317144872, ; 536: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 537: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 230
	i32 3345895724, ; 538: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 271
	i32 3346324047, ; 539: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 268
	i32 3357674450, ; 540: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 326
	i32 3358260929, ; 541: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 542: SQLitePCLRaw.core => 0xc849ca45 => 212
	i32 3362336904, ; 543: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 223
	i32 3362522851, ; 544: Xamarin.AndroidX.Core => 0xc86c06e3 => 239
	i32 3366347497, ; 545: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 546: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 272
	i32 3381016424, ; 547: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 305
	i32 3395150330, ; 548: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 549: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 550: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 243
	i32 3406629867, ; 551: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 193
	i32 3421170118, ; 552: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 187
	i32 3428513518, ; 553: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 190
	i32 3429136800, ; 554: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 555: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 556: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 246
	i32 3445260447, ; 557: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 558: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 203
	i32 3463511458, ; 559: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 313
	i32 3464190856, ; 560: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 176
	i32 3471940407, ; 561: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 562: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 563: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 326
	i32 3484440000, ; 564: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 325
	i32 3485117614, ; 565: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 566: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 567: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 235
	i32 3500000672, ; 568: Microsoft.JSInterop => 0xd09dc5a0 => 202
	i32 3509114376, ; 569: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 570: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 571: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 572: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 573: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 574: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 575: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 333
	i32 3597029428, ; 576: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 221
	i32 3598340787, ; 577: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 578: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 579: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 580: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 270
	i32 3633644679, ; 581: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 225
	i32 3638274909, ; 582: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 583: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 256
	i32 3643446276, ; 584: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 330
	i32 3643854240, ; 585: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 267
	i32 3645089577, ; 586: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 587: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 186
	i32 3660523487, ; 588: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 589: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 590: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 231
	i32 3684561358, ; 591: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 235
	i32 3697841164, ; 592: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 335
	i32 3700866549, ; 593: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 594: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 240
	i32 3716563718, ; 595: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 596: Xamarin.AndroidX.Annotation => 0xdda814c6 => 224
	i32 3722202641, ; 597: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 189
	i32 3724971120, ; 598: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 266
	i32 3732100267, ; 599: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 600: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 180
	i32 3737834244, ; 601: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 602: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 603: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 604: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 214
	i32 3758424670, ; 605: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 188
	i32 3786282454, ; 606: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 233
	i32 3792276235, ; 607: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 608: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 203
	i32 3802395368, ; 609: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 610: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 611: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 612: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 613: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 191
	i32 3844307129, ; 614: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 615: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 616: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 617: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 618: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 619: SQLite-net => 0xe70c9739 => 210
	i32 3885497537, ; 620: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 621: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 281
	i32 3888767677, ; 622: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 271
	i32 3889960447, ; 623: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 334
	i32 3896106733, ; 624: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 625: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 239
	i32 3901907137, ; 626: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 627: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 628: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 284
	i32 3928044579, ; 629: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 630: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 631: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 269
	i32 3945713374, ; 632: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 633: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 634: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 227
	i32 3959773229, ; 635: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 258
	i32 3980434154, ; 636: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 329
	i32 3987592930, ; 637: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 311
	i32 4003436829, ; 638: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 639: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 226
	i32 4023392905, ; 640: System.IO.Pipelines => 0xefd01a89 => 217
	i32 4025784931, ; 641: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 642: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 205
	i32 4054681211, ; 643: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 644: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 645: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4079385022, ; 646: MySqlConnector.dll => 0xf32679be => 209
	i32 4094352644, ; 647: Microsoft.Maui.Essentials.dll => 0xf40add04 => 207
	i32 4099507663, ; 648: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 649: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 650: Xamarin.AndroidX.Emoji2 => 0xf479582c => 247
	i32 4101842092, ; 651: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 184
	i32 4102112229, ; 652: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 324
	i32 4125707920, ; 653: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 319
	i32 4126470640, ; 654: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 190
	i32 4127667938, ; 655: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 656: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 657: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 658: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 331
	i32 4151237749, ; 659: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 660: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 661: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 662: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 663: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 664: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 263
	i32 4185676441, ; 665: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 666: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 667: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 668: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 240
	i32 4258378803, ; 669: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 262
	i32 4260525087, ; 670: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 671: Microsoft.Maui.Controls.dll => 0xfea12dee => 204
	i32 4274976490, ; 672: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 673: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 263
	i32 4294648842, ; 674: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 194
	i32 4294763496 ; 675: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 249
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [676 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 259, ; 3
	i32 0, ; 4
	i32 294, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 30, ; 9
	i32 335, ; 10
	i32 124, ; 11
	i32 208, ; 12
	i32 102, ; 13
	i32 277, ; 14
	i32 107, ; 15
	i32 277, ; 16
	i32 139, ; 17
	i32 298, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 233, ; 22
	i32 216, ; 23
	i32 132, ; 24
	i32 279, ; 25
	i32 151, ; 26
	i32 332, ; 27
	i32 333, ; 28
	i32 18, ; 29
	i32 231, ; 30
	i32 26, ; 31
	i32 253, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 175, ; 37
	i32 236, ; 38
	i32 147, ; 39
	i32 255, ; 40
	i32 252, ; 41
	i32 304, ; 42
	i32 336, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 332, ; 46
	i32 222, ; 47
	i32 83, ; 48
	i32 317, ; 49
	i32 254, ; 50
	i32 213, ; 51
	i32 316, ; 52
	i32 131, ; 53
	i32 55, ; 54
	i32 149, ; 55
	i32 74, ; 56
	i32 145, ; 57
	i32 62, ; 58
	i32 146, ; 59
	i32 337, ; 60
	i32 165, ; 61
	i32 328, ; 62
	i32 237, ; 63
	i32 289, ; 64
	i32 12, ; 65
	i32 250, ; 66
	i32 125, ; 67
	i32 152, ; 68
	i32 113, ; 69
	i32 166, ; 70
	i32 164, ; 71
	i32 252, ; 72
	i32 265, ; 73
	i32 84, ; 74
	i32 315, ; 75
	i32 309, ; 76
	i32 201, ; 77
	i32 150, ; 78
	i32 298, ; 79
	i32 60, ; 80
	i32 197, ; 81
	i32 51, ; 82
	i32 103, ; 83
	i32 114, ; 84
	i32 40, ; 85
	i32 291, ; 86
	i32 288, ; 87
	i32 194, ; 88
	i32 120, ; 89
	i32 323, ; 90
	i32 52, ; 91
	i32 44, ; 92
	i32 119, ; 93
	i32 242, ; 94
	i32 321, ; 95
	i32 248, ; 96
	i32 81, ; 97
	i32 136, ; 98
	i32 284, ; 99
	i32 229, ; 100
	i32 8, ; 101
	i32 73, ; 102
	i32 303, ; 103
	i32 155, ; 104
	i32 300, ; 105
	i32 154, ; 106
	i32 92, ; 107
	i32 295, ; 108
	i32 45, ; 109
	i32 318, ; 110
	i32 306, ; 111
	i32 299, ; 112
	i32 109, ; 113
	i32 129, ; 114
	i32 211, ; 115
	i32 25, ; 116
	i32 219, ; 117
	i32 72, ; 118
	i32 55, ; 119
	i32 46, ; 120
	i32 327, ; 121
	i32 200, ; 122
	i32 243, ; 123
	i32 179, ; 124
	i32 22, ; 125
	i32 257, ; 126
	i32 86, ; 127
	i32 43, ; 128
	i32 160, ; 129
	i32 71, ; 130
	i32 270, ; 131
	i32 3, ; 132
	i32 42, ; 133
	i32 63, ; 134
	i32 16, ; 135
	i32 53, ; 136
	i32 330, ; 137
	i32 294, ; 138
	i32 105, ; 139
	i32 299, ; 140
	i32 292, ; 141
	i32 254, ; 142
	i32 34, ; 143
	i32 158, ; 144
	i32 85, ; 145
	i32 32, ; 146
	i32 12, ; 147
	i32 51, ; 148
	i32 196, ; 149
	i32 56, ; 150
	i32 274, ; 151
	i32 36, ; 152
	i32 191, ; 153
	i32 305, ; 154
	i32 293, ; 155
	i32 227, ; 156
	i32 35, ; 157
	i32 58, ; 158
	i32 261, ; 159
	i32 173, ; 160
	i32 17, ; 161
	i32 296, ; 162
	i32 164, ; 163
	i32 188, ; 164
	i32 318, ; 165
	i32 260, ; 166
	i32 199, ; 167
	i32 287, ; 168
	i32 182, ; 169
	i32 324, ; 170
	i32 153, ; 171
	i32 192, ; 172
	i32 283, ; 173
	i32 268, ; 174
	i32 182, ; 175
	i32 322, ; 176
	i32 229, ; 177
	i32 184, ; 178
	i32 29, ; 179
	i32 52, ; 180
	i32 320, ; 181
	i32 288, ; 182
	i32 5, ; 183
	i32 304, ; 184
	i32 278, ; 185
	i32 282, ; 186
	i32 234, ; 187
	i32 300, ; 188
	i32 226, ; 189
	i32 212, ; 190
	i32 245, ; 191
	i32 85, ; 192
	i32 287, ; 193
	i32 61, ; 194
	i32 112, ; 195
	i32 57, ; 196
	i32 334, ; 197
	i32 274, ; 198
	i32 99, ; 199
	i32 19, ; 200
	i32 238, ; 201
	i32 111, ; 202
	i32 101, ; 203
	i32 0, ; 204
	i32 102, ; 205
	i32 302, ; 206
	i32 104, ; 207
	i32 292, ; 208
	i32 71, ; 209
	i32 38, ; 210
	i32 32, ; 211
	i32 193, ; 212
	i32 103, ; 213
	i32 73, ; 214
	i32 308, ; 215
	i32 9, ; 216
	i32 123, ; 217
	i32 46, ; 218
	i32 228, ; 219
	i32 201, ; 220
	i32 336, ; 221
	i32 9, ; 222
	i32 43, ; 223
	i32 4, ; 224
	i32 275, ; 225
	i32 312, ; 226
	i32 209, ; 227
	i32 307, ; 228
	i32 196, ; 229
	i32 31, ; 230
	i32 138, ; 231
	i32 92, ; 232
	i32 179, ; 233
	i32 93, ; 234
	i32 327, ; 235
	i32 49, ; 236
	i32 141, ; 237
	i32 112, ; 238
	i32 140, ; 239
	i32 244, ; 240
	i32 115, ; 241
	i32 293, ; 242
	i32 157, ; 243
	i32 76, ; 244
	i32 79, ; 245
	i32 264, ; 246
	i32 37, ; 247
	i32 286, ; 248
	i32 189, ; 249
	i32 248, ; 250
	i32 241, ; 251
	i32 64, ; 252
	i32 138, ; 253
	i32 15, ; 254
	i32 178, ; 255
	i32 116, ; 256
	i32 280, ; 257
	i32 290, ; 258
	i32 236, ; 259
	i32 48, ; 260
	i32 70, ; 261
	i32 80, ; 262
	i32 126, ; 263
	i32 181, ; 264
	i32 94, ; 265
	i32 121, ; 266
	i32 297, ; 267
	i32 26, ; 268
	i32 213, ; 269
	i32 257, ; 270
	i32 97, ; 271
	i32 28, ; 272
	i32 232, ; 273
	i32 325, ; 274
	i32 303, ; 275
	i32 149, ; 276
	i32 217, ; 277
	i32 169, ; 278
	i32 4, ; 279
	i32 98, ; 280
	i32 177, ; 281
	i32 33, ; 282
	i32 93, ; 283
	i32 279, ; 284
	i32 197, ; 285
	i32 21, ; 286
	i32 41, ; 287
	i32 170, ; 288
	i32 319, ; 289
	i32 250, ; 290
	i32 311, ; 291
	i32 264, ; 292
	i32 296, ; 293
	i32 290, ; 294
	i32 269, ; 295
	i32 2, ; 296
	i32 134, ; 297
	i32 111, ; 298
	i32 198, ; 299
	i32 331, ; 300
	i32 219, ; 301
	i32 328, ; 302
	i32 58, ; 303
	i32 289, ; 304
	i32 95, ; 305
	i32 310, ; 306
	i32 39, ; 307
	i32 230, ; 308
	i32 25, ; 309
	i32 94, ; 310
	i32 89, ; 311
	i32 99, ; 312
	i32 10, ; 313
	i32 87, ; 314
	i32 100, ; 315
	i32 276, ; 316
	i32 185, ; 317
	i32 297, ; 318
	i32 221, ; 319
	i32 307, ; 320
	i32 7, ; 321
	i32 261, ; 322
	i32 302, ; 323
	i32 218, ; 324
	i32 88, ; 325
	i32 187, ; 326
	i32 256, ; 327
	i32 154, ; 328
	i32 306, ; 329
	i32 33, ; 330
	i32 195, ; 331
	i32 116, ; 332
	i32 82, ; 333
	i32 214, ; 334
	i32 20, ; 335
	i32 11, ; 336
	i32 162, ; 337
	i32 3, ; 338
	i32 206, ; 339
	i32 314, ; 340
	i32 200, ; 341
	i32 198, ; 342
	i32 84, ; 343
	i32 301, ; 344
	i32 64, ; 345
	i32 316, ; 346
	i32 283, ; 347
	i32 143, ; 348
	i32 265, ; 349
	i32 157, ; 350
	i32 181, ; 351
	i32 41, ; 352
	i32 117, ; 353
	i32 186, ; 354
	i32 220, ; 355
	i32 310, ; 356
	i32 272, ; 357
	i32 131, ; 358
	i32 75, ; 359
	i32 66, ; 360
	i32 320, ; 361
	i32 172, ; 362
	i32 224, ; 363
	i32 143, ; 364
	i32 106, ; 365
	i32 151, ; 366
	i32 70, ; 367
	i32 215, ; 368
	i32 156, ; 369
	i32 185, ; 370
	i32 121, ; 371
	i32 127, ; 372
	i32 315, ; 373
	i32 152, ; 374
	i32 247, ; 375
	i32 175, ; 376
	i32 141, ; 377
	i32 234, ; 378
	i32 312, ; 379
	i32 20, ; 380
	i32 14, ; 381
	i32 202, ; 382
	i32 135, ; 383
	i32 75, ; 384
	i32 59, ; 385
	i32 211, ; 386
	i32 237, ; 387
	i32 167, ; 388
	i32 168, ; 389
	i32 204, ; 390
	i32 15, ; 391
	i32 74, ; 392
	i32 6, ; 393
	i32 23, ; 394
	i32 259, ; 395
	i32 218, ; 396
	i32 174, ; 397
	i32 91, ; 398
	i32 313, ; 399
	i32 1, ; 400
	i32 136, ; 401
	i32 260, ; 402
	i32 282, ; 403
	i32 134, ; 404
	i32 69, ; 405
	i32 176, ; 406
	i32 146, ; 407
	i32 192, ; 408
	i32 322, ; 409
	i32 301, ; 410
	i32 251, ; 411
	i32 199, ; 412
	i32 88, ; 413
	i32 96, ; 414
	i32 241, ; 415
	i32 246, ; 416
	i32 317, ; 417
	i32 31, ; 418
	i32 45, ; 419
	i32 255, ; 420
	i32 220, ; 421
	i32 109, ; 422
	i32 158, ; 423
	i32 35, ; 424
	i32 22, ; 425
	i32 114, ; 426
	i32 178, ; 427
	i32 57, ; 428
	i32 280, ; 429
	i32 144, ; 430
	i32 118, ; 431
	i32 120, ; 432
	i32 110, ; 433
	i32 222, ; 434
	i32 139, ; 435
	i32 174, ; 436
	i32 228, ; 437
	i32 54, ; 438
	i32 105, ; 439
	i32 323, ; 440
	i32 205, ; 441
	i32 206, ; 442
	i32 133, ; 443
	i32 295, ; 444
	i32 285, ; 445
	i32 273, ; 446
	i32 329, ; 447
	i32 251, ; 448
	i32 208, ; 449
	i32 159, ; 450
	i32 308, ; 451
	i32 238, ; 452
	i32 163, ; 453
	i32 132, ; 454
	i32 273, ; 455
	i32 161, ; 456
	i32 321, ; 457
	i32 180, ; 458
	i32 262, ; 459
	i32 140, ; 460
	i32 285, ; 461
	i32 281, ; 462
	i32 169, ; 463
	i32 207, ; 464
	i32 215, ; 465
	i32 223, ; 466
	i32 291, ; 467
	i32 40, ; 468
	i32 249, ; 469
	i32 81, ; 470
	i32 177, ; 471
	i32 56, ; 472
	i32 37, ; 473
	i32 97, ; 474
	i32 166, ; 475
	i32 172, ; 476
	i32 195, ; 477
	i32 286, ; 478
	i32 82, ; 479
	i32 225, ; 480
	i32 98, ; 481
	i32 30, ; 482
	i32 159, ; 483
	i32 18, ; 484
	i32 127, ; 485
	i32 119, ; 486
	i32 245, ; 487
	i32 276, ; 488
	i32 258, ; 489
	i32 278, ; 490
	i32 165, ; 491
	i32 253, ; 492
	i32 337, ; 493
	i32 275, ; 494
	i32 266, ; 495
	i32 170, ; 496
	i32 16, ; 497
	i32 183, ; 498
	i32 144, ; 499
	i32 314, ; 500
	i32 125, ; 501
	i32 118, ; 502
	i32 38, ; 503
	i32 115, ; 504
	i32 47, ; 505
	i32 142, ; 506
	i32 117, ; 507
	i32 34, ; 508
	i32 216, ; 509
	i32 173, ; 510
	i32 95, ; 511
	i32 53, ; 512
	i32 267, ; 513
	i32 129, ; 514
	i32 153, ; 515
	i32 183, ; 516
	i32 24, ; 517
	i32 161, ; 518
	i32 244, ; 519
	i32 148, ; 520
	i32 104, ; 521
	i32 89, ; 522
	i32 232, ; 523
	i32 60, ; 524
	i32 142, ; 525
	i32 100, ; 526
	i32 5, ; 527
	i32 13, ; 528
	i32 210, ; 529
	i32 122, ; 530
	i32 135, ; 531
	i32 28, ; 532
	i32 309, ; 533
	i32 72, ; 534
	i32 242, ; 535
	i32 24, ; 536
	i32 230, ; 537
	i32 271, ; 538
	i32 268, ; 539
	i32 326, ; 540
	i32 137, ; 541
	i32 212, ; 542
	i32 223, ; 543
	i32 239, ; 544
	i32 168, ; 545
	i32 272, ; 546
	i32 305, ; 547
	i32 101, ; 548
	i32 123, ; 549
	i32 243, ; 550
	i32 193, ; 551
	i32 187, ; 552
	i32 190, ; 553
	i32 163, ; 554
	i32 167, ; 555
	i32 246, ; 556
	i32 39, ; 557
	i32 203, ; 558
	i32 313, ; 559
	i32 176, ; 560
	i32 17, ; 561
	i32 171, ; 562
	i32 326, ; 563
	i32 325, ; 564
	i32 137, ; 565
	i32 150, ; 566
	i32 235, ; 567
	i32 202, ; 568
	i32 155, ; 569
	i32 130, ; 570
	i32 19, ; 571
	i32 65, ; 572
	i32 147, ; 573
	i32 47, ; 574
	i32 333, ; 575
	i32 221, ; 576
	i32 79, ; 577
	i32 61, ; 578
	i32 106, ; 579
	i32 270, ; 580
	i32 225, ; 581
	i32 49, ; 582
	i32 256, ; 583
	i32 330, ; 584
	i32 267, ; 585
	i32 14, ; 586
	i32 186, ; 587
	i32 68, ; 588
	i32 171, ; 589
	i32 231, ; 590
	i32 235, ; 591
	i32 335, ; 592
	i32 78, ; 593
	i32 240, ; 594
	i32 108, ; 595
	i32 224, ; 596
	i32 189, ; 597
	i32 266, ; 598
	i32 67, ; 599
	i32 180, ; 600
	i32 63, ; 601
	i32 27, ; 602
	i32 160, ; 603
	i32 214, ; 604
	i32 188, ; 605
	i32 233, ; 606
	i32 10, ; 607
	i32 203, ; 608
	i32 11, ; 609
	i32 78, ; 610
	i32 126, ; 611
	i32 83, ; 612
	i32 191, ; 613
	i32 66, ; 614
	i32 107, ; 615
	i32 65, ; 616
	i32 128, ; 617
	i32 122, ; 618
	i32 210, ; 619
	i32 77, ; 620
	i32 281, ; 621
	i32 271, ; 622
	i32 334, ; 623
	i32 8, ; 624
	i32 239, ; 625
	i32 2, ; 626
	i32 44, ; 627
	i32 284, ; 628
	i32 156, ; 629
	i32 128, ; 630
	i32 269, ; 631
	i32 23, ; 632
	i32 133, ; 633
	i32 227, ; 634
	i32 258, ; 635
	i32 329, ; 636
	i32 311, ; 637
	i32 29, ; 638
	i32 226, ; 639
	i32 217, ; 640
	i32 62, ; 641
	i32 205, ; 642
	i32 90, ; 643
	i32 87, ; 644
	i32 148, ; 645
	i32 209, ; 646
	i32 207, ; 647
	i32 36, ; 648
	i32 86, ; 649
	i32 247, ; 650
	i32 184, ; 651
	i32 324, ; 652
	i32 319, ; 653
	i32 190, ; 654
	i32 50, ; 655
	i32 6, ; 656
	i32 90, ; 657
	i32 331, ; 658
	i32 21, ; 659
	i32 162, ; 660
	i32 96, ; 661
	i32 50, ; 662
	i32 113, ; 663
	i32 263, ; 664
	i32 130, ; 665
	i32 76, ; 666
	i32 27, ; 667
	i32 240, ; 668
	i32 262, ; 669
	i32 7, ; 670
	i32 204, ; 671
	i32 110, ; 672
	i32 263, ; 673
	i32 194, ; 674
	i32 249 ; 675
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
