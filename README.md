# Swift Package SBoM

A software bill of materials (SBoM) generator for Swift packages.

Run this command to print
a JSON representation of a [CycloneDX](https://cyclonedx.org/) SBoM
for a Swift package at a given path.

A software component can be described by a bill of materials
at different levels of detail.
This project currently includes the following information:

- [x] Component records for each library and executable product,
      each with a list of source files.
- [x] SHA256, SHA384, SHA512 checksums for each source file
- [x] Information about the latest commit 
      (if the package root contains a `.git` directory)
- [x] Component records for each resolved dependency,
      including information about transitive relationships

> ⚠️ This project is under active development and isn't ready for production use.

For more information about software bill of materials,
see [this webpage](https://www.ntia.gov/sbom)
from the National Telecommunications and Information Administration (NTIA).

## Requirements

- Swift 5.4+
- macOS 10.15+
- libgit2

## Usage

```console
swift-package-sbom generate --help
OVERVIEW: Generate a software bill of materials for a package at a path.

USAGE: swift-package-sbom generate <package-path>

ARGUMENTS:
  <package-path>          Location of the package 

OPTIONS:
  --version               Show the version.
  -h, --help              Show help information.
```

## Example Output

```json
{
    "format": "CycloneDX",
    "serialNumber": "urn:uuid:73BB569B-52BA-4CA7-B2D1-C76CD5661C3C",
    "specVersion": "1.2",
    "metadata": {
        "timestamp": "2021-07-15T22:23:33Z"
    },
    "components": [
        {
            "classification": "library",
            "bom-ref": "CycloneDX",
            "pedigree": {
                "commits": [
                    {
                        "author": {
                            "name": "Mattt",
                            "email": "mattt@me.com"
                        },
                        "committer": {
                            "name": "Mattt",
                            "email": "mattt@me.com"
                        },
                        "uid": "268e2e22efe45bae5f8521725827ff913f9d89de",
                        "message": "Create Algorithm enumeration with correct encoded values"
                    }
                ]
            },
            "components": [
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/Pedigree.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/ExternalReference.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Service.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/BillOfMaterials.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/IdentifiableAction.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Extensions/KeyedEncodingContainerProtocol+Extensions.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/Commit.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Dependency.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/OrganizationalEntity.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Metadata.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/CPE.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Component.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Properties.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/Issue.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/Patch.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/Diff.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/Tool.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Composition.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/Hash.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/License.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/OrganizationalContact.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/CycloneDX/Supporting Types/Copyright.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                }
            ]
        },
        {
            "classification": "application",
            "bom-ref": "swift-package-sbom",
            "pedigree": {
                "commits": [
                    {
                        "author": {
                            "name": "Mattt",
                            "email": "mattt@me.com"
                        },
                        "committer": {
                            "name": "Mattt",
                            "email": "mattt@me.com"
                        },
                        "uid": "268e2e22efe45bae5f8521725827ff913f9d89de",
                        "message": "Create Algorithm enumeration with correct encoded values"
                    }
                ]
            },
            "components": [
                {
                    "bom-ref": "Sources/swift-package-sbom/Extensions/Hash.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/swift-package-sbom/Extensions/HashFunction+Extensions.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/swift-package-sbom/Extensions/DataProtocol+Extensions.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/swift-package-sbom/Subcommands/Generate.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/swift-package-sbom/Extensions/AbsolutePath+Extensions.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                },
                {
                    "bom-ref": "Sources/swift-package-sbom/main.swift",
                    "classification": "file",
                    "hashes": [
                        {
                            "value": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                            "algorithm": "SHA-256"
                        },
                        {
                            "value": "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
                            "algorithm": "SHA-384"
                        },
                        {
                            "value": "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                            "algorithm": "SHA-512"
                        }
                    ]
                }
            ]
        },
        {
            "bom-ref": "swift-driver",
            "classification": "library",
            "externalReferences": [
                {
                    "type": "vcs",
                    "url": "https://github.com/apple/swift-driver.git"
                }
            ]
        },
        {
            "bom-ref": "Git",
            "classification": "library",
            "externalReferences": [
                {
                    "type": "vcs",
                    "url": "https://github.com/SwiftDocOrg/Git.git"
                }
            ]
        },
        {
            "bom-ref": "Yams",
            "classification": "library",
            "externalReferences": [
                {
                    "type": "vcs",
                    "url": "https://github.com/jpsim/Yams.git"
                }
            ]
        },
        {
            "bom-ref": "swift-tools-support-core",
            "classification": "library",
            "externalReferences": [
                {
                    "type": "vcs",
                    "url": "https://github.com/apple/swift-tools-support-core.git"
                }
            ]
        },
        {
            "bom-ref": "swift-argument-parser",
            "classification": "library",
            "externalReferences": [
                {
                    "type": "vcs",
                    "url": "https://github.com/apple/swift-argument-parser.git"
                }
            ]
        },
        {
            "bom-ref": "swift-llbuild",
            "classification": "library",
            "externalReferences": [
                {
                    "type": "vcs",
                    "url": "https://github.com/apple/swift-llbuild.git"
                }
            ]
        },
        {
            "bom-ref": "swift-package-manager",
            "classification": "library",
            "externalReferences": [
                {
                    "type": "vcs",
                    "url": "https://github.com/apple/swift-package-manager.git"
                }
            ]
        }
    ]
}
```
