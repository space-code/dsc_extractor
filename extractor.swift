//
// dsc_extractor
// Copyright © 2024 Space Code. All rights reserved.
//

import Foundation

/// Handles the extraction process.
func extractDylibs(cachePath: String, outputPath: String) -> Int32 {
    guard let handle = loadLibrary() else {
        print("Couldn't find file")
        exit(1)
    }

    guard let sym = findSymbol(handle: handle) else {
        print("Can't find dyld_shared_cache_extract_dylibs_progress")
        exit(1)
    }

    let extract_dylibs_func = unsafeBitCast(sym, to: extract_dylibs.self)

    return extract_dylibs_func(cachePath, outputPath) { cur, total in
        print("\(cur)/\(total)")
    }
}
