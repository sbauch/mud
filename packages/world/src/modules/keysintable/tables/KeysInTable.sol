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

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("KeysInTable")));
bytes32 constant KeysInTableTableId = _tableId;

struct KeysInTableData {
  bytes32[] keyParts0;
  bytes32[] keyParts1;
  bytes32[] keyParts2;
  bytes32[] keyParts3;
  bytes32[] keyParts4;
}

library KeysInTable {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](5);
    _schema[0] = SchemaType.BYTES32_ARRAY;
    _schema[1] = SchemaType.BYTES32_ARRAY;
    _schema[2] = SchemaType.BYTES32_ARRAY;
    _schema[3] = SchemaType.BYTES32_ARRAY;
    _schema[4] = SchemaType.BYTES32_ARRAY;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](5);
    _fieldNames[0] = "keyParts0";
    _fieldNames[1] = "keyParts1";
    _fieldNames[2] = "keyParts2";
    _fieldNames[3] = "keyParts3";
    _fieldNames[4] = "keyParts4";
    return ("KeysInTable", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get keyParts0 */
  function getKeyParts0(bytes32 sourceTable) internal view returns (bytes32[] memory keyParts0) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Get keyParts0 (using the specified store) */
  function getKeyParts0(IStore _store, bytes32 sourceTable) internal view returns (bytes32[] memory keyParts0) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Set keyParts0 */
  function setKeyParts0(bytes32 sourceTable, bytes32[] memory keyParts0) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.setField(_tableId, _keyTuple, 0, EncodeArray.encode((keyParts0)));
  }

  /** Set keyParts0 (using the specified store) */
  function setKeyParts0(IStore _store, bytes32 sourceTable, bytes32[] memory keyParts0) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.setField(_tableId, _keyTuple, 0, EncodeArray.encode((keyParts0)));
  }

  /** Get the length of keyParts0 */
  function lengthKeyParts0(bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 0, getSchema());
    return _byteLength / 32;
  }

  /** Get the length of keyParts0 (using the specified store) */
  function lengthKeyParts0(IStore _store, bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 0, getSchema());
    return _byteLength / 32;
  }

  /** Get an item of keyParts0 (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts0(bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 0, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Get an item of keyParts0 (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts0(IStore _store, bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 0, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Push an element to keyParts0 */
  function pushKeyParts0(bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.pushToField(_tableId, _keyTuple, 0, abi.encodePacked((_element)));
  }

  /** Push an element to keyParts0 (using the specified store) */
  function pushKeyParts0(IStore _store, bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.pushToField(_tableId, _keyTuple, 0, abi.encodePacked((_element)));
  }

  /** Pop an element from keyParts0 */
  function popKeyParts0(bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.popFromField(_tableId, _keyTuple, 0, 32);
  }

  /** Pop an element from keyParts0 (using the specified store) */
  function popKeyParts0(IStore _store, bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.popFromField(_tableId, _keyTuple, 0, 32);
  }

  /** Update an element of keyParts0 at `_index` */
  function updateKeyParts0(bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.updateInField(_tableId, _keyTuple, 0, _index * 32, abi.encodePacked((_element)));
  }

  /** Update an element of keyParts0 (using the specified store) at `_index` */
  function updateKeyParts0(IStore _store, bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.updateInField(_tableId, _keyTuple, 0, _index * 32, abi.encodePacked((_element)));
  }

  /** Get keyParts1 */
  function getKeyParts1(bytes32 sourceTable) internal view returns (bytes32[] memory keyParts1) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Get keyParts1 (using the specified store) */
  function getKeyParts1(IStore _store, bytes32 sourceTable) internal view returns (bytes32[] memory keyParts1) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Set keyParts1 */
  function setKeyParts1(bytes32 sourceTable, bytes32[] memory keyParts1) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.setField(_tableId, _keyTuple, 1, EncodeArray.encode((keyParts1)));
  }

  /** Set keyParts1 (using the specified store) */
  function setKeyParts1(IStore _store, bytes32 sourceTable, bytes32[] memory keyParts1) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.setField(_tableId, _keyTuple, 1, EncodeArray.encode((keyParts1)));
  }

  /** Get the length of keyParts1 */
  function lengthKeyParts1(bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 1, getSchema());
    return _byteLength / 32;
  }

  /** Get the length of keyParts1 (using the specified store) */
  function lengthKeyParts1(IStore _store, bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 1, getSchema());
    return _byteLength / 32;
  }

  /** Get an item of keyParts1 (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts1(bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 1, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Get an item of keyParts1 (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts1(IStore _store, bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 1, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Push an element to keyParts1 */
  function pushKeyParts1(bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.pushToField(_tableId, _keyTuple, 1, abi.encodePacked((_element)));
  }

  /** Push an element to keyParts1 (using the specified store) */
  function pushKeyParts1(IStore _store, bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.pushToField(_tableId, _keyTuple, 1, abi.encodePacked((_element)));
  }

  /** Pop an element from keyParts1 */
  function popKeyParts1(bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.popFromField(_tableId, _keyTuple, 1, 32);
  }

  /** Pop an element from keyParts1 (using the specified store) */
  function popKeyParts1(IStore _store, bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.popFromField(_tableId, _keyTuple, 1, 32);
  }

  /** Update an element of keyParts1 at `_index` */
  function updateKeyParts1(bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.updateInField(_tableId, _keyTuple, 1, _index * 32, abi.encodePacked((_element)));
  }

  /** Update an element of keyParts1 (using the specified store) at `_index` */
  function updateKeyParts1(IStore _store, bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.updateInField(_tableId, _keyTuple, 1, _index * 32, abi.encodePacked((_element)));
  }

  /** Get keyParts2 */
  function getKeyParts2(bytes32 sourceTable) internal view returns (bytes32[] memory keyParts2) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Get keyParts2 (using the specified store) */
  function getKeyParts2(IStore _store, bytes32 sourceTable) internal view returns (bytes32[] memory keyParts2) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Set keyParts2 */
  function setKeyParts2(bytes32 sourceTable, bytes32[] memory keyParts2) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.setField(_tableId, _keyTuple, 2, EncodeArray.encode((keyParts2)));
  }

  /** Set keyParts2 (using the specified store) */
  function setKeyParts2(IStore _store, bytes32 sourceTable, bytes32[] memory keyParts2) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.setField(_tableId, _keyTuple, 2, EncodeArray.encode((keyParts2)));
  }

  /** Get the length of keyParts2 */
  function lengthKeyParts2(bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 2, getSchema());
    return _byteLength / 32;
  }

  /** Get the length of keyParts2 (using the specified store) */
  function lengthKeyParts2(IStore _store, bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 2, getSchema());
    return _byteLength / 32;
  }

  /** Get an item of keyParts2 (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts2(bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 2, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Get an item of keyParts2 (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts2(IStore _store, bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 2, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Push an element to keyParts2 */
  function pushKeyParts2(bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.pushToField(_tableId, _keyTuple, 2, abi.encodePacked((_element)));
  }

  /** Push an element to keyParts2 (using the specified store) */
  function pushKeyParts2(IStore _store, bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.pushToField(_tableId, _keyTuple, 2, abi.encodePacked((_element)));
  }

  /** Pop an element from keyParts2 */
  function popKeyParts2(bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.popFromField(_tableId, _keyTuple, 2, 32);
  }

  /** Pop an element from keyParts2 (using the specified store) */
  function popKeyParts2(IStore _store, bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.popFromField(_tableId, _keyTuple, 2, 32);
  }

  /** Update an element of keyParts2 at `_index` */
  function updateKeyParts2(bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.updateInField(_tableId, _keyTuple, 2, _index * 32, abi.encodePacked((_element)));
  }

  /** Update an element of keyParts2 (using the specified store) at `_index` */
  function updateKeyParts2(IStore _store, bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.updateInField(_tableId, _keyTuple, 2, _index * 32, abi.encodePacked((_element)));
  }

  /** Get keyParts3 */
  function getKeyParts3(bytes32 sourceTable) internal view returns (bytes32[] memory keyParts3) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 3);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Get keyParts3 (using the specified store) */
  function getKeyParts3(IStore _store, bytes32 sourceTable) internal view returns (bytes32[] memory keyParts3) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 3);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Set keyParts3 */
  function setKeyParts3(bytes32 sourceTable, bytes32[] memory keyParts3) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.setField(_tableId, _keyTuple, 3, EncodeArray.encode((keyParts3)));
  }

  /** Set keyParts3 (using the specified store) */
  function setKeyParts3(IStore _store, bytes32 sourceTable, bytes32[] memory keyParts3) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.setField(_tableId, _keyTuple, 3, EncodeArray.encode((keyParts3)));
  }

  /** Get the length of keyParts3 */
  function lengthKeyParts3(bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 3, getSchema());
    return _byteLength / 32;
  }

  /** Get the length of keyParts3 (using the specified store) */
  function lengthKeyParts3(IStore _store, bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 3, getSchema());
    return _byteLength / 32;
  }

  /** Get an item of keyParts3 (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts3(bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 3, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Get an item of keyParts3 (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts3(IStore _store, bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 3, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Push an element to keyParts3 */
  function pushKeyParts3(bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.pushToField(_tableId, _keyTuple, 3, abi.encodePacked((_element)));
  }

  /** Push an element to keyParts3 (using the specified store) */
  function pushKeyParts3(IStore _store, bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.pushToField(_tableId, _keyTuple, 3, abi.encodePacked((_element)));
  }

  /** Pop an element from keyParts3 */
  function popKeyParts3(bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.popFromField(_tableId, _keyTuple, 3, 32);
  }

  /** Pop an element from keyParts3 (using the specified store) */
  function popKeyParts3(IStore _store, bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.popFromField(_tableId, _keyTuple, 3, 32);
  }

  /** Update an element of keyParts3 at `_index` */
  function updateKeyParts3(bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.updateInField(_tableId, _keyTuple, 3, _index * 32, abi.encodePacked((_element)));
  }

  /** Update an element of keyParts3 (using the specified store) at `_index` */
  function updateKeyParts3(IStore _store, bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.updateInField(_tableId, _keyTuple, 3, _index * 32, abi.encodePacked((_element)));
  }

  /** Get keyParts4 */
  function getKeyParts4(bytes32 sourceTable) internal view returns (bytes32[] memory keyParts4) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 4);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Get keyParts4 (using the specified store) */
  function getKeyParts4(IStore _store, bytes32 sourceTable) internal view returns (bytes32[] memory keyParts4) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 4);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Set keyParts4 */
  function setKeyParts4(bytes32 sourceTable, bytes32[] memory keyParts4) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.setField(_tableId, _keyTuple, 4, EncodeArray.encode((keyParts4)));
  }

  /** Set keyParts4 (using the specified store) */
  function setKeyParts4(IStore _store, bytes32 sourceTable, bytes32[] memory keyParts4) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.setField(_tableId, _keyTuple, 4, EncodeArray.encode((keyParts4)));
  }

  /** Get the length of keyParts4 */
  function lengthKeyParts4(bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 4, getSchema());
    return _byteLength / 32;
  }

  /** Get the length of keyParts4 (using the specified store) */
  function lengthKeyParts4(IStore _store, bytes32 sourceTable) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 4, getSchema());
    return _byteLength / 32;
  }

  /** Get an item of keyParts4 (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts4(bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 4, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Get an item of keyParts4 (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemKeyParts4(IStore _store, bytes32 sourceTable, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 4, getSchema(), _index * 32, (_index + 1) * 32);
    return (Bytes.slice32(_blob, 0));
  }

  /** Push an element to keyParts4 */
  function pushKeyParts4(bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.pushToField(_tableId, _keyTuple, 4, abi.encodePacked((_element)));
  }

  /** Push an element to keyParts4 (using the specified store) */
  function pushKeyParts4(IStore _store, bytes32 sourceTable, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.pushToField(_tableId, _keyTuple, 4, abi.encodePacked((_element)));
  }

  /** Pop an element from keyParts4 */
  function popKeyParts4(bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.popFromField(_tableId, _keyTuple, 4, 32);
  }

  /** Pop an element from keyParts4 (using the specified store) */
  function popKeyParts4(IStore _store, bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.popFromField(_tableId, _keyTuple, 4, 32);
  }

  /** Update an element of keyParts4 at `_index` */
  function updateKeyParts4(bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.updateInField(_tableId, _keyTuple, 4, _index * 32, abi.encodePacked((_element)));
  }

  /** Update an element of keyParts4 (using the specified store) at `_index` */
  function updateKeyParts4(IStore _store, bytes32 sourceTable, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.updateInField(_tableId, _keyTuple, 4, _index * 32, abi.encodePacked((_element)));
  }

  /** Get the full data */
  function get(bytes32 sourceTable) internal view returns (KeysInTableData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 sourceTable) internal view returns (KeysInTableData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(
    bytes32 sourceTable,
    bytes32[] memory keyParts0,
    bytes32[] memory keyParts1,
    bytes32[] memory keyParts2,
    bytes32[] memory keyParts3,
    bytes32[] memory keyParts4
  ) internal {
    bytes memory _data = encode(keyParts0, keyParts1, keyParts2, keyParts3, keyParts4);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(
    IStore _store,
    bytes32 sourceTable,
    bytes32[] memory keyParts0,
    bytes32[] memory keyParts1,
    bytes32[] memory keyParts2,
    bytes32[] memory keyParts3,
    bytes32[] memory keyParts4
  ) internal {
    bytes memory _data = encode(keyParts0, keyParts1, keyParts2, keyParts3, keyParts4);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 sourceTable, KeysInTableData memory _table) internal {
    set(sourceTable, _table.keyParts0, _table.keyParts1, _table.keyParts2, _table.keyParts3, _table.keyParts4);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 sourceTable, KeysInTableData memory _table) internal {
    set(_store, sourceTable, _table.keyParts0, _table.keyParts1, _table.keyParts2, _table.keyParts3, _table.keyParts4);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal view returns (KeysInTableData memory _table) {
    // 0 is the total byte length of static data
    PackedCounter _encodedLengths = PackedCounter.wrap(Bytes.slice32(_blob, 0));

    // Store trims the blob if dynamic fields are all empty
    if (_blob.length > 0) {
      uint256 _start;
      // skip static data length + dynamic lengths word
      uint256 _end = 32;

      _start = _end;
      _end += _encodedLengths.atIndex(0);
      _table.keyParts0 = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_bytes32());

      _start = _end;
      _end += _encodedLengths.atIndex(1);
      _table.keyParts1 = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_bytes32());

      _start = _end;
      _end += _encodedLengths.atIndex(2);
      _table.keyParts2 = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_bytes32());

      _start = _end;
      _end += _encodedLengths.atIndex(3);
      _table.keyParts3 = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_bytes32());

      _start = _end;
      _end += _encodedLengths.atIndex(4);
      _table.keyParts4 = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_bytes32());
    }
  }

  /** Tightly pack full data using this table's schema */
  function encode(
    bytes32[] memory keyParts0,
    bytes32[] memory keyParts1,
    bytes32[] memory keyParts2,
    bytes32[] memory keyParts3,
    bytes32[] memory keyParts4
  ) internal view returns (bytes memory) {
    uint40[] memory _counters = new uint40[](5);
    _counters[0] = uint40(keyParts0.length * 32);
    _counters[1] = uint40(keyParts1.length * 32);
    _counters[2] = uint40(keyParts2.length * 32);
    _counters[3] = uint40(keyParts3.length * 32);
    _counters[4] = uint40(keyParts4.length * 32);
    PackedCounter _encodedLengths = PackedCounterLib.pack(_counters);

    return
      abi.encodePacked(
        _encodedLengths.unwrap(),
        EncodeArray.encode((keyParts0)),
        EncodeArray.encode((keyParts1)),
        EncodeArray.encode((keyParts2)),
        EncodeArray.encode((keyParts3)),
        EncodeArray.encode((keyParts4))
      );
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 sourceTable) internal pure returns (bytes32[] memory _keyTuple) {
    _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 sourceTable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = sourceTable;

    _store.deleteRecord(_tableId, _keyTuple);
  }
}
