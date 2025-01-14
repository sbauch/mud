/* Autogenerated file. Do not edit manually. */

import {
  defineComponent,
  Type as RecsType,
  type World,
} from "@latticexyz/recs";

export function defineContractComponents(world: World) {
  return {
    Position: (() => {
      return defineComponent(
        world,
        {
          x: RecsType.Number,
          y: RecsType.Number,
          z: RecsType.Number,
        },
        {
          id: "0x00000000000000000000000000000000506f736974696f6e0000000000000000",
          metadata: {
            componentName: "Position",
            tableName: ":Position",
            keySchema: { key: "bytes32" },
            valueSchema: { x: "int32", y: "int32", z: "int32" },
          },
        } as const
      );
    })(),
  };
}
