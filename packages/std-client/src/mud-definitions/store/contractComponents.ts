/* Autogenerated file. Do not edit manually. */

import {
  defineComponent,
  Type as RecsType,
  type World,
} from "@latticexyz/recs";

export function defineContractComponents(world: World) {
  return {
    Hooks: (() => {
      return defineComponent(
        world,
        {
          value: RecsType.StringArray,
        },
        {
          id: "0x6d756473746f72650000000000000000486f6f6b730000000000000000000000",
          metadata: {
            componentName: "Hooks",
            tableName: "mudstore:Hooks",
            keySchema: { key: "bytes32" },
            valueSchema: { value: "address[]" },
          },
        } as const
      );
    })(),
    Callbacks: (() => {
      return defineComponent(
        world,
        {
          value: RecsType.StringArray,
        },
        {
          id: "0x6d756473746f7265000000000000000043616c6c6261636b7300000000000000",
          metadata: {
            componentName: "Callbacks",
            tableName: "mudstore:Callbacks",
            keySchema: { key: "bytes32" },
            valueSchema: { value: "bytes24[]" },
          },
        } as const
      );
    })(),
    StoreMetadata: (() => {
      return defineComponent(
        world,
        {
          tableName: RecsType.String,
          abiEncodedFieldNames: RecsType.String,
        },
        {
          id: "0x6d756473746f7265000000000000000053746f72654d65746164617461000000",
          metadata: {
            componentName: "StoreMetadata",
            tableName: "mudstore:StoreMetadata",
            keySchema: { tableId: "bytes32" },
            valueSchema: { tableName: "string", abiEncodedFieldNames: "bytes" },
          },
        } as const
      );
    })(),
    Mixed: (() => {
      return defineComponent(
        world,
        {
          u32: RecsType.Number,
          u128: RecsType.BigInt,
          a32: RecsType.NumberArray,
          s: RecsType.String,
        },
        {
          id: "0x6d756473746f726500000000000000004d697865640000000000000000000000",
          metadata: {
            componentName: "Mixed",
            tableName: "mudstore:Mixed",
            keySchema: { key: "bytes32" },
            valueSchema: {
              u32: "uint32",
              u128: "uint128",
              a32: "uint32[]",
              s: "string",
            },
          },
        } as const
      );
    })(),
    Vector2: (() => {
      return defineComponent(
        world,
        {
          x: RecsType.Number,
          y: RecsType.Number,
        },
        {
          id: "0x6d756473746f72650000000000000000566563746f7232000000000000000000",
          metadata: {
            componentName: "Vector2",
            tableName: "mudstore:Vector2",
            keySchema: { key: "bytes32" },
            valueSchema: { x: "uint32", y: "uint32" },
          },
        } as const
      );
    })(),
    KeyEncoding: (() => {
      return defineComponent(
        world,
        {
          value: RecsType.Boolean,
        },
        {
          id: "0x6d756473746f726500000000000000004b6579456e636f64696e670000000000",
          metadata: {
            componentName: "KeyEncoding",
            tableName: "mudstore:KeyEncoding",
            keySchema: {
              k1: "uint256",
              k2: "int32",
              k3: "bytes16",
              k4: "address",
              k5: "bool",
              k6: "uint8",
            },
            valueSchema: { value: "bool" },
          },
        } as const
      );
    })(),
  };
}
