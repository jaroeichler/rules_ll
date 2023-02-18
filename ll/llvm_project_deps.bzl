"""# `//ll:llvm_project_deps.bzl`

Targets from the `llvm-project-overlay` used in `depends_on_llvm`.
"""

LLVM_PROJECT_DEPS = [
    # Clang libraries.
    "@llvm-project//clang:analysis",
    "@llvm-project//clang:arc_migrate",
    "@llvm-project//clang:ast",
    "@llvm-project//clang:ast-diff",
    "@llvm-project//clang:ast_matchers",
    "@llvm-project//clang:ast_matchers_dynamic",
    "@llvm-project//clang:basic",
    "@llvm-project//clang:clang-driver",
    "@llvm-project//clang:codegen",
    "@llvm-project//clang:config",
    "@llvm-project//clang:crosstu",
    "@llvm-project//clang:driver",
    "@llvm-project//clang:edit",
    "@llvm-project//clang:format",
    "@llvm-project//clang:frontend",
    "@llvm-project//clang:frontend_rewrite",
    "@llvm-project//clang:frontend_tool",
    "@llvm-project//clang:index",
    "@llvm-project//clang:interpreter",
    "@llvm-project//clang:lex",
    "@llvm-project//clang:libclang",
    "@llvm-project//clang:libclang_static",
    "@llvm-project//clang:parse",
    "@llvm-project//clang:rewrite",
    "@llvm-project//clang:sema",
    "@llvm-project//clang:serialization",
    "@llvm-project//clang:static_analyzer_checkers",
    "@llvm-project//clang:static_analyzer_core",
    "@llvm-project//clang:static_analyzer_core_options",
    "@llvm-project//clang:static_analyzer_frontend",
    "@llvm-project//clang:support",
    "@llvm-project//clang:tooling",
    "@llvm-project//clang:tooling_core",
    "@llvm-project//clang:tooling_dependency_scanning",
    "@llvm-project//clang:tooling_inclusions",
    "@llvm-project//clang:tooling_refactoring",
    "@llvm-project//clang:tooling_syntax",
    "@llvm-project//clang:transformer",

    # LLVM libraries.
    "@llvm-project//llvm:AggressiveInstCombine",
    "@llvm-project//llvm:AllTargetsAsmParsers",
    "@llvm-project//llvm:AllTargetsCodeGens",
    "@llvm-project//llvm:AllTargetsDisassemblers",
    "@llvm-project//llvm:AllTargetsMCAs",
    "@llvm-project//llvm:Analysis",
    "@llvm-project//llvm:AsmParser",
    "@llvm-project//llvm:BinaryFormat",
    "@llvm-project//llvm:BitReader",
    "@llvm-project//llvm:BitWriter",
    "@llvm-project//llvm:BitstreamReader",
    "@llvm-project//llvm:BitstreamWriter",
    "@llvm-project//llvm:CFGuard",
    "@llvm-project//llvm:CodeGen",
    "@llvm-project//llvm:Core",
    "@llvm-project//llvm:Coroutines",
    "@llvm-project//llvm:Coverage",
    "@llvm-project//llvm:DWP",
    "@llvm-project//llvm:DebugInfo",
    "@llvm-project//llvm:DebugInfoCodeView",
    "@llvm-project//llvm:DebugInfoDWARF",
    "@llvm-project//llvm:DebugInfoGSYM",
    "@llvm-project//llvm:DebugInfoLogicalView",
    "@llvm-project//llvm:DebugInfoMSF",
    "@llvm-project//llvm:DebugInfoPDB",
    "@llvm-project//llvm:Debuginfod",
    "@llvm-project//llvm:Demangle",
    "@llvm-project//llvm:ExecutionEngine",
    # "@llvm-project//llvm:Exegesis",  # Not working properly.
    "@llvm-project//llvm:FileCheckLib",
    "@llvm-project//llvm:FrontendHLSL",
    "@llvm-project//llvm:FrontendOpenACC",
    "@llvm-project//llvm:FrontendOpenMP",
    "@llvm-project//llvm:IPO",
    "@llvm-project//llvm:IRPrinter",
    "@llvm-project//llvm:IRReader",
    "@llvm-project//llvm:InstCombine",
    "@llvm-project//llvm:Instrumentation",
    "@llvm-project//llvm:InterfaceStub",
    "@llvm-project//llvm:Interpreter",
    "@llvm-project//llvm:LTO",
    "@llvm-project//llvm:LibDriver",
    "@llvm-project//llvm:LineEditor",
    "@llvm-project//llvm:Linker",
    "@llvm-project//llvm:MC",
    "@llvm-project//llvm:MCA",
    "@llvm-project//llvm:MCDisassembler",
    "@llvm-project//llvm:MCParser",
    "@llvm-project//llvm:MLPolicies",
    "@llvm-project//llvm:ObjCARC",
    "@llvm-project//llvm:Object",
    "@llvm-project//llvm:ObjectYAML",
    "@llvm-project//llvm:Option",
    "@llvm-project//llvm:Passes",
    "@llvm-project//llvm:ProfileData",
    "@llvm-project//llvm:Remarks",
    "@llvm-project//llvm:Scalar",
    "@llvm-project//llvm:Support",
    "@llvm-project//llvm:Symbolize",
    "@llvm-project//llvm:TableGen",
    "@llvm-project//llvm:Target",
    "@llvm-project//llvm:TargetParser",
    "@llvm-project//llvm:TextAPI",
    "@llvm-project//llvm:TransformUtils",
    "@llvm-project//llvm:Vectorize",
    "@llvm-project//llvm:WindowsDriver",
    "@llvm-project//llvm:attributes_gen",
    "@llvm-project//llvm:common_transforms",
    "@llvm-project//llvm:config",
    "@llvm-project//llvm:remark_linker",
    "@llvm-project//llvm:tblgen",

    # External dependencies.
    "@zlib",
]

POSIX_DEFINES = [
    "LLVM_ON_UNIX=1",
    "HAVE_BACKTRACE=1",
    "BACKTRACE_HEADER=<execinfo.h>",
    'LTDL_SHLIB_EXT=".so"',
    'LLVM_PLUGIN_EXT=".so"',
    "LLVM_ENABLE_THREADS=1",
    "LLVM_ENABLE_PLUGINS=1",
    "HAVE_DEREGISTER_FRAME=1",
    "HAVE_LIBPTHREAD=1",
    "HAVE_PTHREAD_GETNAME_NP=1",
    "HAVE_PTHREAD_H=1",
    "HAVE_PTHREAD_SETNAME_NP=1",
    "HAVE_REGISTER_FRAME=1",
    "HAVE_SETENV_R=1",
    "HAVE_STRERROR_R=1",
    "HAVE_SYSEXITS_H=1",
    "HAVE_UNISTD_H=1",
]

LINUX_DEFINES = POSIX_DEFINES + [
    "_GNU_SOURCE",
    "HAVE_LINK_H=1",
    "HAVE_LSEEK64=1",
    "HAVE_MALLINFO=1",
    "HAVE_SBRK=1",
    "HAVE_STRUCT_STAT_ST_MTIM_TV_NSEC=1",
]
