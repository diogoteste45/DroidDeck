# LSE-Emu integration
Vendored without source modifications from [SildurFX/LSE-Emu](https://github.com/SildurFX/LSE-Emu/tree/8bc9548ac6fd24a8d506b266b17ba8d0e71a9b01) (GPL-3.0-or-later). See LICENSE and lse_emu.c for corresponding source and copyright.
The native ARM64 Steam session enables LSE instruction emulation; the library itself checks AT_HWCAP and remains inactive on LSE-capable CPUs. Lazy patching can be disabled with LSE_EMU_PATCH=0. No automatic x86-64 Steam fallback. Experimental on Android; signal chaining, executable mappings and the guest loader require device validation.
