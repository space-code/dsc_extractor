//
// dsc_extractor
// Copyright © 2024 Space Code. All rights reserved.
//

import Foundation

if CommandLine.argc != 3 {
    print("\(String(utf8String: getprogname()) ?? "") <cache_path> <output_path>")
    exit(1)
}

let err = extractDylibs(cachePath: CommandLine.arguments[1], outputPath: CommandLine.arguments[2])

if err != 0 {
    print("Something went wrong during the extraction process.")
    exit(1)
} else {
    print("Extraction successful!")
    print("Files written to: \"\(CommandLine.arguments[2])\"")
}
