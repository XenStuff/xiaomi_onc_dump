/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 6);

/*HTH-131714*/
DELETE FROM qcril_emergency_source_mcc_table where MCC = '732' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';

COMMIT TRANSACTION;
