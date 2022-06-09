/*
  Copyright (c) 2018 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 5);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '255' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '255' AND NUMBER = '103';

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '255' AND NUMBER = '102';
INSERT INTO qcril_emergency_source_voice_table VALUES('255','102','','full');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '255' AND NUMBER = '103';
INSERT INTO qcril_emergency_source_voice_table VALUES('255','103','','full');
COMMIT TRANSACTION;
