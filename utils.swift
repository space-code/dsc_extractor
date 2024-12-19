//
// dsc_extractor
// Copyright © 2024 Space Code. All rights reserved.
//

import Foundation

/// Try to load the dynamic library (dsc_extractor.bundle) located at "/usr/lib".
func loadLibrary() -> UnsafeMutableRawPointer? {
    dlopen("/usr/lib/dsc_extractor.bundle", RTLD_NOW)
}

/// Try to find the symbol (function) "dyld_shared_cache_extract_dylibs_progress" in the loaded library.
func findSymbol(handle: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer? {
    dlsym(handle, "dyld_shared_cache_extract_dylibs_progress")
}
