; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [152 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [304 x i32] [
	i32 10166715, ; 0: System.Net.NameResolution.dll => 0x9b21bb => 118
	i32 33410221, ; 1: Hybrid.dll => 0x1fdccad => 91
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 141
	i32 67008169, ; 3: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 4: Microsoft.Maui.Graphics.dll => 0x44bb714 => 58
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 129
	i32 159306688, ; 6: System.ComponentModel.Annotations => 0x97ed3c0 => 98
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 65
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 83
	i32 195452805, ; 9: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 10: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 101
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 63
	i32 254259026, ; 13: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 35
	i32 280992041, ; 14: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 289079366, ; 15: RCL.dll => 0x113b0046 => 90
	i32 317674968, ; 16: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 60
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 124
	i32 336156722, ; 19: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 72
	i32 356389973, ; 21: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 367780167, ; 22: System.IO.Pipes => 0x15ebe147 => 113
	i32 374914964, ; 23: System.Transactions.Local => 0x1658bf94 => 143
	i32 379916513, ; 24: System.Threading.Thread.dll => 0x16a510e1 => 141
	i32 385762202, ; 25: System.Memory.dll => 0x16fe439a => 116
	i32 395744057, ; 26: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 27: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 86
	i32 442565967, ; 29: System.Collections => 0x1a61054f => 97
	i32 450948140, ; 30: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 71
	i32 459347974, ; 31: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 133
	i32 465846621, ; 32: mscorlib => 0x1bc4415d => 147
	i32 469710990, ; 33: System.dll => 0x1bff388e => 146
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 125
	i32 500358224, ; 35: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 36: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 37: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 52
	i32 539058512, ; 38: Microsoft.Extensions.Logging => 0x20216150 => 49
	i32 571435654, ; 39: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 46
	i32 592146354, ; 40: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 41: Xamarin.AndroidX.CustomView => 0x2568904f => 69
	i32 627931235, ; 42: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 43: System.Text.Encodings.Web.dll => 0x27787397 => 138
	i32 672442732, ; 44: System.Collections.Concurrent => 0x2814a96c => 93
	i32 683518922, ; 45: System.Net.Security => 0x28bdabca => 121
	i32 688181140, ; 46: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 47: System.Xml.Linq.dll => 0x29293ff5 => 144
	i32 706645707, ; 48: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 49: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 50: System.Runtime.Loader.dll => 0x2b15ed29 => 130
	i32 759454413, ; 51: System.Net.Requests => 0x2d445acd => 120
	i32 762598435, ; 52: System.IO.Pipes.dll => 0x2d745423 => 113
	i32 775507847, ; 53: System.IO.Compression => 0x2e394f87 => 111
	i32 777317022, ; 54: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 55: Microsoft.Extensions.Options => 0x2f0980eb => 51
	i32 804008546, ; 56: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 39
	i32 804715423, ; 57: System.Data.Common => 0x2ff6fb9f => 104
	i32 823281589, ; 58: System.Private.Uri.dll => 0x311247b5 => 126
	i32 830298997, ; 59: System.IO.Compression.Brotli => 0x317d5b75 => 110
	i32 904024072, ; 60: System.ComponentModel.Primitives.dll => 0x35e25008 => 99
	i32 926902833, ; 61: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 62: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 72
	i32 992768348, ; 63: System.Collections.dll => 0x3b2c715c => 97
	i32 999186168, ; 64: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 48
	i32 1012816738, ; 65: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 82
	i32 1019214401, ; 66: System.Drawing => 0x3cbffa41 => 108
	i32 1028951442, ; 67: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 43
	i32 1029334545, ; 68: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 69: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 61
	i32 1036536393, ; 70: System.Drawing.Primitives.dll => 0x3dc84a49 => 107
	i32 1044663988, ; 71: System.Linq.Expressions.dll => 0x3e444eb4 => 114
	i32 1052210849, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 74
	i32 1082857460, ; 73: System.ComponentModel.TypeConverter => 0x408b17f4 => 100
	i32 1084122840, ; 74: Xamarin.Kotlin.StdLib => 0x409e66d8 => 88
	i32 1098259244, ; 75: System => 0x41761b2c => 146
	i32 1118262833, ; 76: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 77: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 78: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 44
	i32 1178241025, ; 79: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 79
	i32 1203215381, ; 80: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 81: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 82: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 83: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 70
	i32 1324164729, ; 84: System.Linq => 0x4eed2679 => 115
	i32 1373134921, ; 85: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 86: Xamarin.AndroidX.SavedState => 0x52114ed3 => 82
	i32 1406073936, ; 87: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 66
	i32 1408764838, ; 88: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 132
	i32 1420119549, ; 89: Hybrid => 0x54a54dfd => 91
	i32 1430672901, ; 90: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 91: System.Formats.Asn1.dll => 0x568cd628 => 109
	i32 1454105418, ; 92: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 45
	i32 1458022317, ; 93: System.Net.Security.dll => 0x56e7a7ad => 121
	i32 1461004990, ; 94: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 95: System.Collections.Immutable.dll => 0x5718a9ef => 94
	i32 1462112819, ; 96: System.IO.Compression.dll => 0x57261233 => 111
	i32 1469204771, ; 97: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 62
	i32 1470490898, ; 98: Microsoft.Extensions.Primitives => 0x57a5e912 => 52
	i32 1474490617, ; 99: RCL => 0x57e2f0f9 => 90
	i32 1479771757, ; 100: System.Collections.Immutable => 0x5833866d => 94
	i32 1480492111, ; 101: System.IO.Compression.Brotli.dll => 0x583e844f => 110
	i32 1487239319, ; 102: Microsoft.Win32.Primitives => 0x58a57897 => 92
	i32 1493001747, ; 103: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1511525525, ; 104: MySqlConnector => 0x5a180c95 => 59
	i32 1514721132, ; 105: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1521091094, ; 106: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 48
	i32 1543031311, ; 107: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 140
	i32 1546581739, ; 108: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 39
	i32 1551623176, ; 109: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 110: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 76
	i32 1624863272, ; 111: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 85
	i32 1636350590, ; 112: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 68
	i32 1639515021, ; 113: System.Net.Http.dll => 0x61b9038d => 117
	i32 1639986890, ; 114: System.Text.RegularExpressions => 0x61c036ca => 140
	i32 1654881142, ; 115: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 38
	i32 1657153582, ; 116: System.Runtime => 0x62c6282e => 134
	i32 1658251792, ; 117: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 87
	i32 1677501392, ; 118: System.Net.Primitives.dll => 0x63fca3d0 => 119
	i32 1679769178, ; 119: System.Security.Cryptography => 0x641f3e5a => 136
	i32 1729485958, ; 120: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 64
	i32 1736233607, ; 121: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 122: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1744735666, ; 123: System.Transactions.Local.dll => 0x67fe8db2 => 143
	i32 1750313021, ; 124: Microsoft.Win32.Primitives.dll => 0x6853a83d => 92
	i32 1760259689, ; 125: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 37
	i32 1763938596, ; 126: System.Diagnostics.TraceSource.dll => 0x69239124 => 106
	i32 1766324549, ; 127: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 83
	i32 1770582343, ; 128: Microsoft.Extensions.Logging.dll => 0x6988f147 => 49
	i32 1776026572, ; 129: System.Core.dll => 0x69dc03cc => 103
	i32 1780572499, ; 130: Mono.Android.Runtime.dll => 0x6a216153 => 150
	i32 1782862114, ; 131: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 132: Xamarin.AndroidX.Fragment => 0x6a96652d => 71
	i32 1793755602, ; 133: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 134: Xamarin.AndroidX.Loader => 0x6bcd3296 => 76
	i32 1813058853, ; 135: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 88
	i32 1813201214, ; 136: Xamarin.Google.Android.Material => 0x6c13413e => 87
	i32 1818569960, ; 137: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 80
	i32 1824175904, ; 138: System.Text.Encoding.Extensions => 0x6cbab720 => 137
	i32 1824722060, ; 139: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 132
	i32 1828688058, ; 140: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 50
	i32 1842015223, ; 141: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 142: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 143: System.Linq.Expressions => 0x6ec71a65 => 114
	i32 1867746548, ; 144: Xamarin.Essentials.dll => 0x6f538cf4 => 86
	i32 1875935024, ; 145: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 146: System.Collections.NonGeneric.dll => 0x71dc7c8b => 95
	i32 1939592360, ; 147: System.Private.Xml.Linq => 0x739bd4a8 => 127
	i32 1968388702, ; 148: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 40
	i32 2003115576, ; 149: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 150: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 74
	i32 2025202353, ; 151: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 152: System.Private.Xml => 0x79eb68ee => 128
	i32 2055257422, ; 153: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 73
	i32 2066184531, ; 154: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 155: System.Diagnostics.TraceSource => 0x7b6f419e => 106
	i32 2072397586, ; 156: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 47
	i32 2079903147, ; 157: System.Runtime.dll => 0x7bf8cdab => 134
	i32 2090596640, ; 158: System.Numerics.Vectors => 0x7c9bf920 => 123
	i32 2127167465, ; 159: System.Console => 0x7ec9ffe9 => 102
	i32 2142473426, ; 160: System.Collections.Specialized => 0x7fb38cd2 => 96
	i32 2159891885, ; 161: Microsoft.Maui => 0x80bd55ad => 56
	i32 2169148018, ; 162: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 163: Microsoft.Extensions.Options.dll => 0x820d22b3 => 51
	i32 2192057212, ; 164: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 50
	i32 2193016926, ; 165: System.ObjectModel.dll => 0x82b6c85e => 125
	i32 2201107256, ; 166: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 89
	i32 2201231467, ; 167: System.Net.Http => 0x8334206b => 117
	i32 2207618523, ; 168: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 169: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 41
	i32 2270573516, ; 170: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 171: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 81
	i32 2295906218, ; 172: System.Net.Sockets => 0x88d8bfaa => 122
	i32 2303942373, ; 173: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 174: System.Private.CoreLib.dll => 0x896b7878 => 148
	i32 2353062107, ; 175: System.Net.Primitives => 0x8c40e0db => 119
	i32 2368005991, ; 176: System.Xml.ReaderWriter.dll => 0x8d24e767 => 145
	i32 2371007202, ; 177: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 40
	i32 2395872292, ; 178: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2411328690, ; 179: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 35
	i32 2427813419, ; 180: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 181: System.Console.dll => 0x912896e5 => 102
	i32 2442556106, ; 182: Microsoft.JSInterop.dll => 0x919672ca => 53
	i32 2458678730, ; 183: System.Net.Sockets.dll => 0x928c75ca => 122
	i32 2475788418, ; 184: Java.Interop.dll => 0x93918882 => 149
	i32 2480646305, ; 185: Microsoft.Maui.Controls => 0x93dba8a1 => 54
	i32 2550873716, ; 186: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2570120770, ; 187: System.Text.Encodings.Web => 0x9930ee42 => 138
	i32 2585220780, ; 188: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 137
	i32 2585813321, ; 189: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 36
	i32 2592341985, ; 190: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 44
	i32 2593496499, ; 191: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 192: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 89
	i32 2617129537, ; 193: System.Private.Xml.dll => 0x9bfe3a41 => 128
	i32 2620871830, ; 194: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 68
	i32 2626831493, ; 195: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 196: System.Runtime.Loader => 0x9ec4cf01 => 130
	i32 2665622720, ; 197: System.Drawing.Primitives => 0x9ee22cc0 => 107
	i32 2676780864, ; 198: System.Data.Common.dll => 0x9f8c6f40 => 104
	i32 2692077919, ; 199: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 38
	i32 2717744543, ; 200: System.Security.Claims => 0xa1fd7d9f => 135
	i32 2724373263, ; 201: System.Runtime.Numerics.dll => 0xa262a30f => 131
	i32 2732626843, ; 202: Xamarin.AndroidX.Activity => 0xa2e0939b => 60
	i32 2737747696, ; 203: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 62
	i32 2752995522, ; 204: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 205: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 55
	i32 2764765095, ; 206: Microsoft.Maui.dll => 0xa4caf7a7 => 56
	i32 2778768386, ; 207: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 84
	i32 2785988530, ; 208: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 209: Microsoft.Maui.Graphics => 0xa7008e0b => 58
	i32 2806116107, ; 210: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 211: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 66
	i32 2831556043, ; 212: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 213: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 84
	i32 2861189240, ; 214: Microsoft.Maui.Essentials => 0xaa8a4878 => 57
	i32 2892341533, ; 215: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 37
	i32 2905242038, ; 216: mscorlib.dll => 0xad2a79b6 => 147
	i32 2909740682, ; 217: System.Private.CoreLib => 0xad6f1e8a => 148
	i32 2911054922, ; 218: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 47
	i32 2916838712, ; 219: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 85
	i32 2919462931, ; 220: System.Numerics.Vectors.dll => 0xae037813 => 123
	i32 2959614098, ; 221: System.ComponentModel.dll => 0xb0682092 => 101
	i32 2978675010, ; 222: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 70
	i32 3038032645, ; 223: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 224: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 77
	i32 3059408633, ; 225: Mono.Android.Runtime => 0xb65adef9 => 150
	i32 3059793426, ; 226: System.ComponentModel.Primitives => 0xb660be12 => 99
	i32 3077302341, ; 227: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3099732863, ; 228: System.Security.Claims.dll => 0xb8c22b7f => 135
	i32 3103600923, ; 229: System.Formats.Asn1 => 0xb8fd311b => 109
	i32 3178803400, ; 230: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 78
	i32 3220365878, ; 231: System.Threading => 0xbff2e236 => 142
	i32 3258312781, ; 232: Xamarin.AndroidX.CardView => 0xc235e84d => 64
	i32 3280506390, ; 233: System.ComponentModel.Annotations.dll => 0xc3888e16 => 98
	i32 3305363605, ; 234: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 235: System.Net.Requests.dll => 0xc5b097e4 => 120
	i32 3317135071, ; 236: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 69
	i32 3346324047, ; 237: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 79
	i32 3357674450, ; 238: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 239: System.Text.Json => 0xc82afec1 => 139
	i32 3362522851, ; 240: Xamarin.AndroidX.Core => 0xc86c06e3 => 67
	i32 3366347497, ; 241: Java.Interop => 0xc8a662e9 => 149
	i32 3374999561, ; 242: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 81
	i32 3381016424, ; 243: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3406629867, ; 244: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 45
	i32 3428513518, ; 245: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 42
	i32 3463511458, ; 246: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3464190856, ; 247: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 36
	i32 3471940407, ; 248: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 100
	i32 3476120550, ; 249: Mono.Android => 0xcf3163e6 => 151
	i32 3479583265, ; 250: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 251: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 252: System.Text.Json.dll => 0xcfbaacae => 139
	i32 3500000672, ; 253: Microsoft.JSInterop => 0xd09dc5a0 => 53
	i32 3509114376, ; 254: System.Xml.Linq => 0xd128d608 => 144
	i32 3580758918, ; 255: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 256: System.Linq.dll => 0xd715a361 => 115
	i32 3641597786, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 73
	i32 3643446276, ; 258: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 259: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 78
	i32 3657292374, ; 260: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 41
	i32 3672681054, ; 261: Mono.Android.dll => 0xdae8aa5e => 151
	i32 3682565725, ; 262: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 63
	i32 3697841164, ; 263: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 264: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 77
	i32 3732100267, ; 265: System.Net.NameResolution => 0xde7354ab => 118
	i32 3748608112, ; 266: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 105
	i32 3786282454, ; 267: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 65
	i32 3792276235, ; 268: System.Collections.NonGeneric => 0xe2098b0b => 95
	i32 3802395368, ; 269: System.Collections.Specialized.dll => 0xe2a3f2e8 => 96
	i32 3823082795, ; 270: System.Security.Cryptography.dll => 0xe3df9d2b => 136
	i32 3829621856, ; 271: System.Numerics.dll => 0xe4436460 => 124
	i32 3841636137, ; 272: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 43
	i32 3849253459, ; 273: System.Runtime.InteropServices.dll => 0xe56ef253 => 129
	i32 3889960447, ; 274: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 275: System.Collections.Concurrent.dll => 0xe839deed => 93
	i32 3896760992, ; 276: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 67
	i32 3928044579, ; 277: System.Xml.ReaderWriter => 0xea213423 => 145
	i32 3931092270, ; 278: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 80
	i32 3955647286, ; 279: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 61
	i32 3980434154, ; 280: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 281: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 282: System.Memory => 0xeff49a63 => 116
	i32 4046471985, ; 283: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 55
	i32 4068434129, ; 284: System.Private.Xml.Linq.dll => 0xf27f60d1 => 127
	i32 4073602200, ; 285: System.Threading.dll => 0xf2ce3c98 => 142
	i32 4079385022, ; 286: MySqlConnector.dll => 0xf32679be => 59
	i32 4094352644, ; 287: Microsoft.Maui.Essentials.dll => 0xf40add04 => 57
	i32 4099507663, ; 288: System.Drawing.dll => 0xf45985cf => 108
	i32 4100113165, ; 289: System.Private.Uri => 0xf462c30d => 126
	i32 4102112229, ; 290: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 291: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 292: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 42
	i32 4127667938, ; 293: System.IO.FileSystem.Watcher => 0xf60736e2 => 112
	i32 4150914736, ; 294: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4151237749, ; 295: System.Core => 0xf76edc75 => 103
	i32 4164802419, ; 296: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 112
	i32 4181436372, ; 297: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 133
	i32 4182413190, ; 298: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 75
	i32 4213026141, ; 299: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 105
	i32 4271975918, ; 300: Microsoft.Maui.Controls.dll => 0xfea12dee => 54
	i32 4274976490, ; 301: System.Runtime.Numerics => 0xfecef6ea => 131
	i32 4292120959, ; 302: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 75
	i32 4294648842 ; 303: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 46
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [304 x i32] [
	i32 118, ; 0
	i32 91, ; 1
	i32 141, ; 2
	i32 33, ; 3
	i32 58, ; 4
	i32 129, ; 5
	i32 98, ; 6
	i32 65, ; 7
	i32 83, ; 8
	i32 30, ; 9
	i32 31, ; 10
	i32 101, ; 11
	i32 63, ; 12
	i32 35, ; 13
	i32 2, ; 14
	i32 90, ; 15
	i32 30, ; 16
	i32 60, ; 17
	i32 124, ; 18
	i32 15, ; 19
	i32 72, ; 20
	i32 14, ; 21
	i32 113, ; 22
	i32 143, ; 23
	i32 141, ; 24
	i32 116, ; 25
	i32 34, ; 26
	i32 26, ; 27
	i32 86, ; 28
	i32 97, ; 29
	i32 71, ; 30
	i32 133, ; 31
	i32 147, ; 32
	i32 146, ; 33
	i32 125, ; 34
	i32 13, ; 35
	i32 7, ; 36
	i32 52, ; 37
	i32 49, ; 38
	i32 46, ; 39
	i32 21, ; 40
	i32 69, ; 41
	i32 19, ; 42
	i32 138, ; 43
	i32 93, ; 44
	i32 121, ; 45
	i32 1, ; 46
	i32 144, ; 47
	i32 16, ; 48
	i32 4, ; 49
	i32 130, ; 50
	i32 120, ; 51
	i32 113, ; 52
	i32 111, ; 53
	i32 25, ; 54
	i32 51, ; 55
	i32 39, ; 56
	i32 104, ; 57
	i32 126, ; 58
	i32 110, ; 59
	i32 99, ; 60
	i32 28, ; 61
	i32 72, ; 62
	i32 97, ; 63
	i32 48, ; 64
	i32 82, ; 65
	i32 108, ; 66
	i32 43, ; 67
	i32 3, ; 68
	i32 61, ; 69
	i32 107, ; 70
	i32 114, ; 71
	i32 74, ; 72
	i32 100, ; 73
	i32 88, ; 74
	i32 146, ; 75
	i32 16, ; 76
	i32 22, ; 77
	i32 44, ; 78
	i32 79, ; 79
	i32 20, ; 80
	i32 18, ; 81
	i32 2, ; 82
	i32 70, ; 83
	i32 115, ; 84
	i32 32, ; 85
	i32 82, ; 86
	i32 66, ; 87
	i32 132, ; 88
	i32 91, ; 89
	i32 0, ; 90
	i32 109, ; 91
	i32 45, ; 92
	i32 121, ; 93
	i32 6, ; 94
	i32 94, ; 95
	i32 111, ; 96
	i32 62, ; 97
	i32 52, ; 98
	i32 90, ; 99
	i32 94, ; 100
	i32 110, ; 101
	i32 92, ; 102
	i32 10, ; 103
	i32 59, ; 104
	i32 5, ; 105
	i32 48, ; 106
	i32 140, ; 107
	i32 39, ; 108
	i32 25, ; 109
	i32 76, ; 110
	i32 85, ; 111
	i32 68, ; 112
	i32 117, ; 113
	i32 140, ; 114
	i32 38, ; 115
	i32 134, ; 116
	i32 87, ; 117
	i32 119, ; 118
	i32 136, ; 119
	i32 64, ; 120
	i32 23, ; 121
	i32 1, ; 122
	i32 143, ; 123
	i32 92, ; 124
	i32 37, ; 125
	i32 106, ; 126
	i32 83, ; 127
	i32 49, ; 128
	i32 103, ; 129
	i32 150, ; 130
	i32 17, ; 131
	i32 71, ; 132
	i32 9, ; 133
	i32 76, ; 134
	i32 88, ; 135
	i32 87, ; 136
	i32 80, ; 137
	i32 137, ; 138
	i32 132, ; 139
	i32 50, ; 140
	i32 29, ; 141
	i32 26, ; 142
	i32 114, ; 143
	i32 86, ; 144
	i32 8, ; 145
	i32 95, ; 146
	i32 127, ; 147
	i32 40, ; 148
	i32 5, ; 149
	i32 74, ; 150
	i32 0, ; 151
	i32 128, ; 152
	i32 73, ; 153
	i32 4, ; 154
	i32 106, ; 155
	i32 47, ; 156
	i32 134, ; 157
	i32 123, ; 158
	i32 102, ; 159
	i32 96, ; 160
	i32 56, ; 161
	i32 12, ; 162
	i32 51, ; 163
	i32 50, ; 164
	i32 125, ; 165
	i32 89, ; 166
	i32 117, ; 167
	i32 14, ; 168
	i32 41, ; 169
	i32 8, ; 170
	i32 81, ; 171
	i32 122, ; 172
	i32 18, ; 173
	i32 148, ; 174
	i32 119, ; 175
	i32 145, ; 176
	i32 40, ; 177
	i32 13, ; 178
	i32 35, ; 179
	i32 10, ; 180
	i32 102, ; 181
	i32 53, ; 182
	i32 122, ; 183
	i32 149, ; 184
	i32 54, ; 185
	i32 11, ; 186
	i32 138, ; 187
	i32 137, ; 188
	i32 36, ; 189
	i32 44, ; 190
	i32 20, ; 191
	i32 89, ; 192
	i32 128, ; 193
	i32 68, ; 194
	i32 15, ; 195
	i32 130, ; 196
	i32 107, ; 197
	i32 104, ; 198
	i32 38, ; 199
	i32 135, ; 200
	i32 131, ; 201
	i32 60, ; 202
	i32 62, ; 203
	i32 21, ; 204
	i32 55, ; 205
	i32 56, ; 206
	i32 84, ; 207
	i32 27, ; 208
	i32 58, ; 209
	i32 6, ; 210
	i32 66, ; 211
	i32 19, ; 212
	i32 84, ; 213
	i32 57, ; 214
	i32 37, ; 215
	i32 147, ; 216
	i32 148, ; 217
	i32 47, ; 218
	i32 85, ; 219
	i32 123, ; 220
	i32 101, ; 221
	i32 70, ; 222
	i32 34, ; 223
	i32 77, ; 224
	i32 150, ; 225
	i32 99, ; 226
	i32 12, ; 227
	i32 135, ; 228
	i32 109, ; 229
	i32 78, ; 230
	i32 142, ; 231
	i32 64, ; 232
	i32 98, ; 233
	i32 7, ; 234
	i32 120, ; 235
	i32 69, ; 236
	i32 79, ; 237
	i32 24, ; 238
	i32 139, ; 239
	i32 67, ; 240
	i32 149, ; 241
	i32 81, ; 242
	i32 3, ; 243
	i32 45, ; 244
	i32 42, ; 245
	i32 11, ; 246
	i32 36, ; 247
	i32 100, ; 248
	i32 151, ; 249
	i32 24, ; 250
	i32 23, ; 251
	i32 139, ; 252
	i32 53, ; 253
	i32 144, ; 254
	i32 31, ; 255
	i32 115, ; 256
	i32 73, ; 257
	i32 28, ; 258
	i32 78, ; 259
	i32 41, ; 260
	i32 151, ; 261
	i32 63, ; 262
	i32 33, ; 263
	i32 77, ; 264
	i32 118, ; 265
	i32 105, ; 266
	i32 65, ; 267
	i32 95, ; 268
	i32 96, ; 269
	i32 136, ; 270
	i32 124, ; 271
	i32 43, ; 272
	i32 129, ; 273
	i32 32, ; 274
	i32 93, ; 275
	i32 67, ; 276
	i32 145, ; 277
	i32 80, ; 278
	i32 61, ; 279
	i32 27, ; 280
	i32 9, ; 281
	i32 116, ; 282
	i32 55, ; 283
	i32 127, ; 284
	i32 142, ; 285
	i32 59, ; 286
	i32 57, ; 287
	i32 108, ; 288
	i32 126, ; 289
	i32 22, ; 290
	i32 17, ; 291
	i32 42, ; 292
	i32 112, ; 293
	i32 29, ; 294
	i32 103, ; 295
	i32 112, ; 296
	i32 133, ; 297
	i32 75, ; 298
	i32 105, ; 299
	i32 54, ; 300
	i32 131, ; 301
	i32 75, ; 302
	i32 46 ; 303
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}
