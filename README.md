# Swift Package SBoM

A software bill of materials (SBoM) generator for Swift packages.

Run this command to print to `stdout`
a JSON representation of a [CycloneDX](https://cyclonedx.org/) SBoM
for a Swift package at the provided path.

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
  "format" : "CycloneDX",
  "serialNumber" : "urn:uuid:57F2F513-63CC-40C8-9828-EB51E1B883AD",
  "specVersion" : "1.2",
  "metadata" : {
    "timestamp" : "2021-07-15T21:50:00Z"
  },
  "components" : [
    {
      "components" : [
        {
          "id" : "Sources/swift-package-sbom/main.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/swift-package-sbom/Subcommands/Generate.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/swift-package-sbom/Extensions/AbsolutePath+Extensions.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/swift-package-sbom/Extensions/DataProtocol+Extensions.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/swift-package-sbom/Extensions/Hash.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/swift-package-sbom/Extensions/HashFunction+Extensions.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        }
      ],
      "id" : "swift-package-sbom",
      "classification" : "application",
      "pedigree" : {
        "commits" : [
          {
            "id" : "c41e154875eccf1d99f188b80c1fdbb483359eab",
            "author" : {
              "name" : "Mattt",
              "email" : "mattt@me.com"
            },
            "committer" : {
              "name" : "Mattt",
              "email" : "mattt@me.com"
            },
            "message" : "Initial commit"
          }
        ]
      }
    },
    {
      "components" : [
        {
          "id" : "Sources/CycloneDX/Extensions/KeyedEncodingContainerProtocol+Extensions.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Dependency.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Metadata.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Properties.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/Diff.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Service.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/Patch.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/Commit.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/BillOfMaterials.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/CPE.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/OrganizationalEntity.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/IdentifiableAction.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/OrganizationalContact.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/Copyright.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/Pedigree.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/Issue.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/ExternalReference.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/Hash.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Component.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/License.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Supporting Types/Tool.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        },
        {
          "id" : "Sources/CycloneDX/Composition.swift",
          "classification" : "file",
          "hashes" : [
            {
              "value" : "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
              "algorithm" : "sha256"
            },
            {
              "value" : "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b",
              "algorithm" : "sha384"
            },
            {
              "value" : "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
              "algorithm" : "sha512"
            }
          ]
        }
      ],
      "id" : "CycloneDX",
      "classification" : "library",
      "pedigree" : {
        "commits" : [
          {
            "id" : "c41e154875eccf1d99f188b80c1fdbb483359eab",
            "author" : {
              "name" : "Mattt",
              "email" : "mattt@me.com"
            },
            "committer" : {
              "name" : "Mattt",
              "email" : "mattt@me.com"
            },
            "message" : "Initial commit"
          }
        ]
      }
    },
    {
      "id" : "swift-package-manager",
      "classification" : "library",
      "externalReferences" : [
        {
          "kind" : "vcs",
          "url" : "https://github.com/apple/swift-package-manager.git"
        }
      ]
    },
    {
      "id" : "swift-llbuild",
      "classification" : "library",
      "externalReferences" : [
        {
          "kind" : "vcs",
          "url" : "https://github.com/apple/swift-llbuild.git"
        }
      ]
    },
    {
      "id" : "swift-tools-support-core",
      "classification" : "library",
      "externalReferences" : [
        {
          "kind" : "vcs",
          "url" : "https://github.com/apple/swift-tools-support-core.git"
        }
      ]
    },
    {
      "id" : "Git",
      "classification" : "library",
      "externalReferences" : [
        {
          "kind" : "vcs",
          "url" : "https://github.com/SwiftDocOrg/Git.git"
        }
      ]
    },
    {
      "id" : "swift-driver",
      "classification" : "library",
      "externalReferences" : [
        {
          "kind" : "vcs",
          "url" : "https://github.com/apple/swift-driver.git"
        }
      ]
    },
    {
      "id" : "Yams",
      "classification" : "library",
      "externalReferences" : [
        {
          "kind" : "vcs",
          "url" : "https://github.com/jpsim/Yams.git"
        }
      ]
    },
    {
      "id" : "swift-argument-parser",
      "classification" : "library",
      "externalReferences" : [
        {
          "kind" : "vcs",
          "url" : "https://github.com/apple/swift-argument-parser.git"
        }
      ]
    }
  ]
}
