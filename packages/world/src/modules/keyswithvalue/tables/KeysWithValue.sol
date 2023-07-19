// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

library KeysWithValue {
  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32_ARRAY;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "valueHash";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](1);
    fieldNames[0] = "keysWithValue";
  }

  /** Register the table's key schema, value schema, key names and value names */
  function register(bytes32 _tableId) internal {
    StoreSwitch.registerTable(_tableId, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Register the table's key schema, value schema, key names and value names (using the specified store) */
  function register(IStore _store, bytes32 _tableId) internal {
    _store.registerTable(_tableId, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Get keysWithValue */
  function get(bytes32 _tableId, bytes32 valueHash) internal view returns (bytes32[] memory keysWithValue) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0, getValueSchema());
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Get keysWithValue (using the specified store) */
  function get(
    IStore _store,
    bytes32 _tableId,
    bytes32 valueHash
  ) internal view returns (bytes32[] memory keysWithValue) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0, getValueSchema());
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Set keysWithValue */
  function set(bytes32 _tableId, bytes32 valueHash, bytes32[] memory keysWithValue) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    StoreSwitch.setField(_tableId, _keyTuple, 0, EncodeArray.encode((keysWithValue)), getValueSchema());
  }

  /** Set keysWithValue (using the specified store) */
  function set(IStore _store, bytes32 _tableId, bytes32 valueHash, bytes32[] memory keysWithValue) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    _store.setField(_tableId, _keyTuple, 0, EncodeArray.encode((keysWithValue)), getValueSchema());
  }

  /** Get the length of keysWithValue */
  function length(bytes32 _tableId, bytes32 valueHash) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 0, getValueSchema());
    return _byteLength / 32;
  }

  /** Get the length of keysWithValue (using the specified store) */
  function length(IStore _store, bytes32 _tableId, bytes32 valueHash) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 0, getValueSchema());
    return _byteLength / 32;
  }

  /** Get an item of keysWithValue (unchecked, returns invalid data if index overflows) */
  function getItem(bytes32 _tableId, bytes32 valueHash, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    bytes memory _blob = StoreSwitch.getFieldSlice(
      _tableId,
      _keyTuple,
      0,
      getValueSchema(),
      _index * 32,
      (_index + 1) * 32
    );
    return (Bytes.slice32(_blob, 0));
  }

  /** Get an item of keysWithValue (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItem(IStore _store, bytes32 _tableId, bytes32 valueHash, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 0, getValueSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Push an element to keysWithValue */
  function push(bytes32 _tableId, bytes32 valueHash, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    StoreSwitch.pushToField(_tableId, _keyTuple, 0, abi.encodePacked((_element)), getValueSchema());
  }

  /** Push an element to keysWithValue (using the specified store) */
  function push(IStore _store, bytes32 _tableId, bytes32 valueHash, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    _store.pushToField(_tableId, _keyTuple, 0, abi.encodePacked((_element)), getValueSchema());
  }

  /** Pop an element from keysWithValue */
  function pop(bytes32 _tableId, bytes32 valueHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    StoreSwitch.popFromField(_tableId, _keyTuple, 0, 32, getValueSchema());
  }

  /** Pop an element from keysWithValue (using the specified store) */
  function pop(IStore _store, bytes32 _tableId, bytes32 valueHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    _store.popFromField(_tableId, _keyTuple, 0, 32, getValueSchema());
  }

  /** Update an element of keysWithValue at `_index` */
  function update(bytes32 _tableId, bytes32 valueHash, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    StoreSwitch.updateInField(_tableId, _keyTuple, 0, _index * 32, abi.encodePacked((_element)), getValueSchema());
  }

  /** Update an element of keysWithValue (using the specified store) at `_index` */
  function update(IStore _store, bytes32 _tableId, bytes32 valueHash, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    _store.updateInField(_tableId, _keyTuple, 0, _index * 32, abi.encodePacked((_element)), getValueSchema());
  }

  /** Tightly pack full data using this table's schema */
  function encode(bytes32[] memory keysWithValue) internal pure returns (bytes memory) {
    uint40[] memory _counters = new uint40[](1);
    _counters[0] = uint40(keysWithValue.length * 32);
    PackedCounter _encodedLengths = PackedCounterLib.pack(_counters);

    return abi.encodePacked(_encodedLengths.unwrap(), EncodeArray.encode((keysWithValue)));
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 valueHash) internal pure returns (bytes32[] memory _keyTuple) {
    _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 _tableId, bytes32 valueHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    StoreSwitch.deleteRecord(_tableId, _keyTuple, getValueSchema());
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 _tableId, bytes32 valueHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = valueHash;

    _store.deleteRecord(_tableId, _keyTuple, getValueSchema());
  }
}
