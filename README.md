<h1 align="center" style="margin-top: 0px;">dsc_extractor</h1>

<p align="center">
<a href="https://github.com/space-code/dsc_extractor"><img alt="CI" src="https://github.com/space-code/dsc_extractor/actions/workflows/dsc_extractor.yml/badge.svg?branch=main"></a>
</p>

## Description
A tool designed to extract and analyze the contents of dyld shared cache (DSC) files.

- [Usage](#usage)
- [Communication](#communication)
- [Contributing](#contributing)
- [Have a Question](#have-a-question)
- [Author](#author)
- [License](#license)

## Usage

To compile the source code, run:

```bash
swiftc dsc_extractor.swift
```

Execute the utility with the following command:

```bash
./dsc_extractor <cache_path> <output_path>
```

## Communication
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Contributing
Bootstrapping development environment

```
make bootstrap
```

Please feel free to help out with this project! If you see something that could be made better or want a new feature, open up an issue or send a Pull Request!

## Have a Question?

Contact us via [issues on GitHub](https://github.com/space-code/dsc_extractor/issues).

## Author
Nikita Vasilev, nv3212@gmail.com

## License
dsc_extractor is available under the MIT license. See the LICENSE file for more info.