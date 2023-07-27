/* Autogenerated file. Do not edit manually. */

import { defineComponent, Type as RecsType, World } from "@latticexyz/recs";

export function defineContractComponents(world: World) {
  return {
    NamespaceOwner: (() => {
      return defineComponent(
        world,
        {
          owner: RecsType.String,
        },
        {
          id: "0x000000000000000000000000000000004e616d6573706163654f776e65720000",
          metadata: {
            componentName: "NamespaceOwner",
            tableName: ":NamespaceOwner",
            keySchema: { namespace: "bytes16" },
            valueSchema: { owner: "address" },
          },
        } as const
      );
    })(),
    ResourceAccess: (() => {
      return defineComponent(
        world,
        {
          access: RecsType.Boolean,
        },
        {
          id: "0x000000000000000000000000000000005265736f757263654163636573730000",
          metadata: {
            componentName: "ResourceAccess",
            tableName: ":ResourceAccess",
            keySchema: { resourceSelector: "bytes32", caller: "address" },
            valueSchema: { access: "bool" },
          },
        } as const
      );
    })(),
    InstalledModules: (() => {
      return defineComponent(
        world,
        {
          moduleAddress: RecsType.String,
        },
        {
          id: "0x00000000000000000000000000000000496e7374616c6c65644d6f64756c6573",
          metadata: {
            componentName: "InstalledModules",
            tableName: ":InstalledModules",
            keySchema: { moduleName: "bytes16", argumentsHash: "bytes32" },
            valueSchema: { moduleAddress: "address" },
          },
        } as const
      );
    })(),
    Systems: (() => {
      return defineComponent(
        world,
        {
          system: RecsType.String,
          publicAccess: RecsType.Boolean,
        },
        {
          id: "0x0000000000000000000000000000000053797374656d73000000000000000000",
          metadata: {
            componentName: "Systems",
            tableName: ":Systems",
            keySchema: { resourceSelector: "bytes32" },
            valueSchema: { system: "address", publicAccess: "bool" },
          },
        } as const
      );
    })(),
    SystemRegistry: (() => {
      return defineComponent(
        world,
        {
          resourceSelector: RecsType.String,
        },
        {
          id: "0x0000000000000000000000000000000053797374656d52656769737472790000",
          metadata: {
            componentName: "SystemRegistry",
            tableName: ":SystemRegistry",
            keySchema: { system: "address" },
            valueSchema: { resourceSelector: "bytes32" },
          },
        } as const
      );
    })(),
    SystemHooks: (() => {
      return defineComponent(
        world,
        {
          value: RecsType.StringArray,
        },
        {
          id: "0x0000000000000000000000000000000053797374656d486f6f6b730000000000",
          metadata: {
            componentName: "SystemHooks",
            tableName: ":SystemHooks",
            keySchema: { resourceSelector: "bytes32" },
            valueSchema: { value: "address[]" },
          },
        } as const
      );
    })(),
    ResourceType: (() => {
      return defineComponent(
        world,
        {
          resourceType: RecsType.Number,
        },
        {
          id: "0x000000000000000000000000000000005265736f757263655479706500000000",
          metadata: {
            componentName: "ResourceType",
            tableName: ":ResourceType",
            keySchema: { resourceSelector: "bytes32" },
            valueSchema: { resourceType: "uint8" },
          },
        } as const
      );
    })(),
    FunctionSelectors: (() => {
      return defineComponent(
        world,
        {
          namespace: RecsType.String,
          name: RecsType.String,
          systemFunctionSelector: RecsType.String,
        },
        {
          id: "0x0000000000000000000000000000000046756e6374696f6e53656c6563746f72",
          metadata: {
            componentName: "FunctionSelector",
            tableName: ":FunctionSelector",
            keySchema: { functionSelector: "bytes4" },
            valueSchema: {
              namespace: "bytes16",
              name: "bytes16",
              systemFunctionSelector: "bytes4",
            },
          },
        } as const
      );
    })(),
    KeysInTable: (() => {
      return defineComponent(
        world,
        {
          keys0: RecsType.StringArray,
          keys1: RecsType.StringArray,
          keys2: RecsType.StringArray,
          keys3: RecsType.StringArray,
          keys4: RecsType.StringArray,
        },
        {
          id: "0x000000000000000000000000000000004b657973496e5461626c650000000000",
          metadata: {
            componentName: "KeysInTable",
            tableName: ":KeysInTable",
            keySchema: { sourceTable: "bytes32" },
            valueSchema: {
              keys0: "bytes32[]",
              keys1: "bytes32[]",
              keys2: "bytes32[]",
              keys3: "bytes32[]",
              keys4: "bytes32[]",
            },
          },
        } as const
      );
    })(),
    UsedKeysIndex: (() => {
      return defineComponent(
        world,
        {
          has: RecsType.Boolean,
          index: RecsType.Number,
        },
        {
          id: "0x00000000000000000000000000000000557365644b657973496e646578000000",
          metadata: {
            componentName: "UsedKeysIndex",
            tableName: ":UsedKeysIndex",
            keySchema: { sourceTable: "bytes32", keysHash: "bytes32" },
            valueSchema: { has: "bool", index: "uint40" },
          },
        } as const
      );
    })(),
  };
}
