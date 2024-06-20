; ModuleID = 'typemaps.arm64-v8a.ll'
source_filename = "typemaps.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 37, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1131, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [37 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] c"\0Cq\F3\12\E8-\9FM\81\05~g\12h\DE\CD", ; module_uuid: 12f3710c-2de8-4d9f-8105-7e671268decd
		i32 3, ; uint32_t entry_count (0x3)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] c"\12\82\A4s\A0\DD\E9K\AB\E2\027\10%\12=", ; module_uuid: 73a48212-dda0-4be9-abe2-02371025123d
		i32 7, ; uint32_t entry_count (0x7)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] c"\14J;j\B3#\83A\8Cc\B34\C1\1B\7F\A7", ; module_uuid: 6a3b4a14-23b3-4183-8c63-b334c11b7fa7
		i32 4, ; uint32_t entry_count (0x4)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] c"\17S\FEQ3 dM\90\B2\1AV\CC\BD\B5\8B", ; module_uuid: 51fe5317-2033-4d64-90b2-1a56ccbdb58b
		i32 9, ; uint32_t entry_count (0x9)
		i32 8, ; uint32_t duplicate_count (0x8)
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module3_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] c"#;\D2\A7/\D1MC\9F\9EG\8F\F6\B0w\FF", ; module_uuid: a7d23b23-d12f-434d-9f9e-478ff6b077ff
		i32 5, ; uint32_t entry_count (0x5)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module4_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] c"$\E8m5\0B\DBNK\B3\C3 \96\DA\DC\19\99", ; module_uuid: 356de824-db0b-4b4e-b3c3-2096dadc1999
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module5_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] c"&\D36\925\C0`B\98\C8[\02\C5\F6\01\18", ; module_uuid: 9236d326-c035-4260-98c8-5b02c5f60118
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module6_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] c"/dN\B7\18Q\8BM\AE\F8\B1\87\17\91\D2%", ; module_uuid: b74e642f-5118-4d8b-aef8-b1871791d225
		i32 71, ; uint32_t entry_count (0x47)
		i32 24, ; uint32_t duplicate_count (0x18)
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module7_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] c"2\5C\C8\E0\97[mJ\94w\D5\FDD\BA\18R", ; module_uuid: e0c85c32-5b97-4a6d-9477-d5fd44ba1852
		i32 12, ; uint32_t entry_count (0xc)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] c"2\E4\C0\A4&&\A3B\BA.\D7\FC\AC9\C3!", ; module_uuid: a4c0e432-2626-42a3-ba2e-d7fcac39c321
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] c"3\F4\1E`\ABJ\B8J\B4\D7\EC~\D5\8BJE", ; module_uuid: 601ef433-4aab-4ab8-b4d7-ec7ed58b4a45
		i32 56, ; uint32_t entry_count (0x38)
		i32 19, ; uint32_t duplicate_count (0x13)
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module10_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] c":\83l\E4\80SNN\B6\DFWd\A9\A4\AF\AF", ; module_uuid: e46c833a-5380-4e4e-b6df-5764a9a4afaf
		i32 5, ; uint32_t entry_count (0x5)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Microsoft.AspNetCore.Components.WebView.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] c"G(9\B461wM\A3\C8]9S\B1\E1A", ; module_uuid: b4392847-3136-4d77-a3c8-5d3953b1e141
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] c"Hd'r\06i\B9G\A6,\C5\C5\16\F0\A7\A8", ; module_uuid: 72276448-6906-47b9-a62c-c5c516f0a7a8
		i32 3, ; uint32_t entry_count (0x3)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module13_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] c"S\5C\9F\13\FC\1C+K\8B<\01\84\0A\AEl\FD", ; module_uuid: 139f5c53-1cfc-4b2b-8b3c-01840aae6cfd
		i32 9, ; uint32_t entry_count (0x9)
		i32 5, ; uint32_t duplicate_count (0x5)
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module14_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] c"So\A1ig\00_J\A8}+n\ED\92*\1D", ; module_uuid: 69a16f53-0067-4a5f-a87d-2b6eed922a1d
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] c"W4\9E\D9\15\93~M\85x\EB\80\B3\F0\D8\A3", ; module_uuid: d99e3457-9315-4d7e-8578-eb80b3f0d8a3
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] c"W\B7~Tt\D7\9EK\AE,n\0A\A7\AB\C6}", ; module_uuid: 547eb757-d774-4b9e-ae2c-6e0aa7abc67d
		i32 67, ; uint32_t entry_count (0x43)
		i32 25, ; uint32_t duplicate_count (0x19)
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] c"`\B5<\B1hYIK\97\81\CB!\BAB<\FD", ; module_uuid: b13cb560-5968-4b49-9781-cb21ba423cfd
		i32 17, ; uint32_t entry_count (0x11)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] c"b\A8\FC\03$\D7\11K\82y\F8K\11G\07\AD", ; module_uuid: 03fca862-d724-4b11-8279-f84b114707ad
		i32 555, ; uint32_t entry_count (0x22b)
		i32 195, ; uint32_t duplicate_count (0xc3)
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module19_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] c"l Lx\F8[)F\B54p\DC\DBO\98!", ; module_uuid: 784c206c-5bf8-4629-b534-70dcdb4f9821
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] c"w\C4\B4\C3\84$\CDN\B0\83\83:`T\E6\86", ; module_uuid: c3b4c477-2484-4ecd-b083-833a6054e686
		i32 19, ; uint32_t entry_count (0x13)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Xamarin.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] c"x]\F8\F0mR\BEN\B3\22I'\7F,\A6k", ; module_uuid: f0f85d78-526d-4ebe-b322-49277f2ca66b
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Hybrid
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] c"\8E\A2\1E\13\19f!A\85u\80^m\88\D5\F6", ; module_uuid: 131ea28e-6619-4121-8575-805e6d88d5f6
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] c"\8F\A4BE\BAqLE\B7\BE\83y\80\84;\1F", ; module_uuid: 4542a48f-71ba-454c-b7be-837980843b1f
		i32 19, ; uint32_t entry_count (0x13)
		i32 10, ; uint32_t duplicate_count (0xa)
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module24_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] c"\92\C6\82\DE\84LgD\AD\1An@F\DE8\B2", ; module_uuid: de82c692-4c84-4467-ad1a-6e4046de38b2
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module25_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] c"\A6Q\0F\91'\96\B2I\94V\01`\BD$\FE\F8", ; module_uuid: 910f51a6-9627-49b2-9456-0160bd24fef8
		i32 66, ; uint32_t entry_count (0x42)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module26_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] c"\B10\89\D1\97\E3\E0I\AE\E3\D6\5C\CF\05\22\CF", ; module_uuid: d18930b1-e397-49e0-aee3-d65ccf0522cf
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module27_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] c"\BE\AB\1B\0E\C9m\17N\BA\8E\CB\CFR\F9\00q", ; module_uuid: 0e1babbe-6dc9-4e17-ba8e-cbcf52f90071
		i32 6, ; uint32_t entry_count (0x6)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] c"\BF\04\A2\D7]0jL\95\CE\1Bx\C5\07`\AB", ; module_uuid: d7a204bf-305d-4c6a-95ce-1b78c50760ab
		i32 41, ; uint32_t entry_count (0x29)
		i32 21, ; uint32_t duplicate_count (0x15)
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module29_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] c"\CF\A3,\1E\AE\08fD\9En\E65?X\85S", ; module_uuid: 1e2ca3cf-08ae-4466-9e6e-e6353f588553
		i32 2, ; uint32_t entry_count (0x2)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] c"\D2;-b)\F3\E5C\94X\18\EE\E1\8D\07I", ; module_uuid: 622d3bd2-f329-43e5-9458-18eee18d0749
		i32 4, ; uint32_t entry_count (0x4)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] c"\D6,s\F9m\00)C\AB\0C]\E3\FA\F7\01\EE", ; module_uuid: f9732cd6-006d-4329-ab0c-5de3faf701ee
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module32_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] c"\D6\D6\DFs\03D\BC@\A2\AB\07\D3\CE^\17D", ; module_uuid: 73dfd6d6-4403-40bc-a2ab-07d3ce5e1744
		i32 4, ; uint32_t entry_count (0x4)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] c"\E6/\D4xs\B0\DB@\A8\AB\94Mq\87\F6 ", ; module_uuid: 78d42fe6-b073-40db-a8ab-944d7187f620
		i32 10, ; uint32_t entry_count (0xa)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module34_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Xamarin.AndroidX.Browser
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 34
	%struct.TypeMapModule {
		[16 x i8] c"\F1s\B5\D8l\CD>C\80\F2q\C6\FA\8B\9Fc", ; module_uuid: d8b573f1-cd6c-433e-80f2-71c6fa8b9f63
		i32 106, ; uint32_t entry_count (0x6a)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module35_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.35_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 35
	%struct.TypeMapModule {
		[16 x i8] c"\F6\CE\C0\BDF\5CXL\86xOS\A1\C3-\C5", ; module_uuid: bdc0cef6-5c46-4c58-8678-4f53a1c32dc5
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module36_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.36_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	} ; 36
], align 8

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1131 x i64] [
	i64 40394948990796659, ; 0: 0x8f82fdf9510373 => crc64e1fb321c08285b90/EntryCellEditText
	i64 52093131593007030, ; 1: 0xb9126d5bd6bfb6 => android/graphics/drawable/Animatable
	i64 123128373651107449, ; 2: 0x1b5709a7d3eee79 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i64 128182020419974451, ; 3: 0x1c764de51b97533 => java/lang/String
	i64 146042335049966109, ; 4: 0x206d8baded2621d => java/util/concurrent/Executor
	i64 164896704060212347, ; 5: 0x249d4adbe24447b => kotlin/coroutines/Continuation
	i64 176627442730137433, ; 6: 0x27381b92d83f759 => android/content/pm/Signature
	i64 179924752871835988, ; 7: 0x27f389c0539c954 => androidx/core/app/ComponentActivity
	i64 191318127108177865, ; 8: 0x2a7b2d2ad603fc9 => android/provider/Settings$NameValueTable
	i64 195155226339815014, ; 9: 0x2b554a4f60bae66 => android/net/LinkProperties
	i64 212011099207366628, ; 10: 0x2f136f8b0b1f7e4 => com/google/android/material/badge/BadgeDrawable
	i64 276050983113093313, ; 11: 0x3d4bae8145a70c1 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i64 280409858434120304, ; 12: 0x3e43747d37bba70 => crc6452ffdc5b34af3a0f/MauiSwipeView
	i64 288436644922149331, ; 13: 0x400bb99b0ca49d3 => android/graphics/Paint$Cap
	i64 305303872570400021, ; 14: 0x43ca841291c1d15 => android/view/View$OnHoverListener
	i64 313029130739313069, ; 15: 0x4581a55fe10e9ad => android/graphics/drawable/shapes/Shape
	i64 318564728890166633, ; 16: 0x46bc4eedf778d69 => android/widget/Button
	i64 336734988557421638, ; 17: 0x4ac52b020690c46 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i64 361870449891484378, ; 18: 0x5059f41c47e22da => android/os/Bundle
	i64 363417747702605178, ; 19: 0x50b1e841ce2e57a => android/widget/TextView
	i64 374702298598502009, ; 20: 0x53335c15c7c6e79 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i64 381033654718824648, ; 21: 0x549b41714fc00c8 => crc6452ffdc5b34af3a0f/WrapperView
	i64 382408712250526578, ; 22: 0x54e96b29cb50b72 => androidx/core/util/Predicate
	i64 403762510766094389, ; 23: 0x59a73dd43d53835 => crc64338477404e88479c/FragmentContainer
	i64 412836909682626269, ; 24: 0x5bab0fb67cd8edd => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i64 416115916732990592, ; 25: 0x5c65738ba418480 => androidx/browser/customtabs/CustomTabsClient_CustomTabsCallbackImpl
	i64 439133414594709010, ; 26: 0x6181d8391ec0612 => android/widget/DatePicker
	i64 492777694992991161, ; 27: 0x6d6b2b3e74b03b9 => crc64a0e0a82d0db9a07d/SensorListener
	i64 497701358617613252, ; 28: 0x6e830bfaca1d3c4 => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i64 515916014736443504, ; 29: 0x728e6e1c84d0870 => android/webkit/ValueCallback
	i64 535364814668407723, ; 30: 0x76dff76638da3ab => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i64 582128946798849863, ; 31: 0x81423315f6aef47 => android/view/ActionProvider
	i64 591405550240679337, ; 32: 0x8351836ec4a45a9 => android/graphics/Path$FillType
	i64 619638459439082186, ; 33: 0x89965e558096aca => java/text/NumberFormat
	i64 654924058700157350, ; 34: 0x916c1f621ae11a6 => android/widget/SectionIndexer
	i64 698692053645229055, ; 35: 0x9b240b890e97bff => javax/net/ssl/HttpsURLConnection
	i64 698738878519169148, ; 36: 0x9b26b4ed4e3d07c => mono/android/content/DialogInterface_OnClickListenerImplementor
	i64 705175846315662030, ; 37: 0x9c949b22fd49ace => android/view/MotionEvent
	i64 713241699942045525, ; 38: 0x9e5f18c140a9755 => crc64e1fb321c08285b90/SwitchCellView
	i64 753213119692529150, ; 39: 0xa73f357776fddfe => android/animation/TimeInterpolator
	i64 769314120471534533, ; 40: 0xaad271dd765dbc5 => android/widget/SeekBar$OnSeekBarChangeListener
	i64 782647305593757341, ; 41: 0xadc8593ea551e9d => android/hardware/Camera
	i64 816513157356790819, ; 42: 0xb54d663faaf2423 => android/text/TextUtils$TruncateAt
	i64 844845191340040045, ; 43: 0xbb97e39b0051f6d => android/widget/TimePicker
	i64 868122344904594316, ; 44: 0xc0c30ac559e138c => android/text/TextPaint
	i64 870874870088288028, ; 45: 0xc15f8148b6d471c => java/lang/Exception
	i64 872223982470459621, ; 46: 0xc1ac3173fba70e5 => android/graphics/Shader
	i64 891089673577469184, ; 47: 0xc5dc956409a9500 => androidx/core/content/res/ResourcesCompat$FontCallback
	i64 903507330900750967, ; 48: 0xc89e721664cf277 => crc64a0e0a82d0db9a07d/BarometerListener
	i64 918764874599828123, ; 49: 0xcc01bc91ea10a9b => crc64e1fb321c08285b90/FrameRenderer
	i64 963739547087029502, ; 50: 0xd5fe403101e44fe => android/widget/RadioButton
	i64 1022018314545883268, ; 51: 0xe2ef03e00736884 => android/content/ActivityNotFoundException
	i64 1042816948562317609, ; 52: 0xe78d47d58d05129 => android/graphics/Path$Direction
	i64 1043428532231245858, ; 53: 0xe7b00b8c4269022 => android/telephony/PhoneNumberUtils
	i64 1047274886995206934, ; 54: 0xe88aaf605896316 => crc64338477404e88479c/MauiViewPager
	i64 1058288277257806020, ; 55: 0xeafcb94c3e960c4 => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i64 1071931666502492146, ; 56: 0xee0442bdd5f9ff2 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i64 1079586186822872943, ; 57: 0xefb75eac1feef6f => java/util/function/Consumer
	i64 1087315166910411745, ; 58: 0xf16eb622a96f3e1 => androidx/appcompat/widget/AppCompatEditText
	i64 1093289771861447773, ; 59: 0xf2c2541485e945d => android/text/Spanned
	i64 1129615369612962765, ; 60: 0xfad3331969a2bcd => android/text/style/LineHeightSpan
	i64 1154020126815121549, ; 61: 0x1003e730ea77708d => java/security/KeyPair
	i64 1162204341407583715, ; 62: 0x1020fab0de040de3 => crc6452ffdc5b34af3a0f/MauiTextView
	i64 1175590042387538510, ; 63: 0x105088ea3dfee24e => android/view/animation/LinearInterpolator
	i64 1205598257210265377, ; 64: 0x10bb253a36d90f21 => crc64a0e0a82d0db9a07d/MagnetometerListener
	i64 1210920456359698245, ; 65: 0x10ce0dbd4492df45 => androidx/appcompat/widget/TooltipCompat
	i64 1217044833273073796, ; 66: 0x10e3cfd3e2f75084 => java/util/HashSet
	i64 1234313237573610993, ; 67: 0x1121295993232df1 => javax/security/auth/x500/X500Principal
	i64 1248298339946314785, ; 68: 0x1152d8b9f635bc21 => kotlin/jvm/functions/Function2
	i64 1264118133047759527, ; 69: 0x118b0cbe927112a7 => android/provider/Settings
	i64 1283121375857603354, ; 70: 0x11ce9017d3b3f31a => java/net/ConnectException
	i64 1309713578889228674, ; 71: 0x122d098f9332b182 => android/animation/AnimatorListenerAdapter
	i64 1312315937130052437, ; 72: 0x1236486451b87b55 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i64 1317579852464953526, ; 73: 0x1248fbe51d6298b6 => java/io/FileInputStream
	i64 1320822650197077237, ; 74: 0x12548133cc496cf5 => android/runtime/JavaProxyThrowable
	i64 1340245152876570335, ; 75: 0x129981dd9925a6df => androidx/core/util/Consumer
	i64 1342384015859621074, ; 76: 0x12a11b2671799cd2 => crc64a0e0a82d0db9a07d/Connectivity_EssentialsNetworkCallback
	i64 1351596142494714808, ; 77: 0x12c1d587d12f8bb8 => androidx/appcompat/view/menu/MenuView
	i64 1356236609822008698, ; 78: 0x12d25202cfd2257a => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i64 1362204976567274499, ; 79: 0x12e786357b8fcc03 => androidx/navigation/NavOptions
	i64 1362770524300979611, ; 80: 0x12e9889253552d9b => java/util/Iterator
	i64 1363008265218827226, ; 81: 0x12ea60cbb24a23da => androidx/core/view/MenuItemCompat
	i64 1378526132265832386, ; 82: 0x13218236ab4c4fc2 => com/google/android/material/tabs/TabLayout
	i64 1379266653454234386, ; 83: 0x132423b6b1ae7312 => crc64338477404e88479c/ModalNavigationManager_ModalContainer
	i64 1387289802307557894, ; 84: 0x1340a4b99b105a06 => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i64 1388766292909739546, ; 85: 0x1345e395dcebce1a => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i64 1407244619530254470, ; 86: 0x138789868b2e3886 => android/widget/AdapterView$OnItemLongClickListener
	i64 1433124019402031604, ; 87: 0x13e37ab3df89c1f4 => crc640ec207abc449b2ca/ShellSearchView
	i64 1441304590135825040, ; 88: 0x14008ae36c2f9290 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i64 1441774642277557196, ; 89: 0x14023665f71ea3cc => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i64 1450903687219826498, ; 90: 0x1422a537600acf42 => crc645d80431ce5f73f11/NongreedySnapHelper
	i64 1471437350001669807, ; 91: 0x146b98794c1776af => androidx/core/content/res/ResourcesCompat
	i64 1484717914214221266, ; 92: 0x149ac7139c65c5d2 => android/text/style/SuperscriptSpan
	i64 1485931295180209339, ; 93: 0x149f16a3e1da3cbb => android/text/Layout$Alignment
	i64 1492675105327442280, ; 94: 0x14b70c198a1c6968 => crc64396a3fe5f8138e3f/CustomTabsServiceConnectionImpl
	i64 1494974867389571991, ; 95: 0x14bf37b89ee46397 => android/view/ScaleGestureDetector$OnScaleGestureListener
	i64 1500343592614924887, ; 96: 0x14d24a8c5ed89257 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i64 1541538811043856098, ; 97: 0x1564a56197bf3ee2 => crc640ec207abc449b2ca/ShellPageContainer
	i64 1550860884384862055, ; 98: 0x1585c3c1edcecf67 => java/net/ProtocolException
	i64 1553575153728360906, ; 99: 0x158f685f01da11ca => com/google/android/material/navigation/NavigationBarPresenter
	i64 1554440221627438146, ; 100: 0x15927b2552aed442 => android/graphics/drawable/Icon
	i64 1585010481244597099, ; 101: 0x15ff16a28bdaeb6b => android/graphics/drawable/GradientDrawable
	i64 1589519536433163389, ; 102: 0x160f1b98c4a46c7d => android/content/ContentValues
	i64 1603037949398414562, ; 103: 0x163f22858f5cf4e2 => android/content/DialogInterface$OnMultiChoiceClickListener
	i64 1610464427476120569, ; 104: 0x165984dd3b1df3f9 => androidx/core/app/SharedElementCallback
	i64 1613636342437143453, ; 105: 0x1664c9b43ba0639d => android/view/WindowInsetsController
	i64 1614800872838357676, ; 106: 0x1668ecd6988562ac => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i64 1620318094642314671, ; 107: 0x167c86b8e64afdaf => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i64 1633393020343953050, ; 108: 0x16aafa4c4434269a => android/text/method/KeyListener
	i64 1644779904733773429, ; 109: 0x16d36e9be35b7e75 => android/graphics/BlurMaskFilter$Blur
	i64 1687552701322874432, ; 110: 0x176b643da619ce40 => crc640ec207abc449b2ca/ShellFlyoutLayout
	i64 1739308160026767747, ; 111: 0x1823438e69557183 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i64 1747499027921055994, ; 112: 0x18405d1b749330fa => android/os/BaseBundle
	i64 1775924071686356395, ; 113: 0x18a55988b0ee3dab => androidx/browser/customtabs/CustomTabsCallback
	i64 1818439532979151601, ; 114: 0x193c651ee8bfe2f1 => androidx/appcompat/app/ActionBar$TabListener
	i64 1822438921100964747, ; 115: 0x194a9a8b0511b38b => androidx/core/view/MenuProvider
	i64 1827611961367173634, ; 116: 0x195cfb65508b9a02 => android/view/View$AccessibilityDelegate
	i64 1831728799718484971, ; 117: 0x196b9ba37012abeb => java/io/IOException
	i64 1844760744016486967, ; 118: 0x1999e81f6ab02237 => android/text/format/DateFormat
	i64 1853552035664219559, ; 119: 0x19b923c18277cda7 => android/animation/ValueAnimator
	i64 1859272559660710869, ; 120: 0x19cd768acb353bd5 => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i64 1877272793125324469, ; 121: 0x1a0d69a8bcbd86b5 => java/net/Proxy
	i64 1878806388185091404, ; 122: 0x1a12dc74a981cd4c => androidx/lifecycle/ViewModelStore
	i64 1885389416169908981, ; 123: 0x1a2a3faf4e16aaf5 => android/provider/MediaStore$Images$Media
	i64 1891509142727870308, ; 124: 0x1a3ffd8b2db2c764 => android/database/Cursor
	i64 1903059501350258092, ; 125: 0x1a6906889c6a05ac => com/google/android/material/bottomnavigation/BottomNavigationView
	i64 1910760924702700175, ; 126: 0x1a8462eff799f28f => crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment
	i64 1920667697910321371, ; 127: 0x1aa79518598310db => androidx/loader/content/Loader
	i64 1941234859008890695, ; 128: 0x1af0a6d1b4d49747 => android/util/TypedValue
	i64 1970400480939886480, ; 129: 0x1b5844cc3bae4790 => androidx/appcompat/widget/AppCompatImageView
	i64 1984480781877804166, ; 130: 0x1b8a4ac1c36a7c86 => androidx/viewpager2/adapter/FragmentViewHolder
	i64 2009769534521005831, ; 131: 0x1be422be5186d707 => android/text/style/TypefaceSpan
	i64 2011266387142458950, ; 132: 0x1be9741f7a4f3e46 => crc640ec207abc449b2ca/RecyclerViewContainer
	i64 2015282576494675565, ; 133: 0x1bf7b8d36dffc66d => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i64 2091945087796016600, ; 134: 0x1d0814f947b475d8 => android/view/MenuInflater
	i64 2103360364221246790, ; 135: 0x1d30a31b700b2d46 => androidx/fragment/app/FragmentManager
	i64 2111352555338672611, ; 136: 0x1d4d07f6709329e3 => android/view/InputEvent
	i64 2128291229747518775, ; 137: 0x1d893598e7ae1d37 => com/google/android/material/appbar/AppBarLayout$Behavior
	i64 2146917528506713388, ; 138: 0x1dcb621e08b3c52c => androidx/recyclerview/widget/RecyclerView$Adapter
	i64 2156356945290632642, ; 139: 0x1deceb3784fe9dc2 => androidx/lifecycle/Lifecycle
	i64 2157468975174833820, ; 140: 0x1df0de9a2738d69c => org/xmlpull/v1/XmlPullParserException
	i64 2164140653916027403, ; 141: 0x1e08927568a57a0b => java/io/InputStream
	i64 2173847856803601638, ; 142: 0x1e2b0f1bb485dce6 => android/app/TimePickerDialog$OnTimeSetListener
	i64 2179099327615755049, ; 143: 0x1e3db74b08d46329 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i64 2198886843581711497, ; 144: 0x1e8403ef1cf7c489 => android/util/Pair
	i64 2201816183325057292, ; 145: 0x1e8e6c272bcbe10c => android/os/CancellationSignal
	i64 2208930198539504994, ; 146: 0x1ea7b24fe9948d62 => android/view/View$MeasureSpec
	i64 2226060781910726129, ; 147: 0x1ee48e7caa3795f1 => android/widget/AbsListView
	i64 2251816740797555390, ; 148: 0x1f400f65268422be => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i64 2261358779623026332, ; 149: 0x1f61f5d431242e9c => android/text/style/ClickableSpan
	i64 2266689907793747123, ; 150: 0x1f74e67632025cb3 => java/net/HttpURLConnection
	i64 2317137210756387550, ; 151: 0x2028200436f952de => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i64 2319268360137032813, ; 152: 0x202fb24918c5446d => java/security/SecureRandom
	i64 2323662007029289955, ; 153: 0x203f4e48bb0d53e3 => crc64a0e0a82d0db9a07d/Listener
	i64 2349580542494205303, ; 154: 0x209b630e06896577 => android/view/SubMenu
	i64 2357387754135176159, ; 155: 0x20b71fac231543df => java/io/File
	i64 2371646188211964694, ; 156: 0x20e9c7a485488b16 => androidx/viewpager/widget/ViewPager$PageTransformer
	i64 2390467345448904872, ; 157: 0x212ca562aca728a8 => android/content/pm/ResolveInfo
	i64 2425071951006172274, ; 158: 0x21a79617427c8472 => android/security/KeyPairGeneratorSpec
	i64 2459346298715867829, ; 159: 0x22215a6db2a18ab5 => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i64 2463092707438669875, ; 160: 0x222ea9c473bcb033 => crc645d80431ce5f73f11/SizedItemContentView
	i64 2463909603826170827, ; 161: 0x223190baf6bb7bcb => androidx/core/app/ActivityOptionsCompat
	i64 2487165067737985186, ; 162: 0x22842f73984870a2 => crc640ec207abc449b2ca/ShellItemRendererBase
	i64 2498193693040474283, ; 163: 0x22ab5ded85cc78ab => crc64a0e0a82d0db9a07d/IntermediateActivity
	i64 2542726837267699812, ; 164: 0x2349949628319864 => android/view/Window
	i64 2556174521866237421, ; 165: 0x23795b2f37bdb5ed => com/google/android/material/appbar/MaterialToolbar
	i64 2592719635570013650, ; 166: 0x23fb30c59054b5d2 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i64 2600674482769555637, ; 167: 0x241773a9c1e6f0b5 => android/os/PowerManager
	i64 2603260641783996945, ; 168: 0x2420a3c2d34a6211 => android/view/inputmethod/InputMethodManager
	i64 2617258777567259524, ; 169: 0x24525efdca2b6b84 => androidx/fragment/app/FragmentManager$BackStackEntry
	i64 2638117222333619937, ; 170: 0x249c79a2e9091ee1 => crc6452ffdc5b34af3a0f/MauiSearchView
	i64 2651308274382996518, ; 171: 0x24cb56d40ca70426 => crc64338477404e88479c/TapAndPanGestureDetector
	i64 2752941965278863903, ; 172: 0x26346a21b7b6621f => androidx/navigation/NavDeepLinkRequest
	i64 2756350410967651318, ; 173: 0x26408618523a93f6 => com/microsoft/maui/PlatformInterop
	i64 2803312063028526139, ; 174: 0x26e75d77ff61fc3b => com/google/android/material/appbar/AppBarLayout
	i64 2846152699003131831, ; 175: 0x277f90ccd899d7b7 => mono/java/lang/Runnable
	i64 2875386311327125492, ; 176: 0x27e76c9d9eac8ff4 => android/graphics/drawable/AnimationDrawable
	i64 2877567288675703671, ; 177: 0x27ef2c33facc9b77 => androidx/core/graphics/Insets
	i64 2885364006830175112, ; 178: 0x280adf46e2cf7388 => android/content/IntentFilter
	i64 2897230707376911941, ; 179: 0x283507fa698df645 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i64 2927215136274531841, ; 180: 0x289f8ea84aca4601 => kotlinx/coroutines/flow/Flow
	i64 2943981444848205315, ; 181: 0x28db1f86b584be03 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i64 2949523039309837599, ; 182: 0x28eecf93b6e4b51f => android/view/animation/AnimationUtils
	i64 2968152967169336397, ; 183: 0x2930ff65cf26644d => androidx/appcompat/content/res/AppCompatResources
	i64 2972252214977986258, ; 184: 0x293f8fa450a17ed2 => android/content/Intent
	i64 3018121850479589018, ; 185: 0x29e285d512ae369a => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i64 3020117961009214850, ; 186: 0x29e99d48c5bb3582 => android/net/NetworkInfo
	i64 3058182385761881316, ; 187: 0x2a70d8ad49b18ce4 => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i64 3071747017624329461, ; 188: 0x2aa109a3415d1cf5 => android/os/Build
	i64 3093115516104055613, ; 189: 0x2aecf42c82a19b3d => android/content/pm/FeatureInfo
	i64 3107623337225989922, ; 190: 0x2b207ef5d711af22 => android/location/Location
	i64 3155261737265476761, ; 191: 0x2bc9bdd52f173499 => android/content/ClipData
	i64 3171452383522110633, ; 192: 0x2c034323c5e6bca9 => android/view/MenuItem
	i64 3176842606959065297, ; 193: 0x2c166984f71ef8d1 => androidx/appcompat/widget/AppCompatButton
	i64 3213996194751771492, ; 194: 0x2c9a6882b9a2f364 => androidx/appcompat/widget/TintTypedArray
	i64 3230266667917055639, ; 195: 0x2cd4366b76fb1697 => android/app/DatePickerDialog$OnDateSetListener
	i64 3275116541604857862, ; 196: 0x2d738d246c5d0806 => java/security/PublicKey
	i64 3311365047123382586, ; 197: 0x2df454f74b6f113a => androidx/navigation/NavDestination
	i64 3312753486604898190, ; 198: 0x2df943be8d858f8e => android/app/Dialog
	i64 3321451588128007402, ; 199: 0x2e182a9f2106e4ea => com/google/android/material/shape/CornerTreatment
	i64 3338289054904600959, ; 200: 0x2e53fc355b29c97f => microsoft/maui/platform/MauiNavHostFragment
	i64 3348270271503902806, ; 201: 0x2e77721270fda856 => crc645d80431ce5f73f11/EmptyViewAdapter
	i64 3351507757710206225, ; 202: 0x2e82f28c70486511 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i64 3371417764163457944, ; 203: 0x2ec9ae980e679398 => android/widget/TextView$BufferType
	i64 3407524337605236775, ; 204: 0x2f49f554ca755827 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i64 3409385869268749592, ; 205: 0x2f50926268000d18 => androidx/viewpager2/widget/ViewPager2
	i64 3409776279075562360, ; 206: 0x2f51f575c5da2378 => androidx/lifecycle/LiveData
	i64 3443619838097558668, ; 207: 0x2fca31ff674b0c8c => android/view/WindowInsetsAnimationController
	i64 3450875314776543418, ; 208: 0x2fe3f8d0b56b90ba => android/location/Geocoder
	i64 3462954715912111105, ; 209: 0x300ee2f773348401 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i64 3463222012655579408, ; 210: 0x300fd61252a63110 => androidx/appcompat/widget/Toolbar
	i64 3476617847597562063, ; 211: 0x303f6d8331d5f8cf => java/io/PrintWriter
	i64 3480992816410333166, ; 212: 0x304ef885ffd30fee => kotlinx/coroutines/flow/StateFlow
	i64 3481315469795932841, ; 213: 0x30501df998423aa9 => androidx/lifecycle/SavedStateHandle
	i64 3487642848378226015, ; 214: 0x306698b13904055f => androidx/appcompat/view/menu/SubMenuBuilder
	i64 3492966660860961054, ; 215: 0x307982abe8e6611e => android/widget/AdapterView
	i64 3499331509520825070, ; 216: 0x30901f77b851faee => kotlinx/coroutines/flow/FlowCollector
	i64 3523214698873108952, ; 217: 0x30e4f91a11c439d8 => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i64 3530631042196079534, ; 218: 0x30ff523a0f1083ae => android/content/DialogInterface
	i64 3531967851957559493, ; 219: 0x3104120c5607a0c5 => androidx/core/content/ContextCompat
	i64 3560635333444528101, ; 220: 0x3169eaf880aa67e5 => android/os/Parcelable$Creator
	i64 3602161531208416675, ; 221: 0x31fd72d3db413da3 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i64 3606789160940313841, ; 222: 0x320de3a1dd939cf1 => androidx/appcompat/app/ActionBar
	i64 3638635082376706332, ; 223: 0x327f07544056791c => androidx/lifecycle/viewmodel/CreationExtras$Key
	i64 3648679180818523925, ; 224: 0x32a2b662280d2715 => android/content/pm/PackageManager
	i64 3656396631051491790, ; 225: 0x32be215d0fc259ce => java/net/InetSocketAddress
	i64 3664445150084014760, ; 226: 0x32dab972eda922a8 => android/text/InputFilter
	i64 3668991680153232620, ; 227: 0x32eae07e7365a4ec => android/view/MenuItem$OnMenuItemClickListener
	i64 3689136595673991541, ; 228: 0x33327230190ac975 => androidx/appcompat/widget/DecorToolbar
	i64 3710250570247091010, ; 229: 0x337d753c6344b342 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i64 3715390174298437201, ; 230: 0x338fb7adb508f651 => android/graphics/BlendMode
	i64 3725746463137408145, ; 231: 0x33b482ab1a792491 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i64 3744735303238863079, ; 232: 0x33f7f8eaf76ac8e7 => androidx/core/os/LocaleListCompat
	i64 3804259243029590846, ; 233: 0x34cb71a02e46733e => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i64 3840930880540434390, ; 234: 0x354dba492570dfd6 => android/graphics/drawable/GradientDrawable$Orientation
	i64 3851157429295671005, ; 235: 0x35720f47134666dd => android/graphics/Paint$FontMetrics
	i64 3852940616739286617, ; 236: 0x35786513c16b6e59 => android/text/method/NumberKeyListener
	i64 3875416832529181358, ; 237: 0x35c83f138b78aaae => crc6488302ad6e9e4df1a/MauiApplication
	i64 3880992763041431256, ; 238: 0x35dc0e5b08f23ed8 => android/widget/SpinnerAdapter
	i64 3893923358819291733, ; 239: 0x3609fea9f9051255 => crc64e1fb321c08285b90/ListViewRenderer
	i64 3894539018839858856, ; 240: 0x360c2e9a7dd91ea8 => androidx/core/util/Pair
	i64 3900488950398013983, ; 241: 0x36215208e2cf521f => androidx/browser/customtabs/CustomTabsIntent
	i64 3904020371636272704, ; 242: 0x362dddd7f744be40 => android/hardware/SensorEventListener
	i64 3919736965617219737, ; 243: 0x3665b400a894f899 => crc640ec207abc449b2ca/ShellFragmentContainer
	i64 3926755326194143409, ; 244: 0x367ea32a11acd0b1 => androidx/core/content/FileProvider
	i64 3936478700004404583, ; 245: 0x36a12e8573a76d67 => java/net/SocketAddress
	i64 3940353796168302121, ; 246: 0x36aef2e695f93e29 => android/graphics/Canvas
	i64 3957166361670620563, ; 247: 0x36eaadd708809593 => javax/security/cert/Certificate
	i64 3965607035774982021, ; 248: 0x3708aa969e285785 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i64 4032644632170534830, ; 249: 0x37f6d4ed55e917ae => android/text/GetChars
	i64 4033429712169049384, ; 250: 0x37f99ef404579d28 => androidx/lifecycle/ViewModelProvider$Factory
	i64 4074005787519580853, ; 251: 0x3889c6adc1fd7ab5 => android/view/animation/Interpolator
	i64 4104154920565321793, ; 252: 0x38f4e327cf77b041 => android/preference/PreferenceManager
	i64 4109074850654656120, ; 253: 0x39065dce4cc31678 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i64 4130165489315611710, ; 254: 0x39514ba1463c043e => android/graphics/drawable/ColorDrawable
	i64 4143115911838098129, ; 255: 0x397f4df87c60e2d1 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i64 4154483228285186197, ; 256: 0x39a7b07c1741b095 => androidx/appcompat/app/AppCompatDialog
	i64 4159151334517947946, ; 257: 0x39b8461a4508be2a => android/hardware/Sensor
	i64 4200728372439161058, ; 258: 0x3a4bfc32c52418e2 => android/text/style/ForegroundColorSpan
	i64 4216519898928517408, ; 259: 0x3a8416820c001120 => android/os/IInterface
	i64 4234344718569147786, ; 260: 0x3ac36a1646dd8d8a => crc645d80431ce5f73f11/SimpleViewHolder
	i64 4300416241721128614, ; 261: 0x3bae25c98a1bb6a6 => android/content/DialogInterface$OnDismissListener
	i64 4305371449952891808, ; 262: 0x3bbfc085dc8cf3a0 => java/lang/Class
	i64 4328468547648071486, ; 263: 0x3c11cf35fc03a73e => android/net/Uri
	i64 4346110607894790856, ; 264: 0x3c507c923a2042c8 => java/security/KeyStore$ProtectionParameter
	i64 4348168546437780602, ; 265: 0x3c57cc4161f3547a => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i64 4358625020334866226, ; 266: 0x3c7cf25cee307f32 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i64 4368187459060775074, ; 267: 0x3c9eeb59b1a238a2 => crc64338477404e88479c/GenericAnimatorListener
	i64 4391570523260055895, ; 268: 0x3cf1fe1f94fdf157 => java/net/URISyntaxException
	i64 4392730638380572422, ; 269: 0x3cf61d3deea61f06 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i64 4397070217501049681, ; 270: 0x3d058810ee998351 => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i64 4406641945990788791, ; 271: 0x3d278980a31df6b7 => android/content/BroadcastReceiver
	i64 4413535772071861656, ; 272: 0x3d40076699d29d98 => android/provider/MediaStore
	i64 4424452416381353675, ; 273: 0x3d66d007ec077ecb => androidx/fragment/app/FragmentOnAttachListener
	i64 4443498772478509003, ; 274: 0x3daa7a9745773fcb => android/text/style/UnderlineSpan
	i64 4475302575305267438, ; 275: 0x3e1b77fb277618ee => crc64a0e0a82d0db9a07d/GyroscopeListener
	i64 4504302345287347834, ; 276: 0x3e827f1e43cfae7a => android/window/OnBackInvokedCallback
	i64 4515736889328482736, ; 277: 0x3eab1ec6838d39b0 => android/hardware/SensorEvent
	i64 4544552304279233283, ; 278: 0x3f117e3e1fbf2303 => android/content/DialogInterface$OnKeyListener
	i64 4547751580410723029, ; 279: 0x3f1cdbf7a51a3ad5 => android/content/res/Resources$Theme
	i64 4552905414023119785, ; 280: 0x3f2f2b5a0acd03a9 => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i64 4590799101254748484, ; 281: 0x3fb5cb75a178c944 => javax/net/ssl/TrustManagerFactory
	i64 4622649712627763794, ; 282: 0x4026f36bfa3d4a52 => crc645d80431ce5f73f11/StartSnapHelper
	i64 4627003729261783485, ; 283: 0x40366b60790e69bd => com/google/android/material/appbar/CollapsingToolbarLayout
	i64 4642866827801349258, ; 284: 0x406ec6c7ea8b4c8a => android/text/Spannable
	i64 4657718675205956216, ; 285: 0x40a38a751b5aa278 => android/view/ActionMode$Callback
	i64 4670057858260774363, ; 286: 0x40cf60e10a27addb => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i64 4672418894112007217, ; 287: 0x40d7c43a895ea431 => android/webkit/WebSettings
	i64 4687695855700552132, ; 288: 0x410e0a8b561a29c4 => android/security/KeyPairGeneratorSpec$Builder
	i64 4697026815471874820, ; 289: 0x412f3100b4af7304 => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i64 4709865806769841699, ; 290: 0x415ccdff50466623 => androidx/navigation/NavAction
	i64 4714314902586562790, ; 291: 0x416c9c6d280098e6 => android/widget/AbsListView$OnScrollListener
	i64 4718542789084137320, ; 292: 0x417ba1aab0d74768 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i64 4721440782757463965, ; 293: 0x4185ed606c4d079d => android/view/Menu
	i64 4728550804089827080, ; 294: 0x419f2fe744296f08 => android/text/TextUtils
	i64 4731100047365685390, ; 295: 0x41a83e6d3810c08e => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i64 4736390534106549806, ; 296: 0x41bb0a18a6f18e2e => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i64 4740665257139828038, ; 297: 0x41ca39ef2adaf546 => android/widget/Switch
	i64 4740724644572720007, ; 298: 0x41ca6ff261b26b87 => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i64 4745606114980505205, ; 299: 0x41dbc79e4755a675 => androidx/activity/result/contract/ActivityResultContract
	i64 4756101769800025001, ; 300: 0x4201115c588983a9 => javax/net/SocketFactory
	i64 4767374780372439158, ; 301: 0x42291e1aa7415076 => androidx/navigation/fragment/FragmentNavigator$Destination
	i64 4811279033347842203, ; 302: 0x42c518ca21fba09b => android/provider/ContactsContract$Contacts
	i64 4813887237269061198, ; 303: 0x42ce5cefee357e4e => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i64 4837197082485161987, ; 304: 0x43212d1e32158003 => androidx/appcompat/view/ActionMode
	i64 4849170862723298580, ; 305: 0x434bb73527cbf514 => com/microsoft/maui/PlatformFontSpan
	i64 4871072858788003099, ; 306: 0x439986f4ff1afd1b => crc6452ffdc5b34af3a0f/MauiPicker
	i64 4919249705507088493, ; 307: 0x4444af8b3a31e86d => android/view/ContextMenu
	i64 4959838116221829671, ; 308: 0x44d4e27d04d84227 => androidx/appcompat/app/ActionBar$LayoutParams
	i64 4975918358601069938, ; 309: 0x450e036233c2f572 => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i64 4979108282683510661, ; 310: 0x4519589a478e4f85 => android/text/TextDirectionHeuristic
	i64 5067355848399572953, ; 311: 0x4652dd4bce5acfd9 => androidx/lifecycle/ViewModelProvider
	i64 5098392237163656829, ; 312: 0x46c120ba2dbfb67d => com/google/android/material/tabs/TabLayoutMediator
	i64 5099603885957472034, ; 313: 0x46c56eb725b25f22 => kotlin/Function
	i64 5121018397111246860, ; 314: 0x47118319900e600c => android/widget/RemoteViews
	i64 5180434130187613241, ; 315: 0x47e49964f0247439 => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i64 5182512798889215594, ; 316: 0x47ebfbeeb5b5066a => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i64 5191481922773524551, ; 317: 0x480bd94d98c72047 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i64 5207449722149223037, ; 318: 0x484493ee9a693a7d => kotlin/jvm/functions/Function1
	i64 5214467817578676657, ; 319: 0x485d82da477bc1b1 => java/lang/Error
	i64 5271295239434318331, ; 320: 0x492767177cb0b1fb => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i64 5273367786484979320, ; 321: 0x492ec40ff36cd678 => android/text/InputFilter$LengthFilter
	i64 5284111793688697262, ; 322: 0x4954efae104459ae => androidx/collection/SparseArrayCompat
	i64 5316905010693685758, ; 323: 0x49c970efe2e441fe => crc64e1fb321c08285b90/VisualElementRenderer_1
	i64 5318185584737426782, ; 324: 0x49cdfd9cc3e09d5e => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i64 5340832762153484109, ; 325: 0x4a1e7319a8ed3f4d => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i64 5367760951850986098, ; 326: 0x4a7e1e25664a6a72 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i64 5386283435113439196, ; 327: 0x4abfec3f1981dfdc => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i64 5395622369430182331, ; 328: 0x4ae119f5300999bb => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i64 5397707764748188610, ; 329: 0x4ae8829d1f2efbc2 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i64 5415641819925984136, ; 330: 0x4b28398abb703388 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i64 5464633097221434266, ; 331: 0x4bd646d95bb9eb9a => crc64e1fb321c08285b90/ConditionalFocusLayout
	i64 5466832252367671256, ; 332: 0x4bde16f811060fd8 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i64 5472095928524367906, ; 333: 0x4bf0ca412c8e6822 => crc64a0e0a82d0db9a07d/OrientationSensorListener
	i64 5515811426609156210, ; 334: 0x4c8c1944bb145072 => androidx/browser/customtabs/CustomTabsIntent$Builder
	i64 5517358870160988903, ; 335: 0x4c9198a9024bdae7 => android/text/NoCopySpan
	i64 5602058331881754211, ; 336: 0x4dbe825f32d44e63 => android/location/LocationManager
	i64 5618336483967093590, ; 337: 0x4df85743d379cb56 => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i64 5619483153547007314, ; 338: 0x4dfc6a27a4761552 => android/animation/Animator$AnimatorListener
	i64 5640220797240722407, ; 339: 0x4e4616ee924dc3e7 => android/view/ViewGroup$OnHierarchyChangeListener
	i64 5642493887972642468, ; 340: 0x4e4e2a4bbfec0ea4 => android/graphics/drawable/LayerDrawable
	i64 5642528231169355553, ; 341: 0x4e4e4987e5f66f21 => android/view/View$OnAttachStateChangeListener
	i64 5646917630193404304, ; 342: 0x4e5de1aa7f918990 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i64 5657780495434239337, ; 343: 0x4e847962677dcd69 => androidx/navigation/NavDestination$DeepLinkMatch
	i64 5670033795804000816, ; 344: 0x4eb001b2375b7230 => android/net/ConnectivityManager$NetworkCallback
	i64 5681742043617578465, ; 345: 0x4ed99a49173a4de1 => android/location/LocationListener
	i64 5685459202890798236, ; 346: 0x4ee6cf05ad48149c => android/location/Address
	i64 5700592894481602885, ; 347: 0x4f1c9308d4b11945 => androidx/navigation/NavigatorState
	i64 5701820723754511198, ; 348: 0x4f20efbd1c592b5e => android/provider/MediaStore$Video$Media
	i64 5711826783282435557, ; 349: 0x4f447c32641c95e5 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i64 5769270564821428901, ; 350: 0x50109103054c6aa5 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i64 5783881719663270525, ; 351: 0x504479c79b679a7d => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i64 5788385766688147453, ; 352: 0x50547a2fc65fc7fd => com/google/android/material/internal/ScrimInsetsFrameLayout
	i64 5788584975648159211, ; 353: 0x50552f5db9abf5eb => androidx/appcompat/widget/LinearLayoutCompat
	i64 5793982059409158284, ; 354: 0x50685bfc3611b08c => java/net/URLConnection
	i64 5838060704937632400, ; 355: 0x5104f5479ef96290 => android/text/style/SubscriptSpan
	i64 5852026601208300108, ; 356: 0x513693303d28424c => android/util/Size
	i64 5856823971975629766, ; 357: 0x51479e5f29998bc6 => android/widget/LinearLayout$LayoutParams
	i64 5863491579902581685, ; 358: 0x515f4e869b965bb5 => crc64a0e0a82d0db9a07d/ConnectivityBroadcastReceiver
	i64 5866051512250042973, ; 359: 0x516866c54dce8a5d => android/database/ContentObserver
	i64 5880236631793339455, ; 360: 0x519acc0fd1480c3f => android/content/pm/PackageInfo
	i64 5890385405214755341, ; 361: 0x51beda5143f88a0d => android/widget/FrameLayout
	i64 5898685796340291262, ; 362: 0x51dc577aac8156be => androidx/activity/OnBackPressedCallback
	i64 5902220174995442397, ; 363: 0x51e8e5fa54bf4add => android/view/accessibility/AccessibilityRecord
	i64 5908028809052366783, ; 364: 0x51fd88e6565727bf => crc64338477404e88479c/ColorChangeRevealDrawable
	i64 5916786898001085367, ; 365: 0x521ca655d30a43b7 => android/text/style/WrapTogetherSpan
	i64 5924904683093798928, ; 366: 0x52397d6af3dab010 => java/security/KeyException
	i64 5928119462157283979, ; 367: 0x5244e93e07f6f28b => android/widget/Adapter
	i64 5933291542840177326, ; 368: 0x52574938e7d172ae => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i64 5974281808001166189, ; 369: 0x52e8e9a6b9fceb6d => crc64f728827fec74e9c3/Toolbar_Container
	i64 5991054489085362647, ; 370: 0x53248050dbf141d7 => javax/security/cert/X509Certificate
	i64 6000768439507874839, ; 371: 0x5347031a303df417 => java/lang/Enum
	i64 6012758298688632601, ; 372: 0x53719bd0d19e3719 => android/text/method/DigitsKeyListener
	i64 6038550797406471446, ; 373: 0x53cd3df4e5908516 => androidx/core/view/PointerIconCompat
	i64 6082559832693444876, ; 374: 0x546997f0e8c0910c => android/text/SpannableStringBuilder
	i64 6116679261601087867, ; 375: 0x54e2cf6180bb417b => android/widget/LinearLayout
	i64 6127537489962729811, ; 376: 0x550962e1cd1e0153 => crc64338477404e88479c/InnerGestureListener
	i64 6160296053631453721, ; 377: 0x557dc49f43f18a19 => android/graphics/PorterDuff
	i64 6190038067490173605, ; 378: 0x55e76ed37ee5b2a5 => androidx/core/app/ComponentActivity$ExtraData
	i64 6193589699106797389, ; 379: 0x55f40d042bc7774d => android/view/ActionMode
	i64 6195408243508216495, ; 380: 0x55fa82f908d582af => android/provider/ContactsContract$CommonDataKinds$Email
	i64 6202640532551873668, ; 381: 0x561434b38c31b484 => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i64 6204908697973250647, ; 382: 0x561c4395f66d5a57 => android/app/Application$ActivityLifecycleCallbacks
	i64 6216810235712202870, ; 383: 0x56468bf8a7a36876 => crc645d80431ce5f73f11/CenterSnapHelper
	i64 6283887777065464784, ; 384: 0x5734daa3c867f3d0 => androidx/appcompat/app/AlertDialog$Builder
	i64 6288369407718046879, ; 385: 0x5744c6a8bb77bc9f => androidx/navigation/Navigator
	i64 6296800472137223880, ; 386: 0x5762baaae3404ec8 => androidx/loader/content/Loader$OnLoadCompleteListener
	i64 6312114910038555662, ; 387: 0x57992311524b7c0e => android/graphics/drawable/ShapeDrawable
	i64 6317594897563382175, ; 388: 0x57ac9b165815f19f => kotlin/coroutines/CoroutineContext$Key
	i64 6351822608111181092, ; 389: 0x5826350238c31d24 => androidx/appcompat/widget/AppCompatRadioButton
	i64 6360797179963918470, ; 390: 0x58461755900e4886 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i64 6364569032989959824, ; 391: 0x58537dd087d16690 => android/view/KeyboardShortcutGroup
	i64 6368200640279435473, ; 392: 0x586064bdfe4558d1 => androidx/navigation/NavController
	i64 6372223310668282668, ; 393: 0x586eaf56edd8bb2c => com/google/android/material/bottomsheet/BottomSheetBehavior
	i64 6373415978121019041, ; 394: 0x5872ec1075b3bea1 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i64 6435837332721058469, ; 395: 0x5950aff4a10942a5 => android/text/Layout
	i64 6446708716262054708, ; 396: 0x59774f6bdb36db34 => android/text/Html
	i64 6448463832069935326, ; 397: 0x597d8bb0997b90de => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i64 6471278565172645060, ; 398: 0x59ce999197b70cc4 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i64 6485460119900587756, ; 399: 0x5a00fb9e1ba306ec => android/view/DragEvent
	i64 6545321162758640842, ; 400: 0x5ad5a6eb3f1354ca => android/graphics/drawable/PaintDrawable
	i64 6559521101221494528, ; 401: 0x5b0819b00efc7f00 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i64 6575421132961433232, ; 402: 0x5b4096aeaec34690 => com/google/android/material/shape/CornerSize
	i64 6577678479794931002, ; 403: 0x5b489bba32e8853a => androidx/appcompat/view/ActionMode$Callback
	i64 6587918786611775557, ; 404: 0x5b6cfd3b6d1e0845 => android/security/keystore/KeyGenParameterSpec$Builder
	i64 6606571485385333215, ; 405: 0x5baf41c3499e19df => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i64 6624740775713829269, ; 406: 0x5befcea2d977f195 => android/net/Uri$Builder
	i64 6686699664156607880, ; 407: 0x5ccbedeab9c74588 => androidx/fragment/app/FragmentFactory
	i64 6687740929511417890, ; 408: 0x5ccfa0f1355e6822 => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i64 6732005985592855696, ; 409: 0x5d6ce3c6b510cc90 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i64 6737402552719891314, ; 410: 0x5d800fece7addb72 => android/content/ClipData$Item
	i64 6740334783866200195, ; 411: 0x5d8a7ac62b8de083 => javax/net/ssl/SSLSession
	i64 6788014833141418870, ; 412: 0x5e33df86bb7a0b76 => android/graphics/Shader$TileMode
	i64 6804602249961354267, ; 413: 0x5e6ecdb1aac5341b => android/view/Window$Callback
	i64 6828642768849235381, ; 414: 0x5ec4366b274c6db5 => android/text/style/MetricAffectingSpan
	i64 6844154811223275857, ; 415: 0x5efb5289f6be7951 => crc645d80431ce5f73f11/TextViewHolder
	i64 6845548855192212761, ; 416: 0x5f00466a1e505519 => androidx/core/content/LocusIdCompat
	i64 6873002302698470465, ; 417: 0x5f61cf2df8c8bc41 => androidx/core/view/ScaleGestureDetectorCompat
	i64 6875961628645093091, ; 418: 0x5f6c52abbc9b6ee3 => android/content/ContentResolver
	i64 6890188429085646662, ; 419: 0x5f9eddded7281f46 => android/app/SearchableInfo
	i64 6895655229236794186, ; 420: 0x5fb249e57039534a => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i64 6904973862930569132, ; 421: 0x5fd36524eb5557ac => crc64a0e0a82d0db9a07d/BatteryBroadcastReceiver
	i64 6911927173407313576, ; 422: 0x5fec1924ac500ea8 => android/hardware/camera2/CameraMetadata
	i64 6917527850199332409, ; 423: 0x5ffffeeddb00b639 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i64 6944519480758605639, ; 424: 0x605fe3ac92659747 => androidx/navigation/NavHostController
	i64 6962963354349051291, ; 425: 0x60a16a4788099d9b => androidx/recyclerview/widget/RecyclerView$State
	i64 6986254017918385287, ; 426: 0x60f42903b8abbc87 => androidx/navigation/NavigatorProvider
	i64 7017970021919054493, ; 427: 0x6164d68d58d35a9d => androidx/appcompat/app/AppCompatActivity
	i64 7045610246270173703, ; 428: 0x61c7093092c94207 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i64 7045700695332650314, ; 429: 0x61c75b73e3067d4a => crc64e1fb321c08285b90/EntryCellView
	i64 7048179316721281784, ; 430: 0x61d029bee66d6af8 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i64 7088459779947002328, ; 431: 0x625f449d146279d8 => com/google/android/material/shape/ShapePathModel
	i64 7097363012129668510, ; 432: 0x627ee60e5bfc3d9e => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i64 7121581024859586825, ; 433: 0x62d4f035d9eb0109 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i64 7140410014939704476, ; 434: 0x6317d513bb1f6c9c => crc64a0e0a82d0db9a07d/ClipboardChangeListener
	i64 7177952650586447618, ; 435: 0x639d35e7c0c75f02 => java/text/DecimalFormatSymbols
	i64 7181616943456565684, ; 436: 0x63aa3a8f6ba7b9b4 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i64 7208505001873526273, ; 437: 0x6409c11b5e4c4e01 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i64 7234103110495206036, ; 438: 0x6464b273799d7a94 => android/graphics/Bitmap$Config
	i64 7244392534668770169, ; 439: 0x648940a0ba6c7b79 => android/graphics/RadialGradient
	i64 7251551689043245100, ; 440: 0x64a2afd73fce782c => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i64 7282188369651690282, ; 441: 0x650f87bd5091eb2a => android/os/Parcelable
	i64 7291810569935423650, ; 442: 0x6531b714667088a2 => android/os/Build$VERSION
	i64 7312906538941252399, ; 443: 0x657ca9c07139832f => com/google/android/material/navigation/NavigationBarItemView
	i64 7351379750238478805, ; 444: 0x660558eefdf6e1d5 => crc64338477404e88479c/PointerGestureHandler
	i64 7358194978034168623, ; 445: 0x661d8f58ddca332f => java/security/spec/AlgorithmParameterSpec
	i64 7359209775714103835, ; 446: 0x66212a4cdd05721b => android/content/pm/PackageItemInfo
	i64 7404595276730345374, ; 447: 0x66c2682c470c279e => mono/android/view/View_OnKeyListenerImplementor
	i64 7406443753550440758, ; 448: 0x66c8f95a5348e936 => crc6452ffdc5b34af3a0f/MauiScrollView
	i64 7409799135806871516, ; 449: 0x66d4e50e22c3d7dc => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i64 7435834490012150186, ; 450: 0x6731641269c5a9aa => crc64338477404e88479c/GenericGlobalLayoutListener
	i64 7437796681088239247, ; 451: 0x67385cac9fd8068f => java/io/FileDescriptor
	i64 7472244136216057313, ; 452: 0x67b2be73c62755e1 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i64 7516290617095606990, ; 453: 0x684f3a7e4495d2ce => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i64 7538647566659605431, ; 454: 0x689ea805399bd3b7 => android/view/WindowManager$LayoutParams
	i64 7542712316008827805, ; 455: 0x68ad18e36eab8b9d => android/speech/tts/TextToSpeech
	i64 7543760211319933178, ; 456: 0x68b0d1f1927348fa => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i64 7570501070567637873, ; 457: 0x690fd29d0ae60371 => kotlinx/coroutines/flow/SharedFlow
	i64 7605367724016209675, ; 458: 0x698bb1a668350f0b => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i64 7606121740798224536, ; 459: 0x698e5f6c9ea76898 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i64 7620119821450638162, ; 460: 0x69c01a9abf7a7352 => java/io/InterruptedIOException
	i64 7626091922154612119, ; 461: 0x69d55232cc806597 => com/google/android/material/elevation/ElevationOverlayProvider
	i64 7643734333815795607, ; 462: 0x6a13ffe0dc8c2f97 => android/view/View$OnFocusChangeListener
	i64 7649779996619039646, ; 463: 0x6a297a606c5de39e => crc645d80431ce5f73f11/EndSnapHelper
	i64 7658195837123306865, ; 464: 0x6a476089fc1c2571 => java/lang/Character
	i64 7681872310366473403, ; 465: 0x6a9b7e2a7d4d8cbb => android/widget/ListAdapter
	i64 7691739891202254295, ; 466: 0x6abe8cadafcfe5d7 => androidx/core/view/WindowInsetsAnimationCompat
	i64 7705986769563355672, ; 467: 0x6af12a238baf0a18 => crc6452ffdc5b34af3a0f/MauiBoxView
	i64 7707137187261173951, ; 468: 0x6af5407009e7d0bf => crc645d80431ce5f73f11/SelectableViewHolder
	i64 7731510726439183081, ; 469: 0x6b4bd80ada87a2e9 => android/animation/ValueAnimator$AnimatorUpdateListener
	i64 7742963657184098828, ; 470: 0x6b74886c1737ba0c => androidx/appcompat/widget/Toolbar$LayoutParams
	i64 7749032626649128185, ; 471: 0x6b8a181e28555cf9 => android/graphics/drawable/RippleDrawable
	i64 7755515212075485939, ; 472: 0x6ba11ffeb1e5caf3 => crc64d693e2d9159537db/BlazorAndroidWebView
	i64 7798613346913539658, ; 473: 0x6c3a3d852b66d64a => com/google/android/material/checkbox/MaterialCheckBox
	i64 7803133828481253567, ; 474: 0x6c4a4cdfcd7580bf => android/animation/ValueAnimator$DurationScaleChangeListener
	i64 7864467029396250131, ; 475: 0x6d24331872ef5e13 => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i64 7864855107911594701, ; 476: 0x6d25940d04fcb2cd => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i64 7865688982361293915, ; 477: 0x6d288a748b59445b => android/view/View$OnScrollChangeListener
	i64 7875199854262555871, ; 478: 0x6d4a548af88714df => android/content/ClipDescription
	i64 7885044884479929607, ; 479: 0x6d6d4e8bb16fed07 => androidx/lifecycle/ViewModel
	i64 7888810119934589243, ; 480: 0x6d7aaf01e335393b => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i64 7890605003148928414, ; 481: 0x6d810f71b39ca59e => androidx/appcompat/widget/AppCompatCheckBox
	i64 7933543037734065265, ; 482: 0x6e199b5bee699471 => java/util/HashMap
	i64 7949315060988846129, ; 483: 0x6e51a3ee41e72031 => android/content/res/TypedArray
	i64 7977746367831656039, ; 484: 0x6eb6a60dbac4c667 => android/widget/ProgressBar
	i64 7983078697141197390, ; 485: 0x6ec997c76516da4e => mono/android/view/View_OnTouchListenerImplementor
	i64 7984385532120790879, ; 486: 0x6ece3c569fd3f75f => android/text/method/MetaKeyKeyListener
	i64 7995168442746702247, ; 487: 0x6ef48b56a55489a7 => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i64 7999688050061220247, ; 488: 0x6f0499e5b9d61997 => android/security/keystore/KeyGenParameterSpec
	i64 8037825913650420308, ; 489: 0x6f8c18150d901a54 => java/util/concurrent/atomic/AtomicReference
	i64 8045985209002586618, ; 490: 0x6fa914eb0aa571fa => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i64 8058145963905469793, ; 491: 0x6fd4490f6ed54d61 => android/view/ContextMenu$ContextMenuInfo
	i64 8062358743859858152, ; 492: 0x6fe3408fb3880ae8 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i64 8074648518520542053, ; 493: 0x700eea0bd88d1365 => mono/android/view/View_OnFocusChangeListenerImplementor
	i64 8113256564074339257, ; 494: 0x709813dbf141dbb9 => crc6452ffdc5b34af3a0f/ScopedFragment
	i64 8128307717584548501, ; 495: 0x70cd8ccdb3b17295 => kotlin/jvm/functions/Function0
	i64 8137637341858592932, ; 496: 0x70eeb20c206f78a4 => crc64ba438d8f48cf7e75/IntermediateActivity
	i64 8142727811387609942, ; 497: 0x7100c7cd6c73d356 => android/net/NetworkRequest
	i64 8178596677272620685, ; 498: 0x718036588e064e8d => android/view/View$OnDragListener
	i64 8188592205440608210, ; 499: 0x71a3b939cfd1e7d2 => androidx/appcompat/view/menu/MenuBuilder
	i64 8190305621607579207, ; 500: 0x71a9cf9199cdfe47 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 8233717759971265430, ; 501: 0x72440aadb7e98b96 => androidx/fragment/app/FragmentContainer
	i64 8252554373049789286, ; 502: 0x7286f67a773aab66 => crc64338477404e88479c/DragAndDropGestureHandler
	i64 8278064317100257641, ; 503: 0x72e197a32898f169 => androidx/navigation/NavDeepLinkBuilder
	i64 8362058396472415889, ; 504: 0x740bffceb8cf9691 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i64 8372779371615156560, ; 505: 0x7432167a43d6f950 => android/widget/SeekBar
	i64 8394886757576584589, ; 506: 0x7480a1072afbad8d => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i64 8416619862292774857, ; 507: 0x74cdd72bed753fc9 => java/lang/IllegalArgumentException
	i64 8421791132995673144, ; 508: 0x74e0366a36bddc38 => androidx/recyclerview/widget/ItemTouchHelper
	i64 8425647329628860924, ; 509: 0x74ede99af53f31fc => crc6452ffdc5b34af3a0f/MauiShapeView
	i64 8427024478828076046, ; 510: 0x74f2ce1d7e119c0e => android/text/TextWatcher
	i64 8437033726010721180, ; 511: 0x75165d78f4dc039c => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i64 8462361838522003613, ; 512: 0x75705941b1ecf09d => android/os/IBinder
	i64 8469710080902461022, ; 513: 0x758a7471b2bc765e => kotlin/sequences/Sequence
	i64 8487642170263250902, ; 514: 0x75ca29959b2aa7d6 => android/content/ContextWrapper
	i64 8513468764914715166, ; 515: 0x7625eabc43200a1e => java/lang/Math
	i64 8549089476185573369, ; 516: 0x76a47795651247f9 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i64 8574675756585218473, ; 517: 0x76ff5e2b876a71a9 => androidx/navigation/NavViewModelStoreProvider
	i64 8587172038193766563, ; 518: 0x772bc378d1b4e0a3 => java/lang/Runnable
	i64 8618892606698062027, ; 519: 0x779c7529337a80cb => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i64 8625055343724598723, ; 520: 0x77b25a233aca15c3 => android/provider/MediaStore$Audio$Media
	i64 8630554667390783235, ; 521: 0x77c5e3be4c6acf03 => crc64a0e0a82d0db9a07d/TextToSpeechImplementation
	i64 8653109817022454725, ; 522: 0x781605884e119bc5 => java/security/KeyPairGeneratorSpi
	i64 8655205006257707444, ; 523: 0x781d7718902c59b4 => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i64 8667795546213253293, ; 524: 0x784a322015c100ad => androidx/navigation/Navigator$Extras
	i64 8712284566595978930, ; 525: 0x78e840a7561246b2 => android/view/MenuItem$OnActionExpandListener
	i64 8719122993390795943, ; 526: 0x79008c2aa5ffbca7 => android/view/OrientationEventListener
	i64 8722435519081898203, ; 527: 0x790c50e4232060db => android/app/PendingIntent
	i64 8784751650103882924, ; 528: 0x79e9b5150877f4ac => android/content/res/Configuration
	i64 8808233201678771961, ; 529: 0x7a3d216dccdd66f9 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i64 8815982235821639925, ; 530: 0x7a58a922684d88f5 => androidx/core/widget/TextViewCompat
	i64 8818441445812352019, ; 531: 0x7a6165c5da3a3413 => androidx/recyclerview/widget/OrientationHelper
	i64 8820163834125063958, ; 532: 0x7a678446a1c59716 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i64 8844400343224702393, ; 533: 0x7abd9f40a54055b9 => androidx/appcompat/view/menu/MenuItemImpl
	i64 8853215855731863812, ; 534: 0x7adcf0ea18c0f104 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i64 8914810474906455838, ; 535: 0x7bb7c4e4ecbb0f1e => com/microsoft/maui/PlatformAppCompatTextView
	i64 8928794735584266036, ; 536: 0x7be9738156e0c734 => crc64d693e2d9159537db/WebKitWebViewClient
	i64 8931605240031794265, ; 537: 0x7bf36fa4e61cd459 => com/google/android/material/shape/EdgeTreatment
	i64 8950391188589719199, ; 538: 0x7c362d5d64ad2e9f => java/lang/Boolean
	i64 8972627133644507939, ; 539: 0x7c852cd6cae98b23 => android/view/LayoutInflater
	i64 8979848056199665951, ; 540: 0x7c9ed43ad6c3591f => androidx/core/view/ActionProvider
	i64 8981516335682015417, ; 541: 0x7ca4c1856cb1d0b9 => android/graphics/Paint$Style
	i64 8984696751965337035, ; 542: 0x7cb00e17cb7ff5cb => android/text/style/StyleSpan
	i64 9000742728442691829, ; 543: 0x7ce90fd2d381c0f5 => java/io/Reader
	i64 9013544160697135900, ; 544: 0x7d168aa889a6331c => android/view/ViewConfiguration
	i64 9026643144054951887, ; 545: 0x7d45141d439c4fcf => androidx/core/text/PrecomputedTextCompat
	i64 9036096474510254000, ; 546: 0x7d66a9de4757dfb0 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i64 9039115063128758362, ; 547: 0x7d71634235ac185a => android/webkit/CookieManager
	i64 9052904945156302472, ; 548: 0x7da26115516b2688 => android/graphics/Paint
	i64 9090354662222454056, ; 549: 0x7e276d670c15dd28 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i64 9090573862148084054, ; 550: 0x7e2834c381c99156 => androidx/lifecycle/viewmodel/CreationExtras
	i64 9146179778865887055, ; 551: 0x7eedc20ce329774f => java/util/Date
	i64 9151171445068120146, ; 552: 0x7eff7df1bdfbc052 => crc64d693e2d9159537db/AndroidWebKitWebViewManager_BlazorWebMessageCallback
	i64 9154019302997878316, ; 553: 0x7f099c0e5641e62c => javax/net/ssl/KeyManager
	i64 9187009981601112352, ; 554: 0x7f7ed0e7454d6120 => android/view/ViewGroup$MarginLayoutParams
	i64 9217569019755338609, ; 555: 0x7feb622fcb299b71 => java/security/Principal
	i64 9223813467167136034, ; 556: 0x8001917a80f61922 => androidx/appcompat/app/ActionBarDrawerToggle
	i64 9261475547774197607, ; 557: 0x80875ef0f90c1f67 => android/widget/ImageView
	i64 9263999828566228768, ; 558: 0x809056c2e4f83f20 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i64 9266054422632426471, ; 559: 0x8097a3675a716be7 => android/text/SpannableStringInternal
	i64 9267880512747732096, ; 560: 0x809e20391717fc80 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i64 9273509983330139147, ; 561: 0x80b22032596e7c0b => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i64 9286063777946211584, ; 562: 0x80deb9ce6e1b1500 => android/content/res/AssetFileDescriptor
	i64 9313201588916243318, ; 563: 0x813f23806cf4cb76 => androidx/core/graphics/drawable/DrawableCompat
	i64 9332122854233971226, ; 564: 0x81825c4aceeb9a1a => android/net/NetworkRequest$Builder
	i64 9354128719103063801, ; 565: 0x81d08a827d6af6f9 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i64 9355021183435591253, ; 566: 0x81d3b63388eece55 => android/graphics/drawable/Drawable
	i64 9360306727378170850, ; 567: 0x81e67d60221333e2 => android/hardware/SensorManager
	i64 9367788077672619287, ; 568: 0x8201119fbcd0dd17 => android/graphics/PathEffect
	i64 9374080444557732201, ; 569: 0x82176c7f91cca969 => android/os/IBinder$DeathRecipient
	i64 9387983273234612227, ; 570: 0x8248d10c1e754003 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i64 9472253597416177494, ; 571: 0x83743475f0683f56 => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i64 9477720623975991619, ; 572: 0x8387a0b1407b8943 => android/net/Network
	i64 9490804761146227161, ; 573: 0x83b61ca554b4f9d9 => androidx/core/view/ActionProvider$VisibilityListener
	i64 9507464054666394215, ; 574: 0x83f14c2f5d2f7a67 => android/widget/AbsSeekBar
	i64 9508416549184848137, ; 575: 0x83f4ae79469bc109 => java/lang/ClassLoader
	i64 9511744497939342886, ; 576: 0x84008139b9f36626 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i64 9521006120370395580, ; 577: 0x8421689f3cff59bc => androidx/viewpager/widget/ViewPager
	i64 9561326475558871143, ; 578: 0x84b0a7c57d396067 => com/microsoft/maui/MauiViewGroup
	i64 9653796168998115956, ; 579: 0x85f92c77bb28da74 => android/view/accessibility/AccessibilityEvent
	i64 9655659318546054185, ; 580: 0x85ffcafe0a20bc29 => java/io/FileNotFoundException
	i64 9656994348200431989, ; 581: 0x86048931da711175 => android/text/SpannableString
	i64 9658692325343451885, ; 582: 0x860a917ef6e35aed => android/provider/ContactsContract$Data
	i64 9667515047141612341, ; 583: 0x8629e9b6f59e9b35 => java/lang/Thread
	i64 9712620497184332666, ; 584: 0x86ca28e1ecd99b7a => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i64 9717657584051666027, ; 585: 0x86dc0e161a47bc6b => javax/crypto/AEADBadTagException
	i64 9733439219601035317, ; 586: 0x87141f66772cd035 => androidx/activity/contextaware/OnContextAvailableListener
	i64 9785570804745343508, ; 587: 0x87cd54ccfd479214 => java/net/URL
	i64 9800253854282402593, ; 588: 0x88017ef4dd27cb21 => android/view/ViewPropertyAnimator
	i64 9864125463926107429, ; 589: 0x88e469d8d9336d25 => androidx/activity/ComponentDialog
	i64 9866983915955550238, ; 590: 0x88ee91981305f81e => java/lang/SecurityException
	i64 9869939015140501507, ; 591: 0x88f9113db837e803 => android/app/Activity
	i64 9876054856643157065, ; 592: 0x890ecb91087c9c49 => crc64e1fb321c08285b90/ListViewAdapter
	i64 9891313474396361641, ; 593: 0x89450132d36e13a9 => androidx/core/internal/view/SupportMenuItem
	i64 9903613304640537389, ; 594: 0x8970b3d437ee832d => java/io/Serializable
	i64 9907358733905502342, ; 595: 0x897e0246eccd2086 => crc64b5e713d400f589b7/MauiDrawable
	i64 9921777852642371167, ; 596: 0x89b13c639f16265f => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i64 9924230831254210082, ; 597: 0x89b9f35c35e30622 => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i64 9929704669852541671, ; 598: 0x89cd65c9931922e7 => androidx/navigation/fragment/FragmentNavigator
	i64 9977296435420958008, ; 599: 0x8a767a3efc098d38 => java/lang/NullPointerException
	i64 9990404136610222553, ; 600: 0x8aa50ba17d3ed1d9 => android/content/ClipboardManager$OnPrimaryClipChangedListener
	i64 9995467285110801699, ; 601: 0x8ab708899d114523 => com/google/android/material/appbar/HeaderBehavior
	i64 10002475813170388786, ; 602: 0x8acfeec1b6751f32 => android/graphics/Insets
	i64 10007037822135323730, ; 603: 0x8ae023e132464c52 => java/net/URLEncoder
	i64 10012846325985404475, ; 604: 0x8af4c6aee2ef663b => crc645d80431ce5f73f11/PositionalSmoothScroller
	i64 10018881518736268144, ; 605: 0x8b0a37a8b3005b70 => android/view/WindowInsetsAnimationControlListener
	i64 10066722417169108808, ; 606: 0x8bb42eb3dfd38f48 => crc64338477404e88479c/GenericMenuClickListener
	i64 10083342998336719661, ; 607: 0x8bef3b087c484b2d => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i64 10091524575743969799, ; 608: 0x8c0c4c226b580a07 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i64 10095829318087436361, ; 609: 0x8c1b974659936849 => androidx/fragment/app/Fragment
	i64 10116006898471457589, ; 610: 0x8c6346ad60cad335 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i64 10128540585303438051, ; 611: 0x8c8fcdffc02372e3 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i64 10161219523932954642, ; 612: 0x8d03e75210c9a012 => androidx/recyclerview/widget/SnapHelper
	i64 10230811296040817611, ; 613: 0x8dfb24ab289113cb => androidx/lifecycle/ViewModelStoreOwner
	i64 10266059374509936169, ; 614: 0x8e785e9bf4bbce29 => java/lang/Long
	i64 10293068996586880171, ; 615: 0x8ed853b7a625bcab => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i64 10293479692282140573, ; 616: 0x8ed9c93e312c979d => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i64 10300674889386243088, ; 617: 0x8ef3593c90a73410 => javax/crypto/Cipher
	i64 10365934324252812416, ; 618: 0x8fdb3258ca1e2480 => android/graphics/drawable/StateListDrawable
	i64 10369805750189513392, ; 619: 0x8fe8f36361d95ab0 => android/widget/AutoCompleteTextView
	i64 10373704809055737018, ; 620: 0x8ff6cd8fc48754ba => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i64 10384735276959433997, ; 621: 0x901dfdb6b5a2850d => android/provider/ContactsContract$CommonDataKinds$Phone
	i64 10396963593911974655, ; 622: 0x90496f4d9dcabaff => androidx/lifecycle/LifecycleObserver
	i64 10446292634862201785, ; 623: 0x90f8afcdf8bdabb9 => android/widget/Filter$FilterResults
	i64 10466912235619695019, ; 624: 0x9141f138e34d39ab => android/text/StaticLayout$Builder
	i64 10486969556178867945, ; 625: 0x9189333fbe6096e9 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i64 10499957734077086001, ; 626: 0x91b757ed9047b931 => android/view/ViewGroup$LayoutParams
	i64 10528560983360194325, ; 627: 0x921cf66e8138c715 => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i64 10529189084302795258, ; 628: 0x921f31afa6c9e1fa => crc645d80431ce5f73f11/SpacingItemDecoration
	i64 10556732314164660806, ; 629: 0x92810c1b96ac0a46 => android/view/WindowManager
	i64 10565471938346028939, ; 630: 0x92a018bfe9790f8b => android/content/pm/ShortcutInfo
	i64 10582806380718996879, ; 631: 0x92ddae55497e3d8f => android/provider/DocumentsContract
	i64 10589642565195629679, ; 632: 0x92f5f7ce84d7846f => java/lang/UnsupportedOperationException
	i64 10592155553304916737, ; 633: 0x92fee55b286bb301 => androidx/browser/customtabs/CustomTabColorSchemeParams
	i64 10592509549452171395, ; 634: 0x930027504f079883 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i64 10596685970650905969, ; 635: 0x930efdbf25033d71 => androidx/core/app/TaskStackBuilder
	i64 10612931704630082588, ; 636: 0x9348b527d7f4fc1c => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i64 10641631056935965321, ; 637: 0x93aeab10836ed289 => javax/crypto/spec/GCMParameterSpec
	i64 10647948239400402802, ; 638: 0x93c51c822c34ff72 => com/google/android/material/tabs/TabLayout$Tab
	i64 10655477448226598286, ; 639: 0x93dfdc48b5bb6d8e => androidx/navigation/NavDeepLink
	i64 10655658609895831411, ; 640: 0x93e0810cb2ac7773 => android/content/res/ColorStateList
	i64 10669273640681975941, ; 641: 0x9410dfd91449b085 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i64 10677704381882915324, ; 642: 0x942ed38ffac359fc => android/widget/FilterQueryProvider
	i64 10685348952360151677, ; 643: 0x9449fc423e84ea7d => android/provider/Telephony
	i64 10715635008700845527, ; 644: 0x94b595443c5a8dd7 => android/provider/Settings$Global
	i64 10721574239302262859, ; 645: 0x94caaef71e97204b => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i64 10722894652849872693, ; 646: 0x94cf5fdfdb0d5f35 => java/lang/Short
	i64 10749607925354851574, ; 647: 0x952e4774497fecf6 => androidx/navigation/NavBackStackEntry
	i64 10783898034563810276, ; 648: 0x95a81a207c3583e4 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i64 10799644280525089146, ; 649: 0x95e00b411146e97a => android/view/View$OnLayoutChangeListener
	i64 10799850913504254972, ; 650: 0x95e0c72f8e995bfc => crc640ec207abc449b2ca/CustomFrameLayout
	i64 10804287674762873921, ; 651: 0x95f08a65895f4c41 => androidx/fragment/app/Fragment$SavedState
	i64 10807464319380525259, ; 652: 0x95fbd389bf6290cb => android/window/OnBackInvokedDispatcher
	i64 10807781269944775094, ; 653: 0x95fcf3cd8d2db1b6 => android/webkit/WebMessage
	i64 10808978037618020601, ; 654: 0x96013441bd3890f9 => android/database/DataSetObserver
	i64 10846083286812210570, ; 655: 0x96850748cabe358a => android/widget/CheckBox
	i64 10848177494516672777, ; 656: 0x968c77f4850da909 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i64 10877661291534526915, ; 657: 0x96f5374ff4eea9c3 => crc64a0e0a82d0db9a07d/WebAuthenticatorCallbackActivity
	i64 10882406340763957480, ; 658: 0x970612e8d2b1b8e8 => crc64e1fb321c08285b90/TableViewRenderer
	i64 10941052169733558586, ; 659: 0x97d66cfaedfc513a => com/google/android/material/navigation/NavigationBarView
	i64 10954308252324574527, ; 660: 0x980585512befb53f => androidx/recyclerview/widget/LinearSnapHelper
	i64 10971842169477510975, ; 661: 0x9843d052635bb73f => java/io/RandomAccessFile
	i64 11005920483369566278, ; 662: 0x98bce25e25704046 => java/util/Random
	i64 11011592790621755141, ; 663: 0x98d1094d18431705 => androidx/recyclerview/widget/PagerSnapHelper
	i64 11013759639154314179, ; 664: 0x98d8bc09d553cbc3 => crc6452ffdc5b34af3a0f/BorderDrawable
	i64 11055023287189350860, ; 665: 0x996b551b9097a9cc => androidx/recyclerview/widget/GridLayoutManager
	i64 11068121910117196641, ; 666: 0x9999de3c5f40e361 => androidx/recyclerview/widget/LinearLayoutManager
	i64 11083086269215938900, ; 667: 0x99cf083dbba01954 => crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener
	i64 11083306282112666272, ; 668: 0x99cfd0577a2e4aa0 => android/webkit/WebMessagePort
	i64 11098475641896463473, ; 669: 0x9a05b4cb47906c71 => crc64a0e0a82d0db9a07d/AccelerometerListener
	i64 11112718717483603117, ; 670: 0x9a384ecbbc71d4ad => android/os/Handler
	i64 11139934129755664080, ; 671: 0x9a98ff11b1562ed0 => android/graphics/Region
	i64 11160671548185282843, ; 672: 0x9ae2aba42c64891b => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i64 11198249491814670955, ; 673: 0x9b682c94f9cfe26b => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i64 11219748541155570913, ; 674: 0x9bb48dda78c8f4e1 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i64 11240308327273157113, ; 675: 0x9bfd98deb4fb51f9 => android/graphics/RectF
	i64 11253024261992253531, ; 676: 0x9c2ac5f1f8e6885b => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i64 11269552841768111550, ; 677: 0x9c657e99d7150dbe => android/hardware/camera2/CameraCharacteristics
	i64 11280841333105678042, ; 678: 0x9c8d996c8b4ed6da => java/util/function/IntConsumer
	i64 11291374328304676105, ; 679: 0x9cb305209890ad09 => android/view/GestureDetector
	i64 11300391941134751458, ; 680: 0x9cd30e99320616e2 => android/view/WindowInsetsAnimation
	i64 11303092492513440383, ; 681: 0x9cdca6bc4fa5f27f => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i64 11316980762789968198, ; 682: 0x9d0dfe0b38067946 => androidx/navigation/fragment/NavHostFragment
	i64 11318214316270108732, ; 683: 0x9d125ff44505403c => androidx/core/view/DisplayCutoutCompat
	i64 11319579417811750335, ; 684: 0x9d173981bd7e0dbf => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i64 11347448736908623594, ; 685: 0x9d7a3c813e64beea => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i64 11348321151605279956, ; 686: 0x9d7d55f61e7c0cd4 => android/view/animation/Animation
	i64 11350043478091902911, ; 687: 0x9d83746880e82fbf => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i64 11362626114661944393, ; 688: 0x9db0283fe0008c49 => crc640ec207abc449b2ca/ScrollLayoutManager
	i64 11373498917253313136, ; 689: 0x9dd6c901802c7270 => android/graphics/Bitmap$CompressFormat
	i64 11382222561093279360, ; 690: 0x9df5c71d1c66de80 => androidx/appcompat/widget/AppCompatImageButton
	i64 11393831178655295976, ; 691: 0x9e1f05170284e9e8 => javax/net/ssl/SSLContext
	i64 11433447159505902538, ; 692: 0x9eabc39d548c5bca => crc64e1fb321c08285b90/ViewRenderer
	i64 11450474772635999718, ; 693: 0x9ee84223748a5de6 => androidx/core/view/OnApplyWindowInsetsListener
	i64 11455013877405489018, ; 694: 0x9ef8626e23ec977a => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i64 11458704622197203966, ; 695: 0x9f057f24a030e3fe => androidx/fragment/app/FragmentContainerView
	i64 11482682312365990619, ; 696: 0x9f5aaeb9a93c62db => android/content/ContentProvider
	i64 11502418447837245771, ; 697: 0x9fa0cca2c93d314b => androidx/core/view/AccessibilityDelegateCompat
	i64 11535591933768018538, ; 698: 0xa016a7bede1aaa6a => android/widget/CompoundButton
	i64 11549904604889637347, ; 699: 0xa049810b4c1861e3 => java/math/BigInteger
	i64 11559083904147049039, ; 700: 0xa06a1d91739eca4f => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i64 11573301743732151818, ; 701: 0xa09ca09e3190560a => mono/java/lang/RunnableImplementor
	i64 11583143563284489324, ; 702: 0xa0bf97b35feca46c => android/util/StateSet
	i64 11585998938245262039, ; 703: 0xa0c9bca62a296ad7 => mono/android/runtime/JavaArray
	i64 11598024117237361233, ; 704: 0xa0f4757c5458aa51 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i64 11599884267556258346, ; 705: 0xa0fb11485355422a => android/graphics/Paint$Join
	i64 11602363698226276253, ; 706: 0xa103e04fc3aa279d => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i64 11642736392037688837, ; 707: 0xa1934f100ceb6605 => android/provider/ContactsContract
	i64 11645903917753074926, ; 708: 0xa19e8fe91a0084ee => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i64 11652834085301598403, ; 709: 0xa1b72edc78f738c3 => androidx/appcompat/app/ActionBar$OnNavigationListener
	i64 11674634942540717397, ; 710: 0xa204a2a018809d55 => com/microsoft/maui/PlatformLineHeightSpan
	i64 11712899692065226922, ; 711: 0xa28c94365b5480aa => java/util/ArrayList
	i64 11727968597912444134, ; 712: 0xa2c21d4d6781dce6 => androidx/appcompat/widget/AppCompatTextView
	i64 11733033384446672514, ; 713: 0xa2d41bb2e9be3e82 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i64 11746098886186715163, ; 714: 0xa30286b417c5481b => crc6452ffdc5b34af3a0f/MauiWebView
	i64 11763058807128842702, ; 715: 0xa33ec7a966f1e1ce => java/security/cert/Certificate
	i64 11772704798930040391, ; 716: 0xa3610ca3e1c2f647 => androidx/recyclerview/widget/RecyclerView
	i64 11803136239818375911, ; 717: 0xa3cd29dfd9ea02e7 => com/microsoft/maui/ImageLoaderCallback
	i64 11815547073218641318, ; 718: 0xa3f941762e1a7da6 => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i64 11852070525194104598, ; 719: 0xa47b035903126f16 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i64 11862840459039463804, ; 720: 0xa4a1468ba42dd97c => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i64 11881882108125626106, ; 721: 0xa4e4ecd30de5befa => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i64 11886035554516586888, ; 722: 0xa4f3ae5ca69fd188 => androidx/core/widget/CompoundButtonCompat
	i64 11887610981211642202, ; 723: 0xa4f947344327195a => crc645d80431ce5f73f11/DataChangeObserver
	i64 11887946763374938247, ; 724: 0xa4fa7898a3b7c887 => android/view/accessibility/AccessibilityNodeInfo
	i64 11893890523420890567, ; 725: 0xa50f966a1de315c7 => java/util/concurrent/Future
	i64 11895525870086415889, ; 726: 0xa51565c0eef86611 => java/util/concurrent/TimeUnit
	i64 11904910774208243445, ; 727: 0xa536bd46336726f5 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i64 11916781626688848330, ; 728: 0xa560e9c06cb0c1ca => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i64 11934798350699665373, ; 729: 0xa5a0ebdddf5f17dd => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i64 11954228872253987625, ; 730: 0xa5e5f3d2b66adb29 => android/view/View
	i64 11964861904226695339, ; 731: 0xa60bba82640938ab => android/view/animation/DecelerateInterpolator
	i64 11978683345021741925, ; 732: 0xa63cd50958e8ab65 => javax/crypto/BadPaddingException
	i64 11999052403845373657, ; 733: 0xa68532966c801ed9 => androidx/activity/ComponentActivity
	i64 12010988764752805573, ; 734: 0xa6af9aa5044c7ec5 => android/provider/MediaStore$Images
	i64 12016049636675011370, ; 735: 0xa6c1957b1579c32a => android/widget/EditText
	i64 12038506047031854553, ; 736: 0xa7115d778fb9c5d9 => androidx/navigation/ui/AppBarConfiguration$Builder
	i64 12058030931184860355, ; 737: 0xa756bb3ee7f23cc3 => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i64 12073113755568574408, ; 738: 0xa78c50fe9d8c0fc8 => androidx/navigation/NavDirections
	i64 12087035618859132646, ; 739: 0xa7bdc6db0197a6e6 => androidx/navigation/NavController$OnDestinationChangedListener
	i64 12091018642200028712, ; 740: 0xa7cbed64e4f56628 => crc64d42f28bda5037441/MainActivity
	i64 12095812086181006791, ; 741: 0xa7dcf5018ab20dc7 => java/text/DecimalFormat
	i64 12121692130554347282, ; 742: 0xa838e6c4ee56ff12 => android/content/DialogInterface$OnShowListener
	i64 12140364777871027762, ; 743: 0xa87b3d716caaae32 => com/google/android/material/button/MaterialButton
	i64 12144849849415441964, ; 744: 0xa88b2c9784dd1e2c => javax/crypto/IllegalBlockSizeException
	i64 12170573762016350767, ; 745: 0xa8e6905aa5ac922f => androidx/coordinatorlayout/widget/CoordinatorLayout
	i64 12171762459922923198, ; 746: 0xa8eac977f223febe => crc64d693e2d9159537db/BlazorWebChromeClient
	i64 12177184876160314206, ; 747: 0xa8fe0d209bcb6b5e => crc640ec207abc449b2ca/ShellToolbarTracker
	i64 12178551107760647509, ; 748: 0xa902e7b531036d55 => android/content/pm/ShortcutInfo$Builder
	i64 12188243356700996345, ; 749: 0xa92556c1c02d72f9 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i64 12204817298245236931, ; 750: 0xa96038ab3a7338c3 => android/animation/Animator
	i64 12228984007958404582, ; 751: 0xa9b61429ce4b1de6 => android/content/Context
	i64 12357628517981024779, ; 752: 0xab7f1da9e07ef20b => com/google/android/material/tabs/TabLayout$TabView
	i64 12394252047178846529, ; 753: 0xac013a91c0c0d141 => androidx/core/view/ViewPropertyAnimatorListener
	i64 12406331470302940810, ; 754: 0xac2c24bd9d280e8a => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i64 12418532417713721361, ; 755: 0xac577d700d7fd011 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i64 12424155630573804649, ; 756: 0xac6b77b852855c69 => androidx/cursoradapter/widget/CursorAdapter
	i64 12426529965699990912, ; 757: 0xac73e72a4c4b8580 => java/lang/IndexOutOfBoundsException
	i64 12458575303368155603, ; 758: 0xace5c03ae4b6a1d3 => android/content/res/Resources
	i64 12459958381958228342, ; 759: 0xaceaaa21f8c56976 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i64 12473096163495768810, ; 760: 0xad1956e01a73f2ea => android/provider/MediaStore$Video
	i64 12476375190645835422, ; 761: 0xad24fd221af1069e => android/os/Looper
	i64 12488842103917764438, ; 762: 0xad5147b98bf5df56 => java/lang/IllegalStateException
	i64 12498190180125277945, ; 763: 0xad727dc025a47ef9 => android/view/animation/AccelerateInterpolator
	i64 12507292395611969941, ; 764: 0xad92d42ad6655995 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i64 12519182673097780081, ; 765: 0xadbd124fcc37eb71 => crc640ec207abc449b2ca/ShellItemRenderer
	i64 12521855745784279582, ; 766: 0xadc691750827f21e => android/graphics/drawable/Drawable$ConstantState
	i64 12532121860257401396, ; 767: 0xadeb0a6f128cca34 => java/lang/Number
	i64 12552175079452445066, ; 768: 0xae3248bb0146098a => androidx/lifecycle/Lifecycle$Event
	i64 12562806007935242682, ; 769: 0xae580d80ed1f91ba => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i64 12568075173813774169, ; 770: 0xae6ac5c835936759 => android/hardware/camera2/CameraCharacteristics$Key
	i64 12617938093516012652, ; 771: 0xaf1bebd7e5e43c6c => crc640ec207abc449b2ca/ShellSectionRenderer
	i64 12620927486094336076, ; 772: 0xaf268aae189de04c => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i64 12636253712611178016, ; 773: 0xaf5cfdcd47e67620 => android/text/style/ParagraphStyle
	i64 12636367776980213416, ; 774: 0xaf5d658af6191ea8 => androidx/fragment/app/strictmode/Violation
	i64 12693819786861733279, ; 775: 0xb02981d766b7e59f => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i64 12710812532019973712, ; 776: 0xb065e0a731a24e50 => androidx/navigation/NavGraphNavigator
	i64 12728286941582258848, ; 777: 0xb0a3f5893840f2a0 => android/text/StaticLayout
	i64 12743457539483353118, ; 778: 0xb0d9db1d4b2dc01e => androidx/lifecycle/Lifecycle$State
	i64 12751697412850589334, ; 779: 0xb0f7213c503a1e96 => android/provider/Settings$System
	i64 12774266387958735952, ; 780: 0xb1474f99507e2450 => androidx/core/content/pm/PackageInfoCompat
	i64 12779280579384883315, ; 781: 0xb1591ffabb48b873 => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i64 12787245097144369327, ; 782: 0xb1756baa872540af => android/text/style/CharacterStyle
	i64 12792955789176512524, ; 783: 0xb189b582a124a00c => androidx/core/view/ViewPropertyAnimatorCompat
	i64 12805546267304270225, ; 784: 0xb1b6707bc1801991 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i64 12806567541869262104, ; 785: 0xb1ba1153c52a3518 => java/lang/Integer
	i64 12807831994208149158, ; 786: 0xb1be8f5705a8dea6 => com/google/android/material/bottomsheet/BottomSheetDialog
	i64 12811923833721965587, ; 787: 0xb1cd18d8a65bcc13 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i64 12829421241662982594, ; 788: 0xb20b42a5672c49c2 => androidx/appcompat/app/AppCompatDelegate
	i64 12834769660475362759, ; 789: 0xb21e430132984dc7 => android/widget/Filter
	i64 12849974230675558933, ; 790: 0xb254477b10571215 => android/widget/ImageButton
	i64 12860500274240197627, ; 791: 0xb279acdc8fe693fb => androidx/lifecycle/viewmodel/ViewModelInitializer
	i64 12864328447742669379, ; 792: 0xb2874690a9a77243 => android/webkit/WebMessagePort$WebMessageCallback
	i64 12882710959019299141, ; 793: 0xb2c8955c98609145 => java/net/SocketTimeoutException
	i64 12888661543481730055, ; 794: 0xb2ddb96301776407 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i64 12915473442100513285, ; 795: 0xb33cfaaa9e648a05 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i64 12961895021666395627, ; 796: 0xb3e1e6d8de5465eb => crc6452ffdc5b34af3a0f/ContainerView
	i64 12972298771783691784, ; 797: 0xb406dd00b4672e08 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i64 13046320909237610371, ; 798: 0xb50dd7be9cdbe783 => android/content/res/XmlResourceParser
	i64 13093392672838054310, ; 799: 0xb5b51343a136f1a6 => android/os/Message
	i64 13095297719287712405, ; 800: 0xb5bbd7e4d2208a95 => android/graphics/SurfaceTexture
	i64 13096056689640900747, ; 801: 0xb5be8a2c606c888b => android/widget/Filterable
	i64 13096165904162462397, ; 802: 0xb5beed80dd2f9abd => java/security/GeneralSecurityException
	i64 13098653679835327793, ; 803: 0xb5c7c41f4672ad31 => crc645d80431ce5f73f11/ScrollHelper
	i64 13110294641226230201, ; 804: 0xb5f11f83ceff29b9 => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i64 13120818853233679472, ; 805: 0xb616833add3ddc70 => android/widget/AdapterView$OnItemClickListener
	i64 13147524012913224524, ; 806: 0xb675636e619c6b4c => androidx/drawerlayout/widget/DrawerLayout
	i64 13162079438830684735, ; 807: 0xb6a9198390f9ca3f => androidx/activity/result/ActivityResultCallback
	i64 13182567943790513355, ; 808: 0xb6f1e3b35d15cccb => androidx/recyclerview/widget/RecyclerView$Recycler
	i64 13190940126609738208, ; 809: 0xb70fa228140509e0 => crc64e1fb321c08285b90/BaseCellView
	i64 13191394589072141775, ; 810: 0xb7113f7cdda7adcf => android/app/AlertDialog$Builder
	i64 13210945690397914619, ; 811: 0xb756b51c5f2535fb => android/view/View$OnKeyListener
	i64 13236489839551357601, ; 812: 0xb7b175610f86a2a1 => crc64d42f28bda5037441/MainApplication
	i64 13268016443183773138, ; 813: 0xb82176a87a02b5d2 => com/google/android/material/navigation/NavigationBarMenuView
	i64 13273174976752683068, ; 814: 0xb833ca512af2883c => java/security/PrivateKey
	i64 13289276415019534080, ; 815: 0xb86cfe7d67374700 => crc640ec207abc449b2ca/ShellContentFragment
	i64 13291089739636035741, ; 816: 0xb8736fb2f0d8509d => android/content/ComponentName
	i64 13311117679692485447, ; 817: 0xb8ba97011d7e1347 => android/widget/HorizontalScrollView
	i64 13328964012539637362, ; 818: 0xb8f9fe264763ee72 => crc6452ffdc5b34af3a0f/MauiStepper
	i64 13335777145830317192, ; 819: 0xb91232a87cfd1c88 => android/graphics/Point
	i64 13350193320460643475, ; 820: 0xb9456a17b4d96c93 => android/graphics/Region$Op
	i64 13392547762908668185, ; 821: 0xb9dbe33bcd9fa119 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i64 13402681668680117407, ; 822: 0xb9ffe3f79b516c9f => android/view/ViewManager
	i64 13402779434266666368, ; 823: 0xba003ce26e602580 => mono/android/TypeManager
	i64 13428863503685738205, ; 824: 0xba5ce8351a655edd => androidx/appcompat/view/menu/MenuPresenter
	i64 13431868251608748947, ; 825: 0xba6795027efc9393 => android/content/LocusId
	i64 13449523322638373729, ; 826: 0xbaa64e340c311361 => javax/crypto/KeyGenerator
	i64 13455380521827779074, ; 827: 0xbabb1d4b81414202 => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i64 13481151543294994875, ; 828: 0xbb16abe7054ea9bb => androidx/navigation/NavInflater
	i64 13491848569179882038, ; 829: 0xbb3cacca71544236 => android/app/AlertDialog
	i64 13493236796125990997, ; 830: 0xbb419b603751d055 => android/graphics/Rect
	i64 13496056631819609460, ; 831: 0xbb4ba0006029a574 => androidx/loader/app/LoaderManager
	i64 13501119006686247638, ; 832: 0xbb5d9c345fcefad6 => android/content/IntentSender
	i64 13502560151794130917, ; 833: 0xbb62baeb1e089fe5 => javax/security/auth/Subject
	i64 13504893900460985028, ; 834: 0xbb6b057352510ac4 => androidx/activity/OnBackPressedDispatcher
	i64 13523980973848974312, ; 835: 0xbbaed50ae768d3e8 => crc6452ffdc5b34af3a0f/MauiPageControl
	i64 13538702551831216454, ; 836: 0xbbe3223d61930146 => androidx/core/text/PrecomputedTextCompat$Params
	i64 13549049598049389944, ; 837: 0xbc07e4d2cfe20d78 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i64 13556576098032765635, ; 838: 0xbc22a222a5cb4ac3 => android/util/DisplayMetrics
	i64 13564741051355351458, ; 839: 0xbc3fa41dfc31c9a2 => crc640ec207abc449b2ca/ContainerView
	i64 13570449615737423646, ; 840: 0xbc53ec06b45d871e => androidx/fragment/app/FragmentResultListener
	i64 13664354974869333647, ; 841: 0xbda18a73e9eda68f => androidx/appcompat/app/AppCompatCallback
	i64 13667817128403725814, ; 842: 0xbdadd7435980edf6 => android/content/DialogInterface$OnCancelListener
	i64 13693791080030832438, ; 843: 0xbe0a1e6f39a68736 => android/provider/Telephony$Sms
	i64 13753163933648662796, ; 844: 0xbedd0dbaf2d7b10c => android/view/accessibility/AccessibilityWindowInfo
	i64 13768816776394003597, ; 845: 0xbf14a9e86667548d => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i64 13770727111868296170, ; 846: 0xbf1b735909c02bea => java/io/StringWriter
	i64 13780597133996308832, ; 847: 0xbf3e8414a49db960 => android/graphics/Xfermode
	i64 13789203013919682202, ; 848: 0xbf5d1715346dae9a => java/lang/RuntimeException
	i64 13791871322112145521, ; 849: 0xbf6691e51e643871 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i64 13805562342397192842, ; 850: 0xbf9735ce2f182a8a => android/util/AttributeSet
	i64 13814726415558267663, ; 851: 0xbfb7c47b3c8e530f => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i64 13854972641976575186, ; 852: 0xc046c03609c4e4d2 => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i64 13877554026709814142, ; 853: 0xc096f9dc61548b7e => android/view/View$OnClickListener
	i64 13947259019881283147, ; 854: 0xc18e9e2ece62fe4b => androidx/core/view/WindowInsetsCompat$Type
	i64 13959986462581077347, ; 855: 0xc1bbd5b97b683563 => java/net/UnknownServiceException
	i64 13963521009268026143, ; 856: 0xc1c86460431feb1f => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i64 13975325537152167595, ; 857: 0xc1f2548816666eab => android/graphics/Typeface
	i64 13981492061668866838, ; 858: 0xc2083cf3f5b77b16 => crc64338477404e88479c/GradientStrokeDrawable
	i64 13999439648138060820, ; 859: 0xc248003011c9e414 => crc645d80431ce5f73f11/EdgeSnapHelper
	i64 14019895060012318725, ; 860: 0xc290ac46c849c005 => android/widget/SearchView
	i64 14024183407882682596, ; 861: 0xc29fe88193c640e4 => android/webkit/WebChromeClient$FileChooserParams
	i64 14031640676547298208, ; 862: 0xc2ba66da3d8603a0 => java/nio/channels/FileChannel
	i64 14043684570532002328, ; 863: 0xc2e530b5d431ba18 => androidx/appcompat/app/ActionBar$Tab
	i64 14047598317436139102, ; 864: 0xc2f3183e0a27f65e => android/graphics/drawable/DrawableWrapper
	i64 14048987852729596032, ; 865: 0xc2f808046fb9b880 => android/graphics/ColorFilter
	i64 14105780303820480374, ; 866: 0xc3c1cc7360ebdf76 => com/google/android/material/shape/MaterialShapeDrawable
	i64 14106376025425781447, ; 867: 0xc3c3ea419f9722c7 => androidx/appcompat/app/AlertDialog
	i64 14112586515800836564, ; 868: 0xc3d9faaa1846c9d4 => androidx/viewpager/widget/PagerAdapter
	i64 14116135994739045768, ; 869: 0xc3e696e58f86b588 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i64 14146902927644867185, ; 870: 0xc453e5425a34ba71 => android/widget/CompoundButton$OnCheckedChangeListener
	i64 14155244942094649191, ; 871: 0xc4718846f2324767 => crc645d80431ce5f73f11/SingleSnapHelper
	i64 14160925941038085484, ; 872: 0xc485b71d9630756c => javax/net/ssl/KeyManagerFactory
	i64 14166708697631601657, ; 873: 0xc49a428086c4b3f9 => androidx/savedstate/SavedStateRegistry
	i64 14167891754637755728, ; 874: 0xc49e767c735e8550 => java/lang/Object
	i64 14180814796703042768, ; 875: 0xc4cc5feca7168cd0 => java/lang/ClassCastException
	i64 14206023932851353817, ; 876: 0xc525ef800c4d78d9 => mono/android/runtime/OutputStreamAdapter
	i64 14232617762048217248, ; 877: 0xc5846a726acc90a0 => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i64 14253600974846093496, ; 878: 0xc5cef6915bdce8b8 => androidx/core/view/WindowInsetsControllerCompat
	i64 14254302629814136516, ; 879: 0xc5d174b822fceec4 => android/webkit/MimeTypeMap
	i64 14279287371309537477, ; 880: 0xc62a383594a058c5 => android/view/View$OnTouchListener
	i64 14284032202517437988, ; 881: 0xc63b139baf4ade24 => androidx/fragment/app/FragmentActivity
	i64 14296237994325564878, ; 882: 0xc66670b60c37ddce => android/content/SharedPreferences
	i64 14302633742771949387, ; 883: 0xc67d299c46700f4b => crc6452ffdc5b34af3a0f/ViewFragment
	i64 14328901088261815086, ; 884: 0xc6da7b9f3b8dbb2e => android/view/ViewParent
	i64 14348802445188264590, ; 885: 0xc7212fccf9b3f28e => android/widget/ImageView$ScaleType
	i64 14361336093130752981, ; 886: 0xc74db7164b0e03d5 => android/speech/tts/TextToSpeech$OnUtteranceCompletedListener
	i64 14361620789319229198, ; 887: 0xc74eba044a3cdf0e => android/os/Parcel
	i64 14373035975141672420, ; 888: 0xc77748115a3ac5e4 => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i64 14383499576874121735, ; 889: 0xc79c74a87a903a07 => androidx/navigation/NavGraph
	i64 14388002076679644731, ; 890: 0xc7ac73a86812a63b => android/graphics/drawable/shapes/OvalShape
	i64 14409437776328802396, ; 891: 0xc7f89b50272c405c => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i64 14409679416056247518, ; 892: 0xc7f97715494a74de => androidx/customview/widget/Openable
	i64 14410455096550147880, ; 893: 0xc7fc388f7996c728 => android/graphics/drawable/InsetDrawable
	i64 14450562110423246060, ; 894: 0xc88ab5ad547f24ec => android/graphics/drawable/BitmapDrawable
	i64 14473677460123656210, ; 895: 0xc8dcd4f7143fa012 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i64 14477118653081573042, ; 896: 0xc8e90eb6401bd6b2 => androidx/navigation/NavType
	i64 14480243895569103343, ; 897: 0xc8f4291a786a39ef => androidx/core/app/ActivityCompat
	i64 14501341618205132561, ; 898: 0xc93f1d5ecfb48711 => java/lang/Byte
	i64 14511787718764536802, ; 899: 0xc9643a0b20d623e2 => android/app/DatePickerDialog
	i64 14529413187006755165, ; 900: 0xc9a2d8503e69f15d => androidx/cardview/widget/CardView
	i64 14569564621816213537, ; 901: 0xca317dd4a7743021 => androidx/core/app/ActivityCompat$PermissionCompatDelegate
	i64 14569790583249546864, ; 902: 0xca324b57666bae70 => crc64e1fb321c08285b90/CellAdapter
	i64 14580999150803139285, ; 903: 0xca5a1d7965e4bad5 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i64 14640111878662023944, ; 904: 0xcb2c202fdfa06b08 => android/webkit/WebChromeClient
	i64 14646637314621902207, ; 905: 0xcb434f0954050d7f => androidx/navigation/NavArgument
	i64 14649586819325063784, ; 906: 0xcb4dc998681d7268 => mono/android/view/View_OnClickListenerImplementor
	i64 14684559126920293129, ; 907: 0xcbca08b94b4deb09 => java/lang/CharSequence
	i64 14696990417030334583, ; 908: 0xcbf632ea9269c877 => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i64 14717452127296789712, ; 909: 0xcc3ee4bbbe579cd0 => android/widget/TextView$OnEditorActionListener
	i64 14767308754462789278, ; 910: 0xccf0051256454e9e => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i64 14808640800227433603, ; 911: 0xcd82dc5927e99c83 => android/net/wifi/WifiManager
	i64 14830759644181035942, ; 912: 0xcdd17151d49bfba6 => android/content/res/AssetManager
	i64 14839707784907493044, ; 913: 0xcdf13b9b32028eb4 => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i64 14870603443619940424, ; 914: 0xce5eff0b4caac848 => android/webkit/WebView$HitTestResult
	i64 14871549625697939253, ; 915: 0xce625b977b51af35 => androidx/core/view/WindowInsetsCompat
	i64 14934812915918164505, ; 916: 0xcf431d381037d219 => android/net/ConnectivityManager
	i64 14940408132235664607, ; 917: 0xcf56fe09e1439cdf => java/lang/Throwable
	i64 14940704599466395126, ; 918: 0xcf580bac893d45f6 => android/util/Log
	i64 14958061161715232945, ; 919: 0xcf95b560189a70b1 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i64 15015211024739412603, ; 920: 0xd060bedf7d1f2a7b => crc64e1fb321c08285b90/ListViewRenderer_Container
	i64 15069781826446509586, ; 921: 0xd1229eba5ffb4612 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i64 15102224934851433618, ; 922: 0xd195e1902fddd492 => android/graphics/PointF
	i64 15108480622982719114, ; 923: 0xd1ac1b1414c1e68a => android/view/WindowInsetsAnimation$Bounds
	i64 15108754265133970823, ; 924: 0xd1ad13f45bfa7587 => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i64 15114515369987516226, ; 925: 0xd1c18ba61c49a742 => android/speech/tts/TextToSpeech$OnInitListener
	i64 15142650489578038267, ; 926: 0xd22580641d31a3fb => java/lang/StackTraceElement
	i64 15163559008692216854, ; 927: 0xd26fc89413c62416 => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i64 15173351290658902524, ; 928: 0xd292929b63f051fc => crc64a0e0a82d0db9a07d/WebAuthenticatorIntermediateActivity
	i64 15178898666151156562, ; 929: 0xd2a647ea65971b52 => javax/net/ssl/HostnameVerifier
	i64 15183122999177041308, ; 930: 0xd2b549ec9302d59c => org/xmlpull/v1/XmlPullParser
	i64 15187719665669744680, ; 931: 0xd2c59e916475a828 => androidx/browser/customtabs/CustomTabsServiceConnection
	i64 15200090388991477583, ; 932: 0xd2f191acddaa874f => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i64 15223859190564664402, ; 933: 0xd34603463c2c3452 => android/text/Editable
	i64 15254143212594890638, ; 934: 0xd3b19a6e93a7878e => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i64 15281211929309566451, ; 935: 0xd411c5494ff555f3 => android/opengl/Matrix
	i64 15292011917245906584, ; 936: 0xd43823d1747b7e98 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i64 15295416057057826855, ; 937: 0xd4443bdd84bcd827 => android/widget/AdapterView$OnItemSelectedListener
	i64 15298816789066891989, ; 938: 0xd45050d0241d42d5 => androidx/core/view/DragAndDropPermissionsCompat
	i64 15367873893566575642, ; 939: 0xd545a7e23b08f41a => android/widget/AbsoluteLayout
	i64 15372017254581008822, ; 940: 0xd554603fa479f9b6 => java/security/InvalidAlgorithmParameterException
	i64 15402581295675135441, ; 941: 0xd5c0f61500cad5d1 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i64 15406288353308370229, ; 942: 0xd5ce21a19e2ee535 => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i64 15446304586598055563, ; 943: 0xd65c4c2ef8a9fe8b => android/webkit/WebResourceRequest
	i64 15454418390339497104, ; 944: 0xd6791fa51e732c90 => java/security/InvalidKeyException
	i64 15491006674716798107, ; 945: 0xd6fb1c7eebb32c9b => androidx/browser/customtabs/CustomTabsClient
	i64 15491531562149856067, ; 946: 0xd6fcf9e0ccb1c343 => mono/android/view/View_OnScrollChangeListenerImplementor
	i64 15510641966713668568, ; 947: 0xd740deb0983c03d8 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i64 15514897124683647083, ; 948: 0xd74ffcbbc37f886b => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i64 15529409965027140022, ; 949: 0xd7838c15b8daa1b6 => android/app/UiModeManager
	i64 15545162226811407960, ; 950: 0xd7bb82aef8ea0e58 => androidx/core/view/ContentInfoCompat
	i64 15562956098342981803, ; 951: 0xd7faba1d88bb90ab => kotlin/jvm/internal/DefaultConstructorMarker
	i64 15580854786307338793, ; 952: 0xd83a50e092cb3229 => kotlin/coroutines/CoroutineContext
	i64 15625622630723498443, ; 953: 0xd8d95cfe9a9431cb => mono/android/text/TextWatcherImplementor
	i64 15633873768898914415, ; 954: 0xd8f6ad5c6a84686f => java/io/Writer
	i64 15645438581444444576, ; 955: 0xd91fc37f2a3001a0 => java/lang/Appendable
	i64 15650899170711101772, ; 956: 0xd93329dfadb0e14c => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i64 15655567004052913371, ; 957: 0xd943bf3e51e67cdb => androidx/lifecycle/LifecycleOwner
	i64 15662842236679988787, ; 958: 0xd95d98076a4ba633 => androidx/navigation/ui/NavigationUI
	i64 15694161194160243941, ; 959: 0xd9ccdc7471a444e5 => androidx/core/content/PermissionChecker
	i64 15695387359379628636, ; 960: 0xd9d137a547faa25c => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i64 15696148966177826650, ; 961: 0xd9d3ec52aea4e75a => androidx/appcompat/widget/ScrollingTabContainerView
	i64 15699556301161391558, ; 962: 0xd9e00746adf865c6 => android/view/WindowMetrics
	i64 15735391017453652107, ; 963: 0xda5f56c2bd32888b => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i64 15750901962981117241, ; 964: 0xda9671e22b7e0d39 => android/webkit/WebResourceResponse
	i64 15767615218119146656, ; 965: 0xdad1d2801f08fca0 => javax/net/ssl/SSLSessionContext
	i64 15773716038598610423, ; 966: 0xdae77f2a148d4df7 => java/security/KeyStore$LoadStoreParameter
	i64 15788118993200236606, ; 967: 0xdb1aaa93454c483e => javax/crypto/spec/IvParameterSpec
	i64 15792778596129101375, ; 968: 0xdb2b38759eaad63f => androidx/appcompat/widget/SwitchCompat
	i64 15795508579813667467, ; 969: 0xdb34eb5d7a6db28b => android/graphics/Paint$FontMetricsInt
	i64 15799365448008084158, ; 970: 0xdb429f2a951a2abe => android/os/LocaleList
	i64 15818982522861491288, ; 971: 0xdb8850cabf459458 => android/graphics/BlurMaskFilter
	i64 15822621356783831935, ; 972: 0xdb953e4aca9c0b7f => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i64 15827905324826524828, ; 973: 0xdba8040878cc7c9c => android/app/TimePickerDialog
	i64 15844004444849296506, ; 974: 0xdbe13618f2f3d47a => android/widget/ListView
	i64 15872432268820698417, ; 975: 0xdc46350d80815531 => androidx/appcompat/widget/SearchView$OnCloseListener
	i64 15879626577687273942, ; 976: 0xdc5fc43d10e6e1d6 => androidx/activity/FullyDrawnReporter
	i64 15880506401606549681, ; 977: 0xdc62e46f091340b1 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i64 15888603495552893685, ; 978: 0xdc7fa8b2a175c2f5 => javax/net/ssl/TrustManager
	i64 15896143924811176167, ; 979: 0xdc9a72ada0da98e7 => java/net/SocketException
	i64 15958735587383603777, ; 980: 0xdd78d176b6627241 => java/security/KeyPairGenerator
	i64 16000943973062282533, ; 981: 0xde0ec5c4514e0d25 => android/graphics/PorterDuffXfermode
	i64 16002286839467779661, ; 982: 0xde138b18c462a64d => android/os/Environment
	i64 16003229482241506982, ; 983: 0xde16e46ce4103ea6 => android/graphics/Bitmap
	i64 16025367657495699648, ; 984: 0xde658afa7c10a0c0 => android/graphics/drawable/DrawableContainer
	i64 16033914125125672261, ; 985: 0xde83e7f20b3bdd45 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i64 16065288398357904941, ; 986: 0xdef35eae4653be2d => android/text/style/BulletSpan
	i64 16065782154202443679, ; 987: 0xdef51fbfc40bef9f => androidx/browser/customtabs/CustomTabsSession
	i64 16066423801151412293, ; 988: 0xdef76752d682d845 => android/runtime/XmlReaderPullParser
	i64 16092214954021753346, ; 989: 0xdf53083d8fb21202 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i64 16101147842785907581, ; 990: 0xdf72c4a7cd4d137d => android/webkit/WebViewClient
	i64 16114332120846746518, ; 991: 0xdfa19bafbfbcc396 => android/hardware/camera2/CameraManager
	i64 16118150644112224899, ; 992: 0xdfaf2c9cfa8af283 => java/util/Locale
	i64 16122524016460970183, ; 993: 0xdfbeb62c13dc38c7 => com/google/android/material/shape/ShapePath
	i64 16135033049177225665, ; 994: 0xdfeb2712376579c1 => androidx/recyclerview/widget/LinearSmoothScroller
	i64 16169431511264197546, ; 995: 0xe0655c4a48e8fbaa => android/graphics/BitmapShader
	i64 16170603982710859185, ; 996: 0xe06986a590ff65b1 => android/view/ViewTreeObserver
	i64 16182470099411896328, ; 997: 0xe093aed127d38808 => android/view/animation/BaseInterpolator
	i64 16207444841424110295, ; 998: 0xe0ec693669d242d7 => android/view/ScaleGestureDetector
	i64 16212291146831355869, ; 999: 0xe0fda0e6d217dfdd => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i64 16218544741485660249, ; 1000: 0xe113d8834a084859 => android/os/Vibrator
	i64 16225173139187187041, ; 1001: 0xe12b650164763d61 => com/microsoft/maui/PlatformWrapperView
	i64 16240055937653829839, ; 1002: 0xe16044d4f05470cf => android/provider/ContactsContract$CommonDataKinds
	i64 16281235200369999056, ; 1003: 0xe1f291272ea3bcd0 => android/text/ClipboardManager
	i64 16314168557433322311, ; 1004: 0xe26791dde7a8fb47 => android/view/ContextThemeWrapper
	i64 16349046224998423095, ; 1005: 0xe2e37aebb178da37 => com/microsoft/maui/PlatformContentViewGroup
	i64 16394649269595106848, ; 1006: 0xe3857ea5eb556e20 => com/google/android/material/imageview/ShapeableImageView
	i64 16397303622013219778, ; 1007: 0xe38eecc48052f3c2 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i64 16403969118692566536, ; 1008: 0xe3a69b006225e608 => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i64 16410496677374749578, ; 1009: 0xe3bdcbc812a66b8a => android/location/Criteria
	i64 16413106091129197494, ; 1010: 0xe3c711078e8e53b6 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i64 16413651262945443612, ; 1011: 0xe3c900dc43013f1c => android/content/DialogInterface$OnClickListener
	i64 16419411156664895107, ; 1012: 0xe3dd77740618c683 => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i64 16422815340789202047, ; 1013: 0xe3e98f8a67937c7f => android/view/View$DragShadowBuilder
	i64 16453243756006384025, ; 1014: 0xe455aa05e7aca199 => androidx/fragment/app/FragmentHostCallback
	i64 16473535933434112898, ; 1015: 0xe49dc1a6a2f92b82 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i64 16480206070542885578, ; 1016: 0xe4b5741af3f1e2ca => android/view/SearchEvent
	i64 16499887184897512773, ; 1017: 0xe4fb5ff979d61545 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i64 16510466397656947047, ; 1018: 0xe520f5b6645d9967 => android/provider/MediaStore$Audio
	i64 16518950802127089170, ; 1019: 0xe53f1a3bbef06e12 => android/graphics/MaskFilter
	i64 16530905335535283041, ; 1020: 0xe56992d17430ab61 => androidx/loader/app/LoaderManager$LoaderCallbacks
	i64 16542847110558016359, ; 1021: 0xe593ffcc9e686367 => android/app/Application
	i64 16566688651954437030, ; 1022: 0xe5e8b38e0c3d3ba6 => android/graphics/DashPathEffect
	i64 16603717322881265010, ; 1023: 0xe66c40ef55566d72 => mono/android/runtime/JavaObject
	i64 16618397473501528129, ; 1024: 0xe6a06874404ec041 => android/graphics/Path
	i64 16640446916514625925, ; 1025: 0xe6eebe4e42993985 => java/util/Locale$Category
	i64 16645540958114363132, ; 1026: 0xe700d74f3e9f36fc => java/util/function/Predicate
	i64 16646452011251683774, ; 1027: 0xe70413e8553e51be => android/content/pm/ComponentInfo
	i64 16691018530259375973, ; 1028: 0xe7a268eba3929765 => com/google/android/material/appbar/ViewOffsetBehavior
	i64 16700678259308947609, ; 1029: 0xe7c4ba649232e899 => androidx/fragment/app/strictmode/FragmentStrictMode
	i64 16703917145489859151, ; 1030: 0xe7d03c24867ae24f => crc64e1fb321c08285b90/ViewRenderer_2
	i64 16723123314454325679, ; 1031: 0xe814780d351a69af => mono/android/runtime/InputStreamAdapter
	i64 16732048506261937943, ; 1032: 0xe8342d775c591f17 => android/graphics/PorterDuff$Mode
	i64 16744029422396892954, ; 1033: 0xe85ebe0bc6a7e71a => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i64 16745733288560112273, ; 1034: 0xe864cbb4080f3291 => crc645d80431ce5f73f11/ItemContentView
	i64 16753298404850265843, ; 1035: 0xe87fac22ed37eef3 => com/google/android/material/shape/ShapeAppearanceModel
	i64 16771336647146321301, ; 1036: 0xe8bfc1d27da5b595 => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i64 16832017439803262409, ; 1037: 0xe99756ae80a745c9 => android/view/ViewGroup
	i64 16878061737430998064, ; 1038: 0xea3aebb9f4afdc30 => android/content/SharedPreferences$Editor
	i64 16894727746734946765, ; 1039: 0xea76215fa11279cd => androidx/browser/customtabs/CustomTabsSession$PendingSession
	i64 16901170452203573289, ; 1040: 0xea8d04fae3ec1029 => crc64a0e0a82d0db9a07d/SingleLocationListener
	i64 16916694887332905051, ; 1041: 0xeac42c5f1d25005b => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i64 16940674673295938010, ; 1042: 0xeb195ddc1d42d1da => androidx/core/view/OnReceiveContentListener
	i64 16950392789332311313, ; 1043: 0xeb3be46f537ebd11 => android/content/pm/ShortcutManager
	i64 16953366867418781877, ; 1044: 0xeb467557d75f98b5 => android/widget/FrameLayout$LayoutParams
	i64 16977429381850492614, ; 1045: 0xeb9bf212907a6ec6 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i64 16987790575813017173, ; 1046: 0xebc0c18606103e55 => android/text/method/BaseKeyListener
	i64 16999219307367050470, ; 1047: 0xebe95be4f2932ce6 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i64 17053113564791162236, ; 1048: 0xeca8d46f97c5c57c => androidx/lifecycle/Observer
	i64 17057841802739383518, ; 1049: 0xecb9a0be4716fcde => android/os/VibrationEffect
	i64 17064122633455698822, ; 1050: 0xeccff12022d48386 => android/net/NetworkCapabilities
	i64 17068958298440960180, ; 1051: 0xece11f23208788b4 => android/util/SizeF
	i64 17074376177321076143, ; 1052: 0xecf45eab5a9d65af => android/text/style/StrikethroughSpan
	i64 17125416866214736517, ; 1053: 0xeda9b3e7cd367285 => java/io/OutputStream
	i64 17149437416712524469, ; 1054: 0xedff0a7808f152b5 => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i64 17159678788829724311, ; 1055: 0xee236cf14c003e97 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i64 17163176023095185573, ; 1056: 0xee2fd9a89a1710a5 => android/graphics/Matrix
	i64 17167329807099043935, ; 1057: 0xee3e9b80ce1d205f => android/view/animation/Animation$AnimationListener
	i64 17184852587379630472, ; 1058: 0xee7cdc6104372188 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i64 17187144890726037277, ; 1059: 0xee8501377ae5371d => crc64d693e2d9159537db/WebKitWebViewClient_JavaScriptValueCallback
	i64 17238696279294372110, ; 1060: 0xef3c26ee7630690e => xamarin/essentials/fileProvider
	i64 17259862802202170027, ; 1061: 0xef8759c59d3d12ab => androidx/appcompat/widget/SearchView
	i64 17264269287952196016, ; 1062: 0xef9701728713a1b0 => crc64a0e0a82d0db9a07d/EnergySaverBroadcastReceiver
	i64 17296586735193580360, ; 1063: 0xf009d1fe91f26348 => android/content/pm/ApplicationInfo
	i64 17308034145719428191, ; 1064: 0xf0327d5a87f0245f => android/webkit/WebResourceError
	i64 17312589003384955623, ; 1065: 0xf042abf8f91822e7 => android/view/KeyEvent
	i64 17331727000568967805, ; 1066: 0xf086a9e12cf5b27d => android/content/pm/ActivityInfo
	i64 17337702882535894412, ; 1067: 0xf09be4e99ed16d8c => java/security/Key
	i64 17353493063401139565, ; 1068: 0xf0d3fdff983aed6d => androidx/core/widget/NestedScrollView
	i64 17372832774230194541, ; 1069: 0xf118b35cea41396d => androidx/core/view/ScrollingView
	i64 17400847014138816993, ; 1070: 0xf17c3a2a6ca929e1 => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i64 17405205501308712532, ; 1071: 0xf18bb62fcc2e3654 => androidx/loader/content/Loader$OnLoadCanceledListener
	i64 17407046679165606066, ; 1072: 0xf19240ba6c4f18b2 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i64 17438622696042373437, ; 1073: 0xf2026ef2c1aba13d => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i64 17448877928212474867, ; 1074: 0xf226de0710422bf3 => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i64 17485531046532206351, ; 1075: 0xf2a915d8319dcf0f => android/database/CharArrayBuffer
	i64 17490083481060646178, ; 1076: 0xf2b94242748c1d22 => java/util/Enumeration
	i64 17498018958444438720, ; 1077: 0xf2d57388c321a4c0 => java/lang/Double
	i64 17519581955836770800, ; 1078: 0xf3220ef752fe79f0 => java/security/KeyStore
	i64 17542023464739623563, ; 1079: 0xf371c966495f528b => android/view/Display
	i64 17546585317893749861, ; 1080: 0xf381fe617e243c65 => androidx/viewpager2/adapter/FragmentStateAdapter
	i64 17568025852736065805, ; 1081: 0xf3ce2a6f0536510d => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i64 17574185961105681076, ; 1082: 0xf3e40d05045c6ab4 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i64 17596677532905382890, ; 1083: 0xf433f4fc27ec23ea => crc64e1fb321c08285b90/GroupedListViewAdapter
	i64 17602339105264995485, ; 1084: 0xf4481227b1498c9d => android/widget/EdgeEffect
	i64 17605619666541934257, ; 1085: 0xf453b9cee2dcf6b1 => java/net/Proxy$Type
	i64 17645817129531856090, ; 1086: 0xf4e28930113fd4da => java/io/Closeable
	i64 17650799501576161010, ; 1087: 0xf4f43ca0f516c6f2 => androidx/lifecycle/MutableLiveData
	i64 17660745169059311233, ; 1088: 0xf51792291e79ee81 => androidx/activity/result/ActivityResultLauncher
	i64 17671382671565006709, ; 1089: 0xf53d5ce9aca02775 => androidx/fragment/app/FragmentTransaction
	i64 17672504001507146299, ; 1090: 0xf54158c1a580ba3b => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i64 17687065826521364603, ; 1091: 0xf57514a8bcc1b87b => android/text/style/BackgroundColorSpan
	i64 17718601761205044311, ; 1092: 0xf5e51e6cb53cc457 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i64 17749971997883255411, ; 1093: 0xf654917d1af64a73 => android/graphics/drawable/shapes/RectShape
	i64 17762915657059999855, ; 1094: 0xf6828dad9a49206f => com/google/android/material/navigation/NavigationView
	i64 17770310772590916714, ; 1095: 0xf69cd37f1c94346a => androidx/activity/result/ActivityResultRegistry
	i64 17786854109604896016, ; 1096: 0xf6d79992eab25d10 => android/graphics/BitmapFactory
	i64 17800186900405514025, ; 1097: 0xf706f7ad2e3b6f29 => android/util/SparseArray
	i64 17815208443851966511, ; 1098: 0xf73c55b0cf56082f => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
	i64 17826434765037567068, ; 1099: 0xf76437f865bcfc5c => javax/crypto/SecretKey
	i64 17859888160793648683, ; 1100: 0xf7db11a8104f5e2b => android/content/ClipboardManager
	i64 17932258799253396161, ; 1101: 0xf8dc2e5e65df1ac1 => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i64 17958397297252185645, ; 1102: 0xf9390b31b60d362d => android/view/WindowInsets
	i64 17966509771654086234, ; 1103: 0xf955dd725906be5a => crc64338477404e88479c/InnerScaleListener
	i64 17984345105063787081, ; 1104: 0xf9953a96815cba49 => android/view/GestureDetector$OnGestureListener
	i64 17991546793642763742, ; 1105: 0xf9aed07c4ae525de => crc64e1fb321c08285b90/TableViewModelRenderer
	i64 17992660388602075186, ; 1106: 0xf9b2c54b52de5832 => android/webkit/WebView
	i64 17994707914779561645, ; 1107: 0xf9ba0b8229588ead => androidx/navigation/ui/AppBarConfiguration
	i64 18001325595512914928, ; 1108: 0xf9d18e4106b1c3f0 => android/hardware/Camera$Parameters
	i64 18006280295024823601, ; 1109: 0xf9e32886e7120d31 => android/view/ContentInfo
	i64 18013508180779119969, ; 1110: 0xf9fcd64031eeb561 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i64 18018038416899488951, ; 1111: 0xfa0cee79fca2bcb7 => java/text/Format
	i64 18028883106873553108, ; 1112: 0xfa3375aa223d30d4 => mono/android/animation/AnimatorEventDispatcher
	i64 18060209084809406592, ; 1113: 0xfaa2c079bd58e880 => android/view/GestureDetector$OnDoubleTapListener
	i64 18097369694249881732, ; 1114: 0xfb26c5da5aaf1084 => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i64 18102991096258414070, ; 1115: 0xfb3abe7d008ac5f6 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i64 18213852175163534091, ; 1116: 0xfcc49a0d5c192b0b => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 18216578448169670053, ; 1117: 0xfcce4995423095a5 => javax/net/ssl/SSLSocketFactory
	i64 18261049205373092432, ; 1118: 0xfd6c478048314250 => androidx/core/view/accessibility/AccessibilityViewCommand
	i64 18266445483201684091, ; 1119: 0xfd7f73631f46627b => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i64 18315601916551362550, ; 1120: 0xfe2e16e72381f7f6 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i64 18323076787180290332, ; 1121: 0xfe48a5421416411c => android/widget/BaseAdapter
	i64 18330448901237264806, ; 1122: 0xfe62d62823b251a6 => androidx/recyclerview/widget/ItemTouchUIUtil
	i64 18335874173895919002, ; 1123: 0xfe761c69dd53459a => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i64 18340490965821538680, ; 1124: 0xfe86835c800dc178 => com/microsoft/maui/BuildConfig
	i64 18360177796358405119, ; 1125: 0xfecc746decf4fbff => androidx/core/view/ViewCompat
	i64 18377761106826033935, ; 1126: 0xff0aec5b6b5afb0f => android/view/animation/AnimationSet
	i64 18401512074820890716, ; 1127: 0xff5f4dbc95c2b05c => java/lang/Float
	i64 18401692079723824300, ; 1128: 0xff5ff1733e0ec4ac => java/util/Collection
	i64 18410237031191181095, ; 1129: 0xff7e4d09cae47727 => android/graphics/LinearGradient
	i64 18428032965843356101 ; 1130: 0xffbd8658b64809c5 => android/widget/AbsoluteLayout$LayoutParams
], align 8

@module0_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1048; uint32_t java_map_index (0x418)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 206; uint32_t java_map_index (0xce)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 1087; uint32_t java_map_index (0x43f)
	} ; 2
], align 4

@module0_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1048; uint32_t java_map_index (0x418)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 206; uint32_t java_map_index (0xce)
	} ; 1
], align 4

@module1_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 868; uint32_t java_map_index (0x364)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 577; uint32_t java_map_index (0x241)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 919; uint32_t java_map_index (0x397)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 620; uint32_t java_map_index (0x26c)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 1012; uint32_t java_map_index (0x3f4)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 156; uint32_t java_map_index (0x9c)
	} ; 6
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 868; uint32_t java_map_index (0x364)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 620; uint32_t java_map_index (0x26c)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 156; uint32_t java_map_index (0x9c)
	} ; 3
], align 4

@module2_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 180; uint32_t java_map_index (0xb4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 457; uint32_t java_map_index (0x1c9)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 212; uint32_t java_map_index (0xd4)
	} ; 3
], align 4

@module2_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 180; uint32_t java_map_index (0xb4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 457; uint32_t java_map_index (0x1c9)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 212; uint32_t java_map_index (0xd4)
	} ; 3
], align 4

@module3_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 513; uint32_t java_map_index (0x201)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 951; uint32_t java_map_index (0x3b7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 388; uint32_t java_map_index (0x184)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 952; uint32_t java_map_index (0x3b8)
	} ; 8
], align 4

@module3_managed_to_java_duplicates = internal dso_local constant [8 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 513; uint32_t java_map_index (0x201)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 388; uint32_t java_map_index (0x184)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 952; uint32_t java_map_index (0x3b8)
	} ; 7
], align 4

@module4_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 127; uint32_t java_map_index (0x7f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 1071; uint32_t java_map_index (0x42f)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 386; uint32_t java_map_index (0x182)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 831; uint32_t java_map_index (0x33f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1020; uint32_t java_map_index (0x3fc)
	} ; 4
], align 4

@module4_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 1071; uint32_t java_map_index (0x42f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 386; uint32_t java_map_index (0x182)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1020; uint32_t java_map_index (0x3fc)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 831; uint32_t java_map_index (0x33f)
	} ; 3
], align 4

@module5_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 806; uint32_t java_map_index (0x326)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 349; uint32_t java_map_index (0x15d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 408; uint32_t java_map_index (0x198)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 89; uint32_t java_map_index (0x59)
	} ; 3
], align 4

@module5_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 349; uint32_t java_map_index (0x15d)
	} ; 0
], align 4

@module6_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 756; uint32_t java_map_index (0x2f4)
	} ; 0
], align 4

@module6_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 756; uint32_t java_map_index (0x2f4)
	} ; 0
], align 4

@module7_managed_to_java = internal dso_local constant [71 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 75; uint32_t java_map_index (0x4b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 232; uint32_t java_map_index (0xe8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 177; uint32_t java_map_index (0xb1)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 563; uint32_t java_map_index (0x233)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 219; uint32_t java_map_index (0xdb)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 244; uint32_t java_map_index (0xf4)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 959; uint32_t java_map_index (0x3bf)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 47; uint32_t java_map_index (0x2f)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 901; uint32_t java_map_index (0x385)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 161; uint32_t java_map_index (0xa1)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 78; uint32_t java_map_index (0x4e)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 635; uint32_t java_map_index (0x27b)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 1068; uint32_t java_map_index (0x42c)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 280; uint32_t java_map_index (0x118)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 694; uint32_t java_map_index (0x2b6)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 722; uint32_t java_map_index (0x2d2)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 530; uint32_t java_map_index (0x212)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 697; uint32_t java_map_index (0x2b9)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 540; uint32_t java_map_index (0x21c)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 523; uint32_t java_map_index (0x20b)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 516; uint32_t java_map_index (0x204)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 573; uint32_t java_map_index (0x23d)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 394; uint32_t java_map_index (0x18a)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 683; uint32_t java_map_index (0x2ab)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 938; uint32_t java_map_index (0x3aa)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 115; uint32_t java_map_index (0x73)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 693; uint32_t java_map_index (0x2b5)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 1042; uint32_t java_map_index (0x412)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 1069; uint32_t java_map_index (0x42d)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 753; uint32_t java_map_index (0x2f1)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 608; uint32_t java_map_index (0x260)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 143; uint32_t java_map_index (0x8f)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 373; uint32_t java_map_index (0x175)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 417; uint32_t java_map_index (0x1a1)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 1125; uint32_t java_map_index (0x465)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 1114; uint32_t java_map_index (0x45a)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 265; uint32_t java_map_index (0x109)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 713; uint32_t java_map_index (0x2c9)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 915; uint32_t java_map_index (0x393)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 641; uint32_t java_map_index (0x281)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 895; uint32_t java_map_index (0x37f)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 266; uint32_t java_map_index (0x10a)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 625; uint32_t java_map_index (0x271)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 561; uint32_t java_map_index (0x231)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 229; uint32_t java_map_index (0xe5)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 721; uint32_t java_map_index (0x2d1)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 947; uint32_t java_map_index (0x3b3)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 759; uint32_t java_map_index (0x2f7)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 1118; uint32_t java_map_index (0x45e)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 545; uint32_t java_map_index (0x221)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 836; uint32_t java_map_index (0x344)
	} ; 70
], align 4

@module7_managed_to_java_duplicates = internal dso_local constant [24 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 75; uint32_t java_map_index (0x4b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 47; uint32_t java_map_index (0x2f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 901; uint32_t java_map_index (0x385)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 78; uint32_t java_map_index (0x4e)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 280; uint32_t java_map_index (0x118)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 523; uint32_t java_map_index (0x20b)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 573; uint32_t java_map_index (0x23d)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 540; uint32_t java_map_index (0x21c)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 115; uint32_t java_map_index (0x73)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 693; uint32_t java_map_index (0x2b5)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 1042; uint32_t java_map_index (0x412)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 1069; uint32_t java_map_index (0x42d)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 753; uint32_t java_map_index (0x2f1)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 608; uint32_t java_map_index (0x260)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 143; uint32_t java_map_index (0x8f)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 265; uint32_t java_map_index (0x109)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 641; uint32_t java_map_index (0x281)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 1118; uint32_t java_map_index (0x45e)
	} ; 23
], align 4

@module8_managed_to_java = internal dso_local constant [12 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 733; uint32_t java_map_index (0x2dd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 589; uint32_t java_map_index (0x24d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 976; uint32_t java_map_index (0x3d0)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 362; uint32_t java_map_index (0x16a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 834; uint32_t java_map_index (0x342)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 849; uint32_t java_map_index (0x351)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1088; uint32_t java_map_index (0x440)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 1095; uint32_t java_map_index (0x447)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 807; uint32_t java_map_index (0x327)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 299; uint32_t java_map_index (0x12b)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 286; uint32_t java_map_index (0x11e)
	} ; 11
], align 4

@module8_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 362; uint32_t java_map_index (0x16a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1088; uint32_t java_map_index (0x440)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1095; uint32_t java_map_index (0x447)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 807; uint32_t java_map_index (0x327)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 299; uint32_t java_map_index (0x12b)
	} ; 5
], align 4

@module9_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 139; uint32_t java_map_index (0x8b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 768; uint32_t java_map_index (0x300)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 778; uint32_t java_map_index (0x30a)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 957; uint32_t java_map_index (0x3bd)
	} ; 4
], align 4

@module9_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 957; uint32_t java_map_index (0x3bd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 139; uint32_t java_map_index (0x8b)
	} ; 2
], align 4

@module10_managed_to_java = internal dso_local constant [56 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 1090; uint32_t java_map_index (0x442)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 867; uint32_t java_map_index (0x363)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 1045; uint32_t java_map_index (0x415)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 405; uint32_t java_map_index (0x195)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 681; uint32_t java_map_index (0x2a9)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 704; uint32_t java_map_index (0x2c0)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 709; uint32_t java_map_index (0x2c5)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 863; uint32_t java_map_index (0x35f)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 114; uint32_t java_map_index (0x72)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 648; uint32_t java_map_index (0x288)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 427; uint32_t java_map_index (0x1ab)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 788; uint32_t java_map_index (0x314)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 256; uint32_t java_map_index (0x100)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 210; uint32_t java_map_index (0xd2)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 719; uint32_t java_map_index (0x2cf)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 470; uint32_t java_map_index (0x1d6)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 737; uint32_t java_map_index (0x2e1)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 727; uint32_t java_map_index (0x2d7)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 437; uint32_t java_map_index (0x1b5)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 193; uint32_t java_map_index (0xc1)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 481; uint32_t java_map_index (0x1e1)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 129; uint32_t java_map_index (0x81)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 389; uint32_t java_map_index (0x185)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 712; uint32_t java_map_index (0x2c8)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 228; uint32_t java_map_index (0xe4)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 330; uint32_t java_map_index (0x14a)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 961; uint32_t java_map_index (0x3c1)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 490; uint32_t java_map_index (0x1ea)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 1061; uint32_t java_map_index (0x425)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 975; uint32_t java_map_index (0x3cf)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 610; uint32_t java_map_index (0x262)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 436; uint32_t java_map_index (0x1b4)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 560; uint32_t java_map_index (0x230)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 968; uint32_t java_map_index (0x3c8)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 194; uint32_t java_map_index (0xc2)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 65; uint32_t java_map_index (0x41)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 304; uint32_t java_map_index (0x130)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 499; uint32_t java_map_index (0x1f3)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 11; uint32_t java_map_index (0xb)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 824; uint32_t java_map_index (0x338)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 533; uint32_t java_map_index (0x215)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 214; uint32_t java_map_index (0xd6)
	} ; 55
], align 4

@module10_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 681; uint32_t java_map_index (0x2a9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 709; uint32_t java_map_index (0x2c5)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 863; uint32_t java_map_index (0x35f)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 114; uint32_t java_map_index (0x72)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 648; uint32_t java_map_index (0x288)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 788; uint32_t java_map_index (0x314)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 737; uint32_t java_map_index (0x2e1)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 228; uint32_t java_map_index (0xe4)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 975; uint32_t java_map_index (0x3cf)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 610; uint32_t java_map_index (0x262)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 304; uint32_t java_map_index (0x130)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 11; uint32_t java_map_index (0xb)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 824; uint32_t java_map_index (0x338)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 77; uint32_t java_map_index (0x4d)
	} ; 18
], align 4

@module11_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 746; uint32_t java_map_index (0x2ea)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 536; uint32_t java_map_index (0x218)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 552; uint32_t java_map_index (0x228)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 1059; uint32_t java_map_index (0x423)
	} ; 4
], align 4

@module12_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 598; uint32_t java_map_index (0x256)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 301; uint32_t java_map_index (0x12d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 682; uint32_t java_map_index (0x2aa)
	} ; 2
], align 4

@module13_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 745; uint32_t java_map_index (0x2e9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 1123; uint32_t java_map_index (0x463)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 1120; uint32_t java_map_index (0x460)
	} ; 2
], align 4

@module13_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 1123; uint32_t java_map_index (0x463)
	} ; 0
], align 4

@module14_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 613; uint32_t java_map_index (0x265)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 311; uint32_t java_map_index (0x137)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 506; uint32_t java_map_index (0x1fa)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 122; uint32_t java_map_index (0x7a)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 550; uint32_t java_map_index (0x226)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 223; uint32_t java_map_index (0xdf)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 791; uint32_t java_map_index (0x317)
	} ; 8
], align 4

@module14_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 613; uint32_t java_map_index (0x265)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 223; uint32_t java_map_index (0xdf)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 550; uint32_t java_map_index (0x226)
	} ; 4
], align 4

@module15_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 322; uint32_t java_map_index (0x142)
	} ; 0
], align 4

@module16_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 900; uint32_t java_map_index (0x384)
	} ; 0
], align 4

@module17_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 199; uint32_t java_map_index (0xc7)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 402; uint32_t java_map_index (0x192)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 866; uint32_t java_map_index (0x362)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 708; uint32_t java_map_index (0x2c4)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 1035; uint32_t java_map_index (0x40b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 956; uint32_t java_map_index (0x3bc)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 993; uint32_t java_map_index (0x3e1)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 431; uint32_t java_map_index (0x1af)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 1006; uint32_t java_map_index (0x3ee)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 461; uint32_t java_map_index (0x1cd)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 473; uint32_t java_map_index (0x1d9)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 985; uint32_t java_map_index (0x3d9)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 743; uint32_t java_map_index (0x2e7)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 393; uint32_t java_map_index (0x189)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 786; uint32_t java_map_index (0x312)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 659; uint32_t java_map_index (0x293)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 1082; uint32_t java_map_index (0x43a)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 325; uint32_t java_map_index (0x145)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 813; uint32_t java_map_index (0x32d)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 1094; uint32_t java_map_index (0x446)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 529; uint32_t java_map_index (0x211)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 752; uint32_t java_map_index (0x2f0)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 676; uint32_t java_map_index (0x2a4)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 645; uint32_t java_map_index (0x285)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 1036; uint32_t java_map_index (0x40c)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 638; uint32_t java_map_index (0x27e)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 317; uint32_t java_map_index (0x13d)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 433; uint32_t java_map_index (0x1b1)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 352; uint32_t java_map_index (0x160)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 932; uint32_t java_map_index (0x3a4)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 687; uint32_t java_map_index (0x2af)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 125; uint32_t java_map_index (0x7d)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 111; uint32_t java_map_index (0x6f)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 1098; uint32_t java_map_index (0x44a)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 368; uint32_t java_map_index (0x170)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 174; uint32_t java_map_index (0xae)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 1073; uint32_t java_map_index (0x431)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 137; uint32_t java_map_index (0x89)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 888; uint32_t java_map_index (0x378)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 921; uint32_t java_map_index (0x399)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 565; uint32_t java_map_index (0x235)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 476; uint32_t java_map_index (0x1dc)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 1092; uint32_t java_map_index (0x444)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 936; uint32_t java_map_index (0x3a8)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 165; uint32_t java_map_index (0xa5)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 1028; uint32_t java_map_index (0x404)
	} ; 66
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 402; uint32_t java_map_index (0x192)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 956; uint32_t java_map_index (0x3bc)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 1082; uint32_t java_map_index (0x43a)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 325; uint32_t java_map_index (0x145)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 813; uint32_t java_map_index (0x32d)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 659; uint32_t java_map_index (0x293)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 676; uint32_t java_map_index (0x2a4)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 1036; uint32_t java_map_index (0x40c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 317; uint32_t java_map_index (0x13d)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 433; uint32_t java_map_index (0x1b1)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 111; uint32_t java_map_index (0x6f)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 1098; uint32_t java_map_index (0x44a)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 368; uint32_t java_map_index (0x170)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 1073; uint32_t java_map_index (0x431)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 921; uint32_t java_map_index (0x399)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 936; uint32_t java_map_index (0x3a8)
	} ; 24
], align 4

@module18_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 738; uint32_t java_map_index (0x2e2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 517; uint32_t java_map_index (0x205)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 290; uint32_t java_map_index (0x122)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 905; uint32_t java_map_index (0x389)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 647; uint32_t java_map_index (0x287)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 639; uint32_t java_map_index (0x27f)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 172; uint32_t java_map_index (0xac)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 197; uint32_t java_map_index (0xc5)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 343; uint32_t java_map_index (0x157)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 889; uint32_t java_map_index (0x379)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 776; uint32_t java_map_index (0x308)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 385; uint32_t java_map_index (0x181)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 524; uint32_t java_map_index (0x20c)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 426; uint32_t java_map_index (0x1aa)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 896; uint32_t java_map_index (0x380)
	} ; 16
], align 4

@module18_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 738; uint32_t java_map_index (0x2e2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 517; uint32_t java_map_index (0x205)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 524; uint32_t java_map_index (0x20c)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 385; uint32_t java_map_index (0x181)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 896; uint32_t java_map_index (0x380)
	} ; 5
], align 4

@module19_managed_to_java = internal dso_local constant [555 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 930; uint32_t java_map_index (0x3a2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 140; uint32_t java_map_index (0x8c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 247; uint32_t java_map_index (0xf7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 833; uint32_t java_map_index (0x341)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 67; uint32_t java_map_index (0x43)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 929; uint32_t java_map_index (0x3a1)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 411; uint32_t java_map_index (0x19b)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 965; uint32_t java_map_index (0x3c5)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 872; uint32_t java_map_index (0x368)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 691; uint32_t java_map_index (0x2b3)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 1117; uint32_t java_map_index (0x45d)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 281; uint32_t java_map_index (0x119)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 585; uint32_t java_map_index (0x249)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 732; uint32_t java_map_index (0x2dc)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 617; uint32_t java_map_index (0x269)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 1099; uint32_t java_map_index (0x44b)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554635, ; uint32_t type_token_id (0x20000cb)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 637; uint32_t java_map_index (0x27d)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 967; uint32_t java_map_index (0x3c7)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554641, ; uint32_t type_token_id (0x20000d1)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554643, ; uint32_t type_token_id (0x20000d3)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 939; uint32_t java_map_index (0x3ab)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 1130; uint32_t java_map_index (0x46a)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554655, ; uint32_t type_token_id (0x20000df)
		i32 805; uint32_t java_map_index (0x325)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 1072; uint32_t java_map_index (0x430)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554659, ; uint32_t type_token_id (0x20000e3)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554661, ; uint32_t type_token_id (0x20000e5)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 619; uint32_t java_map_index (0x26b)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 1121; uint32_t java_map_index (0x461)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 870; uint32_t java_map_index (0x366)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 627; uint32_t java_map_index (0x273)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 1084; uint32_t java_map_index (0x43c)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 789; uint32_t java_map_index (0x315)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 623; uint32_t java_map_index (0x26f)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 361; uint32_t java_map_index (0x169)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 1044; uint32_t java_map_index (0x414)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 817; uint32_t java_map_index (0x331)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 367; uint32_t java_map_index (0x16f)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 801; uint32_t java_map_index (0x321)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 642; uint32_t java_map_index (0x282)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 790; uint32_t java_map_index (0x316)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 557; uint32_t java_map_index (0x22d)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 885; uint32_t java_map_index (0x375)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 375; uint32_t java_map_index (0x177)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 357; uint32_t java_map_index (0x165)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 484; uint32_t java_map_index (0x1e4)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 50; uint32_t java_map_index (0x32)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554710, ; uint32_t type_token_id (0x2000116)
		i32 314; uint32_t java_map_index (0x13a)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 860; uint32_t java_map_index (0x35c)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554712, ; uint32_t type_token_id (0x2000118)
		i32 505; uint32_t java_map_index (0x1f9)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554716, ; uint32_t type_token_id (0x200011c)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554717, ; uint32_t type_token_id (0x200011d)
		i32 203; uint32_t java_map_index (0xcb)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554718, ; uint32_t type_token_id (0x200011e)
		i32 909; uint32_t java_map_index (0x38d)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 430; uint32_t java_map_index (0x1ae)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554733, ; uint32_t type_token_id (0x200012d)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554735, ; uint32_t type_token_id (0x200012f)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554737, ; uint32_t type_token_id (0x2000131)
		i32 879; uint32_t java_map_index (0x36f)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 904; uint32_t java_map_index (0x388)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 861; uint32_t java_map_index (0x35d)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 653; uint32_t java_map_index (0x28d)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 792; uint32_t java_map_index (0x318)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 1064; uint32_t java_map_index (0x428)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 964; uint32_t java_map_index (0x3c4)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 287; uint32_t java_map_index (0x11f)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 1106; uint32_t java_map_index (0x452)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 914; uint32_t java_map_index (0x392)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 990; uint32_t java_map_index (0x3de)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 838; uint32_t java_map_index (0x346)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 918; uint32_t java_map_index (0x396)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 144; uint32_t java_map_index (0x90)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 356; uint32_t java_map_index (0x164)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 1051; uint32_t java_map_index (0x41b)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 1097; uint32_t java_map_index (0x449)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 702; uint32_t java_map_index (0x2be)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 128; uint32_t java_map_index (0x80)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 1003; uint32_t java_map_index (0x3eb)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 396; uint32_t java_map_index (0x18c)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 249; uint32_t java_map_index (0xf9)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554778, ; uint32_t type_token_id (0x200015a)
		i32 321; uint32_t java_map_index (0x141)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554781, ; uint32_t type_token_id (0x200015d)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 284; uint32_t java_map_index (0x11c)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33554786, ; uint32_t type_token_id (0x2000162)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 310; uint32_t java_map_index (0x136)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33554793, ; uint32_t type_token_id (0x2000169)
		i32 395; uint32_t java_map_index (0x18b)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 581; uint32_t java_map_index (0x245)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 374; uint32_t java_map_index (0x176)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 559; uint32_t java_map_index (0x22f)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 777; uint32_t java_map_index (0x309)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 44; uint32_t java_map_index (0x2c)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 294; uint32_t java_map_index (0x126)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 953; uint32_t java_map_index (0x3b9)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 1091; uint32_t java_map_index (0x443)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 986; uint32_t java_map_index (0x3da)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 782; uint32_t java_map_index (0x30e)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 149; uint32_t java_map_index (0x95)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33554820, ; uint32_t type_token_id (0x2000184)
		i32 60; uint32_t java_map_index (0x3c)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33554826, ; uint32_t type_token_id (0x200018a)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 1052; uint32_t java_map_index (0x41c)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 542; uint32_t java_map_index (0x21e)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 355; uint32_t java_map_index (0x163)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 92; uint32_t java_map_index (0x5c)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 131; uint32_t java_map_index (0x83)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 274; uint32_t java_map_index (0x112)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 1046; uint32_t java_map_index (0x416)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 372; uint32_t java_map_index (0x174)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 486; uint32_t java_map_index (0x1e6)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33554841, ; uint32_t type_token_id (0x2000199)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 118; uint32_t java_map_index (0x76)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33554844, ; uint32_t type_token_id (0x200019c)
		i32 53; uint32_t java_map_index (0x35)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33554845, ; uint32_t type_token_id (0x200019d)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33554846, ; uint32_t type_token_id (0x200019e)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33554848, ; uint32_t type_token_id (0x20001a0)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 158; uint32_t java_map_index (0x9e)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33554854, ; uint32_t type_token_id (0x20001a6)
		i32 288; uint32_t java_map_index (0x120)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33554856, ; uint32_t type_token_id (0x20001a8)
		i32 404; uint32_t java_map_index (0x194)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33554858, ; uint32_t type_token_id (0x20001aa)
		i32 707; uint32_t java_map_index (0x2c3)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33554859, ; uint32_t type_token_id (0x20001ab)
		i32 1002; uint32_t java_map_index (0x3ea)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 380; uint32_t java_map_index (0x17c)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33554861, ; uint32_t type_token_id (0x20001ad)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 302; uint32_t java_map_index (0x12e)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 582; uint32_t java_map_index (0x246)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33554864, ; uint32_t type_token_id (0x20001b0)
		i32 631; uint32_t java_map_index (0x277)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 272; uint32_t java_map_index (0x110)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33554866, ; uint32_t type_token_id (0x20001b2)
		i32 1018; uint32_t java_map_index (0x3fa)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33554867, ; uint32_t type_token_id (0x20001b3)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33554869, ; uint32_t type_token_id (0x20001b5)
		i32 123; uint32_t java_map_index (0x7b)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 760; uint32_t java_map_index (0x2f8)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33554871, ; uint32_t type_token_id (0x20001b7)
		i32 348; uint32_t java_map_index (0x15c)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33554873, ; uint32_t type_token_id (0x20001b9)
		i32 644; uint32_t java_map_index (0x284)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33554874, ; uint32_t type_token_id (0x20001ba)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33554875, ; uint32_t type_token_id (0x20001bb)
		i32 779; uint32_t java_map_index (0x30b)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33554876, ; uint32_t type_token_id (0x20001bc)
		i32 643; uint32_t java_map_index (0x283)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33554877, ; uint32_t type_token_id (0x20001bd)
		i32 843; uint32_t java_map_index (0x34b)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33554879, ; uint32_t type_token_id (0x20001bf)
		i32 252; uint32_t java_map_index (0xfc)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33554880, ; uint32_t type_token_id (0x20001c0)
		i32 112; uint32_t java_map_index (0x70)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33554881, ; uint32_t type_token_id (0x20001c1)
		i32 188; uint32_t java_map_index (0xbc)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 442; uint32_t java_map_index (0x1ba)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33554884, ; uint32_t type_token_id (0x20001c4)
		i32 145; uint32_t java_map_index (0x91)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33554885, ; uint32_t type_token_id (0x20001c5)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33554886, ; uint32_t type_token_id (0x20001c6)
		i32 670; uint32_t java_map_index (0x29e)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33554887, ; uint32_t type_token_id (0x20001c7)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 512; uint32_t java_map_index (0x200)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33554891, ; uint32_t type_token_id (0x20001cb)
		i32 259; uint32_t java_map_index (0x103)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33554893, ; uint32_t type_token_id (0x20001cd)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33554895, ; uint32_t type_token_id (0x20001cf)
		i32 441; uint32_t java_map_index (0x1b9)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33554897, ; uint32_t type_token_id (0x20001d1)
		i32 970; uint32_t java_map_index (0x3ca)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33554898, ; uint32_t type_token_id (0x20001d2)
		i32 761; uint32_t java_map_index (0x2f9)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33554899, ; uint32_t type_token_id (0x20001d3)
		i32 799; uint32_t java_map_index (0x31f)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33554900, ; uint32_t type_token_id (0x20001d4)
		i32 887; uint32_t java_map_index (0x377)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 167; uint32_t java_map_index (0xa7)
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 33554902, ; uint32_t type_token_id (0x20001d6)
		i32 1049; uint32_t java_map_index (0x419)
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 33554904, ; uint32_t type_token_id (0x20001d8)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 33554909, ; uint32_t type_token_id (0x20001dd)
		i32 935; uint32_t java_map_index (0x3a7)
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 344; uint32_t java_map_index (0x158)
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 33554912, ; uint32_t type_token_id (0x20001e0)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 33554913, ; uint32_t type_token_id (0x20001e1)
		i32 572; uint32_t java_map_index (0x23c)
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 33554914, ; uint32_t type_token_id (0x20001e2)
		i32 1050; uint32_t java_map_index (0x41a)
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 186; uint32_t java_map_index (0xba)
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 33554916, ; uint32_t type_token_id (0x20001e4)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 33554917, ; uint32_t type_token_id (0x20001e5)
		i32 564; uint32_t java_map_index (0x234)
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 33554918, ; uint32_t type_token_id (0x20001e6)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 33554919, ; uint32_t type_token_id (0x20001e7)
		i32 406; uint32_t java_map_index (0x196)
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 33554923, ; uint32_t type_token_id (0x20001eb)
		i32 911; uint32_t java_map_index (0x38f)
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 33554924, ; uint32_t type_token_id (0x20001ec)
		i32 346; uint32_t java_map_index (0x15a)
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 33554925, ; uint32_t type_token_id (0x20001ed)
		i32 1009; uint32_t java_map_index (0x3f1)
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 33554926, ; uint32_t type_token_id (0x20001ee)
		i32 208; uint32_t java_map_index (0xd0)
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 33554929, ; uint32_t type_token_id (0x20001f1)
		i32 345; uint32_t java_map_index (0x159)
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 33554931, ; uint32_t type_token_id (0x20001f3)
		i32 190; uint32_t java_map_index (0xbe)
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 336; uint32_t java_map_index (0x150)
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 41; uint32_t java_map_index (0x29)
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 1108; uint32_t java_map_index (0x454)
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 33554938, ; uint32_t type_token_id (0x20001fa)
		i32 242; uint32_t java_map_index (0xf2)
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 257; uint32_t java_map_index (0x101)
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 277; uint32_t java_map_index (0x115)
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 33554947, ; uint32_t type_token_id (0x2000203)
		i32 677; uint32_t java_map_index (0x2a5)
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 33554948, ; uint32_t type_token_id (0x2000204)
		i32 770; uint32_t java_map_index (0x302)
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 33554949, ; uint32_t type_token_id (0x2000205)
		i32 991; uint32_t java_map_index (0x3df)
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 33554950, ; uint32_t type_token_id (0x2000206)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 33554952, ; uint32_t type_token_id (0x2000208)
		i32 1075; uint32_t java_map_index (0x433)
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 33554953, ; uint32_t type_token_id (0x2000209)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 33554955, ; uint32_t type_token_id (0x200020b)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 33554957, ; uint32_t type_token_id (0x200020d)
		i32 124; uint32_t java_map_index (0x7c)
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 33554960, ; uint32_t type_token_id (0x2000210)
		i32 750; uint32_t java_map_index (0x2ee)
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 33554961, ; uint32_t type_token_id (0x2000211)
		i32 338; uint32_t java_map_index (0x152)
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 33554964, ; uint32_t type_token_id (0x2000214)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 33554966, ; uint32_t type_token_id (0x2000216)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 33554968, ; uint32_t type_token_id (0x2000218)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 33554969, ; uint32_t type_token_id (0x2000219)
		i32 469; uint32_t java_map_index (0x1d5)
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 33554972, ; uint32_t type_token_id (0x200021c)
		i32 972; uint32_t java_map_index (0x3cc)
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 33554973, ; uint32_t type_token_id (0x200021d)
		i32 474; uint32_t java_map_index (0x1da)
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 33554978, ; uint32_t type_token_id (0x2000222)
		i32 1112; uint32_t java_map_index (0x458)
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 591; uint32_t java_map_index (0x24f)
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 829; uint32_t java_map_index (0x33d)
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 810; uint32_t java_map_index (0x32a)
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 1021; uint32_t java_map_index (0x3fd)
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 33554985, ; uint32_t type_token_id (0x2000229)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 33554987, ; uint32_t type_token_id (0x200022b)
		i32 899; uint32_t java_map_index (0x383)
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 195; uint32_t java_map_index (0xc3)
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 428; uint32_t java_map_index (0x1ac)
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 198; uint32_t java_map_index (0xc6)
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 33555000, ; uint32_t type_token_id (0x2000238)
		i32 527; uint32_t java_map_index (0x20f)
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 33555001, ; uint32_t type_token_id (0x2000239)
		i32 419; uint32_t java_map_index (0x1a3)
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 973; uint32_t java_map_index (0x3cd)
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 33555003, ; uint32_t type_token_id (0x200023b)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 910; uint32_t java_map_index (0x38e)
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 33555007, ; uint32_t type_token_id (0x200023f)
		i32 949; uint32_t java_map_index (0x3b5)
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 33555013, ; uint32_t type_token_id (0x2000245)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 33555014, ; uint32_t type_token_id (0x2000246)
		i32 379; uint32_t java_map_index (0x17b)
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 33555015, ; uint32_t type_token_id (0x2000247)
		i32 285; uint32_t java_map_index (0x11d)
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 33555018, ; uint32_t type_token_id (0x200024a)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 33555020, ; uint32_t type_token_id (0x200024c)
		i32 1109; uint32_t java_map_index (0x455)
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 33555021, ; uint32_t type_token_id (0x200024d)
		i32 1004; uint32_t java_map_index (0x3ec)
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 33555022, ; uint32_t type_token_id (0x200024e)
		i32 1079; uint32_t java_map_index (0x437)
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 33555023, ; uint32_t type_token_id (0x200024f)
		i32 399; uint32_t java_map_index (0x18f)
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 33555024, ; uint32_t type_token_id (0x2000250)
		i32 679; uint32_t java_map_index (0x2a7)
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 33555025, ; uint32_t type_token_id (0x2000251)
		i32 1113; uint32_t java_map_index (0x459)
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 33555027, ; uint32_t type_token_id (0x2000253)
		i32 1104; uint32_t java_map_index (0x450)
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 33555029, ; uint32_t type_token_id (0x2000255)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 33555031, ; uint32_t type_token_id (0x2000257)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 33555033, ; uint32_t type_token_id (0x2000259)
		i32 293; uint32_t java_map_index (0x125)
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 33555036, ; uint32_t type_token_id (0x200025c)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 33555038, ; uint32_t type_token_id (0x200025e)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 33555040, ; uint32_t type_token_id (0x2000260)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 33555043, ; uint32_t type_token_id (0x2000263)
		i32 136; uint32_t java_map_index (0x88)
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 33555045, ; uint32_t type_token_id (0x2000265)
		i32 154; uint32_t java_map_index (0x9a)
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 33555047, ; uint32_t type_token_id (0x2000267)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 33555049, ; uint32_t type_token_id (0x2000269)
		i32 884; uint32_t java_map_index (0x374)
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 33555051, ; uint32_t type_token_id (0x200026b)
		i32 207; uint32_t java_map_index (0xcf)
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 33555053, ; uint32_t type_token_id (0x200026d)
		i32 605; uint32_t java_map_index (0x25d)
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 33555055, ; uint32_t type_token_id (0x200026f)
		i32 105; uint32_t java_map_index (0x69)
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 33555056, ; uint32_t type_token_id (0x2000270)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 391; uint32_t java_map_index (0x187)
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 33555062, ; uint32_t type_token_id (0x2000276)
		i32 1065; uint32_t java_map_index (0x429)
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 33555063, ; uint32_t type_token_id (0x2000277)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 33555065, ; uint32_t type_token_id (0x2000279)
		i32 134; uint32_t java_map_index (0x86)
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 33555066, ; uint32_t type_token_id (0x200027a)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 33555067, ; uint32_t type_token_id (0x200027b)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 33555069, ; uint32_t type_token_id (0x200027d)
		i32 998; uint32_t java_map_index (0x3e6)
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 33555070, ; uint32_t type_token_id (0x200027e)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 33555072, ; uint32_t type_token_id (0x2000280)
		i32 607; uint32_t java_map_index (0x25f)
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 33555073, ; uint32_t type_token_id (0x2000281)
		i32 1016; uint32_t java_map_index (0x3f8)
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 33555074, ; uint32_t type_token_id (0x2000282)
		i32 730; uint32_t java_map_index (0x2da)
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 33555075, ; uint32_t type_token_id (0x2000283)
		i32 116; uint32_t java_map_index (0x74)
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 33555076, ; uint32_t type_token_id (0x2000284)
		i32 1013; uint32_t java_map_index (0x3f5)
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 33555077, ; uint32_t type_token_id (0x2000285)
		i32 146; uint32_t java_map_index (0x92)
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 33555078, ; uint32_t type_token_id (0x2000286)
		i32 341; uint32_t java_map_index (0x155)
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 33555082, ; uint32_t type_token_id (0x200028a)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 33555083, ; uint32_t type_token_id (0x200028b)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 33555085, ; uint32_t type_token_id (0x200028d)
		i32 906; uint32_t java_map_index (0x38a)
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 33555086, ; uint32_t type_token_id (0x200028e)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 33555088, ; uint32_t type_token_id (0x2000290)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 33555091, ; uint32_t type_token_id (0x2000293)
		i32 493; uint32_t java_map_index (0x1ed)
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 33555092, ; uint32_t type_token_id (0x2000294)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 33555094, ; uint32_t type_token_id (0x2000296)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 33555097, ; uint32_t type_token_id (0x2000299)
		i32 447; uint32_t java_map_index (0x1bf)
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 33555098, ; uint32_t type_token_id (0x200029a)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 903; uint32_t java_map_index (0x387)
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 33555102, ; uint32_t type_token_id (0x200029e)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 33555105, ; uint32_t type_token_id (0x20002a1)
		i32 946; uint32_t java_map_index (0x3b2)
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 485; uint32_t java_map_index (0x1e5)
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 33555127, ; uint32_t type_token_id (0x20002b7)
		i32 544; uint32_t java_map_index (0x220)
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 33555128, ; uint32_t type_token_id (0x20002b8)
		i32 1037; uint32_t java_map_index (0x40d)
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 33555129, ; uint32_t type_token_id (0x20002b9)
		i32 626; uint32_t java_map_index (0x272)
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 33555130, ; uint32_t type_token_id (0x20002ba)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 33555131, ; uint32_t type_token_id (0x20002bb)
		i32 339; uint32_t java_map_index (0x153)
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 33555135, ; uint32_t type_token_id (0x20002bf)
		i32 749; uint32_t java_map_index (0x2ed)
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 33555140, ; uint32_t type_token_id (0x20002c4)
		i32 588; uint32_t java_map_index (0x24c)
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 33555141, ; uint32_t type_token_id (0x20002c5)
		i32 996; uint32_t java_map_index (0x3e4)
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 33555142, ; uint32_t type_token_id (0x20002c6)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 33555144, ; uint32_t type_token_id (0x20002c8)
		i32 164; uint32_t java_map_index (0xa4)
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 33555145, ; uint32_t type_token_id (0x20002c9)
		i32 413; uint32_t java_map_index (0x19d)
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 33555148, ; uint32_t type_token_id (0x20002cc)
		i32 1102; uint32_t java_map_index (0x44e)
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 33555149, ; uint32_t type_token_id (0x20002cd)
		i32 680; uint32_t java_map_index (0x2a8)
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 33555150, ; uint32_t type_token_id (0x20002ce)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 33555151, ; uint32_t type_token_id (0x20002cf)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 33555182, ; uint32_t type_token_id (0x20002ee)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 33555186, ; uint32_t type_token_id (0x20002f2)
		i32 763; uint32_t java_map_index (0x2fb)
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 33555187, ; uint32_t type_token_id (0x20002f3)
		i32 686; uint32_t java_map_index (0x2ae)
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 33555188, ; uint32_t type_token_id (0x20002f4)
		i32 1057; uint32_t java_map_index (0x421)
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 33555191, ; uint32_t type_token_id (0x20002f7)
		i32 1126; uint32_t java_map_index (0x466)
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 997; uint32_t java_map_index (0x3e5)
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 731; uint32_t java_map_index (0x2db)
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 579; uint32_t java_map_index (0x243)
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 363; uint32_t java_map_index (0x16b)
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 844; uint32_t java_map_index (0x34c)
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 1031; uint32_t java_map_index (0x407)
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 703; uint32_t java_map_index (0x2bf)
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 1128; uint32_t java_map_index (0x468)
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 711; uint32_t java_map_index (0x2c7)
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 1023; uint32_t java_map_index (0x3ff)
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 33555260, ; uint32_t type_token_id (0x200033c)
		i32 876; uint32_t java_map_index (0x36c)
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 988; uint32_t java_map_index (0x3dc)
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 983; uint32_t java_map_index (0x3d7)
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 689; uint32_t java_map_index (0x2b1)
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 438; uint32_t java_map_index (0x1b6)
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 1096; uint32_t java_map_index (0x448)
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 995; uint32_t java_map_index (0x3e3)
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 230; uint32_t java_map_index (0xe6)
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 971; uint32_t java_map_index (0x3cb)
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 109; uint32_t java_map_index (0x6d)
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 246; uint32_t java_map_index (0xf6)
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 865; uint32_t java_map_index (0x361)
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 1022; uint32_t java_map_index (0x3fe)
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 33555285, ; uint32_t type_token_id (0x2000355)
		i32 602; uint32_t java_map_index (0x25a)
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 1129; uint32_t java_map_index (0x469)
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 1019; uint32_t java_map_index (0x3fb)
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 33555288, ; uint32_t type_token_id (0x2000358)
		i32 1056; uint32_t java_map_index (0x420)
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 548; uint32_t java_map_index (0x224)
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 235; uint32_t java_map_index (0xeb)
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 969; uint32_t java_map_index (0x3c9)
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 33555293, ; uint32_t type_token_id (0x200035d)
		i32 705; uint32_t java_map_index (0x2c1)
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 33555294, ; uint32_t type_token_id (0x200035e)
		i32 541; uint32_t java_map_index (0x21d)
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 1024; uint32_t java_map_index (0x400)
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 568; uint32_t java_map_index (0x238)
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 819; uint32_t java_map_index (0x333)
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 377; uint32_t java_map_index (0x179)
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 1032; uint32_t java_map_index (0x408)
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 981; uint32_t java_map_index (0x3d5)
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 439; uint32_t java_map_index (0x1b7)
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 33555305, ; uint32_t type_token_id (0x2000369)
		i32 830; uint32_t java_map_index (0x33e)
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 675; uint32_t java_map_index (0x2a3)
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 671; uint32_t java_map_index (0x29f)
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 820; uint32_t java_map_index (0x334)
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 46; uint32_t java_map_index (0x2e)
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 33555310, ; uint32_t type_token_id (0x200036e)
		i32 412; uint32_t java_map_index (0x19c)
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 33555311, ; uint32_t type_token_id (0x200036f)
		i32 800; uint32_t java_map_index (0x320)
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 857; uint32_t java_map_index (0x359)
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 847; uint32_t java_map_index (0x34f)
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 176; uint32_t java_map_index (0xb0)
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 894; uint32_t java_map_index (0x37e)
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 254; uint32_t java_map_index (0xfe)
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 566; uint32_t java_map_index (0x236)
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 33555322, ; uint32_t type_token_id (0x200037a)
		i32 766; uint32_t java_map_index (0x2fe)
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 984; uint32_t java_map_index (0x3d8)
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 864; uint32_t java_map_index (0x360)
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 234; uint32_t java_map_index (0xea)
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 893; uint32_t java_map_index (0x37d)
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 471; uint32_t java_map_index (0x1d7)
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 387; uint32_t java_map_index (0x183)
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 597; uint32_t java_map_index (0x255)
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 618; uint32_t java_map_index (0x26a)
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 890; uint32_t java_map_index (0x37a)
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 1093; uint32_t java_map_index (0x445)
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 1100; uint32_t java_map_index (0x44c)
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 600; uint32_t java_map_index (0x258)
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 410; uint32_t java_map_index (0x19a)
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 478; uint32_t java_map_index (0x1de)
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 816; uint32_t java_map_index (0x330)
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 696; uint32_t java_map_index (0x2b8)
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 418; uint32_t java_map_index (0x1a2)
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 751; uint32_t java_map_index (0x2ef)
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 514; uint32_t java_map_index (0x202)
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 504; uint32_t java_map_index (0x1f8)
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 1011; uint32_t java_map_index (0x3f3)
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 33555373, ; uint32_t type_token_id (0x20003ad)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 33555374, ; uint32_t type_token_id (0x20003ae)
		i32 261; uint32_t java_map_index (0x105)
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 924; uint32_t java_map_index (0x39c)
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 33555379, ; uint32_t type_token_id (0x20003b3)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 1115; uint32_t java_map_index (0x45b)
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 184; uint32_t java_map_index (0xb8)
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 178; uint32_t java_map_index (0xb2)
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 832; uint32_t java_map_index (0x340)
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 1038; uint32_t java_map_index (0x40e)
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 33555392, ; uint32_t type_token_id (0x20003c0)
		i32 1116; uint32_t java_map_index (0x45c)
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 33555394, ; uint32_t type_token_id (0x20003c2)
		i32 882; uint32_t java_map_index (0x372)
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 825; uint32_t java_map_index (0x339)
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 562; uint32_t java_map_index (0x232)
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 912; uint32_t java_map_index (0x390)
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 33555404, ; uint32_t type_token_id (0x20003cc)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 528; uint32_t java_map_index (0x210)
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 798; uint32_t java_map_index (0x31e)
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 758; uint32_t java_map_index (0x2f6)
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 33555410, ; uint32_t type_token_id (0x20003d2)
		i32 483; uint32_t java_map_index (0x1e3)
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 1066; uint32_t java_map_index (0x42a)
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 1063; uint32_t java_map_index (0x427)
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 1027; uint32_t java_map_index (0x403)
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 189; uint32_t java_map_index (0xbd)
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 33555418, ; uint32_t type_token_id (0x20003da)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 446; uint32_t java_map_index (0x1be)
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 33555421, ; uint32_t type_token_id (0x20003dd)
		i32 157; uint32_t java_map_index (0x9d)
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 33555422, ; uint32_t type_token_id (0x20003de)
		i32 630; uint32_t java_map_index (0x276)
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 748; uint32_t java_map_index (0x2ec)
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 1043; uint32_t java_map_index (0x413)
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 1076; uint32_t java_map_index (0x434)
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 33555435, ; uint32_t type_token_id (0x20003eb)
		i32 992; uint32_t java_map_index (0x3e0)
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 33555436, ; uint32_t type_token_id (0x20003ec)
		i32 1025; uint32_t java_map_index (0x401)
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 33555437, ; uint32_t type_token_id (0x20003ed)
		i32 662; uint32_t java_map_index (0x296)
	}, ; 460
	%struct.TypeMapModuleEntry {
		i32 33555438, ; uint32_t type_token_id (0x20003ee)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 461
	%struct.TypeMapModuleEntry {
		i32 33555440, ; uint32_t type_token_id (0x20003f0)
		i32 678; uint32_t java_map_index (0x2a6)
	}, ; 462
	%struct.TypeMapModuleEntry {
		i32 33555442, ; uint32_t type_token_id (0x20003f2)
		i32 1026; uint32_t java_map_index (0x402)
	}, ; 463
	%struct.TypeMapModuleEntry {
		i32 33555444, ; uint32_t type_token_id (0x20003f4)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 464
	%struct.TypeMapModuleEntry {
		i32 33555446, ; uint32_t type_token_id (0x20003f6)
		i32 725; uint32_t java_map_index (0x2d5)
	}, ; 465
	%struct.TypeMapModuleEntry {
		i32 33555448, ; uint32_t type_token_id (0x20003f8)
		i32 726; uint32_t java_map_index (0x2d6)
	}, ; 466
	%struct.TypeMapModuleEntry {
		i32 33555449, ; uint32_t type_token_id (0x20003f9)
		i32 489; uint32_t java_map_index (0x1e9)
	}, ; 467
	%struct.TypeMapModuleEntry {
		i32 33555450, ; uint32_t type_token_id (0x20003fa)
		i32 741; uint32_t java_map_index (0x2e5)
	}, ; 468
	%struct.TypeMapModuleEntry {
		i32 33555451, ; uint32_t type_token_id (0x20003fb)
		i32 435; uint32_t java_map_index (0x1b3)
	}, ; 469
	%struct.TypeMapModuleEntry {
		i32 33555452, ; uint32_t type_token_id (0x20003fc)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 470
	%struct.TypeMapModuleEntry {
		i32 33555454, ; uint32_t type_token_id (0x20003fe)
		i32 1111; uint32_t java_map_index (0x457)
	}, ; 471
	%struct.TypeMapModuleEntry {
		i32 33555456, ; uint32_t type_token_id (0x2000400)
		i32 802; uint32_t java_map_index (0x322)
	}, ; 472
	%struct.TypeMapModuleEntry {
		i32 33555457, ; uint32_t type_token_id (0x2000401)
		i32 1067; uint32_t java_map_index (0x42b)
	}, ; 473
	%struct.TypeMapModuleEntry {
		i32 33555459, ; uint32_t type_token_id (0x2000403)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 474
	%struct.TypeMapModuleEntry {
		i32 33555460, ; uint32_t type_token_id (0x2000404)
		i32 944; uint32_t java_map_index (0x3b0)
	}, ; 475
	%struct.TypeMapModuleEntry {
		i32 33555461, ; uint32_t type_token_id (0x2000405)
		i32 555; uint32_t java_map_index (0x22b)
	}, ; 476
	%struct.TypeMapModuleEntry {
		i32 33555463, ; uint32_t type_token_id (0x2000407)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 477
	%struct.TypeMapModuleEntry {
		i32 33555465, ; uint32_t type_token_id (0x2000409)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 478
	%struct.TypeMapModuleEntry {
		i32 33555467, ; uint32_t type_token_id (0x200040b)
		i32 366; uint32_t java_map_index (0x16e)
	}, ; 479
	%struct.TypeMapModuleEntry {
		i32 33555468, ; uint32_t type_token_id (0x200040c)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 480
	%struct.TypeMapModuleEntry {
		i32 33555469, ; uint32_t type_token_id (0x200040d)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 481
	%struct.TypeMapModuleEntry {
		i32 33555471, ; uint32_t type_token_id (0x200040f)
		i32 522; uint32_t java_map_index (0x20a)
	}, ; 482
	%struct.TypeMapModuleEntry {
		i32 33555473, ; uint32_t type_token_id (0x2000411)
		i32 1078; uint32_t java_map_index (0x436)
	}, ; 483
	%struct.TypeMapModuleEntry {
		i32 33555474, ; uint32_t type_token_id (0x2000412)
		i32 966; uint32_t java_map_index (0x3c6)
	}, ; 484
	%struct.TypeMapModuleEntry {
		i32 33555476, ; uint32_t type_token_id (0x2000414)
		i32 264; uint32_t java_map_index (0x108)
	}, ; 485
	%struct.TypeMapModuleEntry {
		i32 33555478, ; uint32_t type_token_id (0x2000416)
		i32 152; uint32_t java_map_index (0x98)
	}, ; 486
	%struct.TypeMapModuleEntry {
		i32 33555479, ; uint32_t type_token_id (0x2000417)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 487
	%struct.TypeMapModuleEntry {
		i32 33555481, ; uint32_t type_token_id (0x2000419)
		i32 715; uint32_t java_map_index (0x2cb)
	}, ; 488
	%struct.TypeMapModuleEntry {
		i32 33555483, ; uint32_t type_token_id (0x200041b)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 489
	%struct.TypeMapModuleEntry {
		i32 33555485, ; uint32_t type_token_id (0x200041d)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 490
	%struct.TypeMapModuleEntry {
		i32 33555487, ; uint32_t type_token_id (0x200041f)
		i32 70; uint32_t java_map_index (0x46)
	}, ; 491
	%struct.TypeMapModuleEntry {
		i32 33555488, ; uint32_t type_token_id (0x2000420)
		i32 150; uint32_t java_map_index (0x96)
	}, ; 492
	%struct.TypeMapModuleEntry {
		i32 33555490, ; uint32_t type_token_id (0x2000422)
		i32 225; uint32_t java_map_index (0xe1)
	}, ; 493
	%struct.TypeMapModuleEntry {
		i32 33555491, ; uint32_t type_token_id (0x2000423)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 494
	%struct.TypeMapModuleEntry {
		i32 33555492, ; uint32_t type_token_id (0x2000424)
		i32 121; uint32_t java_map_index (0x79)
	}, ; 495
	%struct.TypeMapModuleEntry {
		i32 33555493, ; uint32_t type_token_id (0x2000425)
		i32 1085; uint32_t java_map_index (0x43d)
	}, ; 496
	%struct.TypeMapModuleEntry {
		i32 33555494, ; uint32_t type_token_id (0x2000426)
		i32 245; uint32_t java_map_index (0xf5)
	}, ; 497
	%struct.TypeMapModuleEntry {
		i32 33555496, ; uint32_t type_token_id (0x2000428)
		i32 979; uint32_t java_map_index (0x3d3)
	}, ; 498
	%struct.TypeMapModuleEntry {
		i32 33555497, ; uint32_t type_token_id (0x2000429)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 499
	%struct.TypeMapModuleEntry {
		i32 33555498, ; uint32_t type_token_id (0x200042a)
		i32 855; uint32_t java_map_index (0x357)
	}, ; 500
	%struct.TypeMapModuleEntry {
		i32 33555499, ; uint32_t type_token_id (0x200042b)
		i32 268; uint32_t java_map_index (0x10c)
	}, ; 501
	%struct.TypeMapModuleEntry {
		i32 33555500, ; uint32_t type_token_id (0x200042c)
		i32 587; uint32_t java_map_index (0x24b)
	}, ; 502
	%struct.TypeMapModuleEntry {
		i32 33555501, ; uint32_t type_token_id (0x200042d)
		i32 354; uint32_t java_map_index (0x162)
	}, ; 503
	%struct.TypeMapModuleEntry {
		i32 33555503, ; uint32_t type_token_id (0x200042f)
		i32 603; uint32_t java_map_index (0x25b)
	}, ; 504
	%struct.TypeMapModuleEntry {
		i32 33555505, ; uint32_t type_token_id (0x2000431)
		i32 699; uint32_t java_map_index (0x2bb)
	}, ; 505
	%struct.TypeMapModuleEntry {
		i32 33555506, ; uint32_t type_token_id (0x2000432)
		i32 155; uint32_t java_map_index (0x9b)
	}, ; 506
	%struct.TypeMapModuleEntry {
		i32 33555507, ; uint32_t type_token_id (0x2000433)
		i32 451; uint32_t java_map_index (0x1c3)
	}, ; 507
	%struct.TypeMapModuleEntry {
		i32 33555508, ; uint32_t type_token_id (0x2000434)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 508
	%struct.TypeMapModuleEntry {
		i32 33555509, ; uint32_t type_token_id (0x2000435)
		i32 580; uint32_t java_map_index (0x244)
	}, ; 509
	%struct.TypeMapModuleEntry {
		i32 33555510, ; uint32_t type_token_id (0x2000436)
		i32 1086; uint32_t java_map_index (0x43e)
	}, ; 510
	%struct.TypeMapModuleEntry {
		i32 33555512, ; uint32_t type_token_id (0x2000438)
		i32 141; uint32_t java_map_index (0x8d)
	}, ; 511
	%struct.TypeMapModuleEntry {
		i32 33555514, ; uint32_t type_token_id (0x200043a)
		i32 460; uint32_t java_map_index (0x1cc)
	}, ; 512
	%struct.TypeMapModuleEntry {
		i32 33555515, ; uint32_t type_token_id (0x200043b)
		i32 117; uint32_t java_map_index (0x75)
	}, ; 513
	%struct.TypeMapModuleEntry {
		i32 33555516, ; uint32_t type_token_id (0x200043c)
		i32 594; uint32_t java_map_index (0x252)
	}, ; 514
	%struct.TypeMapModuleEntry {
		i32 33555518, ; uint32_t type_token_id (0x200043e)
		i32 1053; uint32_t java_map_index (0x41d)
	}, ; 515
	%struct.TypeMapModuleEntry {
		i32 33555520, ; uint32_t type_token_id (0x2000440)
		i32 211; uint32_t java_map_index (0xd3)
	}, ; 516
	%struct.TypeMapModuleEntry {
		i32 33555521, ; uint32_t type_token_id (0x2000441)
		i32 661; uint32_t java_map_index (0x295)
	}, ; 517
	%struct.TypeMapModuleEntry {
		i32 33555522, ; uint32_t type_token_id (0x2000442)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 518
	%struct.TypeMapModuleEntry {
		i32 33555524, ; uint32_t type_token_id (0x2000444)
		i32 846; uint32_t java_map_index (0x34e)
	}, ; 519
	%struct.TypeMapModuleEntry {
		i32 33555525, ; uint32_t type_token_id (0x2000445)
		i32 954; uint32_t java_map_index (0x3ba)
	}, ; 520
	%struct.TypeMapModuleEntry {
		i32 33555527, ; uint32_t type_token_id (0x2000447)
		i32 538; uint32_t java_map_index (0x21a)
	}, ; 521
	%struct.TypeMapModuleEntry {
		i32 33555528, ; uint32_t type_token_id (0x2000448)
		i32 898; uint32_t java_map_index (0x382)
	}, ; 522
	%struct.TypeMapModuleEntry {
		i32 33555529, ; uint32_t type_token_id (0x2000449)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 523
	%struct.TypeMapModuleEntry {
		i32 33555530, ; uint32_t type_token_id (0x200044a)
		i32 262; uint32_t java_map_index (0x106)
	}, ; 524
	%struct.TypeMapModuleEntry {
		i32 33555531, ; uint32_t type_token_id (0x200044b)
		i32 875; uint32_t java_map_index (0x36b)
	}, ; 525
	%struct.TypeMapModuleEntry {
		i32 33555532, ; uint32_t type_token_id (0x200044c)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 526
	%struct.TypeMapModuleEntry {
		i32 33555534, ; uint32_t type_token_id (0x200044e)
		i32 1077; uint32_t java_map_index (0x435)
	}, ; 527
	%struct.TypeMapModuleEntry {
		i32 33555535, ; uint32_t type_token_id (0x200044f)
		i32 371; uint32_t java_map_index (0x173)
	}, ; 528
	%struct.TypeMapModuleEntry {
		i32 33555537, ; uint32_t type_token_id (0x2000451)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 529
	%struct.TypeMapModuleEntry {
		i32 33555538, ; uint32_t type_token_id (0x2000452)
		i32 45; uint32_t java_map_index (0x2d)
	}, ; 530
	%struct.TypeMapModuleEntry {
		i32 33555539, ; uint32_t type_token_id (0x2000453)
		i32 1127; uint32_t java_map_index (0x467)
	}, ; 531
	%struct.TypeMapModuleEntry {
		i32 33555540, ; uint32_t type_token_id (0x2000454)
		i32 955; uint32_t java_map_index (0x3bb)
	}, ; 532
	%struct.TypeMapModuleEntry {
		i32 33555542, ; uint32_t type_token_id (0x2000456)
		i32 907; uint32_t java_map_index (0x38b)
	}, ; 533
	%struct.TypeMapModuleEntry {
		i32 33555545, ; uint32_t type_token_id (0x2000459)
		i32 507; uint32_t java_map_index (0x1fb)
	}, ; 534
	%struct.TypeMapModuleEntry {
		i32 33555546, ; uint32_t type_token_id (0x200045a)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 535
	%struct.TypeMapModuleEntry {
		i32 33555547, ; uint32_t type_token_id (0x200045b)
		i32 757; uint32_t java_map_index (0x2f5)
	}, ; 536
	%struct.TypeMapModuleEntry {
		i32 33555548, ; uint32_t type_token_id (0x200045c)
		i32 785; uint32_t java_map_index (0x311)
	}, ; 537
	%struct.TypeMapModuleEntry {
		i32 33555549, ; uint32_t type_token_id (0x200045d)
		i32 518; uint32_t java_map_index (0x206)
	}, ; 538
	%struct.TypeMapModuleEntry {
		i32 33555551, ; uint32_t type_token_id (0x200045f)
		i32 614; uint32_t java_map_index (0x266)
	}, ; 539
	%struct.TypeMapModuleEntry {
		i32 33555552, ; uint32_t type_token_id (0x2000460)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 540
	%struct.TypeMapModuleEntry {
		i32 33555553, ; uint32_t type_token_id (0x2000461)
		i32 599; uint32_t java_map_index (0x257)
	}, ; 541
	%struct.TypeMapModuleEntry {
		i32 33555554, ; uint32_t type_token_id (0x2000462)
		i32 767; uint32_t java_map_index (0x2ff)
	}, ; 542
	%struct.TypeMapModuleEntry {
		i32 33555556, ; uint32_t type_token_id (0x2000464)
		i32 874; uint32_t java_map_index (0x36a)
	}, ; 543
	%struct.TypeMapModuleEntry {
		i32 33555557, ; uint32_t type_token_id (0x2000465)
		i32 848; uint32_t java_map_index (0x350)
	}, ; 544
	%struct.TypeMapModuleEntry {
		i32 33555558, ; uint32_t type_token_id (0x2000466)
		i32 590; uint32_t java_map_index (0x24e)
	}, ; 545
	%struct.TypeMapModuleEntry {
		i32 33555559, ; uint32_t type_token_id (0x2000467)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 546
	%struct.TypeMapModuleEntry {
		i32 33555560, ; uint32_t type_token_id (0x2000468)
		i32 926; uint32_t java_map_index (0x39e)
	}, ; 547
	%struct.TypeMapModuleEntry {
		i32 33555561, ; uint32_t type_token_id (0x2000469)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 548
	%struct.TypeMapModuleEntry {
		i32 33555563, ; uint32_t type_token_id (0x200046b)
		i32 583; uint32_t java_map_index (0x247)
	}, ; 549
	%struct.TypeMapModuleEntry {
		i32 33555564, ; uint32_t type_token_id (0x200046c)
		i32 701; uint32_t java_map_index (0x2bd)
	}, ; 550
	%struct.TypeMapModuleEntry {
		i32 33555565, ; uint32_t type_token_id (0x200046d)
		i32 917; uint32_t java_map_index (0x395)
	}, ; 551
	%struct.TypeMapModuleEntry {
		i32 33555566, ; uint32_t type_token_id (0x200046e)
		i32 632; uint32_t java_map_index (0x278)
	}, ; 552
	%struct.TypeMapModuleEntry {
		i32 33555567, ; uint32_t type_token_id (0x200046f)
		i32 175; uint32_t java_map_index (0xaf)
	}, ; 553
	%struct.TypeMapModuleEntry {
		i32 33555582, ; uint32_t type_token_id (0x200047e)
		i32 823; uint32_t java_map_index (0x337)
	} ; 554
], align 4

@module19_managed_to_java_duplicates = internal dso_local constant [195 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 930; uint32_t java_map_index (0x3a2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 247; uint32_t java_map_index (0xf7)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 929; uint32_t java_map_index (0x3a1)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 411; uint32_t java_map_index (0x19b)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 965; uint32_t java_map_index (0x3c5)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 1117; uint32_t java_map_index (0x45d)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 1099; uint32_t java_map_index (0x44b)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554647, ; uint32_t type_token_id (0x20000d7)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554653, ; uint32_t type_token_id (0x20000dd)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 805; uint32_t java_map_index (0x325)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554660, ; uint32_t type_token_id (0x20000e4)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 1121; uint32_t java_map_index (0x461)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 870; uint32_t java_map_index (0x366)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 789; uint32_t java_map_index (0x315)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 367; uint32_t java_map_index (0x16f)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 801; uint32_t java_map_index (0x321)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 642; uint32_t java_map_index (0x282)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 909; uint32_t java_map_index (0x38d)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554729, ; uint32_t type_token_id (0x2000129)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 1121; uint32_t java_map_index (0x461)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554732, ; uint32_t type_token_id (0x200012c)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554740, ; uint32_t type_token_id (0x2000134)
		i32 861; uint32_t java_map_index (0x35d)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 792; uint32_t java_map_index (0x318)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 1064; uint32_t java_map_index (0x428)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 287; uint32_t java_map_index (0x11f)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 1003; uint32_t java_map_index (0x3eb)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554773, ; uint32_t type_token_id (0x2000155)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 249; uint32_t java_map_index (0xf9)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554784, ; uint32_t type_token_id (0x2000160)
		i32 284; uint32_t java_map_index (0x11c)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554790, ; uint32_t type_token_id (0x2000166)
		i32 310; uint32_t java_map_index (0x136)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 395; uint32_t java_map_index (0x18b)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 559; uint32_t java_map_index (0x22f)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 782; uint32_t java_map_index (0x30e)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 149; uint32_t java_map_index (0x95)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 60; uint32_t java_map_index (0x3c)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554823, ; uint32_t type_token_id (0x2000187)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554827, ; uint32_t type_token_id (0x200018b)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 1046; uint32_t java_map_index (0x416)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554840, ; uint32_t type_token_id (0x2000198)
		i32 486; uint32_t java_map_index (0x1e6)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554849, ; uint32_t type_token_id (0x20001a1)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554888, ; uint32_t type_token_id (0x20001c8)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 512; uint32_t java_map_index (0x200)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554892, ; uint32_t type_token_id (0x20001cc)
		i32 259; uint32_t java_map_index (0x103)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554894, ; uint32_t type_token_id (0x20001ce)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554896, ; uint32_t type_token_id (0x20001d0)
		i32 441; uint32_t java_map_index (0x1b9)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554903, ; uint32_t type_token_id (0x20001d7)
		i32 1049; uint32_t java_map_index (0x419)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554905, ; uint32_t type_token_id (0x20001d9)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554930, ; uint32_t type_token_id (0x20001f2)
		i32 345; uint32_t java_map_index (0x159)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554939, ; uint32_t type_token_id (0x20001fb)
		i32 242; uint32_t java_map_index (0xf2)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554943, ; uint32_t type_token_id (0x20001ff)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554951, ; uint32_t type_token_id (0x2000207)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554954, ; uint32_t type_token_id (0x200020a)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554956, ; uint32_t type_token_id (0x200020c)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554958, ; uint32_t type_token_id (0x200020e)
		i32 124; uint32_t java_map_index (0x7c)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554962, ; uint32_t type_token_id (0x2000212)
		i32 338; uint32_t java_map_index (0x152)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554963, ; uint32_t type_token_id (0x2000213)
		i32 750; uint32_t java_map_index (0x2ee)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554965, ; uint32_t type_token_id (0x2000215)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554967, ; uint32_t type_token_id (0x2000217)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554970, ; uint32_t type_token_id (0x200021a)
		i32 469; uint32_t java_map_index (0x1d5)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554974, ; uint32_t type_token_id (0x200021e)
		i32 474; uint32_t java_map_index (0x1da)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 195; uint32_t java_map_index (0xc3)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33555004, ; uint32_t type_token_id (0x200023c)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33555016, ; uint32_t type_token_id (0x2000248)
		i32 285; uint32_t java_map_index (0x11d)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33555017, ; uint32_t type_token_id (0x2000249)
		i32 379; uint32_t java_map_index (0x17b)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33555019, ; uint32_t type_token_id (0x200024b)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33555026, ; uint32_t type_token_id (0x2000252)
		i32 1113; uint32_t java_map_index (0x459)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33555028, ; uint32_t type_token_id (0x2000254)
		i32 1104; uint32_t java_map_index (0x450)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33555030, ; uint32_t type_token_id (0x2000256)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33555032, ; uint32_t type_token_id (0x2000258)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33555035, ; uint32_t type_token_id (0x200025b)
		i32 293; uint32_t java_map_index (0x125)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33555037, ; uint32_t type_token_id (0x200025d)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33555039, ; uint32_t type_token_id (0x200025f)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33555042, ; uint32_t type_token_id (0x2000262)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33555044, ; uint32_t type_token_id (0x2000264)
		i32 136; uint32_t java_map_index (0x88)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33555046, ; uint32_t type_token_id (0x2000266)
		i32 154; uint32_t java_map_index (0x9a)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555048, ; uint32_t type_token_id (0x2000268)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555050, ; uint32_t type_token_id (0x200026a)
		i32 884; uint32_t java_map_index (0x374)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33555052, ; uint32_t type_token_id (0x200026c)
		i32 207; uint32_t java_map_index (0xcf)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33555054, ; uint32_t type_token_id (0x200026e)
		i32 605; uint32_t java_map_index (0x25d)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33555057, ; uint32_t type_token_id (0x2000271)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33555058, ; uint32_t type_token_id (0x2000272)
		i32 105; uint32_t java_map_index (0x69)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33555060, ; uint32_t type_token_id (0x2000274)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33555064, ; uint32_t type_token_id (0x2000278)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33555068, ; uint32_t type_token_id (0x200027c)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33555071, ; uint32_t type_token_id (0x200027f)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33555079, ; uint32_t type_token_id (0x2000287)
		i32 341; uint32_t java_map_index (0x155)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33555084, ; uint32_t type_token_id (0x200028c)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33555087, ; uint32_t type_token_id (0x200028f)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33555089, ; uint32_t type_token_id (0x2000291)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33555093, ; uint32_t type_token_id (0x2000295)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33555095, ; uint32_t type_token_id (0x2000297)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33555099, ; uint32_t type_token_id (0x200029b)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33555103, ; uint32_t type_token_id (0x200029f)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33555132, ; uint32_t type_token_id (0x20002bc)
		i32 339; uint32_t java_map_index (0x153)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33555139, ; uint32_t type_token_id (0x20002c3)
		i32 1037; uint32_t java_map_index (0x40d)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33555143, ; uint32_t type_token_id (0x20002c7)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33555146, ; uint32_t type_token_id (0x20002ca)
		i32 413; uint32_t java_map_index (0x19d)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33555147, ; uint32_t type_token_id (0x20002cb)
		i32 164; uint32_t java_map_index (0xa4)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33555189, ; uint32_t type_token_id (0x20002f5)
		i32 1057; uint32_t java_map_index (0x421)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33555190, ; uint32_t type_token_id (0x20002f6)
		i32 686; uint32_t java_map_index (0x2ae)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 997; uint32_t java_map_index (0x3e5)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 1128; uint32_t java_map_index (0x468)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 711; uint32_t java_map_index (0x2c7)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33555323, ; uint32_t type_token_id (0x200037b)
		i32 766; uint32_t java_map_index (0x2fe)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 566; uint32_t java_map_index (0x236)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 864; uint32_t java_map_index (0x360)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 597; uint32_t java_map_index (0x255)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33555351, ; uint32_t type_token_id (0x2000397)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 600; uint32_t java_map_index (0x258)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 696; uint32_t java_map_index (0x2b8)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 418; uint32_t java_map_index (0x1a2)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 751; uint32_t java_map_index (0x2ef)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 1011; uint32_t java_map_index (0x3f3)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 261; uint32_t java_map_index (0x105)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33555386, ; uint32_t type_token_id (0x20003ba)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33555391, ; uint32_t type_token_id (0x20003bf)
		i32 1038; uint32_t java_map_index (0x40e)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33555393, ; uint32_t type_token_id (0x20003c1)
		i32 1116; uint32_t java_map_index (0x45c)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 882; uint32_t java_map_index (0x372)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 798; uint32_t java_map_index (0x31e)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33555420, ; uint32_t type_token_id (0x20003dc)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 1076; uint32_t java_map_index (0x434)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33555434, ; uint32_t type_token_id (0x20003ea)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33555439, ; uint32_t type_token_id (0x20003ef)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33555441, ; uint32_t type_token_id (0x20003f1)
		i32 678; uint32_t java_map_index (0x2a6)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33555443, ; uint32_t type_token_id (0x20003f3)
		i32 1026; uint32_t java_map_index (0x402)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33555445, ; uint32_t type_token_id (0x20003f5)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33555447, ; uint32_t type_token_id (0x20003f7)
		i32 725; uint32_t java_map_index (0x2d5)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33555453, ; uint32_t type_token_id (0x20003fd)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33555455, ; uint32_t type_token_id (0x20003ff)
		i32 1111; uint32_t java_map_index (0x457)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33555458, ; uint32_t type_token_id (0x2000402)
		i32 1067; uint32_t java_map_index (0x42b)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33555462, ; uint32_t type_token_id (0x2000406)
		i32 555; uint32_t java_map_index (0x22b)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33555464, ; uint32_t type_token_id (0x2000408)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33555466, ; uint32_t type_token_id (0x200040a)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33555470, ; uint32_t type_token_id (0x200040e)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33555472, ; uint32_t type_token_id (0x2000410)
		i32 522; uint32_t java_map_index (0x20a)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33555475, ; uint32_t type_token_id (0x2000413)
		i32 966; uint32_t java_map_index (0x3c6)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33555477, ; uint32_t type_token_id (0x2000415)
		i32 264; uint32_t java_map_index (0x108)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33555480, ; uint32_t type_token_id (0x2000418)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33555482, ; uint32_t type_token_id (0x200041a)
		i32 715; uint32_t java_map_index (0x2cb)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33555484, ; uint32_t type_token_id (0x200041c)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33555486, ; uint32_t type_token_id (0x200041e)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33555489, ; uint32_t type_token_id (0x2000421)
		i32 150; uint32_t java_map_index (0x96)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33555495, ; uint32_t type_token_id (0x2000427)
		i32 245; uint32_t java_map_index (0xf5)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33555502, ; uint32_t type_token_id (0x200042e)
		i32 354; uint32_t java_map_index (0x162)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33555511, ; uint32_t type_token_id (0x2000437)
		i32 1086; uint32_t java_map_index (0x43e)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33555513, ; uint32_t type_token_id (0x2000439)
		i32 141; uint32_t java_map_index (0x8d)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33555517, ; uint32_t type_token_id (0x200043d)
		i32 594; uint32_t java_map_index (0x252)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33555519, ; uint32_t type_token_id (0x200043f)
		i32 1053; uint32_t java_map_index (0x41d)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33555523, ; uint32_t type_token_id (0x2000443)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33555526, ; uint32_t type_token_id (0x2000446)
		i32 954; uint32_t java_map_index (0x3ba)
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 33555533, ; uint32_t type_token_id (0x200044d)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 33555536, ; uint32_t type_token_id (0x2000450)
		i32 371; uint32_t java_map_index (0x173)
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 33555541, ; uint32_t type_token_id (0x2000455)
		i32 955; uint32_t java_map_index (0x3bb)
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 33555543, ; uint32_t type_token_id (0x2000457)
		i32 907; uint32_t java_map_index (0x38b)
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 33555550, ; uint32_t type_token_id (0x200045e)
		i32 518; uint32_t java_map_index (0x206)
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 33555555, ; uint32_t type_token_id (0x2000463)
		i32 767; uint32_t java_map_index (0x2ff)
	} ; 194
], align 4

@module20_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 795; uint32_t java_map_index (0x31b)
	} ; 0
], align 4

@module21_managed_to_java = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 76; uint32_t java_map_index (0x4c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 669; uint32_t java_map_index (0x29d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 48; uint32_t java_map_index (0x30)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 1062; uint32_t java_map_index (0x426)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 434; uint32_t java_map_index (0x1b2)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 358; uint32_t java_map_index (0x166)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 153; uint32_t java_map_index (0x99)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 1040; uint32_t java_map_index (0x410)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 275; uint32_t java_map_index (0x113)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 64; uint32_t java_map_index (0x40)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 333; uint32_t java_map_index (0x14d)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 667; uint32_t java_map_index (0x29b)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 163; uint32_t java_map_index (0xa3)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 521; uint32_t java_map_index (0x209)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 1060; uint32_t java_map_index (0x424)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 657; uint32_t java_map_index (0x291)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 928; uint32_t java_map_index (0x3a0)
	} ; 18
], align 4

@module22_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 740; uint32_t java_map_index (0x2e4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 812; uint32_t java_map_index (0x32c)
	} ; 1
], align 4

@module23_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 213; uint32_t java_map_index (0xd5)
	} ; 0
], align 4

@module24_managed_to_java = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 881; uint32_t java_map_index (0x371)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 609; uint32_t java_map_index (0x261)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 695; uint32_t java_map_index (0x2b7)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 407; uint32_t java_map_index (0x197)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 1014; uint32_t java_map_index (0x3f6)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 169; uint32_t java_map_index (0xa9)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 1041; uint32_t java_map_index (0x411)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 106; uint32_t java_map_index (0x6a)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 584; uint32_t java_map_index (0x248)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 1089; uint32_t java_map_index (0x441)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 1029; uint32_t java_map_index (0x405)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 159; uint32_t java_map_index (0x9f)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 774; uint32_t java_map_index (0x306)
	} ; 18
], align 4

@module24_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 1014; uint32_t java_map_index (0x3f6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 169; uint32_t java_map_index (0xa9)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 1041; uint32_t java_map_index (0x411)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 106; uint32_t java_map_index (0x6a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 1089; uint32_t java_map_index (0x441)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 774; uint32_t java_map_index (0x306)
	} ; 9
], align 4

@module25_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 892; uint32_t java_map_index (0x37c)
	} ; 0
], align 4

@module25_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 892; uint32_t java_map_index (0x37c)
	} ; 0
], align 4

@module26_managed_to_java = internal dso_local constant [66 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 1070; uint32_t java_map_index (0x42e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 754; uint32_t java_map_index (0x2f2)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 616; uint32_t java_map_index (0x268)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 475; uint32_t java_map_index (0x1db)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 237; uint32_t java_map_index (0xed)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 1124; uint32_t java_map_index (0x464)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 717; uint32_t java_map_index (0x2cd)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 578; uint32_t java_map_index (0x242)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 535; uint32_t java_map_index (0x217)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 1005; uint32_t java_map_index (0x3ed)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 305; uint32_t java_map_index (0x131)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 173; uint32_t java_map_index (0xad)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 710; uint32_t java_map_index (0x2c6)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 1001; uint32_t java_map_index (0x3e9)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 796; uint32_t java_map_index (0x31c)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 269; uint32_t java_map_index (0x10d)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 891; uint32_t java_map_index (0x37b)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 1008; uint32_t java_map_index (0x3f0)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 656; uint32_t java_map_index (0x290)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 467; uint32_t java_map_index (0x1d3)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 204; uint32_t java_map_index (0xcc)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 449; uint32_t java_map_index (0x1c1)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 835; uint32_t java_map_index (0x343)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 306; uint32_t java_map_index (0x132)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 448; uint32_t java_map_index (0x1c0)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 700; uint32_t java_map_index (0x2bc)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 170; uint32_t java_map_index (0xaa)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 509; uint32_t java_map_index (0x1fd)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 818; uint32_t java_map_index (0x332)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 684; uint32_t java_map_index (0x2ac)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 12; uint32_t java_map_index (0xc)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 62; uint32_t java_map_index (0x3e)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 181; uint32_t java_map_index (0xb5)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 772; uint32_t java_map_index (0x304)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 714; uint32_t java_map_index (0x2ca)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 200; uint32_t java_map_index (0xc8)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 55; uint32_t java_map_index (0x37)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 977; uint32_t java_map_index (0x3d1)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 941; uint32_t java_map_index (0x3ad)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 221; uint32_t java_map_index (0xdd)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555056, ; uint32_t type_token_id (0x2000270)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555096, ; uint32_t type_token_id (0x2000298)
		i32 120; uint32_t java_map_index (0x78)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555100, ; uint32_t type_token_id (0x200029c)
		i32 787; uint32_t java_map_index (0x313)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 1010; uint32_t java_map_index (0x3f2)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 185; uint32_t java_map_index (0xb9)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555114, ; uint32_t type_token_id (0x20002aa)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555125, ; uint32_t type_token_id (0x20002b5)
		i32 487; uint32_t java_map_index (0x1e7)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 794; uint32_t java_map_index (0x31a)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 674; uint32_t java_map_index (0x2a2)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 519; uint32_t java_map_index (0x207)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 166; uint32_t java_map_index (0xa6)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 546; uint32_t java_map_index (0x222)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555210, ; uint32_t type_token_id (0x200030a)
		i32 615; uint32_t java_map_index (0x267)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 1033; uint32_t java_map_index (0x409)
	} ; 65
], align 4

@module26_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 717; uint32_t java_map_index (0x2cd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 1005; uint32_t java_map_index (0x3ed)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554710, ; uint32_t type_token_id (0x2000116)
		i32 1001; uint32_t java_map_index (0x3e9)
	} ; 2
], align 4

@module27_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 1107; uint32_t java_map_index (0x453)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 736; uint32_t java_map_index (0x2e0)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 958; uint32_t java_map_index (0x3be)
	} ; 3
], align 4

@module27_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 596; uint32_t java_map_index (0x254)
	} ; 0
], align 4

@module28_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 392; uint32_t java_map_index (0x188)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 739; uint32_t java_map_index (0x2e3)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 503; uint32_t java_map_index (0x1f7)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 424; uint32_t java_map_index (0x1a8)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 828; uint32_t java_map_index (0x33c)
	} ; 5
], align 4

@module28_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 739; uint32_t java_map_index (0x2e3)
	} ; 0
], align 4

@module29_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 665; uint32_t java_map_index (0x299)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 1122; uint32_t java_map_index (0x462)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 666; uint32_t java_map_index (0x29a)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 994; uint32_t java_map_index (0x3e2)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 660; uint32_t java_map_index (0x294)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 716; uint32_t java_map_index (0x2cc)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 138; uint32_t java_map_index (0x8a)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 1119; uint32_t java_map_index (0x45f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 458; uint32_t java_map_index (0x1ca)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 856; uint32_t java_map_index (0x358)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 720; uint32_t java_map_index (0x2d0)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 453; uint32_t java_map_index (0x1c5)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 296; uint32_t java_map_index (0x128)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 452; uint32_t java_map_index (0x1c4)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 1054; uint32_t java_map_index (0x41e)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 1015; uint32_t java_map_index (0x3f7)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 398; uint32_t java_map_index (0x18e)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 492; uint32_t java_map_index (0x1ec)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 1074; uint32_t java_map_index (0x432)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 425; uint32_t java_map_index (0x1a9)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 999; uint32_t java_map_index (0x3e7)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 420; uint32_t java_map_index (0x1a4)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 612; uint32_t java_map_index (0x264)
	} ; 40
], align 4

@module29_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 1122; uint32_t java_map_index (0x462)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 138; uint32_t java_map_index (0x8a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 1119; uint32_t java_map_index (0x45f)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 458; uint32_t java_map_index (0x1ca)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 720; uint32_t java_map_index (0x2d0)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 453; uint32_t java_map_index (0x1c5)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 452; uint32_t java_map_index (0x1c4)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 1054; uint32_t java_map_index (0x41e)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 1015; uint32_t java_map_index (0x3f7)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 999; uint32_t java_map_index (0x3e7)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 612; uint32_t java_map_index (0x264)
	} ; 20
], align 4

@module30_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 873; uint32_t java_map_index (0x369)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 851; uint32_t java_map_index (0x353)
	} ; 1
], align 4

@module30_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 851; uint32_t java_map_index (0x353)
	} ; 0
], align 4

@module31_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 769; uint32_t java_map_index (0x301)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 390; uint32_t java_map_index (0x186)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 672; uint32_t java_map_index (0x2a0)
	} ; 3
], align 4

@module31_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 390; uint32_t java_map_index (0x186)
	} ; 1
], align 4

@module32_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 205; uint32_t java_map_index (0xcd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 532; uint32_t java_map_index (0x214)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1080; uint32_t java_map_index (0x438)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 130; uint32_t java_map_index (0x82)
	} ; 4
], align 4

@module32_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 532; uint32_t java_map_index (0x214)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 1080; uint32_t java_map_index (0x438)
	} ; 2
], align 4

@module33_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 845; uint32_t java_map_index (0x34d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 496; uint32_t java_map_index (0x1f0)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 217; uint32_t java_map_index (0xd9)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 852; uint32_t java_map_index (0x354)
	} ; 3
], align 4

@module34_managed_to_java = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 945; uint32_t java_map_index (0x3b1)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 94; uint32_t java_map_index (0x5e)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 633; uint32_t java_map_index (0x279)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 113; uint32_t java_map_index (0x71)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 241; uint32_t java_map_index (0xf1)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 334; uint32_t java_map_index (0x14e)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 931; uint32_t java_map_index (0x3a3)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 987; uint32_t java_map_index (0x3db)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 1039; uint32_t java_map_index (0x40f)
	} ; 9
], align 4

@module34_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 931; uint32_t java_map_index (0x3a3)
	} ; 0
], align 4

@module35_managed_to_java = internal dso_local constant [106 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 401; uint32_t java_map_index (0x191)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 502; uint32_t java_map_index (0x1f6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 23; uint32_t java_map_index (0x17)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 267; uint32_t java_map_index (0x10b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 450; uint32_t java_map_index (0x1c2)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 606; uint32_t java_map_index (0x25e)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 858; uint32_t java_map_index (0x35a)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33555229, ; uint32_t type_token_id (0x200031d)
		i32 376; uint32_t java_map_index (0x178)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 1103; uint32_t java_map_index (0x44f)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 54; uint32_t java_map_index (0x36)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 636; uint32_t java_map_index (0x27c)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33555239, ; uint32_t type_token_id (0x2000327)
		i32 171; uint32_t java_map_index (0xab)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 839; uint32_t java_map_index (0x347)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 650; uint32_t java_map_index (0x28a)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 815; uint32_t java_map_index (0x32f)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 1081; uint32_t java_map_index (0x439)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 960; uint32_t java_map_index (0x3c0)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 292; uint32_t java_map_index (0x124)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 132; uint32_t java_map_index (0x84)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 688; uint32_t java_map_index (0x2b0)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 765; uint32_t java_map_index (0x2fd)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 162; uint32_t java_map_index (0xa2)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 87; uint32_t java_map_index (0x57)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 771; uint32_t java_map_index (0x303)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 201; uint32_t java_map_index (0xc9)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 908; uint32_t java_map_index (0x38c)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 1017; uint32_t java_map_index (0x3f9)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 1110; uint32_t java_map_index (0x456)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 381; uint32_t java_map_index (0x17d)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 764; uint32_t java_map_index (0x2fc)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33555305, ; uint32_t type_token_id (0x2000369)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 723; uint32_t java_map_index (0x2d3)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 328; uint32_t java_map_index (0x148)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33555311, ; uint32_t type_token_id (0x200036f)
		i32 1034; uint32_t java_map_index (0x40a)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33555323, ; uint32_t type_token_id (0x200037b)
		i32 289; uint32_t java_map_index (0x121)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 1047; uint32_t java_map_index (0x417)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 827; uint32_t java_map_index (0x33b)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 803; uint32_t java_map_index (0x323)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 468; uint32_t java_map_index (0x1d4)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 255; uint32_t java_map_index (0xff)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 260; uint32_t java_map_index (0x104)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 160; uint32_t java_map_index (0xa0)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 859; uint32_t java_map_index (0x35b)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 463; uint32_t java_map_index (0x1cf)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 90; uint32_t java_map_index (0x5a)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 871; uint32_t java_map_index (0x367)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 1055; uint32_t java_map_index (0x41f)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 282; uint32_t java_map_index (0x11a)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 628; uint32_t java_map_index (0x274)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 415; uint32_t java_map_index (0x19f)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 1030; uint32_t java_map_index (0x406)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 323; uint32_t java_map_index (0x143)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 809; uint32_t java_map_index (0x329)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 902; uint32_t java_map_index (0x386)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 429; uint32_t java_map_index (0x1ad)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 1083; uint32_t java_map_index (0x43b)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 592; uint32_t java_map_index (0x250)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 239; uint32_t java_map_index (0xef)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33555374, ; uint32_t type_token_id (0x20003ae)
		i32 1105; uint32_t java_map_index (0x451)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 658; uint32_t java_map_index (0x292)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33555531, ; uint32_t type_token_id (0x200044b)
		i32 151; uint32_t java_map_index (0x97)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33555704, ; uint32_t type_token_id (0x20004f8)
		i32 369; uint32_t java_map_index (0x171)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33555781, ; uint32_t type_token_id (0x2000545)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33555787, ; uint32_t type_token_id (0x200054b)
		i32 320; uint32_t java_map_index (0x140)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33555798, ; uint32_t type_token_id (0x2000556)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33555808, ; uint32_t type_token_id (0x2000560)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33555810, ; uint32_t type_token_id (0x2000562)
		i32 869; uint32_t java_map_index (0x365)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33555811, ; uint32_t type_token_id (0x2000563)
		i32 963; uint32_t java_map_index (0x3c3)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33555818, ; uint32_t type_token_id (0x200056a)
		i32 837; uint32_t java_map_index (0x345)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33555821, ; uint32_t type_token_id (0x200056d)
		i32 1058; uint32_t java_map_index (0x422)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33555822, ; uint32_t type_token_id (0x200056e)
		i32 673; uint32_t java_map_index (0x2a1)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 409; uint32_t java_map_index (0x199)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 329; uint32_t java_map_index (0x149)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33555830, ; uint32_t type_token_id (0x2000576)
		i32 187; uint32_t java_map_index (0xbb)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33555840, ; uint32_t type_token_id (0x2000580)
		i32 107; uint32_t java_map_index (0x6b)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33555843, ; uint32_t type_token_id (0x2000583)
		i32 1101; uint32_t java_map_index (0x44d)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33555846, ; uint32_t type_token_id (0x2000586)
		i32 634; uint32_t java_map_index (0x27a)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 920; uint32_t java_map_index (0x398)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33555852, ; uint32_t type_token_id (0x200058c)
		i32 315; uint32_t java_map_index (0x13b)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33555853, ; uint32_t type_token_id (0x200058d)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33555854, ; uint32_t type_token_id (0x200058e)
		i32 942; uint32_t java_map_index (0x3ae)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 350; uint32_t java_map_index (0x15e)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 126; uint32_t java_map_index (0x7e)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 685; uint32_t java_map_index (0x2ad)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 755; uint32_t java_map_index (0x2f3)
	} ; 105
], align 4

@module36_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 611; uint32_t java_map_index (0x263)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 183; uint32_t java_map_index (0xb7)
	} ; 1
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1131 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 1113; uint32_t java_name_index (0x459)
	}, ; 0
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 675; uint32_t java_name_index (0x2a3)
	}, ; 1
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 213; uint32_t java_name_index (0xd5)
	}, ; 2
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555561, ; uint32_t type_token_id (0x2000469)
		i32 831; uint32_t java_name_index (0x33f)
	}, ; 3
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 747; uint32_t java_name_index (0x2eb)
	}, ; 4
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 20; uint32_t java_name_index (0x14)
	}, ; 5
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 737; uint32_t java_name_index (0x2e1)
	}, ; 6
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 50; uint32_t java_name_index (0x32)
	}, ; 7
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554874, ; uint32_t type_token_id (0x20001ba)
		i32 450; uint32_t java_name_index (0x1c2)
	}, ; 8
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554912, ; uint32_t type_token_id (0x20001e0)
		i32 477; uint32_t java_name_index (0x1dd)
	}, ; 9
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 222; uint32_t java_name_index (0xde)
	}, ; 10
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 171; uint32_t java_name_index (0xab)
	}, ; 11
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 919; uint32_t java_name_index (0x397)
	}, ; 12
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 642; uint32_t java_name_index (0x282)
	}, ; 13
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 577; uint32_t java_name_index (0x241)
	}, ; 14
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 686; uint32_t java_name_index (0x2ae)
	}, ; 15
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 322; uint32_t java_name_index (0x142)
	}, ; 16
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 991; uint32_t java_name_index (0x3df)
	}, ; 17
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 458; uint32_t java_name_index (0x1ca)
	}, ; 18
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554716, ; uint32_t type_token_id (0x200011c)
		i32 354; uint32_t java_name_index (0x162)
	}, ; 19
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 1070; uint32_t java_name_index (0x42e)
	}, ; 20
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 936; uint32_t java_name_index (0x3a8)
	}, ; 21
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 34; uint32_t java_name_index (0x22)
	}, ; 22
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 1030; uint32_t java_name_index (0x406)
	}, ; 23
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 943; uint32_t java_name_index (0x3af)
	}, ; 24
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 1014; uint32_t java_name_index (0x3f6)
	}, ; 25
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 327; uint32_t java_name_index (0x147)
	}, ; 26
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 845; uint32_t java_name_index (0x34d)
	}, ; 27
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 924; uint32_t java_name_index (0x39c)
	}, ; 28
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 360; uint32_t java_name_index (0x168)
	}, ; 29
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 973; uint32_t java_name_index (0x3cd)
	}, ; 30
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555018, ; uint32_t type_token_id (0x200024a)
		i32 533; uint32_t java_name_index (0x215)
	}, ; 31
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 649; uint32_t java_name_index (0x289)
	}, ; 32
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555452, ; uint32_t type_token_id (0x20003fc)
		i32 753; uint32_t java_name_index (0x2f1)
	}, ; 33
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 342; uint32_t java_name_index (0x156)
	}, ; 34
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 290; uint32_t java_name_index (0x122)
	}, ; 35
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555373, ; uint32_t type_token_id (0x20003ad)
		i32 703; uint32_t java_name_index (0x2bf)
	}, ; 36
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555066, ; uint32_t type_token_id (0x200027a)
		i32 560; uint32_t java_name_index (0x230)
	}, ; 37
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 1122; uint32_t java_name_index (0x462)
	}, ; 38
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 509; uint32_t java_name_index (0x1fd)
	}, ; 39
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 352; uint32_t java_name_index (0x160)
	}, ; 40
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 492; uint32_t java_name_index (0x1ec)
	}, ; 41
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 403; uint32_t java_name_index (0x193)
	}, ; 42
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 358; uint32_t java_name_index (0x166)
	}, ; 43
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 401; uint32_t java_name_index (0x191)
	}, ; 44
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555538, ; uint32_t type_token_id (0x2000452)
		i32 813; uint32_t java_name_index (0x32d)
	}, ; 45
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 661; uint32_t java_name_index (0x295)
	}, ; 46
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 45; uint32_t java_name_index (0x2d)
	}, ; 47
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 841; uint32_t java_name_index (0x349)
	}, ; 48
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 1105; uint32_t java_name_index (0x451)
	}, ; 49
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 348; uint32_t java_name_index (0x15c)
	}, ; 50
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 687; uint32_t java_name_index (0x2af)
	}, ; 51
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 648; uint32_t java_name_index (0x288)
	}, ; 52
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554844, ; uint32_t type_token_id (0x200019c)
		i32 426; uint32_t java_name_index (0x1aa)
	}, ; 53
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 1037; uint32_t java_name_index (0x40d)
	}, ; 54
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 927; uint32_t java_name_index (0x39f)
	}, ; 55
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1077; uint32_t java_name_index (0x435)
	}, ; 56
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 744; uint32_t java_name_index (0x2e8)
	}, ; 57
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 148; uint32_t java_name_index (0x94)
	}, ; 58
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 391; uint32_t java_name_index (0x187)
	}, ; 59
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 410; uint32_t java_name_index (0x19a)
	}, ; 60
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555468, ; uint32_t type_token_id (0x200040c)
		i32 763; uint32_t java_name_index (0x2fb)
	}, ; 61
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 920; uint32_t java_name_index (0x398)
	}, ; 62
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 610; uint32_t java_name_index (0x262)
	}, ; 63
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 850; uint32_t java_name_index (0x352)
	}, ; 64
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 167; uint32_t java_name_index (0xa7)
	}, ; 65
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 623; uint32_t java_name_index (0x26f)
	}, ; 66
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 288; uint32_t java_name_index (0x120)
	}, ; 67
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 19; uint32_t java_name_index (0x13)
	}, ; 68
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 448; uint32_t java_name_index (0x1c0)
	}, ; 69
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555487, ; uint32_t type_token_id (0x200041f)
		i32 774; uint32_t java_name_index (0x306)
	}, ; 70
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554964, ; uint32_t type_token_id (0x2000214)
		i32 508; uint32_t java_name_index (0x1fc)
	}, ; 71
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555056, ; uint32_t type_token_id (0x2000270)
		i32 886; uint32_t java_name_index (0x376)
	}, ; 72
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555508, ; uint32_t type_token_id (0x2000434)
		i32 791; uint32_t java_name_index (0x317)
	}, ; 73
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 622; uint32_t java_name_index (0x26e)
	}, ; 74
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 33; uint32_t java_name_index (0x21)
	}, ; 75
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 839; uint32_t java_name_index (0x347)
	}, ; 76
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 174; uint32_t java_name_index (0xae)
	}, ; 77
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 53; uint32_t java_name_index (0x35)
	}, ; 78
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 281; uint32_t java_name_index (0x119)
	}, ; 79
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 740; uint32_t java_name_index (0x2e4)
	}, ; 80
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 76; uint32_t java_name_index (0x4c)
	}, ; 81
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 234; uint32_t java_name_index (0xea)
	}, ; 82
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555798, ; uint32_t type_token_id (0x2000556)
		i32 1041; uint32_t java_name_index (0x411)
	}, ; 83
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 99; uint32_t java_name_index (0x63)
	}, ; 84
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 255; uint32_t java_name_index (0xff)
	}, ; 85
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 318; uint32_t java_name_index (0x13e)
	}, ; 86
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 1060; uint32_t java_name_index (0x424)
	}, ; 87
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555808, ; uint32_t type_token_id (0x2000560)
		i32 1048; uint32_t java_name_index (0x418)
	}, ; 88
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 31; uint32_t java_name_index (0x1f)
	}, ; 89
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 1097; uint32_t java_name_index (0x449)
	}, ; 90
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 44; uint32_t java_name_index (0x2c)
	}, ; 91
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 417; uint32_t java_name_index (0x1a1)
	}, ; 92
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 395; uint32_t java_name_index (0x18b)
	}, ; 93
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1015; uint32_t java_name_index (0x3f7)
	}, ; 94
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 563; uint32_t java_name_index (0x233)
	}, ; 95
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 904; uint32_t java_name_index (0x388)
	}, ; 96
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 1059; uint32_t java_name_index (0x423)
	}, ; 97
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555491, ; uint32_t type_token_id (0x2000423)
		i32 777; uint32_t java_name_index (0x309)
	}, ; 98
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 230; uint32_t java_name_index (0xe6)
	}, ; 99
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 676; uint32_t java_name_index (0x2a4)
	}, ; 100
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 673; uint32_t java_name_index (0x2a1)
	}, ; 101
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 697; uint32_t java_name_index (0x2b9)
	}, ; 102
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 707; uint32_t java_name_index (0x2c3)
	}, ; 103
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 52; uint32_t java_name_index (0x34)
	}, ; 104
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 553; uint32_t java_name_index (0x229)
	}, ; 105
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 871; uint32_t java_name_index (0x367)
	}, ; 106
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555840, ; uint32_t type_token_id (0x2000580)
		i32 1084; uint32_t java_name_index (0x43c)
	}, ; 107
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 422; uint32_t java_name_index (0x1a6)
	}, ; 108
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 633; uint32_t java_name_index (0x279)
	}, ; 109
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 1046; uint32_t java_name_index (0x416)
	}, ; 110
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 247; uint32_t java_name_index (0xf7)
	}, ; 111
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554880, ; uint32_t type_token_id (0x20001c0)
		i32 455; uint32_t java_name_index (0x1c7)
	}, ; 112
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1017; uint32_t java_name_index (0x3f9)
	}, ; 113
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 133; uint32_t java_name_index (0x85)
	}, ; 114
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 69; uint32_t java_name_index (0x45)
	}, ; 115
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555075, ; uint32_t type_token_id (0x2000283)
		i32 567; uint32_t java_name_index (0x237)
	}, ; 116
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555515, ; uint32_t type_token_id (0x200043b)
		i32 796; uint32_t java_name_index (0x31c)
	}, ; 117
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 425; uint32_t java_name_index (0x1a9)
	}, ; 118
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554968, ; uint32_t type_token_id (0x2000218)
		i32 510; uint32_t java_name_index (0x1fe)
	}, ; 119
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555096, ; uint32_t type_token_id (0x2000298)
		i32 900; uint32_t java_name_index (0x384)
	}, ; 120
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555492, ; uint32_t type_token_id (0x2000424)
		i32 778; uint32_t java_name_index (0x30a)
	}, ; 121
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 193; uint32_t java_name_index (0xc1)
	}, ; 122
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554869, ; uint32_t type_token_id (0x20001b5)
		i32 445; uint32_t java_name_index (0x1bd)
	}, ; 123
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 505; uint32_t java_name_index (0x1f9)
	}, ; 124
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 246; uint32_t java_name_index (0xf6)
	}, ; 125
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 1042; uint32_t java_name_index (0x412)
	}, ; 126
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 23; uint32_t java_name_index (0x17)
	}, ; 127
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 382; uint32_t java_name_index (0x17e)
	}, ; 128
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 150; uint32_t java_name_index (0x96)
	}, ; 129
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 1008; uint32_t java_name_index (0x3f0)
	}, ; 130
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 418; uint32_t java_name_index (0x1a2)
	}, ; 131
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 1053; uint32_t java_name_index (0x41d)
	}, ; 132
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 232; uint32_t java_name_index (0xe8)
	}, ; 133
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555065, ; uint32_t type_token_id (0x2000279)
		i32 559; uint32_t java_name_index (0x22f)
	}, ; 134
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 868; uint32_t java_name_index (0x364)
	}, ; 135
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555043, ; uint32_t type_token_id (0x2000263)
		i32 547; uint32_t java_name_index (0x223)
	}, ; 136
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 254; uint32_t java_name_index (0xfe)
	}, ; 137
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 968; uint32_t java_name_index (0x3c8)
	}, ; 138
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 116; uint32_t java_name_index (0x74)
	}, ; 139
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 284; uint32_t java_name_index (0x11c)
	}, ; 140
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555512, ; uint32_t type_token_id (0x2000438)
		i32 794; uint32_t java_name_index (0x31a)
	}, ; 141
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 527; uint32_t java_name_index (0x20f)
	}, ; 142
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 77; uint32_t java_name_index (0x4d)
	}, ; 143
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 377; uint32_t java_name_index (0x179)
	}, ; 144
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554884, ; uint32_t type_token_id (0x20001c4)
		i32 459; uint32_t java_name_index (0x1cb)
	}, ; 145
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555077, ; uint32_t type_token_id (0x2000285)
		i32 569; uint32_t java_name_index (0x239)
	}, ; 146
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 310; uint32_t java_name_index (0x136)
	}, ; 147
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 932; uint32_t java_name_index (0x3a4)
	}, ; 148
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 408; uint32_t java_name_index (0x198)
	}, ; 149
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555488, ; uint32_t type_token_id (0x2000420)
		i32 775; uint32_t java_name_index (0x307)
	}, ; 150
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555531, ; uint32_t type_token_id (0x200044b)
		i32 1023; uint32_t java_name_index (0x3ff)
	}, ; 151
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555478, ; uint32_t type_token_id (0x2000416)
		i32 769; uint32_t java_name_index (0x301)
	}, ; 152
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 847; uint32_t java_name_index (0x34f)
	}, ; 153
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 548; uint32_t java_name_index (0x224)
	}, ; 154
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555506, ; uint32_t type_token_id (0x2000432)
		i32 789; uint32_t java_name_index (0x315)
	}, ; 155
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 9; uint32_t java_name_index (0x9)
	}, ; 156
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555421, ; uint32_t type_token_id (0x20003dd)
		i32 733; uint32_t java_name_index (0x2dd)
	}, ; 157
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 430; uint32_t java_name_index (0x1ae)
	}, ; 158
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 878; uint32_t java_name_index (0x36e)
	}, ; 159
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 1092; uint32_t java_name_index (0x444)
	}, ; 160
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 49; uint32_t java_name_index (0x31)
	}, ; 161
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 1058; uint32_t java_name_index (0x422)
	}, ; 162
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 853; uint32_t java_name_index (0x355)
	}, ; 163
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555144, ; uint32_t type_token_id (0x20002c8)
		i32 595; uint32_t java_name_index (0x253)
	}, ; 164
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 264; uint32_t java_name_index (0x108)
	}, ; 165
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 940; uint32_t java_name_index (0x3ac)
	}, ; 166
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 471; uint32_t java_name_index (0x1d7)
	}, ; 167
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555182, ; uint32_t type_token_id (0x20002ee)
		i32 601; uint32_t java_name_index (0x259)
	}, ; 168
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 869; uint32_t java_name_index (0x365)
	}, ; 169
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 915; uint32_t java_name_index (0x393)
	}, ; 170
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555239, ; uint32_t type_token_id (0x2000327)
		i32 1040; uint32_t java_name_index (0x410)
	}, ; 171
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 272; uint32_t java_name_index (0x110)
	}, ; 172
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 893; uint32_t java_name_index (0x37d)
	}, ; 173
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 251; uint32_t java_name_index (0xfb)
	}, ; 174
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555567, ; uint32_t type_token_id (0x200046f)
		i32 836; uint32_t java_name_index (0x344)
	}, ; 175
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 666; uint32_t java_name_index (0x29a)
	}, ; 176
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 38; uint32_t java_name_index (0x26)
	}, ; 177
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 712; uint32_t java_name_index (0x2c8)
	}, ; 178
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 613; uint32_t java_name_index (0x265)
	}, ; 179
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 10; uint32_t java_name_index (0xa)
	}, ; 180
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 921; uint32_t java_name_index (0x399)
	}, ; 181
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 606; uint32_t java_name_index (0x25e)
	}, ; 182
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1130; uint32_t java_name_index (0x46a)
	}, ; 183
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 711; uint32_t java_name_index (0x2c7)
	}, ; 184
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 929; uint32_t java_name_index (0x3a1)
	}, ; 185
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 480; uint32_t java_name_index (0x1e0)
	}, ; 186
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555830, ; uint32_t type_token_id (0x2000576)
		i32 1069; uint32_t java_name_index (0x42d)
	}, ; 187
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554881, ; uint32_t type_token_id (0x20001c1)
		i32 456; uint32_t java_name_index (0x1c8)
	}, ; 188
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 730; uint32_t java_name_index (0x2da)
	}, ; 189
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554931, ; uint32_t type_token_id (0x20001f3)
		i32 490; uint32_t java_name_index (0x1ea)
	}, ; 190
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 691; uint32_t java_name_index (0x2b3)
	}, ; 191
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 546; uint32_t java_name_index (0x222)
	}, ; 192
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 146; uint32_t java_name_index (0x92)
	}, ; 193
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 166; uint32_t java_name_index (0xa6)
	}, ; 194
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 521; uint32_t java_name_index (0x209)
	}, ; 195
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 761; uint32_t java_name_index (0x2f9)
	}, ; 196
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 273; uint32_t java_name_index (0x111)
	}, ; 197
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 523; uint32_t java_name_index (0x20b)
	}, ; 198
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 199; uint32_t java_name_index (0xc7)
	}, ; 199
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 925; uint32_t java_name_index (0x39d)
	}, ; 200
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 1072; uint32_t java_name_index (0x430)
	}, ; 201
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1001; uint32_t java_name_index (0x3e9)
	}, ; 202
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554717, ; uint32_t type_token_id (0x200011d)
		i32 355; uint32_t java_name_index (0x163)
	}, ; 203
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 906; uint32_t java_name_index (0x38a)
	}, ; 204
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1004; uint32_t java_name_index (0x3ec)
	}, ; 205
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1; uint32_t java_name_index (0x1)
	}, ; 206
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 551; uint32_t java_name_index (0x227)
	}, ; 207
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554926, ; uint32_t type_token_id (0x20001ee)
		i32 488; uint32_t java_name_index (0x1e8)
	}, ; 208
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 978; uint32_t java_name_index (0x3d2)
	}, ; 209
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 140; uint32_t java_name_index (0x8c)
	}, ; 210
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555520, ; uint32_t type_token_id (0x2000440)
		i32 799; uint32_t java_name_index (0x31f)
	}, ; 211
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 13; uint32_t java_name_index (0xd)
	}, ; 212
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 860; uint32_t java_name_index (0x35c)
	}, ; 213
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 176; uint32_t java_name_index (0xb0)
	}, ; 214
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 315; uint32_t java_name_index (0x13b)
	}, ; 215
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 11; uint32_t java_name_index (0xb)
	}, ; 216
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 1011; uint32_t java_name_index (0x3f3)
	}, ; 217
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 710; uint32_t java_name_index (0x2c6)
	}, ; 218
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 40; uint32_t java_name_index (0x28)
	}, ; 219
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 465; uint32_t java_name_index (0x1d1)
	}, ; 220
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 944; uint32_t java_name_index (0x3b0)
	}, ; 221
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 127; uint32_t java_name_index (0x7f)
	}, ; 222
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 195; uint32_t java_name_index (0xc3)
	}, ; 223
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 726; uint32_t java_name_index (0x2d6)
	}, ; 224
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555490, ; uint32_t type_token_id (0x2000422)
		i32 776; uint32_t java_name_index (0x308)
	}, ; 225
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 388; uint32_t java_name_index (0x184)
	}, ; 226
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 545; uint32_t java_name_index (0x221)
	}, ; 227
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 153; uint32_t java_name_index (0x99)
	}, ; 228
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 95; uint32_t java_name_index (0x5f)
	}, ; 229
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 631; uint32_t java_name_index (0x277)
	}, ; 230
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555305, ; uint32_t type_token_id (0x2000369)
		i32 1079; uint32_t java_name_index (0x437)
	}, ; 231
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 36; uint32_t java_name_index (0x24)
	}, ; 232
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 75; uint32_t java_name_index (0x4b)
	}, ; 233
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 674; uint32_t java_name_index (0x2a2)
	}, ; 234
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 643; uint32_t java_name_index (0x283)
	}, ; 235
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554841, ; uint32_t type_token_id (0x2000199)
		i32 424; uint32_t java_name_index (0x1a8)
	}, ; 236
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 885; uint32_t java_name_index (0x375)
	}, ; 237
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 343; uint32_t java_name_index (0x157)
	}, ; 238
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 1117; uint32_t java_name_index (0x45d)
	}, ; 239
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 35; uint32_t java_name_index (0x23)
	}, ; 240
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 1018; uint32_t java_name_index (0x3fa)
	}, ; 241
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 494; uint32_t java_name_index (0x1ee)
	}, ; 242
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 1055; uint32_t java_name_index (0x41f)
	}, ; 243
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 41; uint32_t java_name_index (0x29)
	}, ; 244
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555494, ; uint32_t type_token_id (0x2000426)
		i32 780; uint32_t java_name_index (0x30c)
	}, ; 245
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 634; uint32_t java_name_index (0x27a)
	}, ; 246
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 285; uint32_t java_name_index (0x11d)
	}, ; 247
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 912; uint32_t java_name_index (0x390)
	}, ; 248
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 386; uint32_t java_name_index (0x182)
	}, ; 249
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 192; uint32_t java_name_index (0xc0)
	}, ; 250
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 609; uint32_t java_name_index (0x261)
	}, ; 251
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554879, ; uint32_t type_token_id (0x20001bf)
		i32 454; uint32_t java_name_index (0x1c6)
	}, ; 252
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 975; uint32_t java_name_index (0x3cf)
	}, ; 253
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 668; uint32_t java_name_index (0x29c)
	}, ; 254
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 1090; uint32_t java_name_index (0x442)
	}, ; 255
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 138; uint32_t java_name_index (0x8a)
	}, ; 256
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 495; uint32_t java_name_index (0x1ef)
	}, ; 257
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 409; uint32_t java_name_index (0x199)
	}, ; 258
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 464; uint32_t java_name_index (0x1d0)
	}, ; 259
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 1091; uint32_t java_name_index (0x443)
	}, ; 260
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 704; uint32_t java_name_index (0x2c0)
	}, ; 261
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555530, ; uint32_t type_token_id (0x200044a)
		i32 807; uint32_t java_name_index (0x327)
	}, ; 262
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554918, ; uint32_t type_token_id (0x20001e6)
		i32 483; uint32_t java_name_index (0x1e3)
	}, ; 263
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 768; uint32_t java_name_index (0x300)
	}, ; 264
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 85; uint32_t java_name_index (0x55)
	}, ; 265
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 92; uint32_t java_name_index (0x5c)
	}, ; 266
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 1031; uint32_t java_name_index (0x407)
	}, ; 267
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555499, ; uint32_t type_token_id (0x200042b)
		i32 784; uint32_t java_name_index (0x310)
	}, ; 268
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 899; uint32_t java_name_index (0x383)
	}, ; 269
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 554; uint32_t java_name_index (0x22a)
	}, ; 270
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 688; uint32_t java_name_index (0x2b0)
	}, ; 271
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 441; uint32_t java_name_index (0x1b9)
	}, ; 272
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 874; uint32_t java_name_index (0x36a)
	}, ; 273
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 419; uint32_t java_name_index (0x1a3)
	}, ; 274
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 849; uint32_t java_name_index (0x351)
	}, ; 275
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 308; uint32_t java_name_index (0x134)
	}, ; 276
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 496; uint32_t java_name_index (0x1f0)
	}, ; 277
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 706; uint32_t java_name_index (0x2c2)
	}, ; 278
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 724; uint32_t java_name_index (0x2d4)
	}, ; 279
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 56; uint32_t java_name_index (0x38)
	}, ; 280
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 299; uint32_t java_name_index (0x12b)
	}, ; 281
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 1101; uint32_t java_name_index (0x44d)
	}, ; 282
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 249; uint32_t java_name_index (0xf9)
	}, ; 283
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 390; uint32_t java_name_index (0x186)
	}, ; 284
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 532; uint32_t java_name_index (0x214)
	}, ; 285
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 115; uint32_t java_name_index (0x73)
	}, ; 286
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 370; uint32_t java_name_index (0x172)
	}, ; 287
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554854, ; uint32_t type_token_id (0x20001a6)
		i32 431; uint32_t java_name_index (0x1af)
	}, ; 288
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555323, ; uint32_t type_token_id (0x200037b)
		i32 1083; uint32_t java_name_index (0x43b)
	}, ; 289
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 268; uint32_t java_name_index (0x10c)
	}, ; 290
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 311; uint32_t java_name_index (0x137)
	}, ; 291
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 1051; uint32_t java_name_index (0x41b)
	}, ; 292
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 543; uint32_t java_name_index (0x21f)
	}, ; 293
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 402; uint32_t java_name_index (0x192)
	}, ; 294
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555853, ; uint32_t type_token_id (0x200058d)
		i32 1120; uint32_t java_name_index (0x460)
	}, ; 295
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 982; uint32_t java_name_index (0x3d6)
	}, ; 296
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 353; uint32_t java_name_index (0x161)
	}, ; 297
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 985; uint32_t java_name_index (0x3d9)
	}, ; 298
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 114; uint32_t java_name_index (0x72)
	}, ; 299
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 289; uint32_t java_name_index (0x121)
	}, ; 300
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 183; uint32_t java_name_index (0xb7)
	}, ; 301
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 438; uint32_t java_name_index (0x1b6)
	}, ; 302
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 227; uint32_t java_name_index (0xe3)
	}, ; 303
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 168; uint32_t java_name_index (0xa8)
	}, ; 304
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 892; uint32_t java_name_index (0x37c)
	}, ; 305
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 911; uint32_t java_name_index (0x38f)
	}, ; 306
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 542; uint32_t java_name_index (0x21e)
	}, ; 307
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 128; uint32_t java_name_index (0x80)
	}, ; 308
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 1056; uint32_t java_name_index (0x420)
	}, ; 309
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 392; uint32_t java_name_index (0x188)
	}, ; 310
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 190; uint32_t java_name_index (0xbe)
	}, ; 311
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 240; uint32_t java_name_index (0xf0)
	}, ; 312
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 14; uint32_t java_name_index (0xe)
	}, ; 313
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554710, ; uint32_t type_token_id (0x2000116)
		i32 349; uint32_t java_name_index (0x15d)
	}, ; 314
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555852, ; uint32_t type_token_id (0x200058c)
		i32 1119; uint32_t java_name_index (0x45f)
	}, ; 315
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 163; uint32_t java_name_index (0xa3)
	}, ; 316
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 241; uint32_t java_name_index (0xf1)
	}, ; 317
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 18; uint32_t java_name_index (0x12)
	}, ; 318
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555537, ; uint32_t type_token_id (0x2000451)
		i32 812; uint32_t java_name_index (0x32c)
	}, ; 319
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555787, ; uint32_t type_token_id (0x200054b)
		i32 1029; uint32_t java_name_index (0x405)
	}, ; 320
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554778, ; uint32_t type_token_id (0x200015a)
		i32 387; uint32_t java_name_index (0x183)
	}, ; 321
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 197; uint32_t java_name_index (0xc5)
	}, ; 322
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1108; uint32_t java_name_index (0x454)
	}, ; 323
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 979; uint32_t java_name_index (0x3d3)
	}, ; 324
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 226; uint32_t java_name_index (0xe2)
	}, ; 325
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 980; uint32_t java_name_index (0x3d4)
	}, ; 326
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 977; uint32_t java_name_index (0x3d1)
	}, ; 327
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 1081; uint32_t java_name_index (0x439)
	}, ; 328
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 1068; uint32_t java_name_index (0x42c)
	}, ; 329
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 155; uint32_t java_name_index (0x9b)
	}, ; 330
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 1112; uint32_t java_name_index (0x458)
	}, ; 331
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 172; uint32_t java_name_index (0xac)
	}, ; 332
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 851; uint32_t java_name_index (0x353)
	}, ; 333
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 1019; uint32_t java_name_index (0x3fb)
	}, ; 334
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 389; uint32_t java_name_index (0x185)
	}, ; 335
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 491; uint32_t java_name_index (0x1eb)
	}, ; 336
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 81; uint32_t java_name_index (0x51)
	}, ; 337
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 507; uint32_t java_name_index (0x1fb)
	}, ; 338
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 590; uint32_t java_name_index (0x24e)
	}, ; 339
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 678; uint32_t java_name_index (0x2a6)
	}, ; 340
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 570; uint32_t java_name_index (0x23a)
	}, ; 341
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1071; uint32_t java_name_index (0x42f)
	}, ; 342
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 274; uint32_t java_name_index (0x112)
	}, ; 343
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 476; uint32_t java_name_index (0x1dc)
	}, ; 344
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 489; uint32_t java_name_index (0x1e9)
	}, ; 345
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554924, ; uint32_t type_token_id (0x20001ec)
		i32 486; uint32_t java_name_index (0x1e6)
	}, ; 346
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 280; uint32_t java_name_index (0x118)
	}, ; 347
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554871, ; uint32_t type_token_id (0x20001b7)
		i32 447; uint32_t java_name_index (0x1bf)
	}, ; 348
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 29; uint32_t java_name_index (0x1d)
	}, ; 349
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 1124; uint32_t java_name_index (0x464)
	}, ; 350
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 225; uint32_t java_name_index (0xe1)
	}, ; 351
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 243; uint32_t java_name_index (0xf3)
	}, ; 352
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 154; uint32_t java_name_index (0x9a)
	}, ; 353
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555501, ; uint32_t type_token_id (0x200042d)
		i32 786; uint32_t java_name_index (0x312)
	}, ; 354
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 416; uint32_t java_name_index (0x1a0)
	}, ; 355
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 378; uint32_t java_name_index (0x17a)
	}, ; 356
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 345; uint32_t java_name_index (0x159)
	}, ; 357
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 846; uint32_t java_name_index (0x34e)
	}, ; 358
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554953, ; uint32_t type_token_id (0x2000209)
		i32 503; uint32_t java_name_index (0x1f7)
	}, ; 359
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555418, ; uint32_t type_token_id (0x20003da)
		i32 731; uint32_t java_name_index (0x2db)
	}, ; 360
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 332; uint32_t java_name_index (0x14c)
	}, ; 361
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 107; uint32_t java_name_index (0x6b)
	}, ; 362
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 614; uint32_t java_name_index (0x266)
	}, ; 363
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 1025; uint32_t java_name_index (0x401)
	}, ; 364
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 412; uint32_t java_name_index (0x19c)
	}, ; 365
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555467, ; uint32_t type_token_id (0x200040b)
		i32 762; uint32_t java_name_index (0x2fa)
	}, ; 366
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 335; uint32_t java_name_index (0x14f)
	}, ; 367
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 250; uint32_t java_name_index (0xfa)
	}, ; 368
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555704, ; uint32_t type_token_id (0x20004f8)
		i32 1024; uint32_t java_name_index (0x400)
	}, ; 369
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 286; uint32_t java_name_index (0x11e)
	}, ; 370
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555535, ; uint32_t type_token_id (0x200044f)
		i32 811; uint32_t java_name_index (0x32b)
	}, ; 371
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 421; uint32_t java_name_index (0x1a5)
	}, ; 372
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 78; uint32_t java_name_index (0x4e)
	}, ; 373
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 397; uint32_t java_name_index (0x18d)
	}, ; 374
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 344; uint32_t java_name_index (0x158)
	}, ; 375
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555229, ; uint32_t type_token_id (0x200031d)
		i32 1035; uint32_t java_name_index (0x40b)
	}, ; 376
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 653; uint32_t java_name_index (0x28d)
	}, ; 377
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 51; uint32_t java_name_index (0x33)
	}, ; 378
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555014, ; uint32_t type_token_id (0x2000246)
		i32 531; uint32_t java_name_index (0x213)
	}, ; 379
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 436; uint32_t java_name_index (0x1b4)
	}, ; 380
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1076; uint32_t java_name_index (0x434)
	}, ; 381
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 519; uint32_t java_name_index (0x207)
	}, ; 382
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 1093; uint32_t java_name_index (0x445)
	}, ; 383
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 123; uint32_t java_name_index (0x7b)
	}, ; 384
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 277; uint32_t java_name_index (0x115)
	}, ; 385
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 25; uint32_t java_name_index (0x19)
	}, ; 386
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 681; uint32_t java_name_index (0x2a9)
	}, ; 387
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 21; uint32_t java_name_index (0x15)
	}, ; 388
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 151; uint32_t java_name_index (0x97)
	}, ; 389
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1002; uint32_t java_name_index (0x3ea)
	}, ; 390
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 556; uint32_t java_name_index (0x22c)
	}, ; 391
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 951; uint32_t java_name_index (0x3b7)
	}, ; 392
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 219; uint32_t java_name_index (0xdb)
	}, ; 393
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 65; uint32_t java_name_index (0x41)
	}, ; 394
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554793, ; uint32_t type_token_id (0x2000169)
		i32 394; uint32_t java_name_index (0x18a)
	}, ; 395
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 384; uint32_t java_name_index (0x180)
	}, ; 396
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 1123; uint32_t java_name_index (0x463)
	}, ; 397
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 987; uint32_t java_name_index (0x3db)
	}, ; 398
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555023, ; uint32_t type_token_id (0x200024f)
		i32 537; uint32_t java_name_index (0x219)
	}, ; 399
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 679; uint32_t java_name_index (0x2a7)
	}, ; 400
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 1026; uint32_t java_name_index (0x402)
	}, ; 401
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 201; uint32_t java_name_index (0xc9)
	}, ; 402
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 169; uint32_t java_name_index (0xa9)
	}, ; 403
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554856, ; uint32_t type_token_id (0x20001a8)
		i32 433; uint32_t java_name_index (0x1b1)
	}, ; 404
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 126; uint32_t java_name_index (0x7e)
	}, ; 405
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554919, ; uint32_t type_token_id (0x20001e7)
		i32 484; uint32_t java_name_index (0x1e4)
	}, ; 406
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 866; uint32_t java_name_index (0x362)
	}, ; 407
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 30; uint32_t java_name_index (0x1e)
	}, ; 408
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 1066; uint32_t java_name_index (0x42a)
	}, ; 409
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 692; uint32_t java_name_index (0x2b4)
	}, ; 410
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 293; uint32_t java_name_index (0x125)
	}, ; 411
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555310, ; uint32_t type_token_id (0x200036e)
		i32 662; uint32_t java_name_index (0x296)
	}, ; 412
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 596; uint32_t java_name_index (0x254)
	}, ; 413
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554826, ; uint32_t type_token_id (0x200018a)
		i32 413; uint32_t java_name_index (0x19d)
	}, ; 414
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 1104; uint32_t java_name_index (0x450)
	}, ; 415
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 42; uint32_t java_name_index (0x2a)
	}, ; 416
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 79; uint32_t java_name_index (0x4f)
	}, ; 417
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 696; uint32_t java_name_index (0x2b8)
	}, ; 418
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555001, ; uint32_t type_token_id (0x2000239)
		i32 525; uint32_t java_name_index (0x20d)
	}, ; 419
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 996; uint32_t java_name_index (0x3e4)
	}, ; 420
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 842; uint32_t java_name_index (0x34a)
	}, ; 421
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554950, ; uint32_t type_token_id (0x2000206)
		i32 501; uint32_t java_name_index (0x1f5)
	}, ; 422
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 1103; uint32_t java_name_index (0x44f)
	}, ; 423
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 955; uint32_t java_name_index (0x3bb)
	}, ; 424
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 993; uint32_t java_name_index (0x3e1)
	}, ; 425
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 279; uint32_t java_name_index (0x117)
	}, ; 426
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 136; uint32_t java_name_index (0x88)
	}, ; 427
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 522; uint32_t java_name_index (0x20a)
	}, ; 428
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 1114; uint32_t java_name_index (0x45a)
	}, ; 429
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 357; uint32_t java_name_index (0x165)
	}, ; 430
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 208; uint32_t java_name_index (0xd0)
	}, ; 431
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 160; uint32_t java_name_index (0xa0)
	}, ; 432
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 242; uint32_t java_name_index (0xf2)
	}, ; 433
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 844; uint32_t java_name_index (0x34c)
	}, ; 434
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555451, ; uint32_t type_token_id (0x20003fb)
		i32 752; uint32_t java_name_index (0x2f0)
	}, ; 435
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 162; uint32_t java_name_index (0xa2)
	}, ; 436
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 145; uint32_t java_name_index (0x91)
	}, ; 437
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 628; uint32_t java_name_index (0x274)
	}, ; 438
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 656; uint32_t java_name_index (0x290)
	}, ; 439
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 896; uint32_t java_name_index (0x380)
	}, ; 440
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 466; uint32_t java_name_index (0x1d2)
	}, ; 441
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 457; uint32_t java_name_index (0x1c9)
	}, ; 442
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 228; uint32_t java_name_index (0xe4)
	}, ; 443
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 1039; uint32_t java_name_index (0x40f)
	}, ; 444
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 770; uint32_t java_name_index (0x302)
	}, ; 445
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 732; uint32_t java_name_index (0x2dc)
	}, ; 446
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555097, ; uint32_t type_token_id (0x2000299)
		i32 579; uint32_t java_name_index (0x243)
	}, ; 447
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 913; uint32_t java_name_index (0x391)
	}, ; 448
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 907; uint32_t java_name_index (0x38b)
	}, ; 449
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 1032; uint32_t java_name_index (0x408)
	}, ; 450
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555507, ; uint32_t type_token_id (0x2000433)
		i32 790; uint32_t java_name_index (0x316)
	}, ; 451
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 983; uint32_t java_name_index (0x3d7)
	}, ; 452
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 981; uint32_t java_name_index (0x3d5)
	}, ; 453
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555013, ; uint32_t type_token_id (0x2000245)
		i32 530; uint32_t java_name_index (0x212)
	}, ; 454
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554845, ; uint32_t type_token_id (0x200019d)
		i32 427; uint32_t java_name_index (0x1ab)
	}, ; 455
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 953; uint32_t java_name_index (0x3b9)
	}, ; 456
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 12; uint32_t java_name_index (0xc)
	}, ; 457
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 971; uint32_t java_name_index (0x3cb)
	}, ; 458
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 974; uint32_t java_name_index (0x3ce)
	}, ; 459
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555514, ; uint32_t type_token_id (0x200043a)
		i32 795; uint32_t java_name_index (0x31b)
	}, ; 460
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 210; uint32_t java_name_index (0xd2)
	}, ; 461
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 575; uint32_t java_name_index (0x23f)
	}, ; 462
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 1096; uint32_t java_name_index (0x448)
	}, ; 463
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555529, ; uint32_t type_token_id (0x2000449)
		i32 806; uint32_t java_name_index (0x326)
	}, ; 464
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 338; uint32_t java_name_index (0x152)
	}, ; 465
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 83; uint32_t java_name_index (0x53)
	}, ; 466
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 905; uint32_t java_name_index (0x389)
	}, ; 467
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 1089; uint32_t java_name_index (0x441)
	}, ; 468
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 511; uint32_t java_name_index (0x1ff)
	}, ; 469
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 142; uint32_t java_name_index (0x8e)
	}, ; 470
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 680; uint32_t java_name_index (0x2a8)
	}, ; 471
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 178; uint32_t java_name_index (0xb2)
	}, ; 472
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 211; uint32_t java_name_index (0xd3)
	}, ; 473
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 513; uint32_t java_name_index (0x201)
	}, ; 474
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 884; uint32_t java_name_index (0x374)
	}, ; 475
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 260; uint32_t java_name_index (0x104)
	}, ; 476
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 582; uint32_t java_name_index (0x246)
	}, ; 477
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 693; uint32_t java_name_index (0x2b5)
	}, ; 478
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 189; uint32_t java_name_index (0xbd)
	}, ; 479
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555114, ; uint32_t type_token_id (0x20002aa)
		i32 933; uint32_t java_name_index (0x3a5)
	}, ; 480
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 147; uint32_t java_name_index (0x93)
	}, ; 481
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 619; uint32_t java_name_index (0x26b)
	}, ; 482
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555410, ; uint32_t type_token_id (0x20003d2)
		i32 725; uint32_t java_name_index (0x2d5)
	}, ; 483
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 347; uint32_t java_name_index (0x15b)
	}, ; 484
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 585; uint32_t java_name_index (0x249)
	}, ; 485
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 423; uint32_t java_name_index (0x1a7)
	}, ; 486
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555125, ; uint32_t type_token_id (0x20002b5)
		i32 935; uint32_t java_name_index (0x3a7)
	}, ; 487
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 432; uint32_t java_name_index (0x1b0)
	}, ; 488
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555449, ; uint32_t type_token_id (0x20003f9)
		i32 750; uint32_t java_name_index (0x2ee)
	}, ; 489
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 157; uint32_t java_name_index (0x9d)
	}, ; 490
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 541; uint32_t java_name_index (0x21d)
	}, ; 491
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 990; uint32_t java_name_index (0x3de)
	}, ; 492
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555091, ; uint32_t type_token_id (0x2000293)
		i32 576; uint32_t java_name_index (0x240)
	}, ; 493
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 928; uint32_t java_name_index (0x3a0)
	}, ; 494
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 17; uint32_t java_name_index (0x11)
	}, ; 495
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 1010; uint32_t java_name_index (0x3f2)
	}, ; 496
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554916, ; uint32_t type_token_id (0x20001e4)
		i32 481; uint32_t java_name_index (0x1e1)
	}, ; 497
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 574; uint32_t java_name_index (0x23e)
	}, ; 498
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 170; uint32_t java_name_index (0xaa)
	}, ; 499
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555485, ; uint32_t type_token_id (0x200041d)
		i32 773; uint32_t java_name_index (0x305)
	}, ; 500
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 864; uint32_t java_name_index (0x360)
	}, ; 501
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 1027; uint32_t java_name_index (0x403)
	}, ; 502
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 954; uint32_t java_name_index (0x3ba)
	}, ; 503
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 701; uint32_t java_name_index (0x2bd)
	}, ; 504
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554712, ; uint32_t type_token_id (0x2000118)
		i32 351; uint32_t java_name_index (0x15f)
	}, ; 505
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 191; uint32_t java_name_index (0xbf)
	}, ; 506
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555545, ; uint32_t type_token_id (0x2000459)
		i32 817; uint32_t java_name_index (0x331)
	}, ; 507
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 960; uint32_t java_name_index (0x3c0)
	}, ; 508
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 916; uint32_t java_name_index (0x394)
	}, ; 509
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 393; uint32_t java_name_index (0x189)
	}, ; 510
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555082, ; uint32_t type_token_id (0x200028a)
		i32 571; uint32_t java_name_index (0x23b)
	}, ; 511
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 463; uint32_t java_name_index (0x1cf)
	}, ; 512
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 15; uint32_t java_name_index (0xf)
	}, ; 513
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 699; uint32_t java_name_index (0x2bb)
	}, ; 514
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555552, ; uint32_t type_token_id (0x2000460)
		i32 823; uint32_t java_name_index (0x337)
	}, ; 515
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 63; uint32_t java_name_index (0x3f)
	}, ; 516
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 267; uint32_t java_name_index (0x10b)
	}, ; 517
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 821; uint32_t java_name_index (0x335)
	}, ; 518
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 939; uint32_t java_name_index (0x3ab)
	}, ; 519
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554867, ; uint32_t type_token_id (0x20001b3)
		i32 443; uint32_t java_name_index (0x1bb)
	}, ; 520
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 854; uint32_t java_name_index (0x356)
	}, ; 521
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555471, ; uint32_t type_token_id (0x200040f)
		i32 765; uint32_t java_name_index (0x2fd)
	}, ; 522
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 62; uint32_t java_name_index (0x3e)
	}, ; 523
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 278; uint32_t java_name_index (0x116)
	}, ; 524
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 544; uint32_t java_name_index (0x220)
	}, ; 525
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555067, ; uint32_t type_token_id (0x200027b)
		i32 561; uint32_t java_name_index (0x231)
	}, ; 526
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555000, ; uint32_t type_token_id (0x2000238)
		i32 524; uint32_t java_name_index (0x20c)
	}, ; 527
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 721; uint32_t java_name_index (0x2d1)
	}, ; 528
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 233; uint32_t java_name_index (0xe9)
	}, ; 529
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 59; uint32_t java_name_index (0x3b)
	}, ; 530
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 965; uint32_t java_name_index (0x3c5)
	}, ; 531
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1005; uint32_t java_name_index (0x3ed)
	}, ; 532
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 175; uint32_t java_name_index (0xaf)
	}, ; 533
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 969; uint32_t java_name_index (0x3c9)
	}, ; 534
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 890; uint32_t java_name_index (0x37a)
	}, ; 535
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 180; uint32_t java_name_index (0xb4)
	}, ; 536
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 200; uint32_t java_name_index (0xc8)
	}, ; 537
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555527, ; uint32_t type_token_id (0x2000447)
		i32 804; uint32_t java_name_index (0x324)
	}, ; 538
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555063, ; uint32_t type_token_id (0x2000277)
		i32 558; uint32_t java_name_index (0x22e)
	}, ; 539
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 61; uint32_t java_name_index (0x3d)
	}, ; 540
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555294, ; uint32_t type_token_id (0x200035e)
		i32 646; uint32_t java_name_index (0x286)
	}, ; 541
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 415; uint32_t java_name_index (0x19f)
	}, ; 542
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555522, ; uint32_t type_token_id (0x2000442)
		i32 801; uint32_t java_name_index (0x321)
	}, ; 543
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555127, ; uint32_t type_token_id (0x20002b7)
		i32 586; uint32_t java_name_index (0x24a)
	}, ; 544
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 102; uint32_t java_name_index (0x66)
	}, ; 545
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 941; uint32_t java_name_index (0x3ad)
	}, ; 546
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 359; uint32_t java_name_index (0x167)
	}, ; 547
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 641; uint32_t java_name_index (0x281)
	}, ; 548
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 594; uint32_t java_name_index (0x252)
	}, ; 549
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 194; uint32_t java_name_index (0xc2)
	}, ; 550
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 738; uint32_t java_name_index (0x2e2)
	}, ; 551
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 177; uint32_t java_name_index (0xb1)
	}, ; 552
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 292; uint32_t java_name_index (0x124)
	}, ; 553
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555130, ; uint32_t type_token_id (0x20002ba)
		i32 589; uint32_t java_name_index (0x24d)
	}, ; 554
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 759; uint32_t java_name_index (0x2f7)
	}, ; 555
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 134; uint32_t java_name_index (0x86)
	}, ; 556
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 340; uint32_t java_name_index (0x154)
	}, ; 557
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 989; uint32_t java_name_index (0x3dd)
	}, ; 558
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 398; uint32_t java_name_index (0x18e)
	}, ; 559
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 164; uint32_t java_name_index (0xa4)
	}, ; 560
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 94; uint32_t java_name_index (0x5e)
	}, ; 561
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 718; uint32_t java_name_index (0x2ce)
	}, ; 562
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 39; uint32_t java_name_index (0x27)
	}, ; 563
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554917, ; uint32_t type_token_id (0x20001e5)
		i32 482; uint32_t java_name_index (0x1e2)
	}, ; 564
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 258; uint32_t java_name_index (0x102)
	}, ; 565
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 669; uint32_t java_name_index (0x29d)
	}, ; 566
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 497; uint32_t java_name_index (0x1f1)
	}, ; 567
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 650; uint32_t java_name_index (0x28a)
	}, ; 568
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 462; uint32_t java_name_index (0x1ce)
	}, ; 569
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 214; uint32_t java_name_index (0xd6)
	}, ; 570
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 961; uint32_t java_name_index (0x3c1)
	}, ; 571
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554913, ; uint32_t type_token_id (0x20001e1)
		i32 478; uint32_t java_name_index (0x1de)
	}, ; 572
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 64; uint32_t java_name_index (0x40)
	}, ; 573
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 314; uint32_t java_name_index (0x13a)
	}, ; 574
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555532, ; uint32_t type_token_id (0x200044c)
		i32 809; uint32_t java_name_index (0x329)
	}, ; 575
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 100; uint32_t java_name_index (0x64)
	}, ; 576
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 4; uint32_t java_name_index (0x4)
	}, ; 577
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 889; uint32_t java_name_index (0x379)
	}, ; 578
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 611; uint32_t java_name_index (0x263)
	}, ; 579
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555509, ; uint32_t type_token_id (0x2000435)
		i32 792; uint32_t java_name_index (0x318)
	}, ; 580
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 396; uint32_t java_name_index (0x18c)
	}, ; 581
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 439; uint32_t java_name_index (0x1b7)
	}, ; 582
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555563, ; uint32_t type_token_id (0x200046b)
		i32 832; uint32_t java_name_index (0x340)
	}, ; 583
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 872; uint32_t java_name_index (0x368)
	}, ; 584
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 300; uint32_t java_name_index (0x12c)
	}, ; 585
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 109; uint32_t java_name_index (0x6d)
	}, ; 586
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555500, ; uint32_t type_token_id (0x200042c)
		i32 785; uint32_t java_name_index (0x311)
	}, ; 587
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555140, ; uint32_t type_token_id (0x20002c4)
		i32 592; uint32_t java_name_index (0x250)
	}, ; 588
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 105; uint32_t java_name_index (0x69)
	}, ; 589
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555558, ; uint32_t type_token_id (0x2000466)
		i32 828; uint32_t java_name_index (0x33c)
	}, ; 590
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 515; uint32_t java_name_index (0x203)
	}, ; 591
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 1116; uint32_t java_name_index (0x45c)
	}, ; 592
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 37; uint32_t java_name_index (0x25)
	}, ; 593
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 797; uint32_t java_name_index (0x31d)
	}, ; 594
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 945; uint32_t java_name_index (0x3b1)
	}, ; 595
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 949; uint32_t java_name_index (0x3b5)
	}, ; 596
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 682; uint32_t java_name_index (0x2aa)
	}, ; 597
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 182; uint32_t java_name_index (0xb6)
	}, ; 598
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555553, ; uint32_t type_token_id (0x2000461)
		i32 824; uint32_t java_name_index (0x338)
	}, ; 599
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 690; uint32_t java_name_index (0x2b2)
	}, ; 600
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 262; uint32_t java_name_index (0x106)
	}, ; 601
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555285, ; uint32_t type_token_id (0x2000355)
		i32 637; uint32_t java_name_index (0x27d)
	}, ; 602
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555503, ; uint32_t type_token_id (0x200042f)
		i32 787; uint32_t java_name_index (0x313)
	}, ; 603
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 1086; uint32_t java_name_index (0x43e)
	}, ; 604
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 552; uint32_t java_name_index (0x228)
	}, ; 605
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 1033; uint32_t java_name_index (0x409)
	}, ; 606
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555072, ; uint32_t type_token_id (0x2000280)
		i32 564; uint32_t java_name_index (0x234)
	}, ; 607
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 74; uint32_t java_name_index (0x4a)
	}, ; 608
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 862; uint32_t java_name_index (0x35e)
	}, ; 609
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 161; uint32_t java_name_index (0xa1)
	}, ; 610
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1129; uint32_t java_name_index (0x469)
	}, ; 611
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 997; uint32_t java_name_index (0x3e5)
	}, ; 612
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 188; uint32_t java_name_index (0xbc)
	}, ; 613
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555551, ; uint32_t type_token_id (0x200045f)
		i32 822; uint32_t java_name_index (0x336)
	}, ; 614
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555210, ; uint32_t type_token_id (0x200030a)
		i32 942; uint32_t java_name_index (0x3ae)
	}, ; 615
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 883; uint32_t java_name_index (0x373)
	}, ; 616
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 302; uint32_t java_name_index (0x12e)
	}, ; 617
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 683; uint32_t java_name_index (0x2ab)
	}, ; 618
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 320; uint32_t java_name_index (0x140)
	}, ; 619
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 7; uint32_t java_name_index (0x7)
	}, ; 620
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554861, ; uint32_t type_token_id (0x20001ad)
		i32 437; uint32_t java_name_index (0x1b5)
	}, ; 621
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 119; uint32_t java_name_index (0x77)
	}, ; 622
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 331; uint32_t java_name_index (0x14b)
	}, ; 623
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 400; uint32_t java_name_index (0x190)
	}, ; 624
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 93; uint32_t java_name_index (0x5d)
	}, ; 625
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555129, ; uint32_t type_token_id (0x20002b9)
		i32 588; uint32_t java_name_index (0x24c)
	}, ; 626
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 326; uint32_t java_name_index (0x146)
	}, ; 627
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 1102; uint32_t java_name_index (0x44e)
	}, ; 628
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 555; uint32_t java_name_index (0x22b)
	}, ; 629
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555422, ; uint32_t type_token_id (0x20003de)
		i32 734; uint32_t java_name_index (0x2de)
	}, ; 630
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554864, ; uint32_t type_token_id (0x20001b0)
		i32 440; uint32_t java_name_index (0x1b8)
	}, ; 631
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555566, ; uint32_t type_token_id (0x200046e)
		i32 835; uint32_t java_name_index (0x343)
	}, ; 632
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 1016; uint32_t java_name_index (0x3f8)
	}, ; 633
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555846, ; uint32_t type_token_id (0x2000586)
		i32 1111; uint32_t java_name_index (0x457)
	}, ; 634
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 54; uint32_t java_name_index (0x36)
	}, ; 635
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1038; uint32_t java_name_index (0x40e)
	}, ; 636
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 306; uint32_t java_name_index (0x132)
	}, ; 637
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 239; uint32_t java_name_index (0xef)
	}, ; 638
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 271; uint32_t java_name_index (0x10f)
	}, ; 639
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555404, ; uint32_t type_token_id (0x20003cc)
		i32 720; uint32_t java_name_index (0x2d0)
	}, ; 640
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 90; uint32_t java_name_index (0x5a)
	}, ; 641
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 337; uint32_t java_name_index (0x151)
	}, ; 642
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554876, ; uint32_t type_token_id (0x20001bc)
		i32 452; uint32_t java_name_index (0x1c4)
	}, ; 643
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554873, ; uint32_t type_token_id (0x20001b9)
		i32 449; uint32_t java_name_index (0x1c1)
	}, ; 644
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 237; uint32_t java_name_index (0xed)
	}, ; 645
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555559, ; uint32_t type_token_id (0x2000467)
		i32 829; uint32_t java_name_index (0x33d)
	}, ; 646
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 270; uint32_t java_name_index (0x10e)
	}, ; 647
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 135; uint32_t java_name_index (0x87)
	}, ; 648
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 580; uint32_t java_name_index (0x244)
	}, ; 649
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 1044; uint32_t java_name_index (0x414)
	}, ; 650
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 863; uint32_t java_name_index (0x35f)
	}, ; 651
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 309; uint32_t java_name_index (0x135)
	}, ; 652
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 365; uint32_t java_name_index (0x16d)
	}, ; 653
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554955, ; uint32_t type_token_id (0x200020b)
		i32 504; uint32_t java_name_index (0x1f8)
	}, ; 654
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 323; uint32_t java_name_index (0x143)
	}, ; 655
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 903; uint32_t java_name_index (0x387)
	}, ; 656
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 856; uint32_t java_name_index (0x358)
	}, ; 657
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 1128; uint32_t java_name_index (0x468)
	}, ; 658
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 223; uint32_t java_name_index (0xdf)
	}, ; 659
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 964; uint32_t java_name_index (0x3c4)
	}, ; 660
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555521, ; uint32_t type_token_id (0x2000441)
		i32 800; uint32_t java_name_index (0x320)
	}, ; 661
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555437, ; uint32_t type_token_id (0x20003ed)
		i32 743; uint32_t java_name_index (0x2e7)
	}, ; 662
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 966; uint32_t java_name_index (0x3c6)
	}, ; 663
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 897; uint32_t java_name_index (0x381)
	}, ; 664
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 957; uint32_t java_name_index (0x3bd)
	}, ; 665
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 962; uint32_t java_name_index (0x3c2)
	}, ; 666
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 852; uint32_t java_name_index (0x354)
	}, ; 667
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 366; uint32_t java_name_index (0x16e)
	}, ; 668
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 840; uint32_t java_name_index (0x348)
	}, ; 669
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554886, ; uint32_t type_token_id (0x20001c6)
		i32 461; uint32_t java_name_index (0x1cd)
	}, ; 670
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 659; uint32_t java_name_index (0x293)
	}, ; 671
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 1003; uint32_t java_name_index (0x3eb)
	}, ; 672
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555822, ; uint32_t type_token_id (0x200056e)
		i32 1064; uint32_t java_name_index (0x428)
	}, ; 673
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 938; uint32_t java_name_index (0x3aa)
	}, ; 674
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 658; uint32_t java_name_index (0x292)
	}, ; 675
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 236; uint32_t java_name_index (0xec)
	}, ; 676
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554947, ; uint32_t type_token_id (0x2000203)
		i32 498; uint32_t java_name_index (0x1f2)
	}, ; 677
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 745; uint32_t java_name_index (0x2e9)
	}, ; 678
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555024, ; uint32_t type_token_id (0x2000250)
		i32 538; uint32_t java_name_index (0x21a)
	}, ; 679
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555149, ; uint32_t type_token_id (0x20002cd)
		i32 598; uint32_t java_name_index (0x256)
	}, ; 680
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 129; uint32_t java_name_index (0x81)
	}, ; 681
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 184; uint32_t java_name_index (0xb8)
	}, ; 682
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 67; uint32_t java_name_index (0x43)
	}, ; 683
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 918; uint32_t java_name_index (0x396)
	}, ; 684
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 1125; uint32_t java_name_index (0x465)
	}, ; 685
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555187, ; uint32_t type_token_id (0x20002f3)
		i32 603; uint32_t java_name_index (0x25b)
	}, ; 686
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 245; uint32_t java_name_index (0xf5)
	}, ; 687
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 1054; uint32_t java_name_index (0x41e)
	}, ; 688
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 627; uint32_t java_name_index (0x273)
	}, ; 689
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 149; uint32_t java_name_index (0x95)
	}, ; 690
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 297; uint32_t java_name_index (0x129)
	}, ; 691
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 1106; uint32_t java_name_index (0x452)
	}, ; 692
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 70; uint32_t java_name_index (0x46)
	}, ; 693
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 57; uint32_t java_name_index (0x39)
	}, ; 694
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 865; uint32_t java_name_index (0x361)
	}, ; 695
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 695; uint32_t java_name_index (0x2b7)
	}, ; 696
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 60; uint32_t java_name_index (0x3c)
	}, ; 697
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 324; uint32_t java_name_index (0x144)
	}, ; 698
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555505, ; uint32_t type_token_id (0x2000431)
		i32 788; uint32_t java_name_index (0x314)
	}, ; 699
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 914; uint32_t java_name_index (0x392)
	}, ; 700
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555564, ; uint32_t type_token_id (0x200046c)
		i32 833; uint32_t java_name_index (0x341)
	}, ; 701
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 381; uint32_t java_name_index (0x17d)
	}, ; 702
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 617; uint32_t java_name_index (0x269)
	}, ; 703
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 130; uint32_t java_name_index (0x82)
	}, ; 704
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555293, ; uint32_t type_token_id (0x200035d)
		i32 645; uint32_t java_name_index (0x285)
	}, ; 705
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 220; uint32_t java_name_index (0xdc)
	}, ; 706
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554858, ; uint32_t type_token_id (0x20001aa)
		i32 434; uint32_t java_name_index (0x1b2)
	}, ; 707
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 203; uint32_t java_name_index (0xcb)
	}, ; 708
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 131; uint32_t java_name_index (0x83)
	}, ; 709
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 894; uint32_t java_name_index (0x37e)
	}, ; 710
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 620; uint32_t java_name_index (0x26c)
	}, ; 711
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 152; uint32_t java_name_index (0x98)
	}, ; 712
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 86; uint32_t java_name_index (0x56)
	}, ; 713
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 923; uint32_t java_name_index (0x39b)
	}, ; 714
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555481, ; uint32_t type_token_id (0x2000419)
		i32 771; uint32_t java_name_index (0x303)
	}, ; 715
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 967; uint32_t java_name_index (0x3c7)
	}, ; 716
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 888; uint32_t java_name_index (0x378)
	}, ; 717
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 875; uint32_t java_name_index (0x36b)
	}, ; 718
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 141; uint32_t java_name_index (0x8d)
	}, ; 719
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 976; uint32_t java_name_index (0x3d0)
	}, ; 720
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 96; uint32_t java_name_index (0x60)
	}, ; 721
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 58; uint32_t java_name_index (0x3a)
	}, ; 722
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 1080; uint32_t java_name_index (0x438)
	}, ; 723
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 612; uint32_t java_name_index (0x264)
	}, ; 724
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 748; uint32_t java_name_index (0x2ec)
	}, ; 725
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555448, ; uint32_t type_token_id (0x20003f8)
		i32 749; uint32_t java_name_index (0x2ed)
	}, ; 726
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 144; uint32_t java_name_index (0x90)
	}, ; 727
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 1062; uint32_t java_name_index (0x426)
	}, ; 728
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 217; uint32_t java_name_index (0xd9)
	}, ; 729
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555074, ; uint32_t type_token_id (0x2000282)
		i32 566; uint32_t java_name_index (0x236)
	}, ; 730
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 608; uint32_t java_name_index (0x260)
	}, ; 731
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 301; uint32_t java_name_index (0x12d)
	}, ; 732
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 104; uint32_t java_name_index (0x68)
	}, ; 733
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 444; uint32_t java_name_index (0x1bc)
	}, ; 734
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 329; uint32_t java_name_index (0x149)
	}, ; 735
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 948; uint32_t java_name_index (0x3b4)
	}, ; 736
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 143; uint32_t java_name_index (0x8f)
	}, ; 737
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 266; uint32_t java_name_index (0x10a)
	}, ; 738
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 952; uint32_t java_name_index (0x3b8)
	}, ; 739
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 858; uint32_t java_name_index (0x35a)
	}, ; 740
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555450, ; uint32_t type_token_id (0x20003fa)
		i32 751; uint32_t java_name_index (0x2ef)
	}, ; 741
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 708; uint32_t java_name_index (0x2c4)
	}, ; 742
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 216; uint32_t java_name_index (0xd8)
	}, ; 743
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 303; uint32_t java_name_index (0x12f)
	}, ; 744
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 185; uint32_t java_name_index (0xb9)
	}, ; 745
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 179; uint32_t java_name_index (0xb3)
	}, ; 746
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 1067; uint32_t java_name_index (0x42b)
	}, ; 747
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 735; uint32_t java_name_index (0x2df)
	}, ; 748
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555135, ; uint32_t type_token_id (0x20002bf)
		i32 591; uint32_t java_name_index (0x24f)
	}, ; 749
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554960, ; uint32_t type_token_id (0x2000210)
		i32 506; uint32_t java_name_index (0x1fa)
	}, ; 750
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 698; uint32_t java_name_index (0x2ba)
	}, ; 751
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 235; uint32_t java_name_index (0xeb)
	}, ; 752
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 73; uint32_t java_name_index (0x49)
	}, ; 753
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 882; uint32_t java_name_index (0x372)
	}, ; 754
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 1126; uint32_t java_name_index (0x466)
	}, ; 755
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 32; uint32_t java_name_index (0x20)
	}, ; 756
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555547, ; uint32_t type_token_id (0x200045b)
		i32 819; uint32_t java_name_index (0x333)
	}, ; 757
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 723; uint32_t java_name_index (0x2d3)
	}, ; 758
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 98; uint32_t java_name_index (0x62)
	}, ; 759
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 446; uint32_t java_name_index (0x1be)
	}, ; 760
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554898, ; uint32_t type_token_id (0x20001d2)
		i32 468; uint32_t java_name_index (0x1d4)
	}, ; 761
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555546, ; uint32_t type_token_id (0x200045a)
		i32 818; uint32_t java_name_index (0x332)
	}, ; 762
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555186, ; uint32_t type_token_id (0x20002f2)
		i32 602; uint32_t java_name_index (0x25a)
	}, ; 763
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 1078; uint32_t java_name_index (0x436)
	}, ; 764
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 1057; uint32_t java_name_index (0x421)
	}, ; 765
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555322, ; uint32_t type_token_id (0x200037a)
		i32 670; uint32_t java_name_index (0x29e)
	}, ; 766
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555554, ; uint32_t type_token_id (0x2000462)
		i32 825; uint32_t java_name_index (0x339)
	}, ; 767
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 117; uint32_t java_name_index (0x75)
	}, ; 768
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1000; uint32_t java_name_index (0x3e8)
	}, ; 769
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554948, ; uint32_t type_token_id (0x2000204)
		i32 499; uint32_t java_name_index (0x1f3)
	}, ; 770
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 1065; uint32_t java_name_index (0x429)
	}, ; 771
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 922; uint32_t java_name_index (0x39a)
	}, ; 772
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 411; uint32_t java_name_index (0x19b)
	}, ; 773
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 879; uint32_t java_name_index (0x36f)
	}, ; 774
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555781, ; uint32_t type_token_id (0x2000545)
		i32 1028; uint32_t java_name_index (0x404)
	}, ; 775
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 276; uint32_t java_name_index (0x114)
	}, ; 776
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 399; uint32_t java_name_index (0x18f)
	}, ; 777
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 118; uint32_t java_name_index (0x76)
	}, ; 778
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554875, ; uint32_t type_token_id (0x20001bb)
		i32 451; uint32_t java_name_index (0x1c3)
	}, ; 779
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 46; uint32_t java_name_index (0x2e)
	}, ; 780
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 958; uint32_t java_name_index (0x3be)
	}, ; 781
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 407; uint32_t java_name_index (0x197)
	}, ; 782
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 82; uint32_t java_name_index (0x52)
	}, ; 783
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 252; uint32_t java_name_index (0xfc)
	}, ; 784
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555548, ; uint32_t type_token_id (0x200045c)
		i32 820; uint32_t java_name_index (0x334)
	}, ; 785
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 221; uint32_t java_name_index (0xdd)
	}, ; 786
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555100, ; uint32_t type_token_id (0x200029c)
		i32 908; uint32_t java_name_index (0x38c)
	}, ; 787
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 137; uint32_t java_name_index (0x89)
	}, ; 788
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 330; uint32_t java_name_index (0x14a)
	}, ; 789
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 339; uint32_t java_name_index (0x153)
	}, ; 790
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 196; uint32_t java_name_index (0xc4)
	}, ; 791
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 367; uint32_t java_name_index (0x16f)
	}, ; 792
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555497, ; uint32_t type_token_id (0x2000429)
		i32 782; uint32_t java_name_index (0x30e)
	}, ; 793
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 937; uint32_t java_name_index (0x3a9)
	}, ; 794
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 838; uint32_t java_name_index (0x346)
	}, ; 795
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 898; uint32_t java_name_index (0x382)
	}, ; 796
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 1095; uint32_t java_name_index (0x447)
	}, ; 797
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 722; uint32_t java_name_index (0x2d2)
	}, ; 798
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554899, ; uint32_t type_token_id (0x20001d3)
		i32 469; uint32_t java_name_index (0x1d5)
	}, ; 799
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555311, ; uint32_t type_token_id (0x200036f)
		i32 663; uint32_t java_name_index (0x297)
	}, ; 800
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 336; uint32_t java_name_index (0x150)
	}, ; 801
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555456, ; uint32_t type_token_id (0x2000400)
		i32 755; uint32_t java_name_index (0x2f3)
	}, ; 802
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 1088; uint32_t java_name_index (0x440)
	}, ; 803
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 910; uint32_t java_name_index (0x38e)
	}, ; 804
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 316; uint32_t java_name_index (0x13c)
	}, ; 805
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 28; uint32_t java_name_index (0x1c)
	}, ; 806
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 113; uint32_t java_name_index (0x71)
	}, ; 807
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 988; uint32_t java_name_index (0x3dc)
	}, ; 808
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 1109; uint32_t java_name_index (0x455)
	}, ; 809
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 517; uint32_t java_name_index (0x205)
	}, ; 810
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 578; uint32_t java_name_index (0x242)
	}, ; 811
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 859; uint32_t java_name_index (0x35b)
	}, ; 812
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 229; uint32_t java_name_index (0xe5)
	}, ; 813
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 760; uint32_t java_name_index (0x2f8)
	}, ; 814
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 1045; uint32_t java_name_index (0x415)
	}, ; 815
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 694; uint32_t java_name_index (0x2b6)
	}, ; 816
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 334; uint32_t java_name_index (0x14e)
	}, ; 817
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 917; uint32_t java_name_index (0x395)
	}, ; 818
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 651; uint32_t java_name_index (0x28b)
	}, ; 819
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 660; uint32_t java_name_index (0x294)
	}, ; 820
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 124; uint32_t java_name_index (0x7c)
	}, ; 821
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 549; uint32_t java_name_index (0x225)
	}, ; 822
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555582, ; uint32_t type_token_id (0x200047e)
		i32 837; uint32_t java_name_index (0x345)
	}, ; 823
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 173; uint32_t java_name_index (0xad)
	}, ; 824
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 717; uint32_t java_name_index (0x2cd)
	}, ; 825
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554635, ; uint32_t type_token_id (0x20000cb)
		i32 305; uint32_t java_name_index (0x131)
	}, ; 826
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1087; uint32_t java_name_index (0x43f)
	}, ; 827
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 956; uint32_t java_name_index (0x3bc)
	}, ; 828
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 516; uint32_t java_name_index (0x204)
	}, ; 829
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555305, ; uint32_t type_token_id (0x2000369)
		i32 657; uint32_t java_name_index (0x291)
	}, ; 830
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 26; uint32_t java_name_index (0x1a)
	}, ; 831
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 713; uint32_t java_name_index (0x2c9)
	}, ; 832
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 287; uint32_t java_name_index (0x11f)
	}, ; 833
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 108; uint32_t java_name_index (0x6c)
	}, ; 834
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 909; uint32_t java_name_index (0x38d)
	}, ; 835
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 103; uint32_t java_name_index (0x67)
	}, ; 836
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555818, ; uint32_t type_token_id (0x200056a)
		i32 1061; uint32_t java_name_index (0x425)
	}, ; 837
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 374; uint32_t java_name_index (0x176)
	}, ; 838
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 1043; uint32_t java_name_index (0x413)
	}, ; 839
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 876; uint32_t java_name_index (0x36c)
	}, ; 840
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 139; uint32_t java_name_index (0x8b)
	}, ; 841
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 700; uint32_t java_name_index (0x2bc)
	}, ; 842
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554877, ; uint32_t type_token_id (0x20001bd)
		i32 453; uint32_t java_name_index (0x1c5)
	}, ; 843
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 615; uint32_t java_name_index (0x267)
	}, ; 844
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 1009; uint32_t java_name_index (0x3f1)
	}, ; 845
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555524, ; uint32_t type_token_id (0x2000444)
		i32 802; uint32_t java_name_index (0x322)
	}, ; 846
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 665; uint32_t java_name_index (0x299)
	}, ; 847
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555557, ; uint32_t type_token_id (0x2000465)
		i32 827; uint32_t java_name_index (0x33b)
	}, ; 848
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 110; uint32_t java_name_index (0x6e)
	}, ; 849
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 375; uint32_t java_name_index (0x177)
	}, ; 850
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 999; uint32_t java_name_index (0x3e7)
	}, ; 851
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 1012; uint32_t java_name_index (0x3f4)
	}, ; 852
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 572; uint32_t java_name_index (0x23c)
	}, ; 853
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 88; uint32_t java_name_index (0x58)
	}, ; 854
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555498, ; uint32_t type_token_id (0x200042a)
		i32 783; uint32_t java_name_index (0x30f)
	}, ; 855
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 972; uint32_t java_name_index (0x3cc)
	}, ; 856
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 664; uint32_t java_name_index (0x298)
	}, ; 857
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 1034; uint32_t java_name_index (0x40a)
	}, ; 858
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 1094; uint32_t java_name_index (0x446)
	}, ; 859
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 350; uint32_t java_name_index (0x15e)
	}, ; 860
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 364; uint32_t java_name_index (0x16c)
	}, ; 861
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555483, ; uint32_t type_token_id (0x200041b)
		i32 772; uint32_t java_name_index (0x304)
	}, ; 862
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 132; uint32_t java_name_index (0x84)
	}, ; 863
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 672; uint32_t java_name_index (0x2a0)
	}, ; 864
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 635; uint32_t java_name_index (0x27b)
	}, ; 865
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 202; uint32_t java_name_index (0xca)
	}, ; 866
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 122; uint32_t java_name_index (0x7a)
	}, ; 867
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 3; uint32_t java_name_index (0x3)
	}, ; 868
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555810, ; uint32_t type_token_id (0x2000562)
		i32 1049; uint32_t java_name_index (0x419)
	}, ; 869
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 325; uint32_t java_name_index (0x145)
	}, ; 870
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 1099; uint32_t java_name_index (0x44b)
	}, ; 871
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 296; uint32_t java_name_index (0x128)
	}, ; 872
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 998; uint32_t java_name_index (0x3e6)
	}, ; 873
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555556, ; uint32_t type_token_id (0x2000464)
		i32 826; uint32_t java_name_index (0x33a)
	}, ; 874
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555531, ; uint32_t type_token_id (0x200044b)
		i32 808; uint32_t java_name_index (0x328)
	}, ; 875
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555260, ; uint32_t type_token_id (0x200033c)
		i32 624; uint32_t java_name_index (0x270)
	}, ; 876
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1006; uint32_t java_name_index (0x3ee)
	}, ; 877
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 89; uint32_t java_name_index (0x59)
	}, ; 878
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554737, ; uint32_t type_token_id (0x2000131)
		i32 362; uint32_t java_name_index (0x16a)
	}, ; 879
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 584; uint32_t java_name_index (0x248)
	}, ; 880
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 861; uint32_t java_name_index (0x35d)
	}, ; 881
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 716; uint32_t java_name_index (0x2cc)
	}, ; 882
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 930; uint32_t java_name_index (0x3a2)
	}, ; 883
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 550; uint32_t java_name_index (0x226)
	}, ; 884
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 341; uint32_t java_name_index (0x155)
	}, ; 885
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 429; uint32_t java_name_index (0x1ad)
	}, ; 886
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554900, ; uint32_t type_token_id (0x20001d4)
		i32 470; uint32_t java_name_index (0x1d6)
	}, ; 887
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 256; uint32_t java_name_index (0x100)
	}, ; 888
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 275; uint32_t java_name_index (0x113)
	}, ; 889
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 684; uint32_t java_name_index (0x2ac)
	}, ; 890
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 901; uint32_t java_name_index (0x385)
	}, ; 891
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 880; uint32_t java_name_index (0x370)
	}, ; 892
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 677; uint32_t java_name_index (0x2a5)
	}, ; 893
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 667; uint32_t java_name_index (0x29b)
	}, ; 894
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 91; uint32_t java_name_index (0x5b)
	}, ; 895
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 282; uint32_t java_name_index (0x11a)
	}, ; 896
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 47; uint32_t java_name_index (0x2f)
	}, ; 897
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555528, ; uint32_t type_token_id (0x2000448)
		i32 805; uint32_t java_name_index (0x325)
	}, ; 898
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554987, ; uint32_t type_token_id (0x200022b)
		i32 520; uint32_t java_name_index (0x208)
	}, ; 899
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 198; uint32_t java_name_index (0xc6)
	}, ; 900
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 48; uint32_t java_name_index (0x30)
	}, ; 901
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 1110; uint32_t java_name_index (0x456)
	}, ; 902
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 581; uint32_t java_name_index (0x245)
	}, ; 903
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 363; uint32_t java_name_index (0x16b)
	}, ; 904
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 269; uint32_t java_name_index (0x10d)
	}, ; 905
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555085, ; uint32_t type_token_id (0x200028d)
		i32 573; uint32_t java_name_index (0x23d)
	}, ; 906
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 816; uint32_t java_name_index (0x330)
	}, ; 907
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1073; uint32_t java_name_index (0x431)
	}, ; 908
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 356; uint32_t java_name_index (0x164)
	}, ; 909
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 528; uint32_t java_name_index (0x210)
	}, ; 910
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554923, ; uint32_t type_token_id (0x20001eb)
		i32 485; uint32_t java_name_index (0x1e5)
	}, ; 911
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 719; uint32_t java_name_index (0x2cf)
	}, ; 912
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 212; uint32_t java_name_index (0xd4)
	}, ; 913
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 372; uint32_t java_name_index (0x174)
	}, ; 914
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 87; uint32_t java_name_index (0x57)
	}, ; 915
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 475; uint32_t java_name_index (0x1db)
	}, ; 916
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555565, ; uint32_t type_token_id (0x200046d)
		i32 834; uint32_t java_name_index (0x342)
	}, ; 917
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 376; uint32_t java_name_index (0x178)
	}, ; 918
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 6; uint32_t java_name_index (0x6)
	}, ; 919
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 1118; uint32_t java_name_index (0x45e)
	}, ; 920
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 257; uint32_t java_name_index (0x101)
	}, ; 921
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 652; uint32_t java_name_index (0x28c)
	}, ; 922
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555150, ; uint32_t type_token_id (0x20002ce)
		i32 599; uint32_t java_name_index (0x257)
	}, ; 923
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 705; uint32_t java_name_index (0x2c1)
	}, ; 924
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 428; uint32_t java_name_index (0x1ac)
	}, ; 925
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555560, ; uint32_t type_token_id (0x2000468)
		i32 830; uint32_t java_name_index (0x33e)
	}, ; 926
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 994; uint32_t java_name_index (0x3e2)
	}, ; 927
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 857; uint32_t java_name_index (0x359)
	}, ; 928
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 291; uint32_t java_name_index (0x123)
	}, ; 929
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 283; uint32_t java_name_index (0x11b)
	}, ; 930
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 1020; uint32_t java_name_index (0x3fc)
	}, ; 931
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 244; uint32_t java_name_index (0xf4)
	}, ; 932
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 385; uint32_t java_name_index (0x181)
	}, ; 933
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 5; uint32_t java_name_index (0x5)
	}, ; 934
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554909, ; uint32_t type_token_id (0x20001dd)
		i32 474; uint32_t java_name_index (0x1da)
	}, ; 935
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 263; uint32_t java_name_index (0x107)
	}, ; 936
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 319; uint32_t java_name_index (0x13f)
	}, ; 937
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 68; uint32_t java_name_index (0x44)
	}, ; 938
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 312; uint32_t java_name_index (0x138)
	}, ; 939
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555459, ; uint32_t type_token_id (0x2000403)
		i32 757; uint32_t java_name_index (0x2f5)
	}, ; 940
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 934; uint32_t java_name_index (0x3a6)
	}, ; 941
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555854, ; uint32_t type_token_id (0x200058e)
		i32 1121; uint32_t java_name_index (0x461)
	}, ; 942
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 361; uint32_t java_name_index (0x169)
	}, ; 943
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555460, ; uint32_t type_token_id (0x2000404)
		i32 758; uint32_t java_name_index (0x2f6)
	}, ; 944
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 1013; uint32_t java_name_index (0x3f5)
	}, ; 945
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555105, ; uint32_t type_token_id (0x20002a1)
		i32 583; uint32_t java_name_index (0x247)
	}, ; 946
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 97; uint32_t java_name_index (0x61)
	}, ; 947
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 218; uint32_t java_name_index (0xda)
	}, ; 948
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555007, ; uint32_t type_token_id (0x200023f)
		i32 529; uint32_t java_name_index (0x211)
	}, ; 949
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 66; uint32_t java_name_index (0x42)
	}, ; 950
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 16; uint32_t java_name_index (0x10)
	}, ; 951
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 22; uint32_t java_name_index (0x16)
	}, ; 952
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 404; uint32_t java_name_index (0x194)
	}, ; 953
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555525, ; uint32_t type_token_id (0x2000445)
		i32 803; uint32_t java_name_index (0x323)
	}, ; 954
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 815; uint32_t java_name_index (0x32f)
	}, ; 955
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 206; uint32_t java_name_index (0xce)
	}, ; 956
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 120; uint32_t java_name_index (0x78)
	}, ; 957
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 950; uint32_t java_name_index (0x3b6)
	}, ; 958
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 43; uint32_t java_name_index (0x2b)
	}, ; 959
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 1050; uint32_t java_name_index (0x41a)
	}, ; 960
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 156; uint32_t java_name_index (0x9c)
	}, ; 961
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555151, ; uint32_t type_token_id (0x20002cf)
		i32 600; uint32_t java_name_index (0x258)
	}, ; 962
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555811, ; uint32_t type_token_id (0x2000563)
		i32 1052; uint32_t java_name_index (0x41c)
	}, ; 963
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 369; uint32_t java_name_index (0x171)
	}, ; 964
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 294; uint32_t java_name_index (0x126)
	}, ; 965
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 767; uint32_t java_name_index (0x2ff)
	}, ; 966
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 307; uint32_t java_name_index (0x133)
	}, ; 967
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 165; uint32_t java_name_index (0xa5)
	}, ; 968
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 644; uint32_t java_name_index (0x284)
	}, ; 969
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554897, ; uint32_t type_token_id (0x20001d1)
		i32 467; uint32_t java_name_index (0x1d3)
	}, ; 970
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 632; uint32_t java_name_index (0x278)
	}, ; 971
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554972, ; uint32_t type_token_id (0x200021c)
		i32 512; uint32_t java_name_index (0x200)
	}, ; 972
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 526; uint32_t java_name_index (0x20e)
	}, ; 973
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 346; uint32_t java_name_index (0x15a)
	}, ; 974
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 159; uint32_t java_name_index (0x9f)
	}, ; 975
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 106; uint32_t java_name_index (0x6a)
	}, ; 976
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 931; uint32_t java_name_index (0x3a3)
	}, ; 977
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 295; uint32_t java_name_index (0x127)
	}, ; 978
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555496, ; uint32_t type_token_id (0x2000428)
		i32 781; uint32_t java_name_index (0x30d)
	}, ; 979
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555469, ; uint32_t type_token_id (0x200040d)
		i32 764; uint32_t java_name_index (0x2fc)
	}, ; 980
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 655; uint32_t java_name_index (0x28f)
	}, ; 981
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554885, ; uint32_t type_token_id (0x20001c5)
		i32 460; uint32_t java_name_index (0x1cc)
	}, ; 982
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 626; uint32_t java_name_index (0x272)
	}, ; 983
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 671; uint32_t java_name_index (0x29f)
	}, ; 984
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 215; uint32_t java_name_index (0xd7)
	}, ; 985
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 406; uint32_t java_name_index (0x196)
	}, ; 986
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 1021; uint32_t java_name_index (0x3fd)
	}, ; 987
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 625; uint32_t java_name_index (0x271)
	}, ; 988
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 205; uint32_t java_name_index (0xcd)
	}, ; 989
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 373; uint32_t java_name_index (0x175)
	}, ; 990
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554949, ; uint32_t type_token_id (0x2000205)
		i32 500; uint32_t java_name_index (0x1f4)
	}, ; 991
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555435, ; uint32_t type_token_id (0x20003eb)
		i32 741; uint32_t java_name_index (0x2e5)
	}, ; 992
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 207; uint32_t java_name_index (0xcf)
	}, ; 993
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 963; uint32_t java_name_index (0x3c3)
	}, ; 994
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 630; uint32_t java_name_index (0x276)
	}, ; 995
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555141, ; uint32_t type_token_id (0x20002c5)
		i32 593; uint32_t java_name_index (0x251)
	}, ; 996
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 607; uint32_t java_name_index (0x25f)
	}, ; 997
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555069, ; uint32_t type_token_id (0x200027d)
		i32 562; uint32_t java_name_index (0x232)
	}, ; 998
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 995; uint32_t java_name_index (0x3e3)
	}, ; 999
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554904, ; uint32_t type_token_id (0x20001d8)
		i32 473; uint32_t java_name_index (0x1d9)
	}, ; 1000
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 895; uint32_t java_name_index (0x37f)
	}, ; 1001
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554859, ; uint32_t type_token_id (0x20001ab)
		i32 435; uint32_t java_name_index (0x1b3)
	}, ; 1002
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 383; uint32_t java_name_index (0x17f)
	}, ; 1003
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555021, ; uint32_t type_token_id (0x200024d)
		i32 535; uint32_t java_name_index (0x217)
	}, ; 1004
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 891; uint32_t java_name_index (0x37b)
	}, ; 1005
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 209; uint32_t java_name_index (0xd1)
	}, ; 1006
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 259; uint32_t java_name_index (0x103)
	}, ; 1007
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 902; uint32_t java_name_index (0x386)
	}, ; 1008
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554925, ; uint32_t type_token_id (0x20001ed)
		i32 487; uint32_t java_name_index (0x1e7)
	}, ; 1009
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 926; uint32_t java_name_index (0x39e)
	}, ; 1010
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 702; uint32_t java_name_index (0x2be)
	}, ; 1011
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 8; uint32_t java_name_index (0x8)
	}, ; 1012
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555076, ; uint32_t type_token_id (0x2000284)
		i32 568; uint32_t java_name_index (0x238)
	}, ; 1013
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 867; uint32_t java_name_index (0x363)
	}, ; 1014
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 986; uint32_t java_name_index (0x3da)
	}, ; 1015
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555073, ; uint32_t type_token_id (0x2000281)
		i32 565; uint32_t java_name_index (0x235)
	}, ; 1016
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1074; uint32_t java_name_index (0x432)
	}, ; 1017
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554866, ; uint32_t type_token_id (0x20001b2)
		i32 442; uint32_t java_name_index (0x1ba)
	}, ; 1018
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 639; uint32_t java_name_index (0x27f)
	}, ; 1019
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 27; uint32_t java_name_index (0x1b)
	}, ; 1020
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 518; uint32_t java_name_index (0x206)
	}, ; 1021
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 636; uint32_t java_name_index (0x27c)
	}, ; 1022
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 621; uint32_t java_name_index (0x26d)
	}, ; 1023
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 647; uint32_t java_name_index (0x287)
	}, ; 1024
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555436, ; uint32_t type_token_id (0x20003ec)
		i32 742; uint32_t java_name_index (0x2e6)
	}, ; 1025
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 746; uint32_t java_name_index (0x2ea)
	}, ; 1026
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 729; uint32_t java_name_index (0x2d9)
	}, ; 1027
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 265; uint32_t java_name_index (0x109)
	}, ; 1028
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 877; uint32_t java_name_index (0x36d)
	}, ; 1029
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1107; uint32_t java_name_index (0x453)
	}, ; 1030
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 616; uint32_t java_name_index (0x268)
	}, ; 1031
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 654; uint32_t java_name_index (0x28e)
	}, ; 1032
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 946; uint32_t java_name_index (0x3b2)
	}, ; 1033
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555311, ; uint32_t type_token_id (0x200036f)
		i32 1082; uint32_t java_name_index (0x43a)
	}, ; 1034
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 204; uint32_t java_name_index (0xcc)
	}, ; 1035
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 238; uint32_t java_name_index (0xee)
	}, ; 1036
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555128, ; uint32_t type_token_id (0x20002b8)
		i32 587; uint32_t java_name_index (0x24b)
	}, ; 1037
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 714; uint32_t java_name_index (0x2ca)
	}, ; 1038
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 1022; uint32_t java_name_index (0x3fe)
	}, ; 1039
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 848; uint32_t java_name_index (0x350)
	}, ; 1040
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 870; uint32_t java_name_index (0x366)
	}, ; 1041
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 71; uint32_t java_name_index (0x47)
	}, ; 1042
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 736; uint32_t java_name_index (0x2e0)
	}, ; 1043
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 333; uint32_t java_name_index (0x14d)
	}, ; 1044
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 125; uint32_t java_name_index (0x7d)
	}, ; 1045
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 420; uint32_t java_name_index (0x1a4)
	}, ; 1046
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1085; uint32_t java_name_index (0x43d)
	}, ; 1047
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 0; uint32_t java_name_index (0x0)
	}, ; 1048
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554902, ; uint32_t type_token_id (0x20001d6)
		i32 472; uint32_t java_name_index (0x1d8)
	}, ; 1049
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554914, ; uint32_t type_token_id (0x20001e2)
		i32 479; uint32_t java_name_index (0x1df)
	}, ; 1050
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 379; uint32_t java_name_index (0x17b)
	}, ; 1051
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 414; uint32_t java_name_index (0x19e)
	}, ; 1052
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555518, ; uint32_t type_token_id (0x200043e)
		i32 798; uint32_t java_name_index (0x31e)
	}, ; 1053
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 984; uint32_t java_name_index (0x3d8)
	}, ; 1054
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 1100; uint32_t java_name_index (0x44c)
	}, ; 1055
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555288, ; uint32_t type_token_id (0x2000358)
		i32 640; uint32_t java_name_index (0x280)
	}, ; 1056
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 604; uint32_t java_name_index (0x25c)
	}, ; 1057
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555821, ; uint32_t type_token_id (0x200056d)
		i32 1063; uint32_t java_name_index (0x427)
	}, ; 1058
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 181; uint32_t java_name_index (0xb5)
	}, ; 1059
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 855; uint32_t java_name_index (0x357)
	}, ; 1060
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 158; uint32_t java_name_index (0x9e)
	}, ; 1061
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 843; uint32_t java_name_index (0x34b)
	}, ; 1062
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 728; uint32_t java_name_index (0x2d8)
	}, ; 1063
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 368; uint32_t java_name_index (0x170)
	}, ; 1064
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555062, ; uint32_t type_token_id (0x2000276)
		i32 557; uint32_t java_name_index (0x22d)
	}, ; 1065
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 727; uint32_t java_name_index (0x2d7)
	}, ; 1066
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 756; uint32_t java_name_index (0x2f4)
	}, ; 1067
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 55; uint32_t java_name_index (0x37)
	}, ; 1068
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 72; uint32_t java_name_index (0x48)
	}, ; 1069
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 881; uint32_t java_name_index (0x371)
	}, ; 1070
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 24; uint32_t java_name_index (0x18)
	}, ; 1071
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 317; uint32_t java_name_index (0x13d)
	}, ; 1072
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 253; uint32_t java_name_index (0xfd)
	}, ; 1073
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 992; uint32_t java_name_index (0x3e0)
	}, ; 1074
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554952, ; uint32_t type_token_id (0x2000208)
		i32 502; uint32_t java_name_index (0x1f6)
	}, ; 1075
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 739; uint32_t java_name_index (0x2e3)
	}, ; 1076
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555534, ; uint32_t type_token_id (0x200044e)
		i32 810; uint32_t java_name_index (0x32a)
	}, ; 1077
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555473, ; uint32_t type_token_id (0x2000411)
		i32 766; uint32_t java_name_index (0x2fe)
	}, ; 1078
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555022, ; uint32_t type_token_id (0x200024e)
		i32 536; uint32_t java_name_index (0x218)
	}, ; 1079
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1007; uint32_t java_name_index (0x3ef)
	}, ; 1080
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 1047; uint32_t java_name_index (0x417)
	}, ; 1081
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 224; uint32_t java_name_index (0xe0)
	}, ; 1082
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 1115; uint32_t java_name_index (0x45b)
	}, ; 1083
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 328; uint32_t java_name_index (0x148)
	}, ; 1084
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555493, ; uint32_t type_token_id (0x2000425)
		i32 779; uint32_t java_name_index (0x30b)
	}, ; 1085
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 793; uint32_t java_name_index (0x319)
	}, ; 1086
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 2; uint32_t java_name_index (0x2)
	}, ; 1087
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 111; uint32_t java_name_index (0x6f)
	}, ; 1088
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 873; uint32_t java_name_index (0x369)
	}, ; 1089
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 121; uint32_t java_name_index (0x79)
	}, ; 1090
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 405; uint32_t java_name_index (0x195)
	}, ; 1091
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 261; uint32_t java_name_index (0x105)
	}, ; 1092
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 685; uint32_t java_name_index (0x2ad)
	}, ; 1093
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 231; uint32_t java_name_index (0xe7)
	}, ; 1094
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 112; uint32_t java_name_index (0x70)
	}, ; 1095
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 629; uint32_t java_name_index (0x275)
	}, ; 1096
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 380; uint32_t java_name_index (0x17c)
	}, ; 1097
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 248; uint32_t java_name_index (0xf8)
	}, ; 1098
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 304; uint32_t java_name_index (0x130)
	}, ; 1099
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 689; uint32_t java_name_index (0x2b1)
	}, ; 1100
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555843, ; uint32_t type_token_id (0x2000583)
		i32 1098; uint32_t java_name_index (0x44a)
	}, ; 1101
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555148, ; uint32_t type_token_id (0x20002cc)
		i32 597; uint32_t java_name_index (0x255)
	}, ; 1102
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 1036; uint32_t java_name_index (0x40c)
	}, ; 1103
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 540; uint32_t java_name_index (0x21c)
	}, ; 1104
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555374, ; uint32_t type_token_id (0x20003ae)
		i32 1127; uint32_t java_name_index (0x467)
	}, ; 1105
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 371; uint32_t java_name_index (0x173)
	}, ; 1106
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 947; uint32_t java_name_index (0x3b3)
	}, ; 1107
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 493; uint32_t java_name_index (0x1ed)
	}, ; 1108
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555020, ; uint32_t type_token_id (0x200024c)
		i32 534; uint32_t java_name_index (0x216)
	}, ; 1109
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1075; uint32_t java_name_index (0x433)
	}, ; 1110
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555454, ; uint32_t type_token_id (0x20003fe)
		i32 754; uint32_t java_name_index (0x2f2)
	}, ; 1111
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554978, ; uint32_t type_token_id (0x2000222)
		i32 514; uint32_t java_name_index (0x202)
	}, ; 1112
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 539; uint32_t java_name_index (0x21b)
	}, ; 1113
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 84; uint32_t java_name_index (0x54)
	}, ; 1114
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 709; uint32_t java_name_index (0x2c5)
	}, ; 1115
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 715; uint32_t java_name_index (0x2cb)
	}, ; 1116
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 298; uint32_t java_name_index (0x12a)
	}, ; 1117
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 101; uint32_t java_name_index (0x65)
	}, ; 1118
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 970; uint32_t java_name_index (0x3ca)
	}, ; 1119
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 187; uint32_t java_name_index (0xbb)
	}, ; 1120
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 321; uint32_t java_name_index (0x141)
	}, ; 1121
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 959; uint32_t java_name_index (0x3bf)
	}, ; 1122
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 186; uint32_t java_name_index (0xba)
	}, ; 1123
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 887; uint32_t java_name_index (0x377)
	}, ; 1124
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 80; uint32_t java_name_index (0x50)
	}, ; 1125
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555191, ; uint32_t type_token_id (0x20002f7)
		i32 605; uint32_t java_name_index (0x25d)
	}, ; 1126
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555539, ; uint32_t type_token_id (0x2000453)
		i32 814; uint32_t java_name_index (0x32e)
	}, ; 1127
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 618; uint32_t java_name_index (0x26a)
	}, ; 1128
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 638; uint32_t java_name_index (0x27e)
	}, ; 1129
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 313; uint32_t java_name_index (0x139)
	} ; 1130
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1131 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990, ; 990
	ptr @.str.991, ; 991
	ptr @.str.992, ; 992
	ptr @.str.993, ; 993
	ptr @.str.994, ; 994
	ptr @.str.995, ; 995
	ptr @.str.996, ; 996
	ptr @.str.997, ; 997
	ptr @.str.998, ; 998
	ptr @.str.999, ; 999
	ptr @.str.1000, ; 1000
	ptr @.str.1001, ; 1001
	ptr @.str.1002, ; 1002
	ptr @.str.1003, ; 1003
	ptr @.str.1004, ; 1004
	ptr @.str.1005, ; 1005
	ptr @.str.1006, ; 1006
	ptr @.str.1007, ; 1007
	ptr @.str.1008, ; 1008
	ptr @.str.1009, ; 1009
	ptr @.str.1010, ; 1010
	ptr @.str.1011, ; 1011
	ptr @.str.1012, ; 1012
	ptr @.str.1013, ; 1013
	ptr @.str.1014, ; 1014
	ptr @.str.1015, ; 1015
	ptr @.str.1016, ; 1016
	ptr @.str.1017, ; 1017
	ptr @.str.1018, ; 1018
	ptr @.str.1019, ; 1019
	ptr @.str.1020, ; 1020
	ptr @.str.1021, ; 1021
	ptr @.str.1022, ; 1022
	ptr @.str.1023, ; 1023
	ptr @.str.1024, ; 1024
	ptr @.str.1025, ; 1025
	ptr @.str.1026, ; 1026
	ptr @.str.1027, ; 1027
	ptr @.str.1028, ; 1028
	ptr @.str.1029, ; 1029
	ptr @.str.1030, ; 1030
	ptr @.str.1031, ; 1031
	ptr @.str.1032, ; 1032
	ptr @.str.1033, ; 1033
	ptr @.str.1034, ; 1034
	ptr @.str.1035, ; 1035
	ptr @.str.1036, ; 1036
	ptr @.str.1037, ; 1037
	ptr @.str.1038, ; 1038
	ptr @.str.1039, ; 1039
	ptr @.str.1040, ; 1040
	ptr @.str.1041, ; 1041
	ptr @.str.1042, ; 1042
	ptr @.str.1043, ; 1043
	ptr @.str.1044, ; 1044
	ptr @.str.1045, ; 1045
	ptr @.str.1046, ; 1046
	ptr @.str.1047, ; 1047
	ptr @.str.1048, ; 1048
	ptr @.str.1049, ; 1049
	ptr @.str.1050, ; 1050
	ptr @.str.1051, ; 1051
	ptr @.str.1052, ; 1052
	ptr @.str.1053, ; 1053
	ptr @.str.1054, ; 1054
	ptr @.str.1055, ; 1055
	ptr @.str.1056, ; 1056
	ptr @.str.1057, ; 1057
	ptr @.str.1058, ; 1058
	ptr @.str.1059, ; 1059
	ptr @.str.1060, ; 1060
	ptr @.str.1061, ; 1061
	ptr @.str.1062, ; 1062
	ptr @.str.1063, ; 1063
	ptr @.str.1064, ; 1064
	ptr @.str.1065, ; 1065
	ptr @.str.1066, ; 1066
	ptr @.str.1067, ; 1067
	ptr @.str.1068, ; 1068
	ptr @.str.1069, ; 1069
	ptr @.str.1070, ; 1070
	ptr @.str.1071, ; 1071
	ptr @.str.1072, ; 1072
	ptr @.str.1073, ; 1073
	ptr @.str.1074, ; 1074
	ptr @.str.1075, ; 1075
	ptr @.str.1076, ; 1076
	ptr @.str.1077, ; 1077
	ptr @.str.1078, ; 1078
	ptr @.str.1079, ; 1079
	ptr @.str.1080, ; 1080
	ptr @.str.1081, ; 1081
	ptr @.str.1082, ; 1082
	ptr @.str.1083, ; 1083
	ptr @.str.1084, ; 1084
	ptr @.str.1085, ; 1085
	ptr @.str.1086, ; 1086
	ptr @.str.1087, ; 1087
	ptr @.str.1088, ; 1088
	ptr @.str.1089, ; 1089
	ptr @.str.1090, ; 1090
	ptr @.str.1091, ; 1091
	ptr @.str.1092, ; 1092
	ptr @.str.1093, ; 1093
	ptr @.str.1094, ; 1094
	ptr @.str.1095, ; 1095
	ptr @.str.1096, ; 1096
	ptr @.str.1097, ; 1097
	ptr @.str.1098, ; 1098
	ptr @.str.1099, ; 1099
	ptr @.str.1100, ; 1100
	ptr @.str.1101, ; 1101
	ptr @.str.1102, ; 1102
	ptr @.str.1103, ; 1103
	ptr @.str.1104, ; 1104
	ptr @.str.1105, ; 1105
	ptr @.str.1106, ; 1106
	ptr @.str.1107, ; 1107
	ptr @.str.1108, ; 1108
	ptr @.str.1109, ; 1109
	ptr @.str.1110, ; 1110
	ptr @.str.1111, ; 1111
	ptr @.str.1112, ; 1112
	ptr @.str.1113, ; 1113
	ptr @.str.1114, ; 1114
	ptr @.str.1115, ; 1115
	ptr @.str.1116, ; 1116
	ptr @.str.1117, ; 1117
	ptr @.str.1118, ; 1118
	ptr @.str.1119, ; 1119
	ptr @.str.1120, ; 1120
	ptr @.str.1121, ; 1121
	ptr @.str.1122, ; 1122
	ptr @.str.1123, ; 1123
	ptr @.str.1124, ; 1124
	ptr @.str.1125, ; 1125
	ptr @.str.1126, ; 1126
	ptr @.str.1127, ; 1127
	ptr @.str.1128, ; 1128
	ptr @.str.1129, ; 1129
	ptr @.str.1130 ; 1130
], align 8

; Strings
@.str.0 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"androidx/core/content/FileProvider\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"androidx/core/content/LocusIdCompat\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"androidx/core/content/PermissionChecker\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"androidx/core/content/res/ResourcesCompat\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"androidx/core/content/res/ResourcesCompat$FontCallback\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"androidx/core/app/ActivityCompat\00", align 1
@.str.48 = private unnamed_addr constant [58 x i8] c"androidx/core/app/ActivityCompat$PermissionCompatDelegate\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 1
@.str.53 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 1
@.str.57 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 1
@.str.62 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 1
@.str.63 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 1
@.str.64 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 1
@.str.65 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 1
@.str.68 = private unnamed_addr constant [48 x i8] c"androidx/core/view/DragAndDropPermissionsCompat\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 1
@.str.71 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 1
@.str.75 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 1
@.str.77 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 1
@.str.81 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 1
@.str.83 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 1
@.str.84 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 1
@.str.85 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 1
@.str.86 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 1
@.str.87 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 1
@.str.90 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 1
@.str.91 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 1
@.str.92 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 1
@.str.93 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 1
@.str.94 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 1
@.str.95 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 1
@.str.96 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 1
@.str.97 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 1
@.str.98 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 1
@.str.99 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 1
@.str.100 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 1
@.str.101 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 1
@.str.103 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 1
@.str.109 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 1
@.str.110 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 1
@.str.111 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 1
@.str.112 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 1
@.str.113 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 1
@.str.114 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 1
@.str.115 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 1
@.str.116 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 1
@.str.117 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 1
@.str.119 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 1
@.str.121 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 1
@.str.122 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 1
@.str.123 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 1
@.str.124 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 1
@.str.125 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 1
@.str.126 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 1
@.str.127 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 1
@.str.128 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 1
@.str.129 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 1
@.str.130 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 1
@.str.131 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 1
@.str.132 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 1
@.str.133 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 1
@.str.134 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 1
@.str.135 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 1
@.str.136 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 1
@.str.137 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 1
@.str.138 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 1
@.str.139 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 1
@.str.140 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 1
@.str.141 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 1
@.str.142 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 1
@.str.143 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 1
@.str.144 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 1
@.str.145 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 1
@.str.146 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 1
@.str.147 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 1
@.str.148 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 1
@.str.149 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 1
@.str.150 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 1
@.str.151 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 1
@.str.152 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 1
@.str.153 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 1
@.str.154 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 1
@.str.155 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 1
@.str.156 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 1
@.str.157 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 1
@.str.158 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 1
@.str.159 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 1
@.str.160 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 1
@.str.161 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 1
@.str.162 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 1
@.str.163 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 1
@.str.164 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 1
@.str.165 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 1
@.str.166 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/widget/TintTypedArray\00", align 1
@.str.167 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 1
@.str.168 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 1
@.str.169 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 1
@.str.170 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 1
@.str.171 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 1
@.str.172 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 1
@.str.173 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 1
@.str.174 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 1
@.str.175 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 1
@.str.176 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 1
@.str.177 = private unnamed_addr constant [75 x i8] c"crc64d693e2d9159537db/AndroidWebKitWebViewManager_BlazorWebMessageCallback\00", align 1
@.str.178 = private unnamed_addr constant [43 x i8] c"crc64d693e2d9159537db/BlazorAndroidWebView\00", align 1
@.str.179 = private unnamed_addr constant [44 x i8] c"crc64d693e2d9159537db/BlazorWebChromeClient\00", align 1
@.str.180 = private unnamed_addr constant [42 x i8] c"crc64d693e2d9159537db/WebKitWebViewClient\00", align 1
@.str.181 = private unnamed_addr constant [66 x i8] c"crc64d693e2d9159537db/WebKitWebViewClient_JavaScriptValueCallback\00", align 1
@.str.182 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 1
@.str.183 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 1
@.str.184 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 1
@.str.185 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 1
@.str.186 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 1
@.str.187 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 1
@.str.188 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 1
@.str.189 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 1
@.str.190 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 1
@.str.191 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 1
@.str.192 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 1
@.str.193 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 1
@.str.194 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 1
@.str.195 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 1
@.str.196 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 1
@.str.197 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 1
@.str.199 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 1
@.str.200 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 1
@.str.201 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 1
@.str.202 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 1
@.str.203 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 1
@.str.204 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 1
@.str.205 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 1
@.str.206 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 1
@.str.207 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 1
@.str.208 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 1
@.str.209 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 1
@.str.210 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 1
@.str.211 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 1
@.str.212 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 1
@.str.213 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 1
@.str.214 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 1
@.str.215 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 1
@.str.216 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 1
@.str.217 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 1
@.str.218 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.219 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 1
@.str.220 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 1
@.str.221 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 1
@.str.222 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 1
@.str.223 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 1
@.str.224 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 1
@.str.225 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 1
@.str.226 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 1
@.str.227 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 1
@.str.228 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 1
@.str.229 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 1
@.str.230 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 1
@.str.231 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 1
@.str.232 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.233 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 1
@.str.234 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 1
@.str.235 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 1
@.str.236 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 1
@.str.237 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 1
@.str.238 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 1
@.str.239 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 1
@.str.240 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 1
@.str.241 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 1
@.str.242 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 1
@.str.243 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 1
@.str.244 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 1
@.str.245 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 1
@.str.246 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 1
@.str.247 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 1
@.str.248 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.249 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 1
@.str.250 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 1
@.str.251 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 1
@.str.252 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 1
@.str.253 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 1
@.str.254 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 1
@.str.255 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 1
@.str.256 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 1
@.str.257 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 1
@.str.258 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 1
@.str.259 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 1
@.str.260 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 1
@.str.261 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 1
@.str.262 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 1
@.str.263 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 1
@.str.264 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 1
@.str.265 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 1
@.str.266 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 1
@.str.267 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 1
@.str.268 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 1
@.str.269 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 1
@.str.270 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 1
@.str.271 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 1
@.str.272 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 1
@.str.273 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 1
@.str.274 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 1
@.str.275 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 1
@.str.276 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 1
@.str.277 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 1
@.str.278 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 1
@.str.279 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 1
@.str.280 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 1
@.str.281 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 1
@.str.282 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 1
@.str.283 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 1
@.str.284 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 1
@.str.285 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@.str.286 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@.str.287 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 1
@.str.288 = private unnamed_addr constant [39 x i8] c"javax/security/auth/x500/X500Principal\00", align 1
@.str.289 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@.str.290 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@.str.291 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@.str.292 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@.str.293 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@.str.294 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@.str.295 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@.str.296 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@.str.297 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@.str.298 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@.str.299 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@.str.300 = private unnamed_addr constant [33 x i8] c"javax/crypto/AEADBadTagException\00", align 1
@.str.301 = private unnamed_addr constant [33 x i8] c"javax/crypto/BadPaddingException\00", align 1
@.str.302 = private unnamed_addr constant [20 x i8] c"javax/crypto/Cipher\00", align 1
@.str.303 = private unnamed_addr constant [39 x i8] c"javax/crypto/IllegalBlockSizeException\00", align 1
@.str.304 = private unnamed_addr constant [23 x i8] c"javax/crypto/SecretKey\00", align 1
@.str.305 = private unnamed_addr constant [26 x i8] c"javax/crypto/KeyGenerator\00", align 1
@.str.306 = private unnamed_addr constant [35 x i8] c"javax/crypto/spec/GCMParameterSpec\00", align 1
@.str.307 = private unnamed_addr constant [34 x i8] c"javax/crypto/spec/IvParameterSpec\00", align 1
@.str.308 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 1
@.str.309 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 1
@.str.310 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 1
@.str.311 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 1
@.str.312 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 1
@.str.313 = private unnamed_addr constant [43 x i8] c"android/widget/AbsoluteLayout$LayoutParams\00", align 1
@.str.314 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 1
@.str.315 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 1
@.str.316 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 1
@.str.317 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 1
@.str.318 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 1
@.str.319 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 1
@.str.320 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 1
@.str.321 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@.str.322 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.323 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 1
@.str.324 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@.str.325 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 1
@.str.326 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.327 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 1
@.str.328 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 1
@.str.329 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 1
@.str.330 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 1
@.str.331 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 1
@.str.332 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@.str.333 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 1
@.str.334 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 1
@.str.335 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 1
@.str.336 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 1
@.str.337 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 1
@.str.338 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 1
@.str.339 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 1
@.str.340 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 1
@.str.341 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 1
@.str.342 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 1
@.str.343 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@.str.344 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@.str.345 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 1
@.str.346 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 1
@.str.347 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@.str.348 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 1
@.str.349 = private unnamed_addr constant [27 x i8] c"android/widget/RemoteViews\00", align 1
@.str.350 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 1
@.str.351 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 1
@.str.352 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 1
@.str.353 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 1
@.str.354 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.355 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 1
@.str.356 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 1
@.str.357 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 1
@.str.358 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 1
@.str.359 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 1
@.str.360 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 1
@.str.361 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 1
@.str.362 = private unnamed_addr constant [27 x i8] c"android/webkit/MimeTypeMap\00", align 1
@.str.363 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 1
@.str.364 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 1
@.str.365 = private unnamed_addr constant [26 x i8] c"android/webkit/WebMessage\00", align 1
@.str.366 = private unnamed_addr constant [30 x i8] c"android/webkit/WebMessagePort\00", align 1
@.str.367 = private unnamed_addr constant [49 x i8] c"android/webkit/WebMessagePort$WebMessageCallback\00", align 1
@.str.368 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 1
@.str.369 = private unnamed_addr constant [35 x i8] c"android/webkit/WebResourceResponse\00", align 1
@.str.370 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 1
@.str.371 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 1
@.str.372 = private unnamed_addr constant [37 x i8] c"android/webkit/WebView$HitTestResult\00", align 1
@.str.373 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 1
@.str.374 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@.str.375 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.376 = private unnamed_addr constant [17 x i8] c"android/util/Log\00", align 1
@.str.377 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 1
@.str.378 = private unnamed_addr constant [18 x i8] c"android/util/Size\00", align 1
@.str.379 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 1
@.str.380 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 1
@.str.381 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 1
@.str.382 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 1
@.str.383 = private unnamed_addr constant [30 x i8] c"android/text/ClipboardManager\00", align 1
@.str.384 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 1
@.str.385 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 1
@.str.386 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 1
@.str.387 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@.str.388 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 1
@.str.389 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 1
@.str.390 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 1
@.str.391 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 1
@.str.392 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 1
@.str.393 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 1
@.str.394 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 1
@.str.395 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 1
@.str.396 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 1
@.str.397 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 1
@.str.398 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 1
@.str.399 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 1
@.str.400 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 1
@.str.401 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 1
@.str.402 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 1
@.str.403 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 1
@.str.404 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 1
@.str.405 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 1
@.str.406 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 1
@.str.407 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 1
@.str.408 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 1
@.str.409 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 1
@.str.410 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 1
@.str.411 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 1
@.str.412 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 1
@.str.413 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 1
@.str.414 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 1
@.str.415 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 1
@.str.416 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 1
@.str.417 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 1
@.str.418 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 1
@.str.419 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 1
@.str.420 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 1
@.str.421 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 1
@.str.422 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 1
@.str.423 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 1
@.str.424 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 1
@.str.425 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 1
@.str.426 = private unnamed_addr constant [35 x i8] c"android/telephony/PhoneNumberUtils\00", align 1
@.str.427 = private unnamed_addr constant [32 x i8] c"android/speech/tts/TextToSpeech\00", align 1
@.str.428 = private unnamed_addr constant [47 x i8] c"android/speech/tts/TextToSpeech$OnInitListener\00", align 1
@.str.429 = private unnamed_addr constant [61 x i8] c"android/speech/tts/TextToSpeech$OnUtteranceCompletedListener\00", align 1
@.str.430 = private unnamed_addr constant [38 x i8] c"android/security/KeyPairGeneratorSpec\00", align 1
@.str.431 = private unnamed_addr constant [46 x i8] c"android/security/KeyPairGeneratorSpec$Builder\00", align 1
@.str.432 = private unnamed_addr constant [46 x i8] c"android/security/keystore/KeyGenParameterSpec\00", align 1
@.str.433 = private unnamed_addr constant [54 x i8] c"android/security/keystore/KeyGenParameterSpec$Builder\00", align 1
@.str.434 = private unnamed_addr constant [34 x i8] c"android/provider/ContactsContract\00", align 1
@.str.435 = private unnamed_addr constant [50 x i8] c"android/provider/ContactsContract$CommonDataKinds\00", align 1
@.str.436 = private unnamed_addr constant [56 x i8] c"android/provider/ContactsContract$CommonDataKinds$Email\00", align 1
@.str.437 = private unnamed_addr constant [56 x i8] c"android/provider/ContactsContract$CommonDataKinds$Phone\00", align 1
@.str.438 = private unnamed_addr constant [43 x i8] c"android/provider/ContactsContract$Contacts\00", align 1
@.str.439 = private unnamed_addr constant [39 x i8] c"android/provider/ContactsContract$Data\00", align 1
@.str.440 = private unnamed_addr constant [35 x i8] c"android/provider/DocumentsContract\00", align 1
@.str.441 = private unnamed_addr constant [28 x i8] c"android/provider/MediaStore\00", align 1
@.str.442 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Audio\00", align 1
@.str.443 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Audio$Media\00", align 1
@.str.444 = private unnamed_addr constant [35 x i8] c"android/provider/MediaStore$Images\00", align 1
@.str.445 = private unnamed_addr constant [41 x i8] c"android/provider/MediaStore$Images$Media\00", align 1
@.str.446 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Video\00", align 1
@.str.447 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Video$Media\00", align 1
@.str.448 = private unnamed_addr constant [26 x i8] c"android/provider/Settings\00", align 1
@.str.449 = private unnamed_addr constant [33 x i8] c"android/provider/Settings$Global\00", align 1
@.str.450 = private unnamed_addr constant [41 x i8] c"android/provider/Settings$NameValueTable\00", align 1
@.str.451 = private unnamed_addr constant [33 x i8] c"android/provider/Settings$System\00", align 1
@.str.452 = private unnamed_addr constant [27 x i8] c"android/provider/Telephony\00", align 1
@.str.453 = private unnamed_addr constant [31 x i8] c"android/provider/Telephony$Sms\00", align 1
@.str.454 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 1
@.str.455 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.456 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.457 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.458 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.459 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 1
@.str.460 = private unnamed_addr constant [23 x i8] c"android/os/Environment\00", align 1
@.str.461 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.462 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@.str.463 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 1
@.str.464 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 1
@.str.465 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 1
@.str.466 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 1
@.str.467 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 1
@.str.468 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.469 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 1
@.str.470 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 1
@.str.471 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 1
@.str.472 = private unnamed_addr constant [27 x i8] c"android/os/VibrationEffect\00", align 1
@.str.473 = private unnamed_addr constant [20 x i8] c"android/os/Vibrator\00", align 1
@.str.474 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 1
@.str.475 = private unnamed_addr constant [32 x i8] c"android/net/ConnectivityManager\00", align 1
@.str.476 = private unnamed_addr constant [48 x i8] c"android/net/ConnectivityManager$NetworkCallback\00", align 1
@.str.477 = private unnamed_addr constant [27 x i8] c"android/net/LinkProperties\00", align 1
@.str.478 = private unnamed_addr constant [20 x i8] c"android/net/Network\00", align 1
@.str.479 = private unnamed_addr constant [32 x i8] c"android/net/NetworkCapabilities\00", align 1
@.str.480 = private unnamed_addr constant [24 x i8] c"android/net/NetworkInfo\00", align 1
@.str.481 = private unnamed_addr constant [27 x i8] c"android/net/NetworkRequest\00", align 1
@.str.482 = private unnamed_addr constant [35 x i8] c"android/net/NetworkRequest$Builder\00", align 1
@.str.483 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 1
@.str.484 = private unnamed_addr constant [24 x i8] c"android/net/Uri$Builder\00", align 1
@.str.485 = private unnamed_addr constant [29 x i8] c"android/net/wifi/WifiManager\00", align 1
@.str.486 = private unnamed_addr constant [25 x i8] c"android/location/Address\00", align 1
@.str.487 = private unnamed_addr constant [26 x i8] c"android/location/Criteria\00", align 1
@.str.488 = private unnamed_addr constant [26 x i8] c"android/location/Geocoder\00", align 1
@.str.489 = private unnamed_addr constant [34 x i8] c"android/location/LocationListener\00", align 1
@.str.490 = private unnamed_addr constant [26 x i8] c"android/location/Location\00", align 1
@.str.491 = private unnamed_addr constant [33 x i8] c"android/location/LocationManager\00", align 1
@.str.492 = private unnamed_addr constant [24 x i8] c"android/hardware/Camera\00", align 1
@.str.493 = private unnamed_addr constant [35 x i8] c"android/hardware/Camera$Parameters\00", align 1
@.str.494 = private unnamed_addr constant [37 x i8] c"android/hardware/SensorEventListener\00", align 1
@.str.495 = private unnamed_addr constant [24 x i8] c"android/hardware/Sensor\00", align 1
@.str.496 = private unnamed_addr constant [29 x i8] c"android/hardware/SensorEvent\00", align 1
@.str.497 = private unnamed_addr constant [31 x i8] c"android/hardware/SensorManager\00", align 1
@.str.498 = private unnamed_addr constant [47 x i8] c"android/hardware/camera2/CameraCharacteristics\00", align 1
@.str.499 = private unnamed_addr constant [51 x i8] c"android/hardware/camera2/CameraCharacteristics$Key\00", align 1
@.str.500 = private unnamed_addr constant [39 x i8] c"android/hardware/camera2/CameraManager\00", align 1
@.str.501 = private unnamed_addr constant [40 x i8] c"android/hardware/camera2/CameraMetadata\00", align 1
@.str.502 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 1
@.str.503 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 1
@.str.504 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@.str.505 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 1
@.str.506 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 1
@.str.507 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 1
@.str.508 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 1
@.str.509 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 1
@.str.510 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 1
@.str.511 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 1
@.str.512 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 1
@.str.513 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 1
@.str.514 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 1
@.str.515 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.516 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 1
@.str.517 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@.str.518 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.519 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 1
@.str.520 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 1
@.str.521 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 1
@.str.522 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 1
@.str.523 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 1
@.str.524 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 1
@.str.525 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 1
@.str.526 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 1
@.str.527 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 1
@.str.528 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 1
@.str.529 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 1
@.str.530 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 1
@.str.531 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 1
@.str.532 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 1
@.str.533 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 1
@.str.534 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 1
@.str.535 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.536 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 1
@.str.537 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 1
@.str.538 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 1
@.str.539 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 1
@.str.540 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 1
@.str.541 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 1
@.str.542 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 1
@.str.543 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 1
@.str.544 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 1
@.str.545 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 1
@.str.546 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 1
@.str.547 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 1
@.str.548 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 1
@.str.549 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 1
@.str.550 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 1
@.str.551 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 1
@.str.552 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 1
@.str.553 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 1
@.str.554 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 1
@.str.555 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 1
@.str.556 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 1
@.str.557 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 1
@.str.558 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 1
@.str.559 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 1
@.str.560 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 1
@.str.561 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 1
@.str.562 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 1
@.str.563 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 1
@.str.564 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 1
@.str.565 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 1
@.str.566 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.567 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 1
@.str.568 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 1
@.str.569 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 1
@.str.570 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 1
@.str.571 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 1
@.str.572 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.573 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.574 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 1
@.str.575 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 1
@.str.576 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 1
@.str.577 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 1
@.str.578 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 1
@.str.579 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 1
@.str.580 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 1
@.str.581 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 1
@.str.582 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 1
@.str.583 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 1
@.str.584 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 1
@.str.585 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 1
@.str.586 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 1
@.str.587 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.588 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@.str.589 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 1
@.str.590 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 1
@.str.591 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 1
@.str.592 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 1
@.str.593 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 1
@.str.594 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 1
@.str.595 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 1
@.str.596 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 1
@.str.597 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 1
@.str.598 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 1
@.str.599 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 1
@.str.600 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 1
@.str.601 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 1
@.str.602 = private unnamed_addr constant [46 x i8] c"android/view/animation/AccelerateInterpolator\00", align 1
@.str.603 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 1
@.str.604 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 1
@.str.605 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 1
@.str.606 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 1
@.str.607 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 1
@.str.608 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 1
@.str.609 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 1
@.str.610 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 1
@.str.611 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 1
@.str.612 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 1
@.str.613 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 1
@.str.614 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 1
@.str.615 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 1
@.str.616 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.617 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 1
@.str.618 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 1
@.str.619 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 1
@.str.620 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@.str.621 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@.str.622 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.623 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 1
@.str.624 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.625 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 1
@.str.626 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 1
@.str.627 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 1
@.str.628 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 1
@.str.629 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 1
@.str.630 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 1
@.str.631 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 1
@.str.632 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 1
@.str.633 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 1
@.str.634 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 1
@.str.635 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 1
@.str.636 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 1
@.str.637 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 1
@.str.638 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 1
@.str.639 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 1
@.str.640 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 1
@.str.641 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 1
@.str.642 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 1
@.str.643 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 1
@.str.644 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 1
@.str.645 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 1
@.str.646 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 1
@.str.647 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 1
@.str.648 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 1
@.str.649 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 1
@.str.650 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 1
@.str.651 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 1
@.str.652 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 1
@.str.653 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 1
@.str.654 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 1
@.str.655 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 1
@.str.656 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 1
@.str.657 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 1
@.str.658 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 1
@.str.659 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 1
@.str.660 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 1
@.str.661 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 1
@.str.662 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 1
@.str.663 = private unnamed_addr constant [32 x i8] c"android/graphics/SurfaceTexture\00", align 1
@.str.664 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 1
@.str.665 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 1
@.str.666 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 1
@.str.667 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/BitmapDrawable\00", align 1
@.str.668 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 1
@.str.669 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 1
@.str.670 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 1
@.str.671 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 1
@.str.672 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 1
@.str.673 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 1
@.str.674 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 1
@.str.675 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 1
@.str.676 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 1
@.str.677 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 1
@.str.678 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 1
@.str.679 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 1
@.str.680 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 1
@.str.681 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 1
@.str.682 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 1
@.str.683 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 1
@.str.684 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 1
@.str.685 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 1
@.str.686 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 1
@.str.687 = private unnamed_addr constant [42 x i8] c"android/content/ActivityNotFoundException\00", align 1
@.str.688 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 1
@.str.689 = private unnamed_addr constant [33 x i8] c"android/content/ClipboardManager\00", align 1
@.str.690 = private unnamed_addr constant [62 x i8] c"android/content/ClipboardManager$OnPrimaryClipChangedListener\00", align 1
@.str.691 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 1
@.str.692 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 1
@.str.693 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 1
@.str.694 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 1
@.str.695 = private unnamed_addr constant [32 x i8] c"android/content/ContentProvider\00", align 1
@.str.696 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 1
@.str.697 = private unnamed_addr constant [30 x i8] c"android/content/ContentValues\00", align 1
@.str.698 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.699 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.700 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 1
@.str.701 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 1
@.str.702 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@.str.703 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@.str.704 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 1
@.str.705 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 1
@.str.706 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 1
@.str.707 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 1
@.str.708 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 1
@.str.709 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 1
@.str.710 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 1
@.str.711 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.712 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 1
@.str.713 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 1
@.str.714 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@.str.715 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@.str.716 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@.str.717 = private unnamed_addr constant [24 x i8] c"android/content/LocusId\00", align 1
@.str.718 = private unnamed_addr constant [40 x i8] c"android/content/res/AssetFileDescriptor\00", align 1
@.str.719 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@.str.720 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@.str.721 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 1
@.str.722 = private unnamed_addr constant [38 x i8] c"android/content/res/XmlResourceParser\00", align 1
@.str.723 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 1
@.str.724 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 1
@.str.725 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 1
@.str.726 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@.str.727 = private unnamed_addr constant [32 x i8] c"android/content/pm/ActivityInfo\00", align 1
@.str.728 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@.str.729 = private unnamed_addr constant [33 x i8] c"android/content/pm/ComponentInfo\00", align 1
@.str.730 = private unnamed_addr constant [31 x i8] c"android/content/pm/FeatureInfo\00", align 1
@.str.731 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 1
@.str.732 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@.str.733 = private unnamed_addr constant [31 x i8] c"android/content/pm/ResolveInfo\00", align 1
@.str.734 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 1
@.str.735 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 1
@.str.736 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 1
@.str.737 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 1
@.str.738 = private unnamed_addr constant [15 x i8] c"java/util/Date\00", align 1
@.str.739 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 1
@.str.740 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 1
@.str.741 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 1
@.str.742 = private unnamed_addr constant [26 x i8] c"java/util/Locale$Category\00", align 1
@.str.743 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 1
@.str.744 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.745 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 1
@.str.746 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 1
@.str.747 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 1
@.str.748 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 1
@.str.749 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 1
@.str.750 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 1
@.str.751 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 1
@.str.752 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 1
@.str.753 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 1
@.str.754 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 1
@.str.755 = private unnamed_addr constant [39 x i8] c"java/security/GeneralSecurityException\00", align 1
@.str.756 = private unnamed_addr constant [18 x i8] c"java/security/Key\00", align 1
@.str.757 = private unnamed_addr constant [49 x i8] c"java/security/InvalidAlgorithmParameterException\00", align 1
@.str.758 = private unnamed_addr constant [34 x i8] c"java/security/InvalidKeyException\00", align 1
@.str.759 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 1
@.str.760 = private unnamed_addr constant [25 x i8] c"java/security/PrivateKey\00", align 1
@.str.761 = private unnamed_addr constant [24 x i8] c"java/security/PublicKey\00", align 1
@.str.762 = private unnamed_addr constant [27 x i8] c"java/security/KeyException\00", align 1
@.str.763 = private unnamed_addr constant [22 x i8] c"java/security/KeyPair\00", align 1
@.str.764 = private unnamed_addr constant [31 x i8] c"java/security/KeyPairGenerator\00", align 1
@.str.765 = private unnamed_addr constant [34 x i8] c"java/security/KeyPairGeneratorSpi\00", align 1
@.str.766 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@.str.767 = private unnamed_addr constant [42 x i8] c"java/security/KeyStore$LoadStoreParameter\00", align 1
@.str.768 = private unnamed_addr constant [43 x i8] c"java/security/KeyStore$ProtectionParameter\00", align 1
@.str.769 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 1
@.str.770 = private unnamed_addr constant [42 x i8] c"java/security/spec/AlgorithmParameterSpec\00", align 1
@.str.771 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@.str.772 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.773 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.774 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 1
@.str.775 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@.str.776 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@.str.777 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 1
@.str.778 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.779 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@.str.780 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 1
@.str.781 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 1
@.str.782 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@.str.783 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@.str.784 = private unnamed_addr constant [28 x i8] c"java/net/URISyntaxException\00", align 1
@.str.785 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.786 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 1
@.str.787 = private unnamed_addr constant [20 x i8] c"java/net/URLEncoder\00", align 1
@.str.788 = private unnamed_addr constant [21 x i8] c"java/math/BigInteger\00", align 1
@.str.789 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.790 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@.str.791 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.792 = private unnamed_addr constant [30 x i8] c"java/io/FileNotFoundException\00", align 1
@.str.793 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 1
@.str.794 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.795 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@.str.796 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.797 = private unnamed_addr constant [21 x i8] c"java/io/Serializable\00", align 1
@.str.798 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.799 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.800 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 1
@.str.801 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.802 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.803 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.804 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 1
@.str.805 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.806 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 1
@.str.807 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.808 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@.str.809 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 1
@.str.810 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 1
@.str.811 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.812 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.813 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.814 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 1
@.str.815 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 1
@.str.816 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 1
@.str.817 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@.str.818 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@.str.819 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@.str.820 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 1
@.str.821 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.822 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.823 = private unnamed_addr constant [15 x i8] c"java/lang/Math\00", align 1
@.str.824 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@.str.825 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 1
@.str.826 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.827 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@.str.828 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 1
@.str.829 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 1
@.str.830 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.831 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.832 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.833 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.834 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.835 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@.str.836 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 1
@.str.837 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.838 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 1
@.str.839 = private unnamed_addr constant [61 x i8] c"crc64a0e0a82d0db9a07d/Connectivity_EssentialsNetworkCallback\00", align 1
@.str.840 = private unnamed_addr constant [44 x i8] c"crc64a0e0a82d0db9a07d/AccelerometerListener\00", align 1
@.str.841 = private unnamed_addr constant [40 x i8] c"crc64a0e0a82d0db9a07d/BarometerListener\00", align 1
@.str.842 = private unnamed_addr constant [47 x i8] c"crc64a0e0a82d0db9a07d/BatteryBroadcastReceiver\00", align 1
@.str.843 = private unnamed_addr constant [51 x i8] c"crc64a0e0a82d0db9a07d/EnergySaverBroadcastReceiver\00", align 1
@.str.844 = private unnamed_addr constant [46 x i8] c"crc64a0e0a82d0db9a07d/ClipboardChangeListener\00", align 1
@.str.845 = private unnamed_addr constant [37 x i8] c"crc64a0e0a82d0db9a07d/SensorListener\00", align 1
@.str.846 = private unnamed_addr constant [52 x i8] c"crc64a0e0a82d0db9a07d/ConnectivityBroadcastReceiver\00", align 1
@.str.847 = private unnamed_addr constant [31 x i8] c"crc64a0e0a82d0db9a07d/Listener\00", align 1
@.str.848 = private unnamed_addr constant [45 x i8] c"crc64a0e0a82d0db9a07d/SingleLocationListener\00", align 1
@.str.849 = private unnamed_addr constant [40 x i8] c"crc64a0e0a82d0db9a07d/GyroscopeListener\00", align 1
@.str.850 = private unnamed_addr constant [43 x i8] c"crc64a0e0a82d0db9a07d/MagnetometerListener\00", align 1
@.str.851 = private unnamed_addr constant [48 x i8] c"crc64a0e0a82d0db9a07d/OrientationSensorListener\00", align 1
@.str.852 = private unnamed_addr constant [55 x i8] c"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener\00", align 1
@.str.853 = private unnamed_addr constant [43 x i8] c"crc64a0e0a82d0db9a07d/IntermediateActivity\00", align 1
@.str.854 = private unnamed_addr constant [49 x i8] c"crc64a0e0a82d0db9a07d/TextToSpeechImplementation\00", align 1
@.str.855 = private unnamed_addr constant [32 x i8] c"xamarin/essentials/fileProvider\00", align 1
@.str.856 = private unnamed_addr constant [55 x i8] c"crc64a0e0a82d0db9a07d/WebAuthenticatorCallbackActivity\00", align 1
@.str.857 = private unnamed_addr constant [59 x i8] c"crc64a0e0a82d0db9a07d/WebAuthenticatorIntermediateActivity\00", align 1
@.str.858 = private unnamed_addr constant [35 x i8] c"crc64d42f28bda5037441/MainActivity\00", align 1
@.str.859 = private unnamed_addr constant [38 x i8] c"crc64d42f28bda5037441/MainApplication\00", align 1
@.str.860 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 1
@.str.861 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 1
@.str.862 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 1
@.str.863 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 1
@.str.864 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 1
@.str.865 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 1
@.str.866 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 1
@.str.867 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 1
@.str.868 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 1
@.str.869 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 1
@.str.870 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 1
@.str.871 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 1
@.str.872 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 1
@.str.873 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 1
@.str.874 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 1
@.str.875 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 1
@.str.876 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 1
@.str.877 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 1
@.str.878 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 1
@.str.879 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 1
@.str.880 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 1
@.str.881 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 1
@.str.882 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 1
@.str.883 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 1
@.str.884 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 1
@.str.885 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 1
@.str.886 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 1
@.str.887 = private unnamed_addr constant [31 x i8] c"com/microsoft/maui/BuildConfig\00", align 1
@.str.888 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 1
@.str.889 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 1
@.str.890 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 1
@.str.891 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 1
@.str.892 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 1
@.str.893 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 1
@.str.894 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 1
@.str.895 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 1
@.str.896 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 1
@.str.897 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 1
@.str.898 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 1
@.str.899 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 1
@.str.900 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 1
@.str.901 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 1
@.str.902 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 1
@.str.903 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 1
@.str.904 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 1
@.str.905 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 1
@.str.906 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 1
@.str.907 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 1
@.str.908 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 1
@.str.909 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 1
@.str.910 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 1
@.str.911 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 1
@.str.912 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 1
@.str.913 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 1
@.str.914 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 1
@.str.915 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 1
@.str.916 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 1
@.str.917 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 1
@.str.918 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 1
@.str.919 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 1
@.str.920 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 1
@.str.921 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 1
@.str.922 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 1
@.str.923 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 1
@.str.924 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 1
@.str.925 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 1
@.str.926 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 1
@.str.927 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 1
@.str.928 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 1
@.str.929 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 1
@.str.930 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 1
@.str.931 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 1
@.str.932 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 1
@.str.933 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 1
@.str.934 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 1
@.str.935 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 1
@.str.936 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 1
@.str.937 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 1
@.str.938 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 1
@.str.939 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 1
@.str.940 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 1
@.str.941 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 1
@.str.942 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 1
@.str.943 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 1
@.str.944 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 1
@.str.945 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 1
@.str.946 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 1
@.str.947 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 1
@.str.948 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 1
@.str.949 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 1
@.str.950 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 1
@.str.951 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 1
@.str.952 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 1
@.str.953 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 1
@.str.954 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 1
@.str.955 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 1
@.str.956 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 1
@.str.957 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 1
@.str.958 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 1
@.str.959 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 1
@.str.960 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 1
@.str.961 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 1
@.str.962 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 1
@.str.963 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 1
@.str.964 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 1
@.str.965 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 1
@.str.966 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 1
@.str.967 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 1
@.str.968 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 1
@.str.969 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 1
@.str.970 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 1
@.str.971 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 1
@.str.972 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 1
@.str.973 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 1
@.str.974 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 1
@.str.975 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 1
@.str.976 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 1
@.str.977 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 1
@.str.978 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 1
@.str.979 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 1
@.str.980 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 1
@.str.981 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 1
@.str.982 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 1
@.str.983 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 1
@.str.984 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 1
@.str.985 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 1
@.str.986 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 1
@.str.987 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 1
@.str.988 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 1
@.str.989 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 1
@.str.990 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 1
@.str.991 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 1
@.str.992 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 1
@.str.993 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 1
@.str.994 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 1
@.str.995 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 1
@.str.996 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 1
@.str.997 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 1
@.str.998 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 1
@.str.999 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 1
@.str.1000 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 1
@.str.1001 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 1
@.str.1002 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 1
@.str.1003 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 1
@.str.1004 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 1
@.str.1005 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 1
@.str.1006 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 1
@.str.1007 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 1
@.str.1008 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 1
@.str.1009 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 1
@.str.1010 = private unnamed_addr constant [43 x i8] c"crc64ba438d8f48cf7e75/IntermediateActivity\00", align 1
@.str.1011 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 1
@.str.1012 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 1
@.str.1013 = private unnamed_addr constant [45 x i8] c"androidx/browser/customtabs/CustomTabsClient\00", align 1
@.str.1014 = private unnamed_addr constant [68 x i8] c"androidx/browser/customtabs/CustomTabsClient_CustomTabsCallbackImpl\00", align 1
@.str.1015 = private unnamed_addr constant [54 x i8] c"crc64396a3fe5f8138e3f/CustomTabsServiceConnectionImpl\00", align 1
@.str.1016 = private unnamed_addr constant [55 x i8] c"androidx/browser/customtabs/CustomTabColorSchemeParams\00", align 1
@.str.1017 = private unnamed_addr constant [47 x i8] c"androidx/browser/customtabs/CustomTabsCallback\00", align 1
@.str.1018 = private unnamed_addr constant [45 x i8] c"androidx/browser/customtabs/CustomTabsIntent\00", align 1
@.str.1019 = private unnamed_addr constant [53 x i8] c"androidx/browser/customtabs/CustomTabsIntent$Builder\00", align 1
@.str.1020 = private unnamed_addr constant [56 x i8] c"androidx/browser/customtabs/CustomTabsServiceConnection\00", align 1
@.str.1021 = private unnamed_addr constant [46 x i8] c"androidx/browser/customtabs/CustomTabsSession\00", align 1
@.str.1022 = private unnamed_addr constant [61 x i8] c"androidx/browser/customtabs/CustomTabsSession$PendingSession\00", align 1
@.str.1023 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 1
@.str.1024 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 1
@.str.1025 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 1
@.str.1026 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 1
@.str.1027 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 1
@.str.1028 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 1
@.str.1029 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 1
@.str.1030 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 1
@.str.1031 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 1
@.str.1032 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 1
@.str.1033 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 1
@.str.1034 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 1
@.str.1035 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 1
@.str.1036 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 1
@.str.1037 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 1
@.str.1038 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 1
@.str.1039 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 1
@.str.1040 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 1
@.str.1041 = private unnamed_addr constant [60 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer\00", align 1
@.str.1042 = private unnamed_addr constant [74 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment\00", align 1
@.str.1043 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 1
@.str.1044 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 1
@.str.1045 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 1
@.str.1046 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 1
@.str.1047 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 1
@.str.1048 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 1
@.str.1049 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 1
@.str.1050 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 1
@.str.1051 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 1
@.str.1052 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 1
@.str.1053 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 1
@.str.1054 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 1
@.str.1055 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 1
@.str.1056 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 1
@.str.1057 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 1
@.str.1058 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 1
@.str.1059 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 1
@.str.1060 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 1
@.str.1061 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 1
@.str.1062 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 1
@.str.1063 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 1
@.str.1064 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 1
@.str.1065 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 1
@.str.1066 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 1
@.str.1067 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 1
@.str.1068 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 1
@.str.1069 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 1
@.str.1070 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 1
@.str.1071 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 1
@.str.1072 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 1
@.str.1073 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 1
@.str.1074 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 1
@.str.1075 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 1
@.str.1076 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 1
@.str.1077 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 1
@.str.1078 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 1
@.str.1079 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 1
@.str.1080 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 1
@.str.1081 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 1
@.str.1082 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 1
@.str.1083 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 1
@.str.1084 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 1
@.str.1085 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 1
@.str.1086 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 1
@.str.1087 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 1
@.str.1088 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 1
@.str.1089 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 1
@.str.1090 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 1
@.str.1091 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 1
@.str.1092 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 1
@.str.1093 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 1
@.str.1094 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 1
@.str.1095 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 1
@.str.1096 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 1
@.str.1097 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 1
@.str.1098 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 1
@.str.1099 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 1
@.str.1100 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 1
@.str.1101 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 1
@.str.1102 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 1
@.str.1103 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 1
@.str.1104 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 1
@.str.1105 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 1
@.str.1106 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 1
@.str.1107 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 1
@.str.1108 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 1
@.str.1109 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 1
@.str.1110 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 1
@.str.1111 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 1
@.str.1112 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 1
@.str.1113 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 1
@.str.1114 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 1
@.str.1115 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 1
@.str.1116 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 1
@.str.1117 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 1
@.str.1118 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 1
@.str.1119 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 1
@.str.1120 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 1
@.str.1121 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 1
@.str.1122 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 1
@.str.1123 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 1
@.str.1124 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 1
@.str.1125 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 1
@.str.1126 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 1
@.str.1127 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 1
@.str.1128 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 1
@.str.1129 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 1
@.str.1130 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 1
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 1
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 1
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 1
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 1
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 1
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 1
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Lifecycle.Common\00", align 1
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 1
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [45 x i8] c"Microsoft.AspNetCore.Components.WebView.Maui\00", align 1
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 1
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 1
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel\00", align 1
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.Collection\00", align 1
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 1
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 1
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 1
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [19 x i8] c"Xamarin.Essentials\00", align 1
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [7 x i8] c"Hybrid\00", align 1
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState\00", align 1
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 1
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 1
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 1
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 1
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 1
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.SavedState\00", align 1
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 1
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 1
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 1
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [25 x i8] c"Xamarin.AndroidX.Browser\00", align 1
@.TypeMapModule.35_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 1
@.TypeMapModule.36_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 1

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
