//
// dsc_extractor
// Copyright © 2024 Space Code. All rights reserved.
//

typealias extract_dylibs = @convention(c) (
    UnsafePointer<CChar>?, // Path to the source (e.g., dylib archive or file).
    UnsafePointer<CChar>?, // Path to the destination where the dylibs should be extracted.
    ((UInt32, UInt32) -> Void)? // A callback function to report progress.
) -> Int32
