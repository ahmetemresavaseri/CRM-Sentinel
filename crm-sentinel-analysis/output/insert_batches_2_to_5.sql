-- SQL INSERT statements for CRM Sentinel Database
-- Generated: 2025-12-14 10:30:25
-- Batches: 2, 3, 4, 5

-- Note: This assumes clients table is already populated with the required client_id entries

BEGIN TRANSACTION;


-- Transactions from Batch 2
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000260', 'CL000002', '2025-01-09', 45380.62, 'CNY', 'Credit', 'Wire Transfer', 'GGOCJP03', 'Elite Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000261', 'CL000002', '2025-01-11', 40492.19, 'EUR', 'Credit', 'Wire Transfer', 'ZHQKBE9T', 'Premier Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000262', 'CL000002', '2025-01-11', 24973.95, 'CNY', 'Credit', 'Wire Transfer', 'LJNIAF43', 'First Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000263', 'CL000002', '2025-01-09', 8890.4, 'CHF', 'Credit', 'Wire Transfer', 'JKDRIR64', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000264', 'CL000002', '2025-01-11', 24747.65, 'GBP', 'Credit', 'Wire Transfer', 'KXLGGBIU', 'Alpha Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000265', 'CL000002', '2025-01-14', 19261.12, 'CNY', 'Debit', 'Wire Transfer', 'ORIMVELR', 'Beta Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000266', 'CL000002', '2025-01-13', 25991.07, 'CHF', 'Debit', 'Wire Transfer', 'JKDRIR64', 'Elite GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000267', 'CL000002', '2025-01-13', 18850.8, 'CHF', 'Debit', 'Wire Transfer', 'NZJOFR3W', 'Beta GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000268', 'CL000002', '2025-01-13', 9947.69, 'USD', 'Debit', 'Wire Transfer', 'YGIUHKFB', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000269', 'CL000002', '2025-01-15', 17630.35, 'GBP', 'Debit', 'Wire Transfer', 'TPAFBYY4', 'United Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000270', 'CL000002', '2025-01-15', 40870.78, 'CHF', 'Debit', 'Wire Transfer', 'ZHQKBE9T', 'Omega Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000271', 'CL000002', '2025-01-15', 8213.4, 'EUR', 'Debit', 'Wire Transfer', 'JKDRIR64', 'Beta Trade Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000272', 'CL000002', '2024-10-24', 9563.59, 'CHF', 'Credit', 'Wire Transfer', 'HPMNLYP0', 'International Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000273', 'CL000002', '2024-10-06', 351.69, 'AUD', 'Debit', 'Wire Transfer', 'TPAFBYY4', 'United Wealth AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000274', 'CL000002', '2024-10-29', 1797.15, 'USD', 'Credit', 'Security', 'LIIZRUOS', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000275', 'CL000002', '2024-11-03', 1166.91, 'GBP', 'Credit', 'Security', 'NPZYJP1Y', 'International Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000276', 'CL000002', '2024-10-29', 3331.5, 'CHF', 'Credit', 'Wire Transfer', 'KXLGGBIU', 'Global Commerce Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000277', 'CL000002', '2024-10-12', 2810.78, 'GBP', 'Credit', 'Wire Transfer', 'UJXHSDVP', 'International GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000278', 'CL000002', '2024-10-25', 5195.73, 'EUR', 'Credit', 'Wire Transfer', 'ZVZYNL4F', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000279', 'CL000002', '2024-10-08', 4851.29, 'JPY', 'Debit', 'Wire Transfer', 'GSSBKPOT', 'Omega AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000280', 'CL000002', '2024-10-21', 1065.4, 'USD', 'Credit', 'Security', 'UQTYYEHA', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000281', 'CL000002', '2024-10-17', 2717.51, 'EUR', 'Debit', 'Security', 'YUQRCU7P', 'Alpha Asset Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000282', 'CL000002', '2024-10-31', 5904.27, 'EUR', 'Credit', 'Security', 'GCGOSDFO', 'Omega Wealth Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000283', 'CL000002', '2024-10-09', 5084.55, 'CHF', 'Debit', 'Security', 'CLLYCA5J', 'First Asset GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000284', 'CL000002', '2024-10-12', 1219.83, 'EUR', 'Credit', 'Security', 'XEBLLUS3', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000285', 'CL000002', '2024-10-31', 4675.3, 'AUD', 'Credit', 'Security', 'TEPTYEE3', 'Beta Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000286', 'CL000002', '2024-10-21', 7318.61, 'USD', 'Credit', 'Security', 'YCZEBE8J', 'Premier Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000287', 'CL000002', '2024-10-11', 1663.07, 'EUR', 'Credit', 'Wire Transfer', 'ZVZYNL4F', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000288', 'CL000002', '2024-10-22', 5021.05, 'EUR', 'Credit', 'Wire Transfer', 'HMIZSOJ5', 'Global Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000289', 'CL000002', '2024-10-23', 29011.32, 'USD', 'Credit', 'Wire Transfer', 'SHIKSGOK', 'Beta AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000290', 'CL000002', '2024-10-09', 605.82, 'GBP', 'Credit', 'Wire Transfer', 'JKDRIR64', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000291', 'CL000002', '2024-10-07', 1422.93, 'CHF', 'Credit', 'Wire Transfer', 'CAOZYEMX', 'Premier Financial Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000292', 'CL000002', '2024-10-12', 1111.2, 'EUR', 'Debit', 'Wire Transfer', 'PKPMUSJT', 'Omega Financial Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000293', 'CL000002', '2024-11-10', 4022.25, 'CHF', 'Debit', 'Wire Transfer', 'GGOCJP03', 'Prime Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000294', 'CL000002', '2024-11-25', 7668.72, 'USD', 'Debit', 'Security', 'SYNMCUCB', 'Elite Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000295', 'CL000002', '2024-11-09', 2897.54, 'GBP', 'Debit', 'Wire Transfer', 'SRZCNLOM', 'Premier Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000296', 'CL000002', '2024-11-16', 1535.6, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000297', 'CL000002', '2024-11-17', 5778.03, 'USD', 'Debit', 'Security', 'LJNIAF43', 'United GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000298', 'CL000002', '2024-11-22', 218.8, 'CHF', 'Debit', 'Security', 'HMIZSOJ5', 'Prime Asset Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000299', 'CL000002', '2024-11-07', 889.26, 'EUR', 'Credit', 'Security', 'ZVZYNL4F', 'Alpha Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000300', 'CL000002', '2024-12-04', 2178.8, 'CHF', 'Credit', 'Cash', 'CLLYCA5J', 'First Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000301', 'CL000002', '2024-11-19', 1214.07, 'EUR', 'Debit', 'Wire Transfer', 'YUHSSE02', 'Omega Trade Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000302', 'CL000002', '2024-11-26', 3832.58, 'AUD', 'Credit', 'Cash', 'RYDDDKDT', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000303', 'CL000002', '2024-11-07', 7938.13, 'USD', 'Debit', 'Wire Transfer', 'DKYRSG6W', 'International GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000304', 'CL000002', '2024-11-10', 468.18, 'CHF', 'Debit', 'Wire Transfer', 'GYLWNLTB', 'Omega Asset Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000305', 'CL000002', '2024-11-08', 22713.5, 'CHF', 'Debit', 'Wire Transfer', 'OBYCSD1W', 'International Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000306', 'CL000002', '2024-11-30', 5914.85, 'USD', 'Credit', 'Wire Transfer', 'HPSFDKWJ', 'Premier Commerce AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000307', 'CL000002', '2024-11-09', 590.83, 'CHF', 'Debit', 'Wire Transfer', 'VOXTKPRJ', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000308', 'CL000002', '2024-11-07', 15850.12, 'GBP', 'Debit', 'Security', 'IDZEFIPZ', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000309', 'CL000002', '2024-12-01', 1442.83, 'CAD', 'Credit', 'Security', 'CKAFCHSA', 'Elite Commerce Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000310', 'CL000002', '2024-11-26', 722.45, 'CHF', 'Credit', 'Wire Transfer', 'CAOZYEMX', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000311', 'CL000002', '2024-12-01', 2803.27, 'CHF', 'Credit', 'Wire Transfer', 'VOXTKPRJ', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000312', 'CL000002', '2024-12-16', 3383.44, 'USD', 'Credit', 'Wire Transfer', 'UQTYYEHA', 'First Commerce AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000313', 'CL000002', '2024-12-07', 1479.53, 'GBP', 'Credit', 'Security', 'OQXVCUCF', 'International Asset Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000314', 'CL000002', '2024-12-18', 2138.88, 'CHF', 'Credit', 'Wire Transfer', 'NQQXMM1Q', 'International Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000315', 'CL000002', '2024-12-30', 241.37, 'USD', 'Debit', 'Wire Transfer', 'PTLXIRUZ', 'Premier Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000316', 'CL000002', '2024-12-30', 13095.47, 'EUR', 'Debit', 'Security', 'NPZYJP1Y', 'Prime Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000317', 'CL000002', '2025-01-02', 2480.01, 'EUR', 'Debit', 'Security', 'RFDYAUUR', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000318', 'CL000002', '2024-12-12', 2949.01, 'USD', 'Debit', 'Security', 'ZVZYNL4F', 'First Commerce Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000319', 'CL000002', '2024-12-26', 35653.31, 'EUR', 'Debit', 'Security', 'TEKHDEH1', 'United Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000320', 'CL000002', '2024-12-18', 800.5, 'USD', 'Debit', 'Security', 'PATVBYU1', 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000321', 'CL000002', '2024-12-17', 1273.97, 'EUR', 'Credit', 'Wire Transfer', 'QMUCLYHY', 'Premier Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000322', 'CL000002', '2024-12-26', 471.89, 'CHF', 'Debit', 'Wire Transfer', 'MXVCDKPJ', 'Global Asset AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000323', 'CL000002', '2024-12-10', 4621.99, 'CHF', 'Credit', 'Security', 'PIULLU9E', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000324', 'CL000002', '2024-12-21', 262.53, 'EUR', 'Debit', 'Wire Transfer', 'AHFTCHY6', 'Prime Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000325', 'CL000002', '2024-12-14', 10921.17, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000326', 'CL000002', '2024-12-05', 1783.72, 'CHF', 'Credit', 'Wire Transfer', 'DNTELYHR', 'First Financial Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000327', 'CL000002', '2024-12-22', 4913.09, 'CHF', 'Credit', 'Cash', 'WXFGATD2', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000328', 'CL000002', '2025-01-01', 2034.08, 'CHF', 'Debit', 'Wire Transfer', 'JKDRIR64', 'Beta Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000329', 'CL000002', '2025-01-17', 2498.84, 'USD', 'Credit', 'Wire Transfer', 'TEPTYEE3', 'Omega Commerce Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000330', 'CL000002', '2025-01-15', 418.77, 'EUR', 'Debit', 'Security', 'UECLNLPQ', 'United Commerce Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000331', 'CL000002', '2025-01-26', 692.09, 'CHF', 'Debit', 'Security', 'RFDYAUUR', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000332', 'CL000002', '2025-01-09', 2156.46, 'GBP', 'Debit', 'Wire Transfer', 'DNTELYHR', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000333', 'CL000002', '2025-02-02', 2967.74, 'JPY', 'Credit', 'Wire Transfer', 'IDZEFIPZ', 'United Financial Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000334', 'CL000002', '2025-02-02', 3415.18, 'USD', 'Credit', 'Wire Transfer', 'SSKLDEK5', 'First Wealth GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000335', 'CL000002', '2025-01-04', 5980.31, 'JPY', 'Credit', 'Cheque', 'ISHGLYEG', 'Premier Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000336', 'CL000002', '2025-01-18', 1428.05, 'GBP', 'Credit', 'Wire Transfer', 'IDZEFIPZ', 'Alpha Commerce Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000337', 'CL000002', '2025-01-22', 547.69, 'GBP', 'Debit', 'Wire Transfer', 'MKRUSY04', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000338', 'CL000002', '2025-01-07', 902.04, 'CHF', 'Debit', 'Wire Transfer', 'GGOCJP03', 'Prime Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000339', 'CL000002', '2025-01-19', 10831.53, 'CHF', 'Credit', 'Cash', 'WPSBFRIK', 'Global Commerce Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000340', 'CL000002', '2025-01-14', 10110.24, 'EUR', 'Debit', 'Wire Transfer', 'WGELNLPK', 'International AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000341', 'CL000002', '2025-01-07', 5005.35, 'EUR', 'Credit', 'Wire Transfer', 'VKBQZWBF', 'Beta Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000342', 'CL000002', '2025-01-18', 584.56, 'USD', 'Credit', 'Cheque', 'HGSSCUQY', 'Global Wealth AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000343', 'CL000002', '2025-01-12', 2149.07, 'GBP', 'Debit', 'Wire Transfer', 'EKMRBYO1', 'Beta GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000344', 'CL000002', '2025-01-13', 1398.42, 'EUR', 'Credit', 'Cash', 'HPMNLYP0', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000345', 'CL000002', '2025-01-22', 13694.19, 'CHF', 'Credit', 'Wire Transfer', 'RMEFSEC0', 'Elite Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000346', 'CL000002', '2025-01-28', 885.84, 'CHF', 'Credit', 'Wire Transfer', 'RVUFGBBL', 'Global Trade Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000347', 'CL000002', '2025-01-11', 1658.8, 'USD', 'Debit', 'Wire Transfer', 'CAOZYEMX', 'First Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000348', 'CL000002', '2025-01-14', 870.55, 'USD', 'Debit', 'Cheque', 'WXFGATD2', 'International Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000349', 'CL000002', '2025-01-18', 268.06, 'EUR', 'Credit', 'Wire Transfer', 'TPAFBYY4', 'International Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000350', 'CL000002', '2025-01-24', 22915.97, 'USD', 'Debit', 'Security', 'UJXHSDVP', 'Global Financial Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000351', 'CL000002', '2025-01-26', 3541.24, 'USD', 'Credit', 'Security', 'TEKHDEH1', 'Prime AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000352', 'CL000002', '2025-01-23', 2742.38, 'USD', 'Credit', 'Wire Transfer', 'UQTYYEHA', 'Omega Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000353', 'CL000002', '2025-01-16', 12635.59, 'CHF', 'Debit', 'Wire Transfer', 'SKRJJP6Q', 'Alpha Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000354', 'CL000002', '2025-01-06', 1077.81, 'CHF', 'Credit', 'Cheque', 'OHZDZW1V', 'Elite Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000355', 'CL000002', '2025-01-25', 15931.85, 'USD', 'Debit', 'Wire Transfer', 'CLWESYJL', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000356', 'CL000002', '2025-02-17', 5127.69, 'EUR', 'Debit', 'Security', 'PTLXIRUZ', 'Alpha Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000357', 'CL000002', '2025-02-14', 1830.11, 'CHF', 'Credit', 'Cash', 'SSKLDEK5', 'United Wealth Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000358', 'CL000002', '2025-02-28', 4871.88, 'USD', 'Debit', 'Wire Transfer', 'GQTNKPWJ', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000359', 'CL000002', '2025-02-24', 1537.83, 'USD', 'Debit', 'Wire Transfer', 'ZROKRUGN', 'United Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000360', 'CL000002', '2025-02-03', 5855.52, 'EUR', 'Credit', 'Security', 'NEXWCAKX', 'International Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000361', 'CL000002', '2025-03-03', 11762.05, 'CHF', 'Credit', 'Wire Transfer', 'OITLIR36', 'First Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000362', 'CL000002', '2025-02-11', 1462.36, 'EUR', 'Debit', 'Wire Transfer', 'PIULLU9E', 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000363', 'CL000002', '2025-02-16', 2531.56, 'USD', 'Credit', 'Wire Transfer', 'UJXHSDVP', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000364', 'CL000002', '2025-02-14', 6531.29, 'CHF', 'Credit', 'Wire Transfer', 'CHHIKPTE', 'Beta Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000365', 'CL000002', '2025-02-14', 2722.35, 'USD', 'Credit', 'Wire Transfer', 'SBRQAFD1', 'Global Trade Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000366', 'CL000002', '2025-02-25', 11706.5, 'CHF', 'Debit', 'Wire Transfer', 'KXLGGBIU', 'Global GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000367', 'CL000002', '2025-02-26', 1656.52, 'USD', 'Debit', 'Wire Transfer', 'EKMRBYO1', 'Prime Trade Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000368', 'CL000002', '2025-03-04', 586.16, 'CHF', 'Debit', 'Wire Transfer', 'TLPJUS9E', 'Premier Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000369', 'CL000002', '2025-02-03', 1917.47, 'EUR', 'Credit', 'Wire Transfer', 'PZRADK3K', 'Global Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000370', 'CL000002', '2025-02-26', 5139.31, 'CHF', 'Credit', 'Security', 'PIULLU9E', 'United Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000371', 'CL000002', '2025-02-23', 53.42, 'USD', 'Credit', 'Security', 'PNYFNOZI', 'United Financial GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000372', 'CL000002', '2025-02-23', 20960.17, 'CHF', 'Debit', 'Wire Transfer', 'PKPMUSJT', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000373', 'CL000002', '2025-02-09', 811.82, 'CHF', 'Credit', 'Wire Transfer', 'PIULLU9E', 'Prime Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000374', 'CL000002', '2025-02-03', 2843.37, 'CNY', 'Debit', 'Wire Transfer', 'CJJIDEJB', 'First Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000375', 'CL000002', '2025-02-15', 58883.49, 'CHF', 'Credit', 'Wire Transfer', 'OITLIR36', 'Premier Trade Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000376', 'CL000002', '2025-02-04', 2289.19, 'CHF', 'Credit', 'Wire Transfer', 'VZMKBYLD', 'Elite Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000377', 'CL000002', '2025-03-17', 745.2, 'EUR', 'Credit', 'Wire Transfer', 'HMIZSOJ5', 'Omega Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000378', 'CL000002', '2025-03-09', 109.39, 'EUR', 'Credit', 'Wire Transfer', 'ISHGLYEG', 'Premier Financial Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000379', 'CL000002', '2025-03-13', 2645.8, 'CAD', 'Debit', 'Cheque', 'NEXWCAKX', 'International Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000380', 'CL000002', '2025-03-15', 3147.37, 'EUR', 'Credit', 'Cash', 'UFAFBEL5', 'First Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000381', 'CL000002', '2025-03-18', 11646.2, 'USD', 'Credit', 'Wire Transfer', 'IDZEFIPZ', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000382', 'CL000002', '2025-03-18', 28945.52, 'USD', 'Debit', 'Wire Transfer', 'JFGYFRXV', 'Global Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000383', 'CL000002', '2025-03-20', 13311.12, 'CHF', 'Credit', 'Wire Transfer', 'DDROYEHZ', 'Prime Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000384', 'CL000002', '2025-03-24', 3407.68, 'USD', 'Credit', 'Cheque', 'ILRNHK28', 'Global Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000385', 'CL000002', '2025-03-31', 10947.73, 'JPY', 'Credit', 'Wire Transfer', 'NPZYJP1Y', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000386', 'CL000002', '2025-03-12', 34471.8, 'USD', 'Credit', 'Cash', 'IGYHVEQ1', 'Elite Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000387', 'CL000002', '2025-03-27', 6532.94, 'CAD', 'Credit', 'Security', 'ZVWAAT0L', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000388', 'CL000002', '2025-03-26', 4468.48, 'USD', 'Debit', 'Wire Transfer', 'KFKXKPVZ', 'Alpha Financial Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000389', 'CL000002', '2025-03-12', 2409.49, 'CHF', 'Credit', 'Wire Transfer', 'WWFVBEQK', 'Omega Asset Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000390', 'CL000002', '2025-03-19', 849.22, 'USD', 'Credit', 'Wire Transfer', 'UQTYYEHA', 'Alpha Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000391', 'CL000002', '2025-03-13', 3113.32, 'CHF', 'Credit', 'Wire Transfer', 'OITLIR36', 'Elite Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000392', 'CL000002', '2025-04-01', 1034.16, 'GBP', 'Debit', 'Cheque', 'UWVGBE2D', 'International Commerce Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000393', 'CL000002', '2025-03-30', 299.33, 'AUD', 'Credit', 'Wire Transfer', 'SHIKSGOK', 'Omega Wealth Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000394', 'CL000002', '2025-03-06', 1830.25, 'GBP', 'Credit', 'Security', 'GSSBKPOT', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000395', 'CL000002', '2025-03-14', 1195.19, 'JPY', 'Debit', 'Wire Transfer', 'IGYHVEQ1', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000396', 'CL000002', '2025-03-24', 2879.11, 'USD', 'Debit', 'Security', 'TEKHDEH1', 'Alpha Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000397', 'CL000002', '2025-03-22', 8268.22, 'CNY', 'Credit', 'Cash', 'KXLGGBIU', 'Elite Trade Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000398', 'CL000002', '2025-03-11', 2282.73, 'EUR', 'Debit', 'Wire Transfer', 'RFDYAUUR', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000399', 'CL000002', '2025-03-27', 722.1, 'EUR', 'Debit', 'Wire Transfer', 'MYHKSY64', 'First Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000400', 'CL000002', '2025-03-14', 7070.57, 'EUR', 'Debit', 'Security', 'HPMNLYP0', 'Omega Wealth Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000401', 'CL000002', '2025-04-01', 4437.63, 'CHF', 'Debit', 'Security', 'YRCXUS11', 'Beta Commerce Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000402', 'CL000002', '2025-03-20', 4790.64, 'CHF', 'Credit', 'Cheque', 'UWVGBE2D', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000403', 'CL000002', '2025-03-20', 563.77, 'USD', 'Credit', 'Cheque', 'OCYRFIFB', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000404', 'CL000002', '2025-04-14', 5460.12, 'EUR', 'Credit', 'Wire Transfer', 'VZMKBYLD', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000405', 'CL000002', '2025-04-09', 3958.26, 'CHF', 'Debit', 'Wire Transfer', 'ESEJFR9X', 'Elite Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000406', 'CL000002', '2025-04-10', 3588.82, 'CHF', 'Credit', 'Wire Transfer', 'PATVBYU1', 'Alpha Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000407', 'CL000002', '2025-04-08', 1572.0, 'CHF', 'Debit', 'Security', 'ENLHBY9P', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000408', 'CL000002', '2025-04-19', 2323.65, 'EUR', 'Credit', 'Wire Transfer', 'ORIMVELR', 'Alpha Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000409', 'CL000002', '2025-04-07', 242.26, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000410', 'CL000002', '2025-05-01', 1805.38, 'CHF', 'Credit', 'Wire Transfer', 'WPSBFRIK', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000411', 'CL000002', '2025-04-26', 3897.77, 'CHF', 'Debit', 'Wire Transfer', 'PATVBYU1', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000412', 'CL000002', '2025-04-07', 890.28, 'GBP', 'Credit', 'Wire Transfer', 'UQTYYEHA', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000413', 'CL000002', '2025-04-05', 9001.3, 'EUR', 'Credit', 'Cheque', 'QMUCLYHY', 'Premier Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000414', 'CL000002', '2025-04-22', 7269.28, 'CHF', 'Credit', 'Cheque', 'UWVGBE2D', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000415', 'CL000002', '2025-04-05', 3217.41, 'CHF', 'Credit', 'Wire Transfer', 'GYLWNLTB', 'Alpha AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000416', 'CL000002', '2025-04-21', 4432.45, 'EUR', 'Credit', 'Security', 'HMIZSOJ5', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000417', 'CL000002', '2025-04-08', 4135.34, 'EUR', 'Credit', 'Wire Transfer', 'NEGKVETI', 'United Wealth Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000418', 'CL000002', '2025-04-14', 3045.65, 'USD', 'Credit', 'Cash', 'CJJIDEJB', 'Premier Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000419', 'CL000002', '2025-04-04', 5420.09, 'CHF', 'Credit', 'Wire Transfer', 'VZMKBYLD', 'United Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000420', 'CL000002', '2025-04-21', 1916.58, 'EUR', 'Debit', 'Wire Transfer', 'HTOHCUEY', 'Omega Commerce Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000421', 'CL000002', '2025-04-06', 2010.62, 'CHF', 'Debit', 'Wire Transfer', 'ISHGLYEG', 'First Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000422', 'CL000002', '2025-04-06', 919.07, 'CHF', 'Credit', 'Wire Transfer', 'TEKHDEH1', 'Omega Asset Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000423', 'CL000002', '2025-04-27', 7921.98, 'EUR', 'Debit', 'Wire Transfer', 'WGELNLPK', 'Alpha Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000424', 'CL000002', '2025-05-06', 5241.39, 'CHF', 'Credit', 'Wire Transfer', 'KFKXKPVZ', 'Global GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000425', 'CL000002', '2025-05-14', 418.63, 'EUR', 'Debit', 'Wire Transfer', 'QMUCLYHY', 'First Wealth Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000426', 'CL000002', '2025-05-19', 745.46, 'CHF', 'Debit', 'Wire Transfer', 'SZNHLYDG', 'Alpha Commerce Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000427', 'CL000002', '2025-05-13', 4716.59, 'USD', 'Credit', 'Security', 'SZNHLYDG', 'Omega Wealth Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000428', 'CL000002', '2025-05-18', 3081.16, 'GBP', 'Credit', 'Security', 'MYHKSY64', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000429', 'CL000002', '2025-05-08', 138.21, 'CHF', 'Credit', 'Wire Transfer', 'ORIMVELR', 'Elite AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000430', 'CL000002', '2025-05-25', 4730.67, 'USD', 'Debit', 'Wire Transfer', 'ORIMVELR', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000431', 'CL000002', '2025-05-09', 8707.13, 'EUR', 'Credit', 'Wire Transfer', 'YRCXUS11', 'Alpha Wealth Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000432', 'CL000002', '2025-05-13', 22485.87, 'EUR', 'Debit', 'Wire Transfer', 'PZRADK3K', 'United Asset Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000433', 'CL000002', '2025-06-01', 9801.32, 'USD', 'Credit', 'Wire Transfer', 'TPAFBYY4', 'Global Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000434', 'CL000002', '2025-05-16', 3229.38, 'USD', 'Debit', 'Security', 'OBYCSD1W', 'Alpha Asset Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000435', 'CL000002', '2025-05-31', 1271.73, 'CHF', 'Debit', 'Wire Transfer', 'CLLYCA5J', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000436', 'CL000002', '2025-05-22', 1477.26, 'CHF', 'Credit', 'Wire Transfer', 'JKDRIR64', 'United GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000437', 'CL000002', '2025-05-09', 2025.2, 'USD', 'Credit', 'Wire Transfer', 'EKMRBYO1', 'Elite Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000438', 'CL000002', '2025-05-09', 1305.86, 'GBP', 'Debit', 'Security', 'UJXHSDVP', 'First Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000439', 'CL000002', '2025-05-19', 5173.66, 'USD', 'Debit', 'Security', 'ZVWAAT0L', 'Alpha Commerce Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000440', 'CL000002', '2025-05-15', 1296.57, 'JPY', 'Debit', 'Wire Transfer', 'RMEFSEC0', 'Elite Financial Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000441', 'CL000002', '2025-05-19', 2544.38, 'EUR', 'Credit', 'Wire Transfer', 'SHIKSGOK', 'Prime Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000442', 'CL000002', '2025-05-29', 1127.47, 'CAD', 'Credit', 'Wire Transfer', 'GGOCJP03', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000443', 'CL000002', '2025-05-15', 3611.95, 'GBP', 'Debit', 'Wire Transfer', 'SZNHLYDG', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000444', 'CL000002', '2025-05-17', 2496.05, 'CNY', 'Credit', 'Wire Transfer', 'PZRADK3K', 'Premier Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000445', 'CL000002', '2025-05-23', 2760.0, 'USD', 'Debit', 'Wire Transfer', 'YCZEBE8J', 'Premier Financial Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000446', 'CL000002', '2025-05-11', 1901.39, 'GBP', 'Debit', 'Wire Transfer', 'CLWESYJL', 'Alpha Trade Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000447', 'CL000002', '2025-05-15', 3391.45, 'USD', 'Credit', 'Security', 'PDTOCA2T', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000448', 'CL000002', '2025-05-12', 4702.35, 'CHF', 'Credit', 'Wire Transfer', 'IDZEFIPZ', 'Prime Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000449', 'CL000002', '2025-06-04', 1440.44, 'EUR', 'Credit', 'Wire Transfer', 'DXGPNOWP', 'International GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000450', 'CL000002', '2025-06-25', 4374.25, 'CHF', 'Debit', 'Security', 'XUFUIRZQ', 'Alpha Commerce Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000451', 'CL000002', '2025-06-08', 9268.33, 'CNY', 'Debit', 'Wire Transfer', 'SHIKSGOK', 'Beta Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000452', 'CL000002', '2025-07-02', 1356.01, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000453', 'CL000002', '2025-06-11', 9082.33, 'JPY', 'Credit', 'Security', 'SHIKSGOK', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000454', 'CL000002', '2025-06-12', 2417.63, 'JPY', 'Debit', 'Security', 'MTWDUSFY', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000455', 'CL000002', '2025-06-18', 18310.04, 'USD', 'Credit', 'Wire Transfer', 'TPAFBYY4', 'Elite Financial Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000456', 'CL000002', '2025-06-14', 3808.67, 'USD', 'Credit', 'Wire Transfer', 'HPMNLYP0', 'Omega Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000457', 'CL000002', '2025-06-03', 5975.47, 'EUR', 'Debit', 'Wire Transfer', 'NQQXMM1Q', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000458', 'CL000002', '2025-06-27', 474.77, 'EUR', 'Credit', 'Wire Transfer', 'OBYCSD1W', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000459', 'CL000002', '2025-06-24', 4559.66, 'USD', 'Credit', 'Security', 'SZNHLYDG', 'First Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000460', 'CL000002', '2025-06-28', 2011.82, 'CHF', 'Credit', 'Wire Transfer', 'IGYHVEQ1', 'Premier Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000461', 'CL000002', '2025-06-25', 1109.94, 'AUD', 'Debit', 'Wire Transfer', 'MKRUSY04', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000462', 'CL000002', '2025-06-08', 822.56, 'EUR', 'Credit', 'Cheque', 'MYHKSY64', 'Prime AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000463', 'CL000002', '2025-06-03', 4508.02, 'CHF', 'Debit', 'Wire Transfer', 'ILRNHK28', 'Elite Asset AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000464', 'CL000002', '2025-06-09', 2178.41, 'CHF', 'Debit', 'Cheque', 'TEKHDEH1', 'Global Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000465', 'CL000002', '2025-06-28', 4395.25, 'CHF', 'Debit', 'Wire Transfer', 'PDTOCA2T', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000466', 'CL000002', '2025-06-24', 2585.57, 'CHF', 'Debit', 'Wire Transfer', 'NTUXSYRJ', 'Beta Commerce Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000467', 'CL000002', '2025-07-22', 572.7, 'EUR', 'Debit', 'Security', 'ZNDRJP8F', 'Elite Commerce Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000468', 'CL000002', '2025-07-18', 1865.42, 'EUR', 'Debit', 'Security', 'JHSDSOBB', 'Global Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000469', 'CL000002', '2025-07-28', 65311.96, 'JPY', 'Debit', 'Wire Transfer', 'CAOZYEMX', 'Global Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000470', 'CL000002', '2025-07-03', 842.17, 'EUR', 'Credit', 'Security', 'YUHSSE02', 'Alpha Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000471', 'CL000002', '2025-07-09', 5732.77, 'CHF', 'Debit', 'Security', 'DDROYEHZ', 'Prime Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000472', 'CL000002', '2025-07-03', 5271.28, 'GBP', 'Debit', 'Wire Transfer', 'DKYRSG6W', 'International Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000473', 'CL000002', '2025-07-13', 1841.47, 'USD', 'Credit', 'Wire Transfer', 'MTWDUSFY', 'Premier Asset Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000474', 'CL000002', '2025-08-01', 2372.46, 'EUR', 'Credit', 'Wire Transfer', 'KXLGGBIU', 'Omega Trade Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000475', 'CL000002', '2025-07-23', 10000.77, 'USD', 'Credit', 'Security', 'DXGPNOWP', 'Prime Commerce Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000476', 'CL000002', '2025-07-18', 2404.03, 'EUR', 'Credit', 'Wire Transfer', 'CLWESYJL', 'United Asset Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000477', 'CL000002', '2025-07-29', 189.94, 'CHF', 'Credit', 'Wire Transfer', 'QFXWAUCI', 'Prime Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000478', 'CL000002', '2025-07-30', 2656.46, 'CHF', 'Debit', 'Wire Transfer', 'YCZEBE8J', 'First AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000479', 'CL000002', '2025-07-11', 2482.33, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000480', 'CL000002', '2025-07-13', 4079.37, 'USD', 'Credit', 'Wire Transfer', 'NEGKVETI', 'International Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000481', 'CL000002', '2025-07-26', 30164.31, 'CHF', 'Debit', 'Wire Transfer', 'SBRQAFD1', 'Elite GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000482', 'CL000002', '2025-07-19', 8158.43, 'EUR', 'Debit', 'Security', 'WGELNLPK', 'Global Asset Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000483', 'CL000002', '2025-07-31', 9411.29, 'USD', 'Credit', 'Security', 'MWXESEAO', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000484', 'CL000002', '2025-07-16', 3418.59, 'USD', 'Credit', 'Wire Transfer', 'JFGYFRXV', 'First Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000485', 'CL000002', '2025-07-30', 747.38, 'CHF', 'Credit', 'Security', 'UJXHSDVP', 'Omega Trade Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000486', 'CL000002', '2025-07-09', 5495.14, 'CHF', 'Debit', 'Security', 'GQTNKPWJ', 'Global Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000487', 'CL000002', '2025-07-04', 17434.77, 'CHF', 'Debit', 'Wire Transfer', 'AIAYCA53', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000488', 'CL000002', '2025-08-18', 391.13, 'CHF', 'Debit', 'Security', 'TLPJUS9E', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000489', 'CL000002', '2025-08-21', 1320.2, 'GBP', 'Credit', 'Wire Transfer', 'GQTNKPWJ', 'Premier Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000490', 'CL000002', '2025-08-09', 11817.88, 'EUR', 'Credit', 'Wire Transfer', 'DKYRSG6W', 'Premier Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000491', 'CL000002', '2025-08-27', 10123.73, 'USD', 'Credit', 'Wire Transfer', 'GYLWNLTB', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000492', 'CL000002', '2025-08-11', 3840.76, 'EUR', 'Debit', 'Wire Transfer', 'UWVGBE2D', 'First Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000493', 'CL000002', '2025-08-25', 1576.0, 'EUR', 'Debit', 'Wire Transfer', 'OHZDZW1V', 'Omega Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000494', 'CL000002', '2025-08-26', 2386.91, 'USD', 'Debit', 'Wire Transfer', 'JHSDSOBB', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000495', 'CL000002', '2025-08-17', 27802.13, 'USD', 'Debit', 'Wire Transfer', 'TEKHDEH1', 'Alpha Wealth GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000496', 'CL000002', '2025-08-28', 3068.73, 'CHF', 'Debit', 'Wire Transfer', 'JHSDSOBB', 'Omega Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000497', 'CL000002', '2025-08-25', 3530.0, 'EUR', 'Credit', 'Wire Transfer', 'CLLYCA5J', 'First Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000498', 'CL000002', '2025-08-15', 17806.46, 'USD', 'Debit', 'Security', 'HGSSCUQY', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000499', 'CL000002', '2025-08-03', 3269.3, 'CHF', 'Credit', 'Security', 'SZNHLYDG', 'Alpha Financial Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000500', 'CL000002', '2025-09-10', 4495.29, 'USD', 'Debit', 'Wire Transfer', 'YWWJNOF4', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000501', 'CL000002', '2025-09-12', 3746.0, 'CHF', 'Debit', 'Wire Transfer', 'KXLGGBIU', 'Global Commerce Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000502', 'CL000002', '2025-09-25', 145.26, 'CHF', 'Credit', 'Security', 'GSSBKPOT', 'Omega Financial Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000503', 'CL000002', '2025-09-21', 2369.22, 'CHF', 'Credit', 'Security', 'ZVWAAT0L', 'United Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000504', 'CL000002', '2025-09-18', 1592.18, 'CHF', 'Credit', 'Security', 'CAOZYEMX', 'Global Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000505', 'CL000002', '2025-09-22', 987.89, 'USD', 'Debit', 'Security', 'RFDYAUUR', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000506', 'CL000002', '2025-09-06', 5590.61, 'EUR', 'Debit', 'Wire Transfer', 'SSKLDEK5', 'Alpha Financial GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000507', 'CL000002', '2025-09-04', 2142.39, 'EUR', 'Debit', 'Wire Transfer', 'LJXLMMFG', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000508', 'CL000002', '2025-09-22', 2175.92, 'USD', 'Debit', 'Wire Transfer', 'PIULLU9E', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000509', 'CL000002', '2025-09-14', 439.11, 'CHF', 'Credit', 'Wire Transfer', 'HTOHCUEY', 'Global Financial Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000510', 'CL000002', '2025-09-11', 638.63, 'CHF', 'Debit', 'Security', 'CAOZYEMX', 'United Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000511', 'CL000002', '2025-09-20', 1809.76, 'USD', 'Credit', 'Security', 'AHFTCHY6', 'Beta Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000512', 'CL000002', '2025-09-11', 2068.68, 'EUR', 'Credit', 'Security', 'KXLGGBIU', 'Omega Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000513', 'CL000002', '2025-09-14', 2797.52, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000514', 'CL000002', '2025-09-17', 1878.81, 'CHF', 'Debit', 'Wire Transfer', 'RMEFSEC0', 'Beta Financial GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000515', 'CL000002', '2025-09-04', 10864.5, 'EUR', 'Credit', 'Wire Transfer', 'YRCXUS11', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000516', 'CL000002', '2025-09-18', 56151.03, 'USD', 'Debit', 'Wire Transfer', 'IDZEFIPZ', 'First Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000517', 'CL000002', '2025-09-28', 2127.61, 'USD', 'Credit', 'Wire Transfer', 'TEKHDEH1', 'First Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000518', 'CL000002', '2025-09-02', 1252.69, 'CHF', 'Debit', 'Wire Transfer', 'KXLGGBIU', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000519', 'CL000002', '2025-09-01', 27274.6, 'AUD', 'Debit', 'Wire Transfer', 'WPSBFRIK', 'Omega Asset Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000520', 'CL000002', '2025-09-01', 385.78, 'CHF', 'Credit', 'Security', 'SZNHLYDG', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000521', 'CL000002', '2025-09-04', 32179.49, 'GBP', 'Credit', 'Security', 'JBRISGL4', 'Elite Asset Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000522', 'CL000002', '2025-09-20', 1346.99, 'EUR', 'Debit', 'Cheque', 'OQXVCUCF', 'Prime AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000523', 'CL000002', '2025-09-30', 1345.48, 'CHF', 'Credit', 'Wire Transfer', 'CLWESYJL', 'Omega AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000524', 'CL000002', '2025-09-01', 352.87, 'GBP', 'Credit', 'Wire Transfer', 'QMUCLYHY', 'Elite Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000525', 'CL000002', '2025-09-15', 15503.69, 'EUR', 'Credit', 'Wire Transfer', 'ITJTYE3J', 'Global Holdings');

-- CRM Notes from Batch 2
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0083', 'CL000002', '2025-01-05', 'Client requested overview of recent account activity ahead of January travel. No immediate concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0084', 'CL000002', '2025-01-09', 'Discussed large incoming transfer of approximately CHF 45.4k from Elite Limited in CNY. Client confirmed source of funds and commercial background.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0085', 'CL000002', '2025-01-10', 'Reviewed incoming EUR payments from European counterparties totalling approximately CHF 65.5k expected mid-January. Client comfortable with timing.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0086', 'CL000002', '2025-01-09', 'Confirmed receipt of CHF 8.9k credit from Global AG. Routine operational confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0087', 'CL000002', '2025-01-08', 'Estate planning consultation. Client working with external advisors on succession structure. May impact holdings in Q2.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0088', 'CL000002', '2025-01-11', 'Telephone instruction received for approximately CHF 24.7k incoming GBP transfer. Beneficiary: Alpha Capital. Client authenticated via dual control.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0089', 'CL000002', '2025-01-14', 'Client submitted transfer request: Beta Trade GmbH, approximately CHF 19.3k outgoing in CNY. Compliance approved, executing 14 Jan.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0090', 'CL000002', '2025-01-13', 'Batch payment instruction received: two CHF debits to Elite GmbH (CHF 26.0k) and Beta GmbH (CHF 18.9k). Client authorized same-day settlement.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0091', 'CL000002', '2025-01-13', 'Follow-up on outgoing payment to Alpha Group. Client verified the approximately CHF 9.9k USD transfer and provided final authorization.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0092', 'CL000002', '2025-01-14', 'Client traveling to Middle East for 3 weeks. Updated contact preferences and emergency contacts. All communication via secure email only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0093', 'CL000002', '2025-01-15', 'Detailed review of outgoing payment arrangement with United Trading and Omega Group. Combined amounts approximately CHF 58.5k scheduled 15 Jan. Client requested email confirmation post-execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0094', 'CL000002', '2025-01-15', 'Client inquiry regarding outgoing EUR transfer of approximately CHF 8.2k to Beta Trade Corp. Status confirmed as completed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0095', 'CL000002', '2024-10-25', 'Follow-up call regarding an older incoming payment of CHF 9.6k from International Partners. Client satisfied with booking.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0096', 'CL000002', '2024-10-06', 'Quarterly portfolio review completed. Client overall satisfied with performance. Discussed potential rebalancing in Q1. No immediate actions required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0097', 'CL000002', '2024-10-29', 'Received standing instruction for approximately CHF 1.8k USD security credit from Global Limited. Scheduled for 29 Oct. Client confirmed via secure message.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0098', 'CL000002', '2024-11-02', 'Annual KYC refresh completed. Updated employment details and income sources. No material changes to risk assessment.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0099', 'CL000002', '2024-11-03', 'Client called regarding general account access issues. Resolved secure token problem. No transactions discussed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0100', 'CL000002', '2024-10-29', 'Confirmed details for incoming wire: CHF 3.3k from Global Commerce Limited. Client satisfied with execution timeline.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0101', 'CL000002', '2024-10-12', 'Processing incoming payment per client instruction. Counterparty: International GmbH. Amount: approximately CHF 2.8k GBP. Settlement 12 Oct.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0102', 'CL000002', '2024-10-25', 'Client discussed two incoming EUR payments from Premier AG totalling approximately CHF 6.9k. Both transactions processed successfully.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0103', 'CL000002', '2024-10-08', 'Discussed upcoming outgoing payment to Omega AG for approximately CHF 4.9k in JPY. Client confirmed details and FX impact reviewed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0104', 'CL000002', '2024-10-21', 'Client requested access to enhanced online reporting platform. Arranged demo with digital banking team for next week.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0105', 'CL000002', '2024-10-17', 'Long-term asset allocation review. Client interested in increasing alternatives exposure. Exploring private equity opportunities.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0106', 'CL000002', '2024-10-31', 'Client requested confirmation on a security credit of approximately CHF 5.9k EUR from Omega Wealth Group. Everything processed correctly.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0107', 'CL000002', '2024-10-09', 'Succession planning discussion. Client considering gradual wealth transfer to next generation. Referred to trust and estate specialists.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0108', 'CL000002', '2024-10-31', 'Discussed upcoming regulatory changes to cross-border reporting. Client acknowledged requirements. No concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0109', 'CL000002', '2024-10-07', 'Follow-up call regarding the incoming wire of approximately CHF 1.4k from Premier Financial Investments. Client confirmed all details.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0110', 'CL000002', '2024-10-12', 'Client meeting notes: Discussed outgoing payment for approximately CHF 1.1k EUR. Counterparty Omega Financial Group approved by compliance. Processing timeline confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0111', 'CL000002', '2024-11-10', 'Confirmed details for outgoing payment: CHF 4.0k to Prime Investments. Client satisfied with execution timeline.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0112', 'CL000002', '2024-11-15', 'Annual relationship review scheduled for next month. Client requested detailed fee breakdown and performance attribution. Preparing materials.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0113', 'CL000002', '2024-12-01', 'Client submitted transfer request: United Corp, approximately CHF 35.7k outgoing in EUR. Compliance approved after enhanced due diligence.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0114', 'CL000002', '2024-11-08', 'Detailed review of outgoing payment arrangement with International Corp. Amount: CHF 22.7k scheduled 8 Nov. Client requested same-day confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0115', 'CL000002', '2024-11-30', 'Telephone instruction received for approximately CHF 5.9k USD incoming wire. Beneficiary: Premier Commerce AG. Client authenticated via dual control. Executing 30 Nov.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0116', 'CL000002', '2024-12-01', 'Follow-up on two small debits to Omega Limited and Prime GmbH (approximately CHF 1.3k combined). Part of portfolio adjustment.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0117', 'CL000002', '2024-12-15', 'Tax optimization discussion ahead of year-end. Client working with tax advisor. May see portfolio restructuring in December.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0118', 'CL000002', '2025-03-03', 'Client requested status update on the incoming wire from First Corp. Amount CHF 3.4k processed successfully.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0119', 'CL000002', '2025-02-15', 'Received standing instruction for approximately CHF 26.7k incoming CHF payment from Premier Trade Group. Scheduled for 15 Feb. Client confirmed via secure message.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0120', 'CL000002', '2025-07-04', 'Confirmed details for outgoing payment: approximately CHF 27.0k USD to United Investments. Client satisfied with execution timeline and risk review completed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0121', 'CL000002', '2025-01-24', 'Batch payment instruction reviewed: high-value security debit to Global Financial Group for approximately CHF 22.9k USD. Strategic reallocation confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0122', 'CL000002', '2025-01-22', 'Processing incoming payment per client instruction. Counterparty: Elite Asset Limited. Amount: CHF 13.7k. Settlement 22 Jan.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0123', 'CL000002', '2025-04-22', 'Client discussed two outgoing EUR payments in April totalling approximately CHF 9.8k. Confirmed execution dates and beneficiaries.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0124', 'CL000002', '2025-05-13', 'Follow-up on outgoing payment to United Asset Capital. Client verified the approximately CHF 21.0k EUR transfer and provided final authorization.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0125', 'CL000002', '2025-06-01', 'Client inquiry regarding an incoming USD transfer of approximately CHF 8.8k from Global Trade GmbH. Status confirmed as completed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0126', 'CL000002', '2025-07-26', 'Client submitted transfer request: Elite GmbH, CHF 24.9k outgoing. Compliance approved, executing 26 Jul.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0127', 'CL000002', '2025-07-28', 'Detailed review of outgoing payment arrangement with Global Capital. Amount: approximately CHF 30.3k in JPY scheduled 28 Jul. Client requested email confirmation post-execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0128', 'CL000002', '2025-08-09', 'Telephone instruction received for CHF 13.3k USD incoming payment. Beneficiary: Premier Asset Trading. Client authenticated via dual control. Executing 9 Aug.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0129', 'CL000002', '2025-09-18', 'Follow-up call regarding an outgoing payment of approximately CHF 30.1k USD to First Limited. Client satisfied with execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0130', 'CL000002', '2025-09-30', 'Client signature verification for new mandate. Documents returned, currently in processing. Expected completion within 5 business days.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0131', 'CL000002', '2025-09-30', 'Annual regulatory reporting completed. Client copy sent via secure delivery. No questions or concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0132', 'CL000002', '2025-03-01', 'Client raised concerns about geopolitical risks. Reviewed portfolio stress tests. Comfortable with current diversification.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0133', 'CL000002', '2025-04-10', 'Discussed potential currency hedging strategy given CHF strength. Client wants to wait and monitor. Scheduled review for next quarter.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0134', 'CL000002', '2025-05-01', 'Client traveling to South America for 2 weeks. Updated contact preferences and emergency contacts. All communication via secure email only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0135', 'CL000002', '2025-06-15', 'Updated beneficial owner information per client notification. Compliance review in progress. Account fully operational.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0136', 'CL000002', '2025-07-15', 'Quarterly portfolio review completed. Client overall satisfied with performance. Discussed potential rebalancing in Q3. No immediate actions required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0137', 'CL000002', '2025-08-10', 'Client inquiry about sustainable investment options. Sent ESG portfolio framework document. Follow-up call scheduled.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0138', 'CL000002', '2025-08-20', 'Annual relationship review scheduled for next month. Client requested detailed fee breakdown and performance attribution. Preparing materials.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0139', 'CL000002', '2025-09-30', 'Discussed upcoming changes to fee structure. Client acknowledged and had no concerns. Sent follow-up email with detailed breakdown.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0140', 'CL000002', '2025-02-20', 'Long-term asset allocation review. Client interested in increasing alternatives exposure. Exploring private equity opportunities.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0141', 'CL000002', '2025-03-18', 'Client requested clarification on custody reporting timelines. Explained standard procedures and client acknowledged.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0142', 'CL000002', '2025-04-28', 'Quarterly portfolio review completed. Client overall satisfied with performance. Discussed potential rebalancing in Q2. No immediate actions required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0143', 'CL000002', '2025-05-18', 'Client requested access to new mobile banking features. Arranged setup session with digital team.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0144', 'CL000002', '2025-06-05', 'Discussed upcoming regulatory changes to reporting standards. Client acknowledged requirements. No concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0145', 'CL000002', '2025-07-05', 'Annual relationship review completed. Client satisfied with service quality and relationship management.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0146', 'CL000002', '2025-08-01', 'Tax optimization discussion ahead of mid-year. Client working with tax advisor. Reviewing currency exposure.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0147', 'CL000002', '2025-09-10', 'Client preparing for year-end planning meeting. Requested historical performance data for review.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0148', 'CL000002', '2025-01-20', 'Follow-up call on administrative matters. Client satisfied with account operations. No immediate needs.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0149', 'CL000002', '2025-02-05', 'Client signature verification for updated mandate documentation. Processing in compliance department.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0150', 'CL000002', '2025-03-25', 'Discussed upcoming liquidity needs for Q2. Client comfortable with current cash position. Planning only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0151', 'CL000002', '2025-04-15', 'Long-term asset allocation review. Client interested in diversifying emerging market exposure. Reviewing options.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0152', 'CL000002', '2025-05-05', 'Client called regarding secure messaging system. Resolved access issue. Account fully operational.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0153', 'CL000002', '2025-06-30', 'Quarterly performance report delivered. Client acknowledged receipt and scheduled review call.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0154', 'CL000002', '2025-07-20', 'General inquiry regarding portfolio valuation methods. Explained and client acknowledged understanding.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0155', 'CL000002', '2025-08-31', 'Client satisfied with August performance summary. No concerns or questions raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0156', 'CL000002', '2025-09-15', 'Preparations for annual review underway. Gathering documentation and performance attribution materials.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0157', 'CL000002', '2025-09-30', 'End-of-period relationship review completed. Client comfortable with service level and overall relationship.');

-- Matches from Batch 2
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200000', 'TR00000260', 'N0084', 0.98454576253891);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200001', 'TR00000260', 'N0085', 0.6257711955479213);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200002', 'TR00000260', 'N0088', 0.6225976126534598);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200003', 'TR00000261', 'N0088', 0.6911059379577636);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200004', 'TR00000261', 'N0084', 0.6268931525094168);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200005', 'TR00000261', 'N0090', 0.6060577171189444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200006', 'TR00000262', 'N0088', 0.800314712524414);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200007', 'TR00000262', 'N0090', 0.7140170114380973);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200008', 'TR00000262', 'N0089', 0.6078250850949969);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200009', 'TR00000263', 'N0086', 0.9835223388671874);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200010', 'TR00000263', 'N0125', 0.5932574701309205);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200011', 'TR00000263', 'N0094', 0.5816019228526524);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200012', 'TR00000264', 'N0088', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200013', 'TR00000264', 'N0090', 0.6941534655434745);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200014', 'TR00000264', 'N0089', 0.601031586102077);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200015', 'TR00000265', 'N0089', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200016', 'TR00000265', 'N0090', 0.6704161545208522);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200017', 'TR00000265', 'N0091', 0.6457907387188503);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200018', 'TR00000266', 'N0090', 0.9710656595230104);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200019', 'TR00000266', 'N0126', 0.7436997842788696);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200020', 'TR00000266', 'N0088', 0.7299043791634695);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200021', 'TR00000267', 'N0090', 0.863095064163208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200022', 'TR00000267', 'N0089', 0.8162705918720791);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200023', 'TR00000267', 'N0091', 0.6966314315795898);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200024', 'TR00000268', 'N0091', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200025', 'TR00000268', 'N0094', 0.6154475944382803);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200026', 'TR00000268', 'N0095', 0.5437775611877441);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200027', 'TR00000269', 'N0089', 0.7721797772816249);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200028', 'TR00000269', 'N0091', 0.6113109128815787);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200029', 'TR00000269', 'N0090', 0.5949505822999137);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200030', 'TR00000270', 'N0093', 0.902866644859314);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200031', 'TR00000270', 'N0090', 0.6133266108376639);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200032', 'TR00000270', 'N0088', 0.5665878806795392);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200033', 'TR00000271', 'N0094', 0.993376417160034);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200034', 'TR00000271', 'N0091', 0.6251520769936698);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200035', 'TR00000271', 'N0125', 0.5734812299410502);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200036', 'TR00000272', 'N0095', 0.9474517842701504);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200037', 'TR00000272', 'N0102', 0.649872488634927);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200038', 'TR00000272', 'N0125', 0.5654268145561218);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200039', 'TR00000273', 'N0107', 0.5342011131559099);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200040', 'TR00000273', 'N0143', 0.4081950902938843);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200041', 'TR00000273', 'N0139', 0.4057896852493286);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200042', 'TR00000274', 'N0097', 0.984901566505432);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200043', 'TR00000274', 'N0108', 0.5402543323380606);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200044', 'TR00000274', 'N0110', 0.4675573468208313);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200045', 'TR00000275', 'N0099', 0.6351526975631714);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200046', 'TR00000275', 'N0098', 0.5713530012539455);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200047', 'TR00000275', 'N0110', 0.5603982090950012);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200048', 'TR00000276', 'N0100', 0.9849860739707949);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200049', 'TR00000276', 'N0097', 0.720690507888794);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200050', 'TR00000276', 'N0118', 0.5357076525688171);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200051', 'TR00000277', 'N0101', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200052', 'TR00000277', 'N0107', 0.4946467365537371);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200053', 'TR00000277', 'N0100', 0.4284388303756714);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200054', 'TR00000278', 'N0102', 0.8982040357589721);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200055', 'TR00000278', 'N0100', 0.545807877608708);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200056', 'TR00000278', 'N0103', 0.5252006888389588);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200057', 'TR00000279', 'N0103', 0.9853912305831908);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200058', 'TR00000279', 'N0101', 0.5791000281061445);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200059', 'TR00000279', 'N0107', 0.5686189361980983);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200060', 'TR00000280', 'N0104', 0.6665857911109925);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200061', 'TR00000280', 'N0110', 0.5802439451217651);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200062', 'TR00000280', 'N0105', 0.4607075367655073);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200063', 'TR00000281', 'N0101', 0.6710167510168893);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200064', 'TR00000281', 'N0105', 0.633422056833903);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200065', 'TR00000281', 'N0104', 0.513513902255467);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200066', 'TR00000282', 'N0106', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200067', 'TR00000282', 'N0108', 0.600083315372467);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200068', 'TR00000282', 'N0100', 0.591468824659075);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200069', 'TR00000283', 'N0103', 0.7444579311779568);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200070', 'TR00000283', 'N0101', 0.6694017296745663);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200071', 'TR00000283', 'N0107', 0.6157240629196167);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200072', 'TR00000284', 'N0110', 0.823177433013916);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200073', 'TR00000284', 'N0116', 0.5114638805389404);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200074', 'TR00000284', 'N0107', 0.4945022191320146);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200075', 'TR00000285', 'N0106', 0.6875483274459839);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200076', 'TR00000285', 'N0108', 0.5992443561553955);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200077', 'TR00000285', 'N0100', 0.5893106835229056);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200078', 'TR00000286', 'N0102', 0.6628631697382246);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200079', 'TR00000286', 'N0104', 0.6573187232017517);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200080', 'TR00000286', 'N0095', 0.5629932199205672);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200081', 'TR00000287', 'N0110', 0.6705974885395595);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200082', 'TR00000287', 'N0109', 0.5576781020845686);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200083', 'TR00000287', 'N0107', 0.53867050579616);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200084', 'TR00000288', 'N0102', 0.5929345335279192);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200085', 'TR00000288', 'N0104', 0.5898019858769008);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200086', 'TR00000288', 'N0103', 0.5200277090072631);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200087', 'TR00000289', 'N0104', 0.5707878129822868);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200088', 'TR00000289', 'N0127', 0.5587085604667663);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200089', 'TR00000289', 'N0120', 0.5562591671943664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200090', 'TR00000290', 'N0107', 0.6069318532943726);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200091', 'TR00000290', 'N0143', 0.4031335115432739);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200092', 'TR00000290', 'N0139', 0.398425805568695);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200093', 'TR00000291', 'N0109', 0.9985277962684632);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200094', 'TR00000291', 'N0110', 0.5605254076776051);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200095', 'TR00000291', 'N0107', 0.5408615844590323);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200096', 'TR00000292', 'N0110', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200097', 'TR00000292', 'N0109', 0.5199866079148793);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200098', 'TR00000292', 'N0107', 0.4990894402776445);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200099', 'TR00000293', 'N0111', 0.9941368770599366);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200100', 'TR00000293', 'N0101', 0.4896356105804443);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200101', 'TR00000293', 'N0115', 0.4525292873382568);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200102', 'TR00000294', 'N0094', 0.5425650429725647);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200103', 'TR00000294', 'N0115', 0.5101313931601388);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200104', 'TR00000294', 'N0125', 0.4713937830924988);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200105', 'TR00000295', 'N0111', 0.687635829108102);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200106', 'TR00000295', 'N0101', 0.5931756973266601);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200107', 'TR00000295', 'N0100', 0.43797447681427);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200108', 'TR00000296', 'N0112', 0.5878119656017848);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200109', 'TR00000296', 'N0109', 0.510834527015686);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200110', 'TR00000296', 'N0110', 0.4793067455291748);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200111', 'TR00000297', 'N0112', 0.5508791702134268);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200112', 'TR00000297', 'N0115', 0.5416133761405945);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200113', 'TR00000297', 'N0106', 0.5373881101608277);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200114', 'TR00000298', 'N0143', 0.4200349688529968);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200115', 'TR00000298', 'N0139', 0.4097617149353027);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200116', 'TR00000298', 'N0133', 0.4016240358352661);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200117', 'TR00000299', 'N0099', 0.4963106427873884);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200118', 'TR00000299', 'N0110', 0.4820806145668029);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200119', 'TR00000299', 'N0098', 0.434131680216108);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200120', 'TR00000300', 'N0116', 0.5630636657987322);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200121', 'TR00000300', 'N0101', 0.5088704824447632);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200122', 'TR00000300', 'N0110', 0.4786003589630127);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200123', 'TR00000301', 'N0110', 0.5940744797388713);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200124', 'TR00000301', 'N0116', 0.5322751593589783);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200125', 'TR00000301', 'N0112', 0.4774856839861188);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200126', 'TR00000302', 'N0111', 0.5425169944763184);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200127', 'TR00000302', 'N0101', 0.5037426710128784);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200128', 'TR00000302', 'N0100', 0.435792715549469);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200129', 'TR00000303', 'N0111', 0.5592964853559221);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200130', 'TR00000303', 'N0094', 0.5240538120269775);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200131', 'TR00000303', 'N0125', 0.4799959850311279);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200132', 'TR00000304', 'N0112', 0.4584832770483834);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200133', 'TR00000304', 'N0111', 0.4279623428980509);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200134', 'TR00000304', 'N0139', 0.4127745866775512);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200135', 'TR00000305', 'N0114', 0.9993845653533936);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200136', 'TR00000305', 'N0124', 0.5668153762817383);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200137', 'TR00000305', 'N0126', 0.5546927213668823);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200138', 'TR00000306', 'N0115', 0.9804103684425354);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200139', 'TR00000306', 'N0106', 0.4963353991508483);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200140', 'TR00000306', 'N0102', 0.4689218950271606);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200141', 'TR00000307', 'N0112', 0.4164205959865025);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200142', 'TR00000307', 'N0139', 0.41176278591156);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200143', 'TR00000307', 'N0099', 0.4049433163234166);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200144', 'TR00000308', 'N0114', 0.6586327620915005);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200145', 'TR00000308', 'N0122', 0.4751719951629638);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200146', 'TR00000308', 'N0099', 0.4741228018488203);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200147', 'TR00000309', 'N0116', 0.7741371750831604);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200148', 'TR00000309', 'N0109', 0.5238733172416687);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200149', 'TR00000309', 'N0110', 0.4954919020334879);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200150', 'TR00000310', 'N0139', 0.3968891859054565);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200151', 'TR00000310', 'N0143', 0.3915033102035522);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200152', 'TR00000310', 'N0153', 0.3851002693176269);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200153', 'TR00000311', 'N0101', 0.5938013315200805);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200154', 'TR00000311', 'N0111', 0.4593820452690124);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200155', 'TR00000311', 'N0100', 0.4395256161689758);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200156', 'TR00000312', 'N0100', 0.5601733875274658);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200157', 'TR00000312', 'N0118', 0.5383007955551148);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200158', 'TR00000312', 'N0117', 0.5319211312702724);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200159', 'TR00000313', 'N0109', 0.5440006057421366);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200160', 'TR00000313', 'N0110', 0.4745954275131225);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200161', 'TR00000313', 'N0116', 0.4687014988490513);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200162', 'TR00000314', 'N0101', 0.5249557447433472);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200163', 'TR00000314', 'N0110', 0.4731350898742675);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200164', 'TR00000314', 'N0109', 0.4596342802047729);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200165', 'TR00000315', 'N0146', 0.4002030730247497);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200166', 'TR00000315', 'N0139', 0.397609806060791);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200167', 'TR00000315', 'N0143', 0.3968705534934997);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200168', 'TR00000316', 'N0122', 0.6087758016586303);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200169', 'TR00000316', 'N0128', 0.5617396354675293);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200170', 'TR00000316', 'N0123', 0.4564614057540893);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200171', 'TR00000317', 'N0083', 0.5136286582265581);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200172', 'TR00000317', 'N0101', 0.493894600868225);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200173', 'TR00000317', 'N0097', 0.4801499795913696);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200174', 'TR00000318', 'N0101', 0.607719349861145);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200175', 'TR00000318', 'N0117', 0.4558622087751116);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200176', 'TR00000318', 'N0111', 0.4471778869628906);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200177', 'TR00000319', 'N0113', 0.7389670085906982);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200178', 'TR00000319', 'N0124', 0.4983461213111877);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200179', 'TR00000319', 'N0120', 0.4915863466262817);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200180', 'TR00000320', 'N0110', 0.4859301042556763);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200181', 'TR00000320', 'N0117', 0.4549538697515215);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200182', 'TR00000320', 'N0143', 0.4252251863479614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200183', 'TR00000321', 'N0109', 0.5484972667694092);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200184', 'TR00000321', 'N0117', 0.5005278485161917);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200185', 'TR00000321', 'N0116', 0.4877708196640015);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200186', 'TR00000322', 'N0139', 0.4086588263511657);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200187', 'TR00000322', 'N0143', 0.398514997959137);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200188', 'TR00000322', 'N0131', 0.3888817548751831);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200189', 'TR00000323', 'N0103', 0.530085277557373);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200190', 'TR00000323', 'N0101', 0.5276002597808838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200191', 'TR00000323', 'N0111', 0.4668895483016967);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200192', 'TR00000324', 'N0139', 0.4065943479537964);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200193', 'TR00000324', 'N0143', 0.3972844362258911);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200194', 'TR00000324', 'N0146', 0.3821691155433654);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200195', 'TR00000325', 'N0117', 0.5581832477024624);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200196', 'TR00000325', 'N0091', 0.5487234473228455);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200197', 'TR00000325', 'N0122', 0.4873963594436645);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200198', 'TR00000326', 'N0097', 0.525029993057251);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200199', 'TR00000326', 'N0116', 0.5162689600672041);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200200', 'TR00000326', 'N0109', 0.4769127678871154);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200201', 'TR00000327', 'N0103', 0.5523078441619873);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200202', 'TR00000327', 'N0101', 0.5093558549880981);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200203', 'TR00000327', 'N0111', 0.4635691165924072);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200204', 'TR00000328', 'N0101', 0.4965471267700195);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200205', 'TR00000328', 'N0109', 0.4796092462539673);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200206', 'TR00000328', 'N0110', 0.4662380933761596);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200207', 'TR00000329', 'N0148', 0.502708169392177);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200208', 'TR00000329', 'N0101', 0.4884933471679687);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200209', 'TR00000329', 'N0100', 0.4691650549570719);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200210', 'TR00000330', 'N0148', 0.4457815153258188);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200211', 'TR00000330', 'N0093', 0.4456823658943177);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200212', 'TR00000330', 'N0143', 0.4134094476699829);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200213', 'TR00000331', 'N0133', 0.4179753541946411);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200214', 'TR00000331', 'N0143', 0.4155890464782715);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200215', 'TR00000331', 'N0148', 0.4146745136805942);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200216', 'TR00000332', 'N0101', 0.4987915992736816);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200217', 'TR00000332', 'N0109', 0.4586169552803039);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200218', 'TR00000332', 'N0110', 0.4451916217803955);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200219', 'TR00000333', 'N0101', 0.5735314846038818);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200220', 'TR00000333', 'N0149', 0.5077123488698687);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200221', 'TR00000333', 'N0100', 0.425622546672821);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200222', 'TR00000334', 'N0118', 0.5294192592302958);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200223', 'TR00000334', 'N0100', 0.5292963862419129);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200224', 'TR00000334', 'N0101', 0.5065771142641703);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200225', 'TR00000335', 'N0083', 0.5580856510571071);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200226', 'TR00000335', 'N0115', 0.5356876802444458);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200227', 'TR00000335', 'N0106', 0.5105552911758423);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200228', 'TR00000336', 'N0148', 0.5445762651307242);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200229', 'TR00000336', 'N0109', 0.527901566028595);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200230', 'TR00000336', 'N0116', 0.5076161901156108);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200231', 'TR00000337', 'N0148', 0.5324884074074882);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200232', 'TR00000337', 'N0122', 0.428763027191162);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200233', 'TR00000337', 'N0139', 0.4059422492980957);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200234', 'TR00000338', 'N0083', 0.517778171811785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200235', 'TR00000338', 'N0110', 0.457555603981018);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200236', 'TR00000338', 'N0116', 0.4291154098510742);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200237', 'TR00000339', 'N0122', 0.6579097872688656);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200238', 'TR00000339', 'N0148', 0.5894895264080593);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200239', 'TR00000339', 'N0091', 0.585268109185355);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200240', 'TR00000340', 'N0091', 0.7643485137394496);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200241', 'TR00000340', 'N0094', 0.6664223262241908);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200242', 'TR00000340', 'N0123', 0.5581708669662475);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200243', 'TR00000341', 'N0083', 0.5235009687287466);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200244', 'TR00000341', 'N0103', 0.5123360991477967);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200245', 'TR00000341', 'N0101', 0.4904706001281738);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200246', 'TR00000342', 'N0148', 0.5282559173447745);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200247', 'TR00000342', 'N0139', 0.3904789924621581);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200248', 'TR00000342', 'N0107', 0.3860639882087707);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200249', 'TR00000343', 'N0101', 0.5164637279510498);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200250', 'TR00000343', 'N0090', 0.5035873314312527);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200251', 'TR00000343', 'N0110', 0.4424830198287964);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200252', 'TR00000344', 'N0116', 0.5337072801589966);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200253', 'TR00000344', 'N0109', 0.5264834833145142);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200254', 'TR00000344', 'N0110', 0.4705101013183593);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200255', 'TR00000345', 'N0122', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200256', 'TR00000345', 'N0128', 0.5925968686739603);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200257', 'TR00000345', 'N0148', 0.5331938641411917);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200258', 'TR00000346', 'N0110', 0.4640607118606567);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200259', 'TR00000346', 'N0116', 0.4009268760681152);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200260', 'TR00000346', 'N0143', 0.3976027965545654);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200261', 'TR00000347', 'N0097', 0.5114402055740357);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200262', 'TR00000347', 'N0109', 0.4568866443634033);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200263', 'TR00000347', 'N0110', 0.4539283633232116);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200264', 'TR00000348', 'N0110', 0.4683255672454833);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200265', 'TR00000348', 'N0116', 0.4232770800590515);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200266', 'TR00000348', 'N0133', 0.3949708700180053);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200267', 'TR00000349', 'N0148', 0.5395896451813834);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200268', 'TR00000349', 'N0139', 0.4107919692993164);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200269', 'TR00000349', 'N0143', 0.4104823350906372);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200270', 'TR00000350', 'N0121', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200271', 'TR00000350', 'N0122', 0.6565684335572379);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200272', 'TR00000350', 'N0114', 0.5741151332855224);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200273', 'TR00000351', 'N0100', 0.5063547015190124);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200274', 'TR00000351', 'N0118', 0.4954421877861023);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200275', 'TR00000351', 'N0101', 0.4813038110733032);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200276', 'TR00000352', 'N0101', 0.5878910303115844);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200277', 'TR00000352', 'N0148', 0.5053204263959612);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200278', 'TR00000352', 'N0097', 0.4294077157974243);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200279', 'TR00000353', 'N0094', 0.6868788469405401);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200280', 'TR00000353', 'N0091', 0.639994562239874);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200281', 'TR00000353', 'N0122', 0.6164331606456211);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200282', 'TR00000354', 'N0110', 0.5988059949874878);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200283', 'TR00000354', 'N0083', 0.5573039838245937);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200284', 'TR00000354', 'N0116', 0.4243615508079528);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200285', 'TR00000355', 'N0121', 0.6717370172909328);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200286', 'TR00000355', 'N0122', 0.6259311236654008);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200287', 'TR00000355', 'N0125', 0.4929653596878052);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200288', 'TR00000356', 'N0103', 0.5181456565856933);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200289', 'TR00000356', 'N0140', 0.4918335999761308);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200290', 'TR00000356', 'N0101', 0.4864374876022339);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200291', 'TR00000357', 'N0097', 0.5309644341468811);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200292', 'TR00000357', 'N0110', 0.4641815900802612);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200293', 'TR00000357', 'N0116', 0.4305898189544677);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200294', 'TR00000358', 'N0103', 0.5598972988128662);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200295', 'TR00000358', 'N0118', 0.5508282508168901);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200296', 'TR00000358', 'N0132', 0.5197313496044704);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200297', 'TR00000359', 'N0109', 0.5281642436981201);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200298', 'TR00000359', 'N0110', 0.4490230321884155);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200299', 'TR00000359', 'N0140', 0.4225592647280012);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200300', 'TR00000360', 'N0149', 0.5632121103150504);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200301', 'TR00000360', 'N0106', 0.5392760276794434);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200302', 'TR00000360', 'N0115', 0.5223539710044861);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200303', 'TR00000361', 'N0118', 0.5670981359481813);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200304', 'TR00000361', 'N0122', 0.4818027734756469);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200305', 'TR00000361', 'N0132', 0.4812485235077994);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200306', 'TR00000362', 'N0109', 0.5234055399894715);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200307', 'TR00000362', 'N0110', 0.4716224861145019);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200308', 'TR00000362', 'N0116', 0.4159841728210449);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200309', 'TR00000363', 'N0101', 0.4834224700927734);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200310', 'TR00000363', 'N0109', 0.442817599773407);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200311', 'TR00000363', 'N0140', 0.4294603024210248);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200312', 'TR00000364', 'N0115', 0.5508776187896728);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200313', 'TR00000364', 'N0102', 0.5283880114555359);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200314', 'TR00000364', 'N0106', 0.5135808229446411);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200315', 'TR00000365', 'N0101', 0.595032787322998);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200316', 'TR00000365', 'N0111', 0.4650128523508707);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200317', 'TR00000365', 'N0100', 0.4578199545542399);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200318', 'TR00000366', 'N0125', 0.493996901512146);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200319', 'TR00000366', 'N0122', 0.4702344417572021);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200320', 'TR00000366', 'N0128', 0.4653479576110839);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200321', 'TR00000367', 'N0097', 0.517112398147583);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200322', 'TR00000367', 'N0132', 0.4657999004636491);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200323', 'TR00000367', 'N0110', 0.4528725743293762);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200324', 'TR00000368', 'N0132', 0.4516946639333452);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200325', 'TR00000368', 'N0139', 0.4090167760848999);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200326', 'TR00000368', 'N0143', 0.4014482259750366);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200327', 'TR00000369', 'N0149', 0.5391288416726249);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200328', 'TR00000369', 'N0097', 0.5363745760917664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200329', 'TR00000369', 'N0101', 0.475508952140808);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200330', 'TR00000370', 'N0103', 0.5198479652404785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200331', 'TR00000370', 'N0118', 0.4927718503134591);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200332', 'TR00000370', 'N0101', 0.4909113407135009);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200333', 'TR00000371', 'N0140', 0.491715725830623);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200334', 'TR00000371', 'N0143', 0.4124973177909851);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200335', 'TR00000371', 'N0131', 0.4046531438827515);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200336', 'TR00000372', 'N0114', 0.5750773668289184);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200337', 'TR00000372', 'N0124', 0.5717935919761657);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200338', 'TR00000372', 'N0089', 0.5690426826477051);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200339', 'TR00000373', 'N0149', 0.4688071284975324);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200340', 'TR00000373', 'N0110', 0.4501587867736816);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200341', 'TR00000373', 'N0139', 0.3992842197418212);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200342', 'TR00000374', 'N0101', 0.5859337687492371);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200343', 'TR00000374', 'N0149', 0.5483269589287894);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200344', 'TR00000374', 'N0118', 0.4566652369499206);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200345', 'TR00000375', 'N0093', 0.5865546027819315);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200346', 'TR00000375', 'N0119', 0.5725050401687624);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200347', 'TR00000375', 'N0113', 0.4673422336578369);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200348', 'TR00000376', 'N0149', 0.5711646028927395);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200349', 'TR00000376', 'N0109', 0.4915960383415222);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200350', 'TR00000376', 'N0101', 0.4904650568962097);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200351', 'TR00000377', 'N0141', 0.5501966663769313);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200352', 'TR00000377', 'N0110', 0.5061524224281311);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200353', 'TR00000377', 'N0143', 0.4091345071792602);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200354', 'TR00000378', 'N0139', 0.4012740612030029);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200355', 'TR00000378', 'N0146', 0.3924147605895996);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200356', 'TR00000378', 'N0143', 0.3883729934692382);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200357', 'TR00000379', 'N0101', 0.6283144426345825);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200358', 'TR00000379', 'N0097', 0.4169647336006164);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200359', 'TR00000379', 'N0141', 0.4151324851172311);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200360', 'TR00000380', 'N0100', 0.5283376049995423);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200361', 'TR00000380', 'N0118', 0.5114398312568664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200362', 'TR00000380', 'N0101', 0.5063008546829223);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200363', 'TR00000381', 'N0086', 0.6030696821212769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200364', 'TR00000381', 'N0141', 0.5648736715316772);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200365', 'TR00000381', 'N0125', 0.4787394595146179);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200366', 'TR00000382', 'N0127', 0.6055032205581664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200367', 'TR00000382', 'N0141', 0.5752175569534301);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200368', 'TR00000382', 'N0120', 0.5661112785339355);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200369', 'TR00000383', 'N0128', 0.5708515644073486);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200370', 'TR00000383', 'N0122', 0.570380425453186);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200371', 'TR00000383', 'N0141', 0.5147297160966056);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200372', 'TR00000384', 'N0100', 0.5461642456054687);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200373', 'TR00000384', 'N0118', 0.5177735996246338);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200374', 'TR00000384', 'N0101', 0.5077178478240967);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200375', 'TR00000385', 'N0091', 0.5687899303436279);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200376', 'TR00000385', 'N0122', 0.446303629875183);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200377', 'TR00000385', 'N0125', 0.4406857967376709);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200378', 'TR00000386', 'N0084', 0.6123616766929626);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200379', 'TR00000386', 'N0113', 0.5174232482910156);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200380', 'TR00000386', 'N0129', 0.4813890528678894);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200381', 'TR00000387', 'N0106', 0.535827887058258);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200382', 'TR00000387', 'N0115', 0.5252639889717102);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200383', 'TR00000387', 'N0102', 0.5226294517517089);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200384', 'TR00000388', 'N0103', 0.5299286365509033);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200385', 'TR00000388', 'N0101', 0.4890619039535522);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200386', 'TR00000388', 'N0115', 0.4596831321716308);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200387', 'TR00000389', 'N0101', 0.4964825391769409);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200388', 'TR00000389', 'N0109', 0.4619899749755859);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200389', 'TR00000389', 'N0100', 0.4494476437568664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200390', 'TR00000390', 'N0141', 0.5494698950222561);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200391', 'TR00000390', 'N0110', 0.4524934887886047);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200392', 'TR00000390', 'N0143', 0.4092656850814819);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200393', 'TR00000391', 'N0100', 0.5406389832496643);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200394', 'TR00000391', 'N0118', 0.534845519065857);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200395', 'TR00000391', 'N0101', 0.4910993099212646);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200396', 'TR00000392', 'N0110', 0.5548919558525085);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200397', 'TR00000392', 'N0116', 0.4309017340342204);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200398', 'TR00000392', 'N0109', 0.4044791579246521);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200399', 'TR00000393', 'N0139', 0.4084760785102844);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200400', 'TR00000393', 'N0143', 0.4044058442115784);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200401', 'TR00000393', 'N0133', 0.3982375502586364);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200402', 'TR00000394', 'N0097', 0.5691269588470459);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200403', 'TR00000394', 'N0110', 0.4605417966842651);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200404', 'TR00000394', 'N0116', 0.440267641544342);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200405', 'TR00000395', 'N0110', 0.5445146322250366);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200406', 'TR00000395', 'N0116', 0.4883094787597656);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200407', 'TR00000395', 'N0141', 0.4432262216295515);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200408', 'TR00000396', 'N0101', 0.6020844936370849);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200409', 'TR00000396', 'N0097', 0.4566542029380798);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200410', 'TR00000396', 'N0111', 0.4555189847946166);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200411', 'TR00000397', 'N0125', 0.5669650713602702);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200412', 'TR00000397', 'N0094', 0.5399821201960245);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200413', 'TR00000397', 'N0086', 0.5269402980804443);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200414', 'TR00000398', 'N0101', 0.4940577507019043);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200415', 'TR00000398', 'N0100', 0.4623159718513489);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200416', 'TR00000398', 'N0109', 0.4589366745948791);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200417', 'TR00000399', 'N0143', 0.403277850151062);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200418', 'TR00000399', 'N0139', 0.3917969226837158);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200419', 'TR00000399', 'N0131', 0.3730282187461853);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200420', 'TR00000400', 'N0102', 0.5465383768081665);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200421', 'TR00000400', 'N0106', 0.499455018043518);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200422', 'TR00000400', 'N0103', 0.4577346603075663);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200423', 'TR00000401', 'N0111', 0.5579135179519653);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200424', 'TR00000401', 'N0101', 0.5062506437301636);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200425', 'TR00000401', 'N0115', 0.4541535894076029);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200426', 'TR00000402', 'N0103', 0.5247561216354371);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200427', 'TR00000402', 'N0141', 0.5182440178734915);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200428', 'TR00000402', 'N0101', 0.4990731239318847);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200429', 'TR00000403', 'N0141', 0.5169379966599601);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200430', 'TR00000403', 'N0139', 0.3903874039649963);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200431', 'TR00000403', 'N0143', 0.3896081686019897);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200432', 'TR00000404', 'N0115', 0.5414422154426575);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200433', 'TR00000404', 'N0151', 0.5219495722225734);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200434', 'TR00000404', 'N0106', 0.506585156917572);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200435', 'TR00000405', 'N0133', 0.5932045647076198);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200436', 'TR00000405', 'N0111', 0.5517010927200318);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200437', 'TR00000405', 'N0101', 0.4950552463531494);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200438', 'TR00000406', 'N0133', 0.640015435218811);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200439', 'TR00000406', 'N0100', 0.550413417816162);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200440', 'TR00000406', 'N0118', 0.5348240613937378);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200441', 'TR00000407', 'N0133', 0.5973992245537894);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200442', 'TR00000407', 'N0110', 0.49901043176651);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200443', 'TR00000407', 'N0097', 0.4952127647399902);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200444', 'TR00000408', 'N0101', 0.4889305830001831);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200445', 'TR00000408', 'N0151', 0.4369271431650434);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200446', 'TR00000408', 'N0100', 0.4335489749908447);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200447', 'TR00000409', 'N0133', 0.5065299238477434);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200448', 'TR00000409', 'N0139', 0.4028085350990295);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200449', 'TR00000409', 'N0146', 0.3930553793907165);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200450', 'TR00000410', 'N0097', 0.7159010124206543);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200451', 'TR00000410', 'N0110', 0.4688017845153808);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200452', 'TR00000410', 'N0152', 0.4631861124719892);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200453', 'TR00000411', 'N0111', 0.5449750781059265);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200454', 'TR00000411', 'N0101', 0.4842521667480468);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200455', 'TR00000411', 'N0100', 0.4344333171844482);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200456', 'TR00000412', 'N0133', 0.5217143739972796);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200457', 'TR00000412', 'N0110', 0.4446479558944702);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200458', 'TR00000412', 'N0143', 0.4070417404174805);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200459', 'TR00000413', 'N0123', 0.5511832475662232);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200460', 'TR00000413', 'N0095', 0.5428588151931762);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200461', 'TR00000413', 'N0125', 0.526804256439209);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200462', 'TR00000414', 'N0123', 0.6998597025871276);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200463', 'TR00000414', 'N0102', 0.5302368402481079);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200464', 'TR00000414', 'N0095', 0.4864474487304687);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200465', 'TR00000415', 'N0100', 0.536513352394104);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200466', 'TR00000415', 'N0118', 0.5226511597633362);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200467', 'TR00000415', 'N0101', 0.485207462310791);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200468', 'TR00000416', 'N0111', 0.5428420424461364);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200469', 'TR00000416', 'N0101', 0.4951257705688476);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200470', 'TR00000416', 'N0106', 0.4562098503112792);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200471', 'TR00000417', 'N0133', 0.5532423751694815);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200472', 'TR00000417', 'N0111', 0.534105408191681);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200473', 'TR00000417', 'N0101', 0.4781208515167236);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200474', 'TR00000418', 'N0101', 0.6069290637969971);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200475', 'TR00000418', 'N0151', 0.5503701874188014);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200476', 'TR00000418', 'N0100', 0.5177252292633057);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200477', 'TR00000419', 'N0115', 0.5577515840530395);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200478', 'TR00000419', 'N0103', 0.5192386388778687);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200479', 'TR00000419', 'N0106', 0.5151340365409851);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200480', 'TR00000420', 'N0097', 0.5155589342117309);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200481', 'TR00000420', 'N0110', 0.487159378528595);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200482', 'TR00000420', 'N0101', 0.4759039878845215);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200483', 'TR00000421', 'N0133', 0.4972274933542524);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200484', 'TR00000421', 'N0101', 0.4970380783081054);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200485', 'TR00000421', 'N0110', 0.4684699416160583);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200486', 'TR00000422', 'N0110', 0.5057569662729899);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200487', 'TR00000422', 'N0133', 0.5006088290895734);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200488', 'TR00000422', 'N0116', 0.4442483703295389);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200489', 'TR00000423', 'N0094', 0.560575270652771);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200490', 'TR00000423', 'N0123', 0.5321946723120553);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200491', 'TR00000423', 'N0091', 0.4941476058959961);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200492', 'TR00000424', 'N0152', 0.556664116042001);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200493', 'TR00000424', 'N0103', 0.5286920309066773);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200494', 'TR00000424', 'N0101', 0.5162880253791808);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200495', 'TR00000425', 'N0143', 0.513169435092381);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200496', 'TR00000425', 'N0107', 0.3973410407702128);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200497', 'TR00000425', 'N0139', 0.3947555780410766);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200498', 'TR00000426', 'N0143', 0.626024717944009);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200499', 'TR00000426', 'N0110', 0.4816673676172892);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200500', 'TR00000426', 'N0139', 0.4090014696121216);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200501', 'TR00000427', 'N0106', 0.6458201599121094);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200502', 'TR00000427', 'N0103', 0.5660899917284647);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200503', 'TR00000427', 'N0143', 0.4904974085944039);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200504', 'TR00000428', 'N0143', 0.6810959696769714);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200505', 'TR00000428', 'N0101', 0.6007791519165039);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200506', 'TR00000428', 'N0100', 0.5107722640037536);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200507', 'TR00000429', 'N0152', 0.4851938809667314);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200508', 'TR00000429', 'N0139', 0.4069974303245544);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200509', 'TR00000429', 'N0143', 0.3923281073570251);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200510', 'TR00000430', 'N0103', 0.5557607245445252);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200511', 'TR00000430', 'N0101', 0.4842686176300048);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200512', 'TR00000430', 'N0100', 0.453083701133728);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200513', 'TR00000431', 'N0094', 0.5520272850990295);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200514', 'TR00000431', 'N0125', 0.5506425142288208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200515', 'TR00000431', 'N0086', 0.5105411648750305);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200516', 'TR00000432', 'N0124', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200517', 'TR00000432', 'N0088', 0.5608454863230388);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200518', 'TR00000432', 'N0114', 0.538856029510498);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200519', 'TR00000433', 'N0125', 0.8875614595413208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200520', 'TR00000433', 'N0091', 0.5425834417343139);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200521', 'TR00000433', 'N0123', 0.5363079309463501);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200522', 'TR00000434', 'N0143', 0.595838965688433);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200523', 'TR00000434', 'N0118', 0.5185612122217814);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200524', 'TR00000434', 'N0100', 0.5160900831222535);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200525', 'TR00000435', 'N0116', 0.5451717209815979);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200526', 'TR00000435', 'N0110', 0.5030739259719849);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200527', 'TR00000435', 'N0109', 0.4562331676483154);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200528', 'TR00000436', 'N0109', 0.5509128093719482);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200529', 'TR00000436', 'N0143', 0.51168578011649);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200530', 'TR00000436', 'N0110', 0.45612473487854);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200531', 'TR00000437', 'N0101', 0.4798338174819946);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200532', 'TR00000437', 'N0152', 0.4530297313417707);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200533', 'TR00000437', 'N0110', 0.4496474862098694);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200534', 'TR00000438', 'N0116', 0.5238275766372681);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200535', 'TR00000438', 'N0109', 0.5225153684616088);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200536', 'TR00000438', 'N0152', 0.4850151096071515);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200537', 'TR00000439', 'N0143', 0.6400881477764675);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200538', 'TR00000439', 'N0103', 0.5308143019676208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200539', 'TR00000439', 'N0101', 0.4940434455871582);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200540', 'TR00000440', 'N0109', 0.5620084206263224);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200541', 'TR00000440', 'N0143', 0.5391845669065203);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200542', 'TR00000440', 'N0116', 0.5183184186617533);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200543', 'TR00000441', 'N0143', 0.6159201570919581);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200544', 'TR00000441', 'N0101', 0.4899450659751891);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200545', 'TR00000441', 'N0109', 0.4303951621055603);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200546', 'TR00000442', 'N0110', 0.5529262900352477);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200547', 'TR00000442', 'N0109', 0.4180426955223083);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200548', 'TR00000442', 'N0143', 0.4167954683303833);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200549', 'TR00000443', 'N0100', 0.5524399709701538);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200550', 'TR00000443', 'N0143', 0.5467944945607867);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200551', 'TR00000443', 'N0118', 0.5059284806251526);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200552', 'TR00000444', 'N0143', 0.6224666425159999);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200553', 'TR00000444', 'N0101', 0.4903544425964355);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200554', 'TR00000444', 'N0109', 0.4711789560317993);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200555', 'TR00000445', 'N0101', 0.584864068031311);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200556', 'TR00000445', 'N0143', 0.466733501638685);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200557', 'TR00000445', 'N0109', 0.4541239690780639);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200558', 'TR00000446', 'N0097', 0.5186338543891906);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200559', 'TR00000446', 'N0101', 0.4953442811965942);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200560', 'TR00000446', 'N0110', 0.4473496913909912);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200561', 'TR00000447', 'N0143', 0.5801087464605059);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200562', 'TR00000447', 'N0100', 0.5222521543502807);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200563', 'TR00000447', 'N0118', 0.5062304615974427);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200564', 'TR00000448', 'N0103', 0.514732563495636);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200565', 'TR00000448', 'N0111', 0.4827931356430053);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200566', 'TR00000448', 'N0101', 0.4780049800872802);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200567', 'TR00000449', 'N0144', 0.5436720320156643);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200568', 'TR00000449', 'N0109', 0.5184769988059997);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200569', 'TR00000449', 'N0116', 0.5040140104293823);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200570', 'TR00000450', 'N0111', 0.578512954711914);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200571', 'TR00000450', 'N0101', 0.5081073403358459);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200572', 'TR00000450', 'N0115', 0.4703488032023111);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200573', 'TR00000451', 'N0091', 0.5836849880218505);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200574', 'TR00000451', 'N0125', 0.5496457338333129);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200575', 'TR00000451', 'N0095', 0.5462067127227783);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200576', 'TR00000452', 'N0153', 0.5446767227990287);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200577', 'TR00000452', 'N0109', 0.5037705898284912);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200578', 'TR00000452', 'N0116', 0.4925049901008606);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200579', 'TR00000453', 'N0125', 0.5621543049812316);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200580', 'TR00000453', 'N0095', 0.5593441724777222);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200581', 'TR00000453', 'N0091', 0.554697048664093);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200582', 'TR00000454', 'N0135', 0.549542578629085);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200583', 'TR00000454', 'N0101', 0.491721761226654);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200584', 'TR00000454', 'N0097', 0.4509449243545532);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200585', 'TR00000455', 'N0089', 0.5526637911796569);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200586', 'TR00000455', 'N0135', 0.5108995284352984);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200587', 'TR00000455', 'N0122', 0.4880227009455363);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200588', 'TR00000456', 'N0135', 0.5770796963146755);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200589', 'TR00000456', 'N0111', 0.5343456625938415);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200590', 'TR00000456', 'N0101', 0.4808839917182922);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200591', 'TR00000457', 'N0125', 0.6236843722207206);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200592', 'TR00000457', 'N0115', 0.5429059505462647);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200593', 'TR00000457', 'N0106', 0.5353356313705444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200594', 'TR00000458', 'N0153', 0.51831830399377);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200595', 'TR00000458', 'N0143', 0.4036133766174316);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200596', 'TR00000458', 'N0139', 0.3990673899650573);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200597', 'TR00000459', 'N0103', 0.5273934841156006);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200598', 'TR00000459', 'N0101', 0.4960931539535522);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200599', 'TR00000459', 'N0106', 0.4589463305473327);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200600', 'TR00000460', 'N0153', 0.5621118324143546);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200601', 'TR00000460', 'N0101', 0.4911028146743774);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200602', 'TR00000460', 'N0109', 0.4730277132987976);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200603', 'TR00000461', 'N0110', 0.547612726688385);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200604', 'TR00000461', 'N0153', 0.4530186516898019);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200605', 'TR00000461', 'N0109', 0.4149866580963134);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200606', 'TR00000462', 'N0144', 0.4637785519872393);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200607', 'TR00000462', 'N0110', 0.4549845457077026);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200608', 'TR00000462', 'N0139', 0.3884039998054504);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200609', 'TR00000463', 'N0103', 0.5374162554740906);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200610', 'TR00000463', 'N0144', 0.5060842054230826);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200611', 'TR00000463', 'N0101', 0.4898919939994812);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200612', 'TR00000464', 'N0101', 0.5142584323883056);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200613', 'TR00000464', 'N0110', 0.4793276667594909);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200614', 'TR00000464', 'N0097', 0.4680580449104309);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200615', 'TR00000465', 'N0153', 0.5642304199082511);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200616', 'TR00000465', 'N0111', 0.5604694485664368);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200617', 'TR00000465', 'N0101', 0.516003246307373);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200618', 'TR00000466', 'N0101', 0.5975873231887817);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200619', 'TR00000466', 'N0100', 0.47509033203125);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200620', 'TR00000466', 'N0109', 0.4463562011718749);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200621', 'TR00000467', 'N0154', 0.5575992124421256);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200622', 'TR00000467', 'N0143', 0.4165559649467468);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200623', 'TR00000467', 'N0139', 0.4044804096221924);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200624', 'TR00000468', 'N0154', 0.5667387860161918);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200625', 'TR00000468', 'N0097', 0.5658587050437928);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200626', 'TR00000468', 'N0110', 0.4620212316513061);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200627', 'TR00000469', 'N0127', 0.629976589679718);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200628', 'TR00000469', 'N0085', 0.5204710245132447);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200629', 'TR00000469', 'N0146', 0.4897687350000654);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200630', 'TR00000470', 'N0145', 0.5256864326340811);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200631', 'TR00000470', 'N0153', 0.5234717215810503);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200632', 'TR00000470', 'N0110', 0.4763847112655639);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200633', 'TR00000471', 'N0106', 0.5480379104614258);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200634', 'TR00000471', 'N0115', 0.5469056248664856);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200635', 'TR00000471', 'N0111', 0.4963696908950805);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200636', 'TR00000472', 'N0103', 0.5125169157981873);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200637', 'TR00000472', 'N0145', 0.5094334977013724);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200638', 'TR00000472', 'N0153', 0.508083244732448);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200639', 'TR00000473', 'N0097', 0.5134999632835389);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200640', 'TR00000473', 'N0109', 0.4448362747828165);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200641', 'TR00000473', 'N0110', 0.4402365446090698);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200642', 'TR00000474', 'N0146', 0.6224949598312377);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200643', 'TR00000474', 'N0101', 0.4881576776504516);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200644', 'TR00000474', 'N0100', 0.4412537455558776);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200645', 'TR00000475', 'N0095', 0.5476734519004822);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200646', 'TR00000475', 'N0091', 0.5456209182739258);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200647', 'TR00000475', 'N0123', 0.5330647110939026);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200648', 'TR00000476', 'N0154', 0.5425851004464286);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200649', 'TR00000476', 'N0101', 0.4840067625045776);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200650', 'TR00000476', 'N0109', 0.4306711435317993);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200651', 'TR00000477', 'N0146', 0.5188861812864031);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200652', 'TR00000477', 'N0139', 0.4061654806137085);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200653', 'TR00000477', 'N0143', 0.3990041255950927);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200654', 'TR00000478', 'N0101', 0.590222156047821);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200655', 'TR00000478', 'N0146', 0.5442153470856803);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200656', 'TR00000478', 'N0118', 0.4494793486595154);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200657', 'TR00000479', 'N0101', 0.472989535331726);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200658', 'TR00000479', 'N0097', 0.4259126901626587);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200659', 'TR00000479', 'N0100', 0.4062380790710449);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200660', 'TR00000480', 'N0111', 0.5308945894241333);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200661', 'TR00000480', 'N0101', 0.5122737598419189);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200662', 'TR00000480', 'N0115', 0.4378446936607361);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200663', 'TR00000481', 'N0126', 0.8993579578399659);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200664', 'TR00000481', 'N0127', 0.7312117951256888);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200665', 'TR00000481', 'N0090', 0.6266171884536743);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200666', 'TR00000482', 'N0154', 0.5975610085896084);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200667', 'TR00000482', 'N0125', 0.57626979748408);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200668', 'TR00000482', 'N0086', 0.5607724587122599);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200669', 'TR00000483', 'N0146', 0.6063854047230313);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200670', 'TR00000483', 'N0125', 0.5680541634559632);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200671', 'TR00000483', 'N0095', 0.5578094124794006);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200672', 'TR00000484', 'N0118', 0.5406158638000489);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200673', 'TR00000484', 'N0100', 0.5301581978797912);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200674', 'TR00000484', 'N0101', 0.4906554222106933);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200675', 'TR00000485', 'N0146', 0.5424444454056876);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200676', 'TR00000485', 'N0110', 0.5158291260401408);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200677', 'TR00000485', 'N0143', 0.4143384933471679);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200678', 'TR00000486', 'N0106', 0.5499119162559509);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200679', 'TR00000486', 'N0115', 0.5313776016235352);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200680', 'TR00000486', 'N0101', 0.5028033971786499);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200681', 'TR00000487', 'N0120', 0.6302494955062867);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200682', 'TR00000487', 'N0145', 0.5577008077076504);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200683', 'TR00000487', 'N0124', 0.5276626658439636);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200684', 'TR00000488', 'N0138', 0.5621135132653372);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200685', 'TR00000488', 'N0143', 0.4216996550559997);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200686', 'TR00000488', 'N0131', 0.4128745794296264);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200687', 'TR00000489', 'N0138', 0.5876020738056729);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200688', 'TR00000489', 'N0109', 0.5462027263641358);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200689', 'TR00000489', 'N0116', 0.5194025588035583);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200690', 'TR00000490', 'N0128', 0.883813591003418);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200691', 'TR00000490', 'N0137', 0.5817460962704251);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200692', 'TR00000490', 'N0122', 0.4830075780550638);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200693', 'TR00000491', 'N0091', 0.5488907814025878);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200694', 'TR00000491', 'N0123', 0.5355741500854492);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200695', 'TR00000491', 'N0095', 0.5318463444709778);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200696', 'TR00000492', 'N0137', 0.570645112650735);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200697', 'TR00000492', 'N0111', 0.5316908121109009);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200698', 'TR00000492', 'N0101', 0.4860712051391601);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200699', 'TR00000493', 'N0110', 0.5035784673690795);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200700', 'TR00000493', 'N0138', 0.4446729404585702);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200701', 'TR00000493', 'N0116', 0.4327043485641479);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200702', 'TR00000494', 'N0101', 0.5070187759399414);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200703', 'TR00000494', 'N0118', 0.4390961241722107);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200704', 'TR00000494', 'N0100', 0.4311306238174438);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200705', 'TR00000495', 'N0120', 0.5558888435363769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200706', 'TR00000495', 'N0127', 0.5521982669830322);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200707', 'TR00000495', 'N0090', 0.5436051766077677);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200708', 'TR00000496', 'N0101', 0.5881006002426147);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200709', 'TR00000496', 'N0100', 0.542462420463562);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200710', 'TR00000496', 'N0155', 0.4932849969182695);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200711', 'TR00000497', 'N0100', 0.5394646406173706);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200712', 'TR00000497', 'N0118', 0.538873643875122);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200713', 'TR00000497', 'N0101', 0.4818854570388793);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200714', 'TR00000498', 'N0091', 0.6586790275573731);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200715', 'TR00000498', 'N0089', 0.5332291841506958);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200716', 'TR00000498', 'N0128', 0.4986512235232762);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200717', 'TR00000499', 'N0146', 0.541729940686907);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200718', 'TR00000499', 'N0100', 0.5248312950134277);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200719', 'TR00000499', 'N0118', 0.5170682668685913);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200720', 'TR00000500', 'N0147', 0.562261986732483);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200721', 'TR00000500', 'N0103', 0.5218583703041076);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200722', 'TR00000500', 'N0101', 0.4882734060287475);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200723', 'TR00000501', 'N0111', 0.5909862558046977);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200724', 'TR00000501', 'N0118', 0.5385259389877319);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200725', 'TR00000501', 'N0101', 0.5068594694137573);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200726', 'TR00000502', 'N0139', 0.4809840781348092);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200727', 'TR00000502', 'N0131', 0.4779371959822518);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200728', 'TR00000502', 'N0157', 0.4359047634260995);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200729', 'TR00000503', 'N0101', 0.5008612632751465);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200730', 'TR00000503', 'N0097', 0.466624116897583);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200731', 'TR00000503', 'N0109', 0.4402983427047729);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200732', 'TR00000504', 'N0097', 0.5019785475730896);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200733', 'TR00000504', 'N0110', 0.4953904867172241);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200734', 'TR00000504', 'N0156', 0.4639273251805986);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200735', 'TR00000505', 'N0110', 0.4643054723739623);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200736', 'TR00000505', 'N0143', 0.4322375893592834);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200737', 'TR00000505', 'N0104', 0.4188030481338501);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200738', 'TR00000506', 'N0115', 0.5516608238220214);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200739', 'TR00000506', 'N0106', 0.5221697568893433);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200740', 'TR00000506', 'N0101', 0.5065422455469767);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200741', 'TR00000507', 'N0101', 0.4845716714859008);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200742', 'TR00000507', 'N0109', 0.4569392871856689);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200743', 'TR00000507', 'N0110', 0.4536445140838623);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200744', 'TR00000508', 'N0101', 0.5119533252716064);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200745', 'TR00000508', 'N0110', 0.4905517292022705);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200746', 'TR00000508', 'N0097', 0.430407965183258);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200747', 'TR00000509', 'N0156', 0.5289579340389796);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200748', 'TR00000509', 'N0147', 0.4254307661737714);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200749', 'TR00000509', 'N0139', 0.4068633556365966);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200750', 'TR00000510', 'N0147', 0.5403664776257107);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200751', 'TR00000510', 'N0156', 0.4331945095743452);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200752', 'TR00000510', 'N0143', 0.4200477004051208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200753', 'TR00000511', 'N0097', 0.5487164735794068);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200754', 'TR00000511', 'N0110', 0.4645023822784423);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200755', 'TR00000511', 'N0116', 0.4338624993960062);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200756', 'TR00000512', 'N0147', 0.5460001536778041);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200757', 'TR00000512', 'N0101', 0.5201261679331461);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200758', 'TR00000512', 'N0110', 0.5175208489100138);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200759', 'TR00000513', 'N0101', 0.5826857209205627);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200760', 'TR00000513', 'N0156', 0.5462179848126003);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200761', 'TR00000513', 'N0111', 0.4793153285980224);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200762', 'TR00000514', 'N0097', 0.5321698904037475);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200763', 'TR00000514', 'N0101', 0.5071359078089396);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200764', 'TR00000514', 'N0156', 0.4932284133774893);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200765', 'TR00000515', 'N0123', 0.5551692962646484);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200766', 'TR00000515', 'N0091', 0.5507706880569457);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200767', 'TR00000515', 'N0122', 0.4884214830398559);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200768', 'TR00000516', 'N0129', 0.8693555188179016);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200769', 'TR00000516', 'N0093', 0.5419532299041748);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200770', 'TR00000516', 'N0127', 0.4603277921676635);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200771', 'TR00000517', 'N0139', 0.5701087491852896);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200772', 'TR00000517', 'N0131', 0.5572850363595145);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200773', 'TR00000517', 'N0157', 0.5131012575966971);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200774', 'TR00000518', 'N0116', 0.5217658710479737);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200775', 'TR00000518', 'N0155', 0.5144776957375663);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200776', 'TR00000518', 'N0110', 0.4685647487640381);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200777', 'TR00000519', 'N0155', 0.5679309674671718);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200778', 'TR00000519', 'N0120', 0.5552973985671997);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200779', 'TR00000519', 'N0126', 0.5475339412689209);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200780', 'TR00000520', 'N0155', 0.5658618399075099);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200781', 'TR00000520', 'N0143', 0.4140715956687927);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200782', 'TR00000520', 'N0139', 0.4100133419036865);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200783', 'TR00000521', 'N0127', 0.5772013187408447);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200784', 'TR00000521', 'N0129', 0.5504702091217041);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200785', 'TR00000521', 'N0120', 0.4750906626383463);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200786', 'TR00000522', 'N0116', 0.5353801560401916);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200787', 'TR00000522', 'N0109', 0.4992222785949707);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200788', 'TR00000522', 'N0110', 0.4730950355529785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200789', 'TR00000523', 'N0139', 0.6587387561798095);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200790', 'TR00000523', 'N0131', 0.640307867527008);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200791', 'TR00000523', 'N0157', 0.6044803142547608);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200792', 'TR00000524', 'N0155', 0.5642816969326565);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200793', 'TR00000524', 'N0139', 0.41188884973526);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200794', 'TR00000524', 'N0143', 0.4047514915466308);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200795', 'TR00000525', 'N0156', 0.5614456295967102);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200796', 'TR00000525', 'N0125', 0.4808884811401367);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0200797', 'TR00000525', 'N0122', 0.4648251414299011);


-- Transactions from Batch 3
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000526', 'CL000003', '2025-01-21', 7328.52, 'CHF', 'Debit', 'Wire Transfer', 'WWFVBEQK', NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000527', 'CL000003', '2025-01-20', 9392.07, 'CHF', 'Credit', 'Wire Transfer', 'TPAFBYY4', 'Prime Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000528', 'CL000003', '2025-01-21', 6627.75, 'CHF', 'Credit', 'Wire Transfer', 'HTOHCUEY', NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000529', 'CL000003', '2025-01-21', 5949.08, 'CHF', 'Debit', 'Cash', 'OQXVCUCF', NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000530', 'CL000003', '2025-01-24', 9085.37, 'CHF', 'Debit', 'Wire Transfer', 'SZNHLYDG', NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000531', 'CL000003', '2025-01-19', 5261.45, 'CHF', 'Credit', 'Cash', 'PKPMUSJT', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000532', 'CL000003', '2025-01-21', 7577.48, 'CHF', 'Credit', 'Wire Transfer', 'ORIMVELR', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000533', 'CL000003', '2025-01-22', 6466.27, 'CHF', 'Debit', 'Cash', 'PDDIAT62', 'First Wealth GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000534', 'CL000003', '2025-01-18', 7770.11, 'CHF', 'Debit', 'Wire Transfer', 'KRHINO1C', NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000535', 'CL000003', '2025-01-24', 7300.91, 'CHF', 'Credit', 'Cash', 'JKDRIR64', 'First Asset Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000536', 'CL000003', '2025-01-19', 9929.35, 'CHF', 'Debit', 'Wire Transfer', NULL, 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000537', 'CL000003', '2025-01-20', 9842.56, 'CHF', 'Debit', 'Wire Transfer', 'AHFTCHY6', NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000538', 'CL000003', '2025-01-19', 8210.56, 'CHF', 'Debit', 'Wire Transfer', 'NEXWCAKX', 'Global GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000539', 'CL000003', '2025-01-21', 5730.84, 'CHF', 'Debit', 'Cash', NULL, 'United Financial Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000540', 'CL000003', '2025-01-23', 9850.06, 'CHF', 'Credit', 'Wire Transfer', 'PNYFNOZI', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000541', 'CL000003', '2024-10-20', 1944.62, 'CHF', 'Debit', 'Wire Transfer', 'OITLIR36', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000542', 'CL000003', '2024-10-30', 3294.97, 'USD', 'Credit', 'Wire Transfer', 'SBRQAFD1', 'First Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000543', 'CL000003', '2024-10-27', 1798.58, 'JPY', 'Credit', 'Wire Transfer', 'NQQXMM1Q', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000544', 'CL000003', '2024-10-13', 467.07, 'CHF', 'Debit', 'Wire Transfer', 'LIIZRUOS', 'Elite Wealth Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000545', 'CL000003', '2024-10-26', 451.02, 'GBP', 'Credit', 'Wire Transfer', 'PKPMUSJT', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000546', 'CL000003', '2024-10-29', 6656.09, 'EUR', 'Debit', 'Security', 'WWFVBEQK', 'International Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000547', 'CL000003', '2024-10-17', 800.88, 'CHF', 'Credit', 'Wire Transfer', 'NEGKVETI', 'Elite GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000548', 'CL000003', '2024-10-11', 1533.27, 'USD', 'Credit', 'Wire Transfer', 'BIBMSE7T', 'Prime Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000549', 'CL000003', '2024-10-25', 232.81, 'USD', 'Debit', 'Wire Transfer', 'HYQTSODA', 'Premier Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000550', 'CL000003', '2024-10-31', 1838.6, 'GBP', 'Debit', 'Wire Transfer', 'TEPTYEE3', 'Prime Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000551', 'CL000003', '2024-10-13', 1081.58, 'EUR', 'Credit', 'Wire Transfer', 'OITLIR36', 'International Wealth Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000552', 'CL000003', '2024-10-16', 2386.01, 'USD', 'Debit', 'Security', 'WKQEAT75', 'Prime AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000553', 'CL000003', '2024-10-17', 6442.6, 'GBP', 'Debit', 'Security', 'KVHFHK2V', 'International AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000554', 'CL000003', '2024-10-13', 293.46, 'CHF', 'Credit', 'Security', 'ZHQKBE9T', 'United Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000555', 'CL000003', '2024-10-06', 678.51, 'CHF', 'Debit', 'Security', 'HPMNLYP0', 'Elite Financial Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000556', 'CL000003', '2024-10-09', 86.96, 'CHF', 'Credit', 'Wire Transfer', 'ZVWAAT0L', 'Alpha Wealth Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000557', 'CL000003', '2024-10-11', 1080.59, 'GBP', 'Credit', 'Wire Transfer', 'PTLXIRUZ', 'Premier Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000558', 'CL000003', '2024-10-31', 1117.35, 'EUR', 'Debit', 'Wire Transfer', 'PDDIAT62', 'Elite Asset AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000559', 'CL000003', '2024-10-06', 752.2, 'CAD', 'Debit', 'Wire Transfer', 'JHSDSOBB', 'Omega Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000560', 'CL000003', '2024-10-19', 421.64, 'USD', 'Debit', 'Wire Transfer', 'RMEFSEC0', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000561', 'CL000003', '2024-10-16', 834.79, 'GBP', 'Credit', 'Cash', 'VOXTKPRJ', 'Premier Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000562', 'CL000003', '2024-10-31', 838.03, 'CHF', 'Debit', 'Wire Transfer', 'SBRQAFD1', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000563', 'CL000003', '2024-11-17', 1239.94, 'CHF', 'Debit', 'Wire Transfer', 'PKPMUSJT', 'Elite Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000564', 'CL000003', '2024-11-16', 6685.23, 'USD', 'Credit', 'Security', 'PZRADK3K', 'Omega AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000565', 'CL000003', '2024-11-23', 435.04, 'EUR', 'Credit', 'Cash', 'ZVWAAT0L', 'Omega Asset GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000566', 'CL000003', '2024-12-02', 807.38, 'USD', 'Credit', 'Wire Transfer', 'YCZEBE8J', 'United Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000567', 'CL000003', '2024-11-24', 309.93, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000568', 'CL000003', '2024-11-29', 212.97, 'CHF', 'Credit', 'Wire Transfer', 'VKBQZWBF', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000569', 'CL000003', '2024-12-01', 5277.6, 'EUR', 'Debit', 'Wire Transfer', 'PKPMUSJT', 'Prime Trade Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000570', 'CL000003', '2024-12-02', 1246.28, 'CHF', 'Credit', 'Wire Transfer', 'PDDIAT62', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000571', 'CL000003', '2024-12-02', 2862.24, 'CHF', 'Debit', 'Security', 'KFKXKPVZ', 'Beta Wealth GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000572', 'CL000003', '2024-11-17', 577.03, 'EUR', 'Debit', 'Wire Transfer', 'DXGPNOWP', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000573', 'CL000003', '2024-11-27', 512.08, 'USD', 'Debit', 'Security', 'UECLNLPQ', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000574', 'CL000003', '2024-11-18', 796.3, 'EUR', 'Credit', 'Security', 'HGSSCUQY', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000575', 'CL000003', '2024-12-03', 1928.62, 'CHF', 'Debit', 'Wire Transfer', 'PTLXIRUZ', 'Alpha Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000576', 'CL000003', '2024-11-24', 3802.02, 'GBP', 'Debit', 'Wire Transfer', 'PDTOCA2T', 'United Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000577', 'CL000003', '2024-11-23', 2943.24, 'EUR', 'Credit', 'Security', 'UWVGBE2D', 'Beta Wealth Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000578', 'CL000003', '2024-11-19', 533.21, 'CAD', 'Credit', 'Wire Transfer', 'YCZEBE8J', 'International Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000579', 'CL000003', '2024-11-09', 4947.54, 'CHF', 'Credit', 'Wire Transfer', 'IDZEFIPZ', 'International Commerce Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000580', 'CL000003', '2024-11-09', 924.78, 'EUR', 'Credit', 'Wire Transfer', 'TEKHDEH1', 'Elite Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000581', 'CL000003', '2024-11-30', 384.15, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000582', 'CL000003', '2024-11-09', 5283.97, 'USD', 'Credit', 'Wire Transfer', 'ZNDRJP8F', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000583', 'CL000003', '2024-11-23', 1048.76, 'EUR', 'Credit', 'Cash', 'XEBLLUS3', 'Beta Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000584', 'CL000003', '2024-12-02', 4648.23, 'GBP', 'Debit', 'Security', 'TPAFBYY4', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000585', 'CL000003', '2024-12-02', 11941.34, 'EUR', 'Credit', 'Cheque', 'ZHQKBE9T', 'United Trade Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000586', 'CL000003', '2024-12-15', 352.75, 'USD', 'Credit', 'Wire Transfer', 'GGOCJP03', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000587', 'CL000003', '2024-12-08', 831.16, 'CHF', 'Credit', 'Wire Transfer', 'WWFVBEQK', 'Premier Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000588', 'CL000003', '2024-12-16', 1646.06, 'CHF', 'Credit', 'Cash', 'QMUCLYHY', 'Premier Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000589', 'CL000003', '2025-01-03', 2770.12, 'USD', 'Credit', 'Cash', 'VZMKBYLD', 'United Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000590', 'CL000003', '2024-12-14', 1652.2, 'CHF', 'Debit', 'Wire Transfer', 'AIAYCA53', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000591', 'CL000003', '2025-01-02', 581.1, 'CAD', 'Debit', 'Wire Transfer', 'PTLXIRUZ', 'Alpha Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000592', 'CL000003', '2024-12-27', 1253.1, 'CHF', 'Debit', 'Wire Transfer', 'XZNXSYVX', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000593', 'CL000003', '2024-12-08', 1190.65, 'CHF', 'Credit', 'Cash', 'HYQTSODA', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000594', 'CL000003', '2024-12-29', 1870.05, 'USD', 'Credit', 'Wire Transfer', 'ILRNHK28', 'Premier Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000595', 'CL000003', '2024-12-05', 1024.92, 'CAD', 'Debit', 'Wire Transfer', 'WPSBFRIK', 'Omega Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000596', 'CL000003', '2024-12-30', 361.72, 'CHF', 'Credit', 'Wire Transfer', 'SKRJJP6Q', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000597', 'CL000003', '2025-01-11', 7658.65, 'CHF', 'Debit', 'Security', 'JBRISGL4', 'International Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000598', 'CL000003', '2025-01-24', 794.63, 'USD', 'Credit', 'Wire Transfer', 'JFGYFRXV', 'Omega Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000599', 'CL000003', '2025-01-04', 1132.7, 'USD', 'Credit', 'Wire Transfer', 'NPZYJP1Y', 'First Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000600', 'CL000003', '2025-01-06', 566.94, 'USD', 'Debit', 'Security', 'ITJTYE3J', 'International Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000601', 'CL000003', '2025-01-15', 1791.16, 'USD', 'Debit', 'Security', 'CKAFCHSA', 'Alpha Financial Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000602', 'CL000003', '2025-01-11', 2551.88, 'CHF', 'Credit', 'Security', 'ENLHBY9P', 'International Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000603', 'CL000003', '2025-01-30', 857.0, 'GBP', 'Credit', 'Wire Transfer', 'ISHGLYEG', 'First Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000604', 'CL000003', '2025-01-20', 2781.62, 'CHF', 'Credit', 'Wire Transfer', 'SKRJJP6Q', 'Beta Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000605', 'CL000003', '2025-01-13', 692.64, 'USD', 'Credit', 'Wire Transfer', 'SZNHLYDG', 'Prime Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000606', 'CL000003', '2025-01-26', 1110.7, 'CHF', 'Credit', 'Wire Transfer', 'UQTYYEHA', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000607', 'CL000003', '2025-01-29', 1734.61, 'USD', 'Debit', 'Security', 'ORIMVELR', 'Alpha Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000608', 'CL000003', '2025-01-10', 3900.11, 'EUR', 'Credit', 'Wire Transfer', 'TRHRHKWD', 'United Trade Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000609', 'CL000003', '2025-01-09', 595.37, 'CHF', 'Credit', 'Wire Transfer', 'GYLWNLTB', 'Prime Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000610', 'CL000003', '2025-01-05', 1373.72, 'CHF', 'Credit', 'Wire Transfer', 'ENLHBY9P', 'Elite Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000611', 'CL000003', '2025-01-30', 4148.04, 'EUR', 'Debit', 'Security', 'QMUCLYHY', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000612', 'CL000003', '2025-01-09', 892.44, 'GBP', 'Credit', 'Wire Transfer', 'QFXWAUCI', 'Beta Asset Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000613', 'CL000003', '2025-02-03', 3946.62, 'USD', 'Debit', 'Security', 'HYQTSODA', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000614', 'CL000003', '2025-02-08', 536.83, 'USD', 'Credit', 'Security', 'TRHRHKWD', 'Prime Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000615', 'CL000003', '2025-02-16', 377.07, 'CHF', 'Debit', 'Wire Transfer', 'YRCXUS11', 'Elite AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000616', 'CL000003', '2025-02-26', 2152.66, 'USD', 'Credit', 'Security', 'ZVZYNL4F', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000617', 'CL000003', '2025-02-28', 357.07, 'USD', 'Credit', 'Security', 'SKRJJP6Q', 'First Financial Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000618', 'CL000003', '2025-02-23', 5892.76, 'USD', 'Credit', 'Security', 'MTWDUSFY', 'United Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000619', 'CL000003', '2025-02-24', 714.28, 'CHF', 'Debit', 'Wire Transfer', 'PNYFNOZI', 'Omega Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000620', 'CL000003', '2025-02-13', 845.14, 'GBP', 'Debit', 'Wire Transfer', 'NPZYJP1Y', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000621', 'CL000003', '2025-02-03', 224.8, 'EUR', 'Debit', 'Security', 'GSSBKPOT', 'Prime Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000622', 'CL000003', '2025-02-10', 2371.43, 'USD', 'Credit', 'Security', 'WPSBFRIK', 'Alpha Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000623', 'CL000003', '2025-02-20', 146.83, 'EUR', 'Debit', 'Wire Transfer', 'YUHSSE02', 'Elite Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000624', 'CL000003', '2025-02-05', 342.25, 'EUR', 'Credit', 'Wire Transfer', 'JKDRIR64', 'First Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000625', 'CL000003', '2025-02-19', 2232.57, 'JPY', 'Credit', 'Security', 'AIAYCA53', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000626', 'CL000003', '2025-02-21', 1485.66, 'CHF', 'Credit', 'Wire Transfer', 'UFAFBEL5', 'Beta Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000627', 'CL000003', '2025-03-02', 569.9, 'GBP', 'Credit', 'Wire Transfer', 'PZRADK3K', 'First Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000628', 'CL000003', '2025-03-04', 450.58, 'GBP', 'Credit', 'Wire Transfer', 'FIPFAUHC', 'United Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000629', 'CL000003', '2025-03-01', 8759.46, 'USD', 'Debit', 'Wire Transfer', 'GGOCJP03', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000630', 'CL000003', '2025-02-20', 3696.57, 'CNY', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000631', 'CL000003', '2025-02-07', 2789.79, 'CHF', 'Credit', 'Wire Transfer', 'OBYCSD1W', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000632', 'CL000003', '2025-03-13', 3433.81, 'CHF', 'Debit', 'Wire Transfer', 'HYQTSODA', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000633', 'CL000003', '2025-03-12', 451.79, 'CHF', 'Debit', 'Wire Transfer', 'KRHINO1C', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000634', 'CL000003', '2025-03-09', 1210.89, 'CHF', 'Debit', 'Security', 'WXFGATD2', 'Omega Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000635', 'CL000003', '2025-04-03', 2852.43, 'GBP', 'Debit', 'Security', 'LJNIAF43', 'Elite Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000636', 'CL000003', '2025-03-16', 1312.28, 'CHF', 'Credit', 'Wire Transfer', 'TPAFBYY4', 'International Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000637', 'CL000003', '2025-04-02', 3151.55, 'GBP', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000638', 'CL000003', '2025-03-27', 1280.58, 'EUR', 'Credit', 'Wire Transfer', 'JKDRIR64', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000639', 'CL000003', '2025-03-26', 6638.05, 'CHF', 'Debit', 'Wire Transfer', 'ZVZYNL4F', 'Prime Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000640', 'CL000003', '2025-03-12', 282.27, 'USD', 'Debit', 'Wire Transfer', 'TLPJUS9E', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000641', 'CL000003', '2025-03-05', 1606.4, 'CHF', 'Credit', 'Wire Transfer', 'NTUXSYRJ', 'International Wealth Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000642', 'CL000003', '2025-03-26', 296.35, 'EUR', 'Debit', 'Wire Transfer', 'GGOCJP03', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000643', 'CL000003', '2025-03-27', 1191.98, 'EUR', 'Debit', 'Wire Transfer', 'OITLIR36', 'Prime Financial GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000644', 'CL000003', '2025-03-27', 308.68, 'GBP', 'Credit', 'Wire Transfer', 'KXLGGBIU', 'Global Trade Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000645', 'CL000003', '2025-03-11', 1835.23, 'CHF', 'Debit', 'Wire Transfer', 'ZHQKBE9T', 'International GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000646', 'CL000003', '2025-03-30', 2421.83, 'EUR', 'Credit', 'Wire Transfer', 'XEBLLUS3', 'Prime Financial AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000647', 'CL000003', '2025-03-31', 776.61, 'GBP', 'Credit', 'Wire Transfer', 'CKAFCHSA', 'Global Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000648', 'CL000003', '2025-03-05', 828.19, 'JPY', 'Debit', 'Security', 'CLWESYJL', 'Global Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000649', 'CL000003', '2025-03-06', 463.79, 'CHF', 'Debit', 'Wire Transfer', 'WGELNLPK', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000650', 'CL000003', '2025-04-03', 1789.38, 'CHF', 'Debit', 'Wire Transfer', 'ENLHBY9P', 'Global Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000651', 'CL000003', '2025-04-03', 604.82, 'CHF', 'Debit', 'Wire Transfer', 'RFDYAUUR', 'International Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000652', 'CL000003', '2025-03-27', 481.94, 'CHF', 'Debit', 'Wire Transfer', 'WPSBFRIK', 'Global Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000653', 'CL000003', '2025-03-26', 1401.29, 'USD', 'Credit', 'Cash', 'YCZEBE8J', 'Premier Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000654', 'CL000003', '2025-04-30', 2263.93, 'JPY', 'Debit', 'Wire Transfer', 'LJNIAF43', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000655', 'CL000003', '2025-04-20', 2195.04, 'USD', 'Credit', 'Security', 'PZRADK3K', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000656', 'CL000003', '2025-04-04', 5302.43, 'CHF', 'Credit', 'Wire Transfer', 'DXGPNOWP', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000657', 'CL000003', '2025-04-21', 2072.08, 'CAD', 'Credit', 'Security', 'HPSFDKWJ', 'International Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000658', 'CL000003', '2025-04-24', 3690.08, 'EUR', 'Debit', 'Security', 'DDROYEHZ', 'Omega AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000659', 'CL000003', '2025-05-03', 388.2, 'CHF', 'Debit', 'Security', 'ILRNHK28', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000660', 'CL000003', '2025-04-07', 3141.77, 'CHF', 'Debit', 'Cheque', 'TEPTYEE3', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000661', 'CL000003', '2025-04-07', 6123.16, 'EUR', 'Credit', 'Wire Transfer', 'UQTYYEHA', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000662', 'CL000003', '2025-05-01', 824.88, 'AUD', 'Debit', 'Wire Transfer', 'CAOZYEMX', 'International Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000663', 'CL000003', '2025-04-09', 484.75, 'CNY', 'Debit', 'Wire Transfer', 'OBYCSD1W', 'Elite GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000664', 'CL000003', '2025-04-19', 619.31, 'GBP', 'Debit', 'Wire Transfer', 'JBRISGL4', 'Global Financial Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000665', 'CL000003', '2025-04-17', 776.99, 'CHF', 'Debit', 'Wire Transfer', 'YGIUHKFB', 'First Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000666', 'CL000003', '2025-05-03', 2430.34, 'USD', 'Debit', 'Security', 'CGCHFRWN', 'First Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000667', 'CL000003', '2025-04-18', 410.79, 'CHF', 'Credit', 'Wire Transfer', 'DDROYEHZ', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000668', 'CL000003', '2025-04-11', 1592.35, 'CHF', 'Credit', 'Wire Transfer', 'RVUFGBBL', 'United Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000669', 'CL000003', '2025-04-07', 6519.51, 'CHF', 'Debit', 'Security', 'CAIRAF8O', 'Global Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000670', 'CL000003', '2025-04-12', 3063.08, 'USD', 'Debit', 'Security', 'IDZEFIPZ', 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000671', 'CL000003', '2025-04-18', 705.35, 'GBP', 'Debit', 'Security', 'HMIZSOJ5', 'United GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000672', 'CL000003', '2025-04-13', 2454.32, 'CHF', 'Credit', 'Wire Transfer', 'AIAYCA53', 'Elite Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000673', 'CL000003', '2025-04-19', 2265.72, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000674', 'CL000003', '2025-05-21', 2640.23, 'CHF', 'Debit', 'Security', 'IGYHVEQ1', 'United Financial Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000675', 'CL000003', '2025-05-13', 690.56, 'CAD', 'Debit', 'Wire Transfer', 'UECLNLPQ', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000676', 'CL000003', '2025-05-21', 3293.61, 'USD', 'Credit', 'Wire Transfer', 'HGSSCUQY', 'Omega Trade Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000677', 'CL000003', '2025-05-18', 1364.58, 'EUR', 'Credit', 'Security', 'XZNXSYVX', 'United Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000678', 'CL000003', '2025-05-05', 5184.65, 'GBP', 'Credit', 'Wire Transfer', 'NPZYJP1Y', 'International Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000679', 'CL000003', '2025-05-12', 150.96, 'EUR', 'Debit', 'Wire Transfer', 'XEBLLUS3', 'United Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000680', 'CL000003', '2025-05-22', 1807.1, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000681', 'CL000003', '2025-05-09', 1256.2, 'JPY', 'Debit', 'Wire Transfer', 'TLPJUS9E', 'First Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000682', 'CL000003', '2025-05-11', 928.91, 'CHF', 'Credit', 'Wire Transfer', 'YGIUHKFB', 'Beta Commerce Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000683', 'CL000003', '2025-05-10', 861.45, 'CHF', 'Credit', 'Wire Transfer', 'LJNIAF43', 'Premier Asset Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000684', 'CL000003', '2025-05-11', 977.24, 'GBP', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000685', 'CL000003', '2025-05-17', 592.68, 'EUR', 'Credit', 'Security', 'IGYHVEQ1', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000686', 'CL000003', '2025-05-22', 1440.61, 'GBP', 'Credit', 'Wire Transfer', 'OCYRFIFB', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000687', 'CL000003', '2025-05-23', 5466.66, 'USD', 'Debit', 'Wire Transfer', 'SRZCNLOM', 'First Trade Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000688', 'CL000003', '2025-05-20', 1468.92, 'CNY', 'Credit', 'Security', 'GCGOSDFO', 'Alpha Wealth GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000689', 'CL000003', '2025-05-11', 262.14, 'CHF', 'Credit', 'Wire Transfer', 'DNTELYHR', 'Alpha Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000690', 'CL000003', '2025-06-01', 3698.72, 'EUR', 'Credit', 'Wire Transfer', 'VOXTKPRJ', 'Prime Asset Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000691', 'CL000003', '2025-05-06', 1493.33, 'CHF', 'Debit', 'Wire Transfer', 'KFKXKPVZ', 'Omega Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000692', 'CL000003', '2025-05-09', 1723.38, 'AUD', 'Credit', 'Security', 'ISHGLYEG', 'Elite Financial AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000693', 'CL000003', '2025-05-25', 529.92, 'CHF', 'Credit', 'Security', 'WPSBFRIK', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000694', 'CL000003', '2025-05-05', 705.06, 'JPY', 'Debit', 'Security', 'HYQTSODA', 'Premier Wealth Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000695', 'CL000003', '2025-05-10', 1105.42, 'USD', 'Credit', 'Wire Transfer', 'UWVGBE2D', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000696', 'CL000003', '2025-06-30', 529.36, 'USD', 'Debit', 'Security', 'KXLGGBIU', 'Beta Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000697', 'CL000003', '2025-06-03', 1419.64, 'EUR', 'Debit', 'Cheque', 'CAIRAF8O', 'Beta Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000698', 'CL000003', '2025-06-14', 8529.32, 'USD', 'Credit', 'Wire Transfer', 'YCZEBE8J', 'Omega Financial Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000699', 'CL000003', '2025-06-05', 1668.56, 'JPY', 'Credit', 'Wire Transfer', 'RYDDDKDT', 'Omega Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000700', 'CL000003', '2025-06-14', 373.7, 'GBP', 'Debit', 'Wire Transfer', 'ZNDRJP8F', 'International GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000701', 'CL000003', '2025-06-05', 1853.57, 'EUR', 'Credit', 'Security', 'NZJOFR3W', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000702', 'CL000003', '2025-06-16', 967.78, 'CHF', 'Debit', 'Security', 'VKBQZWBF', 'Prime Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000703', 'CL000003', '2025-07-01', 527.11, 'GBP', 'Debit', 'Security', 'UJXHSDVP', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000704', 'CL000003', '2025-06-23', 7109.21, 'CHF', 'Debit', 'Security', 'GGOCJP03', 'Omega Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000705', 'CL000003', '2025-06-15', 576.76, 'GBP', 'Debit', 'Wire Transfer', 'CAOZYEMX', 'Premier Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000706', 'CL000003', '2025-06-25', 2568.23, 'CHF', 'Credit', 'Wire Transfer', 'YUQRCU7P', 'International Asset Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000707', 'CL000003', '2025-06-11', 575.35, 'CHF', 'Credit', 'Security', 'OITLIR36', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000708', 'CL000003', '2025-06-13', 206.1, 'EUR', 'Credit', 'Security', 'LJXLMMFG', 'International Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000709', 'CL000003', '2025-06-16', 987.92, 'USD', 'Credit', 'Wire Transfer', 'KXLGGBIU', 'Global Commerce Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000710', 'CL000003', '2025-06-18', 524.46, 'AUD', 'Debit', 'Security', 'WPDZAF2M', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000711', 'CL000003', '2025-06-15', 1981.72, 'CHF', 'Credit', 'Wire Transfer', 'FIPFAUHC', 'United Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000712', 'CL000003', '2025-06-27', 704.5, 'JPY', 'Credit', 'Wire Transfer', 'FIPFAUHC', 'Alpha Wealth Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000713', 'CL000003', '2025-07-25', 470.89, 'EUR', 'Credit', 'Security', 'SSKLDEK5', 'Beta Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000714', 'CL000003', '2025-07-18', 189.11, 'USD', 'Credit', 'Security', 'OQXVCUCF', 'United Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000715', 'CL000003', '2025-07-08', 609.81, 'EUR', 'Debit', 'Wire Transfer', 'QFXWAUCI', 'Prime Asset Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000716', 'CL000003', '2025-07-29', 1376.31, 'CHF', 'Debit', 'Security', 'CAOZYEMX', 'First Wealth Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000717', 'CL000003', '2025-07-29', 2211.66, 'CHF', 'Credit', 'Cash', 'OITLIR36', 'United Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000718', 'CL000003', '2025-07-09', 2878.0, 'CHF', 'Debit', 'Wire Transfer', 'NQQXMM1Q', 'Global Wealth Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000719', 'CL000003', '2025-07-18', 313.65, 'CHF', 'Debit', 'Security', 'LJXLMMFG', 'Omega Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000720', 'CL000003', '2025-07-08', 451.22, 'EUR', 'Debit', 'Security', 'CAOZYEMX', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000721', 'CL000003', '2025-07-09', 277.61, 'EUR', 'Credit', 'Wire Transfer', 'QMUCLYHY', 'Prime Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000722', 'CL000003', '2025-07-17', 976.53, 'USD', 'Debit', 'Wire Transfer', 'UECLNLPQ', 'Prime Commerce Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000723', 'CL000003', '2025-08-01', 547.87, 'CHF', 'Credit', 'Wire Transfer', 'NEXWCAKX', 'International Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000724', 'CL000003', '2025-07-10', 2706.93, 'USD', 'Debit', 'Wire Transfer', 'YWWJNOF4', 'International AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000725', 'CL000003', '2025-07-17', 4826.77, 'EUR', 'Debit', 'Wire Transfer', 'GCGOSDFO', 'First Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000726', 'CL000003', '2025-07-10', 345.0, 'EUR', 'Debit', 'Cheque', 'MTWDUSFY', 'Beta Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000727', 'CL000003', '2025-08-01', 802.94, 'USD', 'Credit', 'Wire Transfer', 'PTLXIRUZ', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000728', 'CL000003', '2025-07-30', 764.38, 'CHF', 'Debit', 'Security', 'SYNMCUCB', 'Global Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000729', 'CL000003', '2025-07-10', 466.48, 'GBP', 'Credit', 'Cash', 'XUFUIRZQ', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000730', 'CL000003', '2025-07-23', 935.11, 'CHF', 'Credit', 'Cheque', 'YGIUHKFB', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000731', 'CL000003', '2025-07-10', 624.99, 'CHF', 'Credit', 'Cash', 'HMIZSOJ5', 'Prime Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000732', 'CL000003', '2025-07-28', 537.17, 'CHF', 'Debit', 'Wire Transfer', 'DNTELYHR', 'Omega Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000733', 'CL000003', '2025-07-18', 5498.78, 'CHF', 'Credit', 'Wire Transfer', 'NTUXSYRJ', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000734', 'CL000003', '2025-07-05', 4060.0, 'EUR', 'Debit', 'Security', 'GFYWGBLX', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000735', 'CL000003', '2025-07-08', 1354.0, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000736', 'CL000003', '2025-08-25', 466.85, 'EUR', 'Debit', 'Wire Transfer', 'SSKLDEK5', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000737', 'CL000003', '2025-08-17', 1834.81, 'EUR', 'Credit', 'Security', 'HPSFDKWJ', 'First Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000738', 'CL000003', '2025-08-29', 7281.6, 'CHF', 'Debit', 'Wire Transfer', 'LZZBNOHJ', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000739', 'CL000003', '2025-08-15', 2101.65, 'EUR', 'Debit', 'Security', 'YUQRCU7P', 'Elite Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000740', 'CL000003', '2025-08-30', 969.77, 'USD', 'Credit', 'Cash', 'SSKLDEK5', 'Premier Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000741', 'CL000003', '2025-08-11', 4634.88, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000742', 'CL000003', '2025-08-15', 3829.13, 'EUR', 'Debit', 'Wire Transfer', 'YRCXUS11', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000743', 'CL000003', '2025-08-07', 256.45, 'USD', 'Credit', 'Wire Transfer', 'KXLGGBIU', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000744', 'CL000003', '2025-08-05', 300.99, 'CHF', 'Debit', 'Cheque', 'ZNDRJP8F', 'Elite AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000745', 'CL000003', '2025-08-07', 1148.71, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000746', 'CL000003', '2025-08-12', 240.46, 'CHF', 'Credit', 'Security', 'VOXTKPRJ', 'Omega Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000747', 'CL000003', '2025-08-20', 903.6, 'USD', 'Debit', 'Wire Transfer', 'MYHKSY64', 'First Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000748', 'CL000003', '2025-08-27', 421.26, 'CHF', 'Debit', 'Security', 'PIULLU9E', 'Omega Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000749', 'CL000003', '2025-08-17', 838.91, 'CHF', 'Credit', 'Security', 'YUHSSE02', 'International Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000750', 'CL000003', '2025-08-03', 3636.1, 'USD', 'Debit', 'Wire Transfer', 'SHIKSGOK', 'Elite Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000751', 'CL000003', '2025-08-20', 278.31, 'CNY', 'Credit', 'Wire Transfer', 'OQXVCUCF', 'Elite Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000752', 'CL000003', '2025-08-16', 1866.82, 'EUR', 'Credit', 'Cash', 'PDDIAT62', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000753', 'CL000003', '2025-08-04', 1682.59, 'CHF', 'Credit', 'Wire Transfer', 'ESEJFR9X', 'International Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000754', 'CL000003', '2025-08-28', 1249.34, 'USD', 'Debit', 'Security', 'ENLHBY9P', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000755', 'CL000003', '2025-08-16', 541.41, 'USD', 'Debit', 'Wire Transfer', 'TEKHDEH1', 'United Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000756', 'CL000003', '2025-08-20', 557.81, 'CHF', 'Debit', 'Security', 'LIIZRUOS', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000757', 'CL000003', '2025-09-07', 1152.84, 'JPY', 'Credit', 'Security', 'OCYRFIFB', 'Elite Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000758', 'CL000003', '2025-09-23', 1208.87, 'EUR', 'Credit', 'Wire Transfer', 'YUHSSE02', 'Prime Financial Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000759', 'CL000003', '2025-09-22', 289.99, 'USD', 'Debit', 'Wire Transfer', 'SSKLDEK5', 'Prime Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000760', 'CL000003', '2025-09-03', 496.98, 'CHF', 'Credit', 'Security', 'UWVGBE2D', 'United Trade Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000761', 'CL000003', '2025-09-27', 281.86, 'USD', 'Credit', 'Wire Transfer', 'UJXHSDVP', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000762', 'CL000003', '2025-09-05', 5173.46, 'GBP', 'Debit', 'Wire Transfer', 'TRHRHKWD', 'Elite Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000763', 'CL000003', '2025-09-25', 450.7, 'CHF', 'Credit', 'Cash', 'JHSDSOBB', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000764', 'CL000003', '2025-09-09', 1748.32, 'CHF', 'Credit', 'Cash', 'YWWJNOF4', 'Elite Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000765', 'CL000003', '2025-09-13', 793.36, 'CHF', 'Credit', 'Wire Transfer', 'XUFUIRZQ', 'First Financial Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000766', 'CL000003', '2025-09-10', 1594.47, 'AUD', 'Debit', 'Wire Transfer', 'YUQRCU7P', 'Elite Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000767', 'CL000003', '2025-09-05', 404.11, 'EUR', 'Credit', 'Wire Transfer', 'PIULLU9E', 'Global Commerce Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000768', 'CL000003', '2025-09-16', 123.43, 'EUR', 'Credit', 'Wire Transfer', 'BIBMSE7T', 'Global Financial Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000769', 'CL000003', '2025-09-01', 680.97, 'GBP', 'Credit', 'Wire Transfer', 'MXVCDKPJ', 'International Corp');

-- CRM Notes from Batch 3
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0200', 'CL000003', '2025-01-18', 'Estate planning consultation. Client working with legal advisors on family trust structure. May impact account configuration in Q2.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0201', 'CL000003', '2025-01-20', 'Discussed upcoming outgoing wire of approximately CHF 9.1k expected late January. Client confirmed beneficiary details and purpose.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0202', 'CL000003', '2025-01-20', 'Confirmed receipt of incoming CHF 9.4k transfer from Prime Holdings. Routine operational confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0203', 'CL000003', '2025-01-21', 'Tax optimization discussion ahead of year-end reporting. Client working with tax advisor. Reviewed documentation requirements.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0204', 'CL000003', '2025-01-22', 'Quarterly portfolio review completed. Client overall satisfied with performance. Discussed potential rebalancing in Q1. No immediate actions required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0205', 'CL000003', '2025-01-21', 'Telephone instruction received for approximately CHF 7.6k incoming wire. Beneficiary: Elite Partners. Client authenticated via dual control. Executing 21 Jan.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0206', 'CL000003', '2025-01-19', 'Follow-up on outgoing payment to Prime Group. Client verified the approximately CHF 9.9k transfer and provided final authorization.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0207', 'CL000003', '2025-01-19', 'Client inquiry regarding outgoing transfer of approximately CHF 8.2k to Global GmbH. Status confirmed as completed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0208', 'CL000003', '2025-01-23', 'Confirmed details for incoming payment: CHF 9.9k from United AG. Client satisfied with execution timeline.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0209', 'CL000003', '2025-01-25', 'Long-term asset allocation review. Client interested in increasing alternatives exposure. Exploring private equity opportunities.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0210', 'CL000003', '2024-10-30', 'Follow-up call regarding an older USD credit of approximately CHF 3.3k from First Group. Client satisfied with booking.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0211', 'CL000003', '2024-10-31', 'Annual relationship review scheduled for next month. Client requested detailed fee breakdown and performance attribution. Preparing materials.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0212', 'CL000003', '2024-10-14', 'Client discussed two small October debits to Elite Wealth Trading and Elite Financial Corp totalling approximately CHF 1.1k. Part of portfolio adjustment.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0213', 'CL000003', '2024-10-26', 'Confirmed incoming GBP wire of approximately CHF 1.6k from Beta Partners. Client acknowledged receipt.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0214', 'CL000003', '2024-10-29', 'Reviewed security-related debit to International Holdings. Client confirmed transaction intent and long-term positioning.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0215', 'CL000003', '2024-10-15', 'Client traveling to Europe for 2 weeks. Updated contact preferences and emergency contacts. All communication via secure email only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0216', 'CL000003', '2024-10-17', 'Processing incoming payment per client instruction. Counterparty: Elite GmbH. Amount: approximately CHF 801. Settlement 17 Oct.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0217', 'CL000003', '2024-10-11', 'Batch payment instruction received: two incoming credits from Prime Trading (CHF 1.5k) and Premier Corp (CHF 1.1k). Client authorized same-day settlement.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0218', 'CL000003', '2024-10-31', 'Detailed review of multiple October transactions with Prime Holdings and International Wealth Investments. Client comfortable with activity.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0219', 'CL000003', '2024-11-05', 'Annual KYC refresh completed. Updated employment details and income sources. No material changes to risk assessment.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0220', 'CL000003', '2024-11-16', 'Received standing instruction for USD security credit from Omega AG. Scheduled for 16 Nov. Client confirmed via secure message.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0221', 'CL000003', '2024-11-24', 'Client requested access to enhanced online reporting platform. Arranged demo with digital banking team for next week.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0222', 'CL000003', '2024-12-01', 'Client submitted transfer request: Prime Trade Limited, approximately CHF 5.3k outgoing in EUR. Compliance approved, executing 1 Dec.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0223', 'CL000003', '2024-12-02', 'Follow-up call regarding debit to Beta Wealth GmbH. Client satisfied with execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0224', 'CL000003', '2024-12-10', 'Succession planning discussion. Client considering gradual wealth transfer to next generation. Referred to trust and estate specialists.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0225', 'CL000003', '2024-12-02', 'Confirmed receipt of cheque credit from United Trade Trading. Client satisfied with processing timeline.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0226', 'CL000003', '2024-12-15', 'Discussed potential currency hedging strategy given CHF strength. Client wants to wait and monitor. Scheduled review for next quarter.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0227', 'CL000003', '2024-12-16', 'Client requested status update on cash credit from Premier Investments. Processing completed successfully.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0228', 'CL000003', '2025-01-03', 'Telephone instruction received for early January cash inflow. Beneficiary: United Holdings. Client authenticated via dual control.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0229', 'CL000003', '2024-12-14', 'Client meeting notes: Discussed outgoing payment to Premier AG. Counterparty approved by compliance. Processing timeline confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0230', 'CL000003', '2025-01-04', 'Follow-up call regarding the incoming wire from First Partners. Client confirmed all details.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0231', 'CL000003', '2025-01-11', 'Reviewed mid-January security debit. Client comfortable with investment rationale and diversification strategy.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0232', 'CL000003', '2025-01-15', 'Client raised concerns about geopolitical risks. Reviewed portfolio stress tests. Comfortable with current diversification.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0233', 'CL000003', '2025-01-26', 'Confirmed details for incoming wire: approximately CHF 11.3k from United Group. Client satisfied with execution timeline.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0234', 'CL000003', '2025-03-01', 'Discussed upcoming outgoing payment to Alpha Partners for approximately CHF 8.8k. Client confirmed details and requested execution on 1 Mar.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0235', 'CL000003', '2025-03-15', 'Client signature verification for new mandate. Documents returned, currently in processing. Expected completion within 5 business days.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0236', 'CL000003', '2025-03-27', 'Updated beneficial owner information per client notification. Compliance review in progress. Account fully operational.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0237', 'CL000003', '2025-03-26', 'Confirmed details for outgoing payment: CHF 5.7k to Prime Corp. Client satisfied with execution timeline.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0238', 'CL000003', '2025-04-04', 'Client requested confirmation on an incoming payment of approximately CHF 5.3k from Premier AG. Everything processed correctly.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0239', 'CL000003', '2025-04-21', 'Discussed upcoming regulatory changes to cross-border reporting. Client acknowledged requirements. No concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0240', 'CL000003', '2025-04-07', 'Client discussed two outgoing payments in early April: Alpha GmbH (CHF 4.6k cheque) and Prime GmbH (CHF 8.0k wire). Confirmed execution dates.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0241', 'CL000003', '2025-04-07', 'Annual regulatory reporting completed. Client copy sent via secure delivery. No questions or concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0242', 'CL000003', '2025-04-20', 'Client inquiry about sustainable investment options. Sent ESG portfolio framework document. Follow-up call scheduled.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0243', 'CL000003', '2025-04-19', 'Confirmed outgoing security debit of approximately CHF 7.4k to Global Capital. Client acknowledged strategic allocation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0244', 'CL000003', '2025-05-01', 'Discussed upcoming changes to fee structure. Client acknowledged and had no concerns. Sent follow-up email with detailed breakdown.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0245', 'CL000003', '2025-05-05', 'Confirmed incoming wire of approximately CHF 6.6k from International Partners. Routine confirmation provided.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0246', 'CL000003', '2025-05-23', 'Follow-up on outgoing payment to First Trade Capital. Client verified transfer and provided final authorization.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0247', 'CL000003', '2025-05-31', 'Quarterly portfolio review completed. Client overall satisfied with performance. Discussed potential rebalancing in Q2. No immediate actions required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0248', 'CL000003', '2025-06-14', 'Processing incoming payment per client instruction. Counterparty: Omega Financial Partners. Amount: approximately CHF 11.5k. Settlement 14 Jun.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0249', 'CL000003', '2025-06-18', 'Client called regarding general account access issues. Resolved MFA setup problem. No transactions discussed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0250', 'CL000003', '2025-06-30', 'Discussed upcoming liquidity needs for Q3. Client comfortable with current cash position. Planning only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0251', 'CL000003', '2025-06-23', 'Confirmed details for outgoing security debit: Omega Group. Client satisfied with execution timeline and investment rationale.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0252', 'CL000003', '2025-07-01', 'Client traveling to Asia for 3 weeks. Updated contact preferences and emergency contacts. All communication via secure email only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0253', 'CL000003', '2025-07-18', 'Confirmed incoming wire of approximately CHF 8.9k from Alpha Partners. Client acknowledged receipt.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0254', 'CL000003', '2025-07-31', 'Client requested clarification on July account activity summary. Reviewed movements and client satisfied.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0255', 'CL000003', '2025-08-29', 'Detailed review of outgoing payment arrangement with Prime GmbH. Amount: approximately CHF 10.4k, scheduled 29 Aug. Client requested email confirmation post-execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0256', 'CL000003', '2025-08-16', 'Client requested historical statements for tax filing purposes. Provided via secure channel.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0257', 'CL000003', '2025-08-17', 'Received standing instruction for security credit from First Limited. Scheduled for 17 Aug. Client confirmed via secure message.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0258', 'CL000003', '2025-08-31', 'End-of-month reconciliation call. Client satisfied with August activity. No discrepancies noted.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0259', 'CL000003', '2025-09-10', 'Annual relationship review scheduled for October. Client requested detailed performance attribution. Preparing materials.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0260', 'CL000003', '2025-09-23', 'Follow-up call regarding incoming wire of approximately CHF 6.8k from Prime Financial Partners. Client satisfied with execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0261', 'CL000003', '2025-09-30', 'End-of-period relationship review completed. Client comfortable with service level and overall account management.');

-- Matches from Batch 3
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300000', 'TR00000526', 'N0205', 0.7894994735717773);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300001', 'TR00000526', 'N0201', 0.6711768456867763);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300002', 'TR00000526', 'N0202', 0.6685386964253017);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300003', 'TR00000527', 'N0202', 0.9881930303573608);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300004', 'TR00000527', 'N0201', 0.8066304922103881);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300005', 'TR00000527', 'N0206', 0.8049246331623622);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300006', 'TR00000528', 'N0205', 0.6904399633407592);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300007', 'TR00000528', 'N0201', 0.6626399108341763);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300008', 'TR00000528', 'N0202', 0.6557114430836268);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300009', 'TR00000529', 'N0205', 0.6638731479644775);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300010', 'TR00000529', 'N0207', 0.6157730000359671);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300011', 'TR00000529', 'N0203', 0.5799908876419066);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300012', 'TR00000530', 'N0208', 0.7594599553516933);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300013', 'TR00000530', 'N0201', 0.6571018014635358);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300014', 'TR00000530', 'N0202', 0.648517552443913);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300015', 'TR00000531', 'N0205', 0.5963791268212455);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300016', 'TR00000531', 'N0237', 0.5665065288543701);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300017', 'TR00000531', 'N0222', 0.5528709292411804);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300018', 'TR00000532', 'N0205', 0.9788920593261718);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300019', 'TR00000532', 'N0207', 0.7346253531319754);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300020', 'TR00000532', 'N0201', 0.6648755141666958);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300021', 'TR00000533', 'N0205', 0.6302333899906704);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300022', 'TR00000533', 'N0202', 0.6097781555993216);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300023', 'TR00000533', 'N0201', 0.5929059522492545);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300024', 'TR00000534', 'N0207', 0.772477216379983);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300025', 'TR00000534', 'N0205', 0.6819030012403215);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300026', 'TR00000534', 'N0206', 0.6707084247044155);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300027', 'TR00000535', 'N0208', 0.6677300998142788);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300028', 'TR00000535', 'N0205', 0.655853315762111);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300029', 'TR00000535', 'N0209', 0.5983044374556769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300030', 'TR00000536', 'N0206', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300031', 'TR00000536', 'N0202', 0.7943388482502528);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300032', 'TR00000536', 'N0201', 0.7723020144871303);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300033', 'TR00000537', 'N0201', 0.8008450031280517);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300034', 'TR00000537', 'N0202', 0.8005177736282348);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300035', 'TR00000537', 'N0206', 0.766381413596017);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300036', 'TR00000538', 'N0207', 0.9967733097076416);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300037', 'TR00000538', 'N0205', 0.7164979117257254);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300038', 'TR00000538', 'N0206', 0.6872199892997741);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300039', 'TR00000539', 'N0205', 0.6826460719108581);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300040', 'TR00000539', 'N0207', 0.6159907954079764);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300041', 'TR00000539', 'N0203', 0.5844866633415222);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300042', 'TR00000540', 'N0208', 0.9980696749687196);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300043', 'TR00000540', 'N0202', 0.7031634773526872);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300044', 'TR00000540', 'N0201', 0.6987822140966142);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300045', 'TR00000541', 'N0213', 0.5109977010318211);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300046', 'TR00000541', 'N0225', 0.4709999275207519);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300047', 'TR00000541', 'N0212', 0.4686651114055089);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300048', 'TR00000542', 'N0210', 0.9668851327896116);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300049', 'TR00000542', 'N0214', 0.6214310594967434);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300050', 'TR00000542', 'N0211', 0.5872042128017971);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300051', 'TR00000543', 'N0213', 0.6493000337055752);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300052', 'TR00000543', 'N0214', 0.5890632765633719);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300053', 'TR00000543', 'N0211', 0.479192498752049);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300054', 'TR00000544', 'N0212', 0.5273297807148525);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300055', 'TR00000544', 'N0225', 0.4672101179758707);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300056', 'TR00000544', 'N0246', 0.4617639183998108);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300057', 'TR00000545', 'N0213', 0.6011259984970094);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300058', 'TR00000545', 'N0214', 0.5419276799474444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300059', 'TR00000545', 'N0211', 0.457894263948713);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300060', 'TR00000546', 'N0214', 0.8764200639724732);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300061', 'TR00000546', 'N0218', 0.601586994443621);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300062', 'TR00000546', 'N0245', 0.5536034059524536);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300063', 'TR00000547', 'N0216', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300064', 'TR00000547', 'N0212', 0.5777442373548235);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300065', 'TR00000547', 'N0246', 0.4474344491958618);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300066', 'TR00000548', 'N0217', 0.9678981494903564);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300067', 'TR00000548', 'N0212', 0.56209737437112);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300068', 'TR00000548', 'N0213', 0.5335829496383667);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300069', 'TR00000549', 'N0227', 0.5902406406402588);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300070', 'TR00000549', 'N0214', 0.5249882136072431);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300071', 'TR00000549', 'N0229', 0.4641442012786865);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300072', 'TR00000550', 'N0218', 0.8109188032150269);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300073', 'TR00000550', 'N0211', 0.6186541080474853);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300074', 'TR00000550', 'N0214', 0.6038977711541312);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300075', 'TR00000551', 'N0212', 0.7356188285918464);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300076', 'TR00000551', 'N0217', 0.5951336162430899);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300077', 'TR00000551', 'N0216', 0.5801226649965558);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300078', 'TR00000552', 'N0217', 0.5500325257437569);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300079', 'TR00000552', 'N0229', 0.4768029928207397);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300080', 'TR00000552', 'N0210', 0.4529182434082031);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300081', 'TR00000553', 'N0245', 0.5447714281082153);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300082', 'TR00000553', 'N0260', 0.5198310852050781);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300083', 'TR00000553', 'N0214', 0.4656932663917542);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300084', 'TR00000554', 'N0225', 0.4887486052513122);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300085', 'TR00000554', 'N0228', 0.4783553314208984);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300086', 'TR00000554', 'N0214', 0.4608505010604858);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300087', 'TR00000555', 'N0216', 0.5330668965975444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300088', 'TR00000555', 'N0229', 0.4560328960418701);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300089', 'TR00000555', 'N0225', 0.446713900566101);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300090', 'TR00000556', 'N0246', 0.4557814836502075);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300091', 'TR00000556', 'N0228', 0.4431474844614664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300092', 'TR00000556', 'N0229', 0.4361007928848266);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300093', 'TR00000557', 'N0217', 0.8573424768447876);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300094', 'TR00000557', 'N0212', 0.6523885645185198);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300095', 'TR00000557', 'N0216', 0.4978143385478428);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300096', 'TR00000558', 'N0218', 0.6298779368400573);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300097', 'TR00000558', 'N0211', 0.6199717164039611);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300098', 'TR00000558', 'N0214', 0.5914834874016898);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300099', 'TR00000559', 'N0216', 0.6052371144294738);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300100', 'TR00000559', 'N0246', 0.4692827582359313);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300101', 'TR00000559', 'N0230', 0.4657945823669434);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300102', 'TR00000560', 'N0225', 0.4698923540115357);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300103', 'TR00000560', 'N0228', 0.4556687784194946);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300104', 'TR00000560', 'N0246', 0.4433536291122436);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300105', 'TR00000561', 'N0216', 0.8250823327473231);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300106', 'TR00000561', 'N0212', 0.6104277699334281);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300107', 'TR00000561', 'N0229', 0.4818419170379638);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300108', 'TR00000562', 'N0211', 0.6339444875717163);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300109', 'TR00000562', 'N0218', 0.6190986037254333);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300110', 'TR00000562', 'N0216', 0.6119976758956909);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300111', 'TR00000563', 'N0216', 0.5128876638412475);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300112', 'TR00000563', 'N0246', 0.4544553995132446);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300113', 'TR00000563', 'N0225', 0.4455183148384094);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300114', 'TR00000564', 'N0220', 0.6109331917762757);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300115', 'TR00000564', 'N0260', 0.5300153613090515);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300116', 'TR00000564', 'N0245', 0.5198844790458679);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300117', 'TR00000565', 'N0221', 0.6035860368183681);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300118', 'TR00000565', 'N0251', 0.4682101170221964);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300119', 'TR00000565', 'N0223', 0.4513668100039164);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300120', 'TR00000566', 'N0225', 0.7241675090789794);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300121', 'TR00000566', 'N0223', 0.6552232027053833);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300122', 'TR00000566', 'N0216', 0.5912544012069703);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300123', 'TR00000567', 'N0221', 0.6262725830078124);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300124', 'TR00000567', 'N0225', 0.4355920314788818);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300125', 'TR00000567', 'N0227', 0.4347659826278686);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300126', 'TR00000568', 'N0225', 0.6109760917936052);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300127', 'TR00000568', 'N0223', 0.5488107647214617);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300128', 'TR00000568', 'N0228', 0.4667906475067139);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300129', 'TR00000569', 'N0222', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300130', 'TR00000569', 'N0225', 0.6799957264037361);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300131', 'TR00000569', 'N0223', 0.6256717034748622);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300132', 'TR00000570', 'N0225', 0.692808175086975);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300133', 'TR00000570', 'N0223', 0.6833242607116699);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300134', 'TR00000570', 'N0216', 0.500815577507019);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300135', 'TR00000571', 'N0223', 0.891419906616211);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300136', 'TR00000571', 'N0225', 0.6861764311790466);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300137', 'TR00000571', 'N0213', 0.4579249540964762);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300138', 'TR00000572', 'N0216', 0.4646788358688354);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300139', 'TR00000572', 'N0246', 0.457715356349945);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300140', 'TR00000572', 'N0225', 0.4470822930335998);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300141', 'TR00000573', 'N0221', 0.5399877990995134);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300142', 'TR00000573', 'N0225', 0.5148352725165231);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300143', 'TR00000573', 'N0223', 0.5075206024306161);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300144', 'TR00000574', 'N0216', 0.6100089788436889);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300145', 'TR00000574', 'N0251', 0.4795917224884033);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300146', 'TR00000574', 'N0229', 0.4486228466033935);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300147', 'TR00000575', 'N0225', 0.6477688857487269);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300148', 'TR00000575', 'N0223', 0.6179767676762172);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300149', 'TR00000575', 'N0246', 0.4754931998252868);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300150', 'TR00000576', 'N0221', 0.6278811573982239);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300151', 'TR00000576', 'N0225', 0.4713516187667846);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300152', 'TR00000576', 'N0228', 0.4516645622253418);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300153', 'TR00000577', 'N0221', 0.6112566181591579);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300154', 'TR00000577', 'N0223', 0.4901600551605224);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300155', 'TR00000577', 'N0246', 0.4550264875094095);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300156', 'TR00000578', 'N0246', 0.4619199514389038);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300157', 'TR00000578', 'N0214', 0.4557314348220825);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300158', 'TR00000578', 'N0221', 0.4423170668738229);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300159', 'TR00000579', 'N0222', 0.5625177264213562);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300160', 'TR00000579', 'N0240', 0.5524051904678344);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300161', 'TR00000579', 'N0238', 0.5296254754066467);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300162', 'TR00000580', 'N0216', 0.4995652389526367);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300163', 'TR00000580', 'N0246', 0.4835987281799316);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300164', 'TR00000580', 'N0219', 0.4600160990442548);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300165', 'TR00000581', 'N0225', 0.6189035671097891);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300166', 'TR00000581', 'N0223', 0.5850038783890861);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300167', 'TR00000581', 'N0227', 0.4379098534584045);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300168', 'TR00000582', 'N0222', 0.564428174495697);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300169', 'TR00000582', 'N0237', 0.5380280494689942);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300170', 'TR00000582', 'N0238', 0.5200134754180908);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300171', 'TR00000583', 'N0221', 0.6128806063107082);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300172', 'TR00000583', 'N0212', 0.5211575269699097);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300173', 'TR00000583', 'N0216', 0.487481939792633);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300174', 'TR00000584', 'N0225', 0.714646918773651);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300175', 'TR00000584', 'N0223', 0.684181547164917);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300176', 'TR00000584', 'N0222', 0.6633884617260524);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300177', 'TR00000585', 'N0225', 0.918046374320984);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300178', 'TR00000585', 'N0223', 0.662674880027771);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300179', 'TR00000585', 'N0248', 0.5784301280975341);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300180', 'TR00000586', 'N0229', 0.6559817382267543);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300181', 'TR00000586', 'N0227', 0.6557143947056362);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300182', 'TR00000586', 'N0226', 0.6357352375984191);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300183', 'TR00000587', 'N0216', 0.6122374296188354);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300184', 'TR00000587', 'N0224', 0.5398217099053519);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300185', 'TR00000587', 'N0229', 0.5006994489261083);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300186', 'TR00000588', 'N0227', 0.8777975034713745);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300187', 'TR00000588', 'N0229', 0.6510682075364249);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300188', 'TR00000588', 'N0226', 0.6232809969357083);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300189', 'TR00000589', 'N0228', 0.8747327756881714);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300190', 'TR00000589', 'N0230', 0.6176508971623011);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300191', 'TR00000589', 'N0225', 0.4728744697570801);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300192', 'TR00000590', 'N0229', 0.885664029121399);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300193', 'TR00000590', 'N0227', 0.6080333440644401);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300194', 'TR00000590', 'N0226', 0.5938193627766201);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300195', 'TR00000591', 'N0228', 0.6339497872761317);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300196', 'TR00000591', 'N0230', 0.6105731623513357);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300197', 'TR00000591', 'N0216', 0.4750248670578003);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300198', 'TR00000592', 'N0216', 0.5049986433982849);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300199', 'TR00000592', 'N0217', 0.4749835443496704);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300200', 'TR00000592', 'N0229', 0.4473052024841308);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300201', 'TR00000593', 'N0224', 0.5344385164124625);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300202', 'TR00000593', 'N0225', 0.5176824453898838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300203', 'TR00000593', 'N0212', 0.5101888656616211);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300204', 'TR00000594', 'N0228', 0.485271177973066);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300205', 'TR00000594', 'N0229', 0.4773061227798462);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300206', 'TR00000594', 'N0230', 0.4646675995418003);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300207', 'TR00000595', 'N0225', 0.5829985584531512);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300208', 'TR00000595', 'N0223', 0.5578965510640825);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300209', 'TR00000595', 'N0212', 0.5234583616256714);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300210', 'TR00000596', 'N0228', 0.5665148721422468);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300211', 'TR00000596', 'N0230', 0.500290082182203);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300212', 'TR00000596', 'N0225', 0.4777558398246765);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300213', 'TR00000597', 'N0231', 0.6653374910354615);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300214', 'TR00000597', 'N0243', 0.5750678539276123);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300215', 'TR00000597', 'N0207', 0.5720466057459513);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300216', 'TR00000598', 'N0216', 0.5937946319580079);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300217', 'TR00000598', 'N0209', 0.5351620980671474);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300218', 'TR00000598', 'N0203', 0.4602854575429643);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300219', 'TR00000599', 'N0230', 0.8671003532409668);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300220', 'TR00000599', 'N0228', 0.6321034976414273);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300221', 'TR00000599', 'N0212', 0.4849487781524658);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300222', 'TR00000600', 'N0230', 0.5770769136292594);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300223', 'TR00000600', 'N0228', 0.5610678161893572);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300224', 'TR00000600', 'N0231', 0.4838905555861337);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300225', 'TR00000601', 'N0232', 0.5947259068489075);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300226', 'TR00000601', 'N0231', 0.5287804280008588);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300227', 'TR00000601', 'N0225', 0.4633566419283549);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300228', 'TR00000602', 'N0231', 0.6600180625915527);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300229', 'TR00000602', 'N0214', 0.4750950527191162);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300230', 'TR00000602', 'N0210', 0.4569740295410156);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300231', 'TR00000603', 'N0216', 0.593799889087677);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300232', 'TR00000603', 'N0246', 0.4753686110178629);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300233', 'TR00000603', 'N0229', 0.4530240297317505);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300234', 'TR00000604', 'N0203', 0.5325286694935389);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300235', 'TR00000604', 'N0213', 0.4854555678367614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300236', 'TR00000604', 'N0246', 0.4486084342002868);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300237', 'TR00000605', 'N0218', 0.5650212240219116);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300238', 'TR00000605', 'N0231', 0.5502432363373893);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300239', 'TR00000605', 'N0232', 0.4947436468941825);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300240', 'TR00000606', 'N0233', 0.5879187655448914);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300241', 'TR00000606', 'N0209', 0.5357896276882717);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300242', 'TR00000606', 'N0212', 0.4894192695617676);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300243', 'TR00000607', 'N0213', 0.5081115126609802);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300244', 'TR00000607', 'N0246', 0.4707218448321024);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300245', 'TR00000607', 'N0229', 0.4687761783599853);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300246', 'TR00000608', 'N0231', 0.5905211397579738);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300247', 'TR00000608', 'N0222', 0.4835429469744364);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300248', 'TR00000608', 'N0225', 0.4815358591079712);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300249', 'TR00000609', 'N0231', 0.5471768634659904);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300250', 'TR00000609', 'N0230', 0.4952782494681221);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300251', 'TR00000609', 'N0246', 0.4838602972030639);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300252', 'TR00000610', 'N0230', 0.6467518993786403);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300253', 'TR00000610', 'N0228', 0.6037093894822256);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300254', 'TR00000610', 'N0217', 0.5504790782928467);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300255', 'TR00000611', 'N0229', 0.463454532623291);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300256', 'TR00000611', 'N0251', 0.4516058921813964);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300257', 'TR00000611', 'N0214', 0.4508083820343017);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300258', 'TR00000612', 'N0231', 0.5669700281960623);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300259', 'TR00000612', 'N0230', 0.4938545329230172);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300260', 'TR00000612', 'N0216', 0.4750668883323669);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300261', 'TR00000613', 'N0229', 0.4672906279563903);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300262', 'TR00000613', 'N0210', 0.4521677255630493);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300263', 'TR00000613', 'N0251', 0.4464817643165588);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300264', 'TR00000614', 'N0216', 0.484704852104187);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300265', 'TR00000614', 'N0223', 0.4592172781626383);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300266', 'TR00000614', 'N0229', 0.4571970462799072);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300267', 'TR00000615', 'N0229', 0.4682543992996215);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300268', 'TR00000615', 'N0246', 0.4601793050765991);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300269', 'TR00000615', 'N0225', 0.4467380046844482);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300270', 'TR00000616', 'N0228', 0.4770263862609863);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300271', 'TR00000616', 'N0225', 0.47304856300354);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300272', 'TR00000616', 'N0251', 0.4638709020614624);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300273', 'TR00000617', 'N0229', 0.4714068889617919);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300274', 'TR00000617', 'N0246', 0.4615710417429606);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300275', 'TR00000617', 'N0225', 0.445231032371521);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300276', 'TR00000618', 'N0237', 0.5355040907859803);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300277', 'TR00000618', 'N0225', 0.4863699507713317);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300278', 'TR00000618', 'N0228', 0.4737222623825073);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300279', 'TR00000619', 'N0216', 0.4823817729949951);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300280', 'TR00000619', 'N0246', 0.4572547674179077);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300281', 'TR00000619', 'N0251', 0.450191421508789);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300282', 'TR00000620', 'N0216', 0.5884190917015075);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300283', 'TR00000620', 'N0246', 0.4545892596244811);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300284', 'TR00000620', 'N0229', 0.4420621633529663);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300285', 'TR00000621', 'N0229', 0.4689728021621704);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300286', 'TR00000621', 'N0251', 0.4416828632354736);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300287', 'TR00000621', 'N0225', 0.4373782753944397);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300288', 'TR00000622', 'N0246', 0.4847934556007385);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300289', 'TR00000622', 'N0229', 0.4730090618133544);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300290', 'TR00000622', 'N0225', 0.4723337364196777);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300291', 'TR00000623', 'N0246', 0.452366816997528);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300292', 'TR00000623', 'N0229', 0.4407116174697876);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300293', 'TR00000623', 'N0225', 0.4364986896514892);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300294', 'TR00000624', 'N0246', 0.4734930229187011);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300295', 'TR00000624', 'N0230', 0.44134850025177);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300296', 'TR00000624', 'N0251', 0.4382675004005432);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300297', 'TR00000625', 'N0214', 0.4646613836288452);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300298', 'TR00000625', 'N0229', 0.4574121236801147);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300299', 'TR00000625', 'N0227', 0.4517604422569275);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300300', 'TR00000626', 'N0213', 0.5879391145706176);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300301', 'TR00000626', 'N0217', 0.5332857251167298);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300302', 'TR00000626', 'N0216', 0.487366247177124);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300303', 'TR00000627', 'N0246', 0.4728259754180908);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300304', 'TR00000627', 'N0216', 0.4611044883728027);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300305', 'TR00000627', 'N0230', 0.4460360717773438);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300306', 'TR00000628', 'N0228', 0.603042860031128);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300307', 'TR00000628', 'N0225', 0.4696667623519897);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300308', 'TR00000628', 'N0246', 0.4441548943519592);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300309', 'TR00000629', 'N0234', 0.9666387629508972);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300310', 'TR00000629', 'N0253', 0.7295701932907104);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300311', 'TR00000629', 'N0207', 0.5459537267684936);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300312', 'TR00000630', 'N0210', 0.4643570780754089);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300313', 'TR00000630', 'N0225', 0.4507573127746582);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300314', 'TR00000630', 'N0238', 0.4428769469261169);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300315', 'TR00000631', 'N0225', 0.4714041185379028);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300316', 'TR00000631', 'N0228', 0.4631089043617248);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300317', 'TR00000631', 'N0246', 0.4500889778137207);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300318', 'TR00000632', 'N0210', 0.5430369853973389);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300319', 'TR00000632', 'N0240', 0.4963435482978821);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300320', 'TR00000632', 'N0230', 0.4634444308280945);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300321', 'TR00000633', 'N0246', 0.459994375705719);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300322', 'TR00000633', 'N0251', 0.4504790616035461);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300323', 'TR00000633', 'N0229', 0.4491891145706176);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300324', 'TR00000634', 'N0251', 0.64364102602005);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300325', 'TR00000634', 'N0212', 0.5237328767776489);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300326', 'TR00000634', 'N0216', 0.4901559233665466);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300327', 'TR00000635', 'N0241', 0.5064715657915388);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300328', 'TR00000635', 'N0225', 0.4660692405700684);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300329', 'TR00000635', 'N0217', 0.4631310772895813);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300330', 'TR00000636', 'N0216', 0.4704607129096985);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300331', 'TR00000636', 'N0246', 0.4482119679450989);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300332', 'TR00000636', 'N0214', 0.4421744060516357);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300333', 'TR00000637', 'N0210', 0.5334300994873047);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300334', 'TR00000637', 'N0240', 0.4765793902533395);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300335', 'TR00000637', 'N0241', 0.4442409975188118);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300336', 'TR00000638', 'N0236', 0.6129269123077392);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300337', 'TR00000638', 'N0213', 0.4702151489257812);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300338', 'TR00000638', 'N0216', 0.4702117323875427);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300339', 'TR00000639', 'N0237', 0.8924347472190858);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300340', 'TR00000639', 'N0260', 0.5938794207572937);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300341', 'TR00000639', 'N0236', 0.5704892226627896);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300342', 'TR00000640', 'N0229', 0.4737368535995483);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300343', 'TR00000640', 'N0246', 0.4501125812530517);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300344', 'TR00000640', 'N0225', 0.4362674474716186);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300345', 'TR00000641', 'N0213', 0.561002771059672);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300346', 'TR00000641', 'N0217', 0.5302054047584533);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300347', 'TR00000641', 'N0246', 0.4581193327903747);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300348', 'TR00000642', 'N0236', 0.5765252658299038);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300349', 'TR00000642', 'N0225', 0.4682755184173584);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300350', 'TR00000642', 'N0246', 0.4509384155273437);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300351', 'TR00000643', 'N0236', 0.6149753332138062);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300352', 'TR00000643', 'N0212', 0.5037460486094156);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300353', 'TR00000643', 'N0216', 0.4917463223139445);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300354', 'TR00000644', 'N0236', 0.6155836582183838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300355', 'TR00000644', 'N0246', 0.4731035391489664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300356', 'TR00000644', 'N0225', 0.4558634440104167);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300357', 'TR00000645', 'N0246', 0.4465842247009277);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300358', 'TR00000645', 'N0225', 0.4429819107055664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300359', 'TR00000645', 'N0214', 0.4419149470329285);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300360', 'TR00000646', 'N0236', 0.5036095346723284);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300361', 'TR00000646', 'N0217', 0.4585207533836364);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300362', 'TR00000646', 'N0229', 0.4555401921272277);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300363', 'TR00000647', 'N0216', 0.5926438927650451);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300364', 'TR00000647', 'N0236', 0.4694013272012983);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300365', 'TR00000647', 'N0225', 0.465904552936554);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300366', 'TR00000648', 'N0216', 0.6072287082672119);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300367', 'TR00000648', 'N0223', 0.4587540785471598);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300368', 'TR00000648', 'N0229', 0.4560760259628296);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300369', 'TR00000649', 'N0225', 0.4767768335342407);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300370', 'TR00000649', 'N0228', 0.4597278547286987);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300371', 'TR00000649', 'N0246', 0.4515727043151855);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300372', 'TR00000650', 'N0241', 0.4956586156572614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300373', 'TR00000650', 'N0225', 0.474672908782959);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300374', 'TR00000650', 'N0246', 0.469382643699646);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300375', 'TR00000651', 'N0241', 0.4952693377222333);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300376', 'TR00000651', 'N0216', 0.4711018323898315);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300377', 'TR00000651', 'N0246', 0.4486022472381591);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300378', 'TR00000652', 'N0236', 0.6167984485626221);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300379', 'TR00000652', 'N0225', 0.4731234145164489);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300380', 'TR00000652', 'N0246', 0.4661556601524352);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300381', 'TR00000653', 'N0236', 0.5955293961933681);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300382', 'TR00000653', 'N0217', 0.5551004362106323);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300383', 'TR00000653', 'N0216', 0.4895920515060424);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300384', 'TR00000654', 'N0244', 0.6169862815311977);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300385', 'TR00000654', 'N0230', 0.4620951724052429);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300386', 'TR00000654', 'N0213', 0.4580930662155151);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300387', 'TR00000655', 'N0242', 0.6224353075027466);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300388', 'TR00000655', 'N0239', 0.5755539843014308);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300389', 'TR00000655', 'N0225', 0.4770252418518066);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300390', 'TR00000656', 'N0238', 0.9812569093704224);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300391', 'TR00000656', 'N0229', 0.6498332452774048);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300392', 'TR00000656', 'N0240', 0.6009363855634416);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300393', 'TR00000657', 'N0214', 0.6401291918754578);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300394', 'TR00000657', 'N0239', 0.621656322479248);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300395', 'TR00000657', 'N0242', 0.5986386128834316);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300396', 'TR00000658', 'N0239', 0.5046604241643633);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300397', 'TR00000658', 'N0251', 0.4924040269851684);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300398', 'TR00000658', 'N0242', 0.4815319572176252);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300399', 'TR00000659', 'N0244', 0.5891684906823295);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300400', 'TR00000659', 'N0223', 0.4832416009902954);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300401', 'TR00000659', 'N0229', 0.4598111629486083);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300402', 'TR00000660', 'N0240', 0.9031060409545898);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300403', 'TR00000660', 'N0241', 0.6368804693222045);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300404', 'TR00000660', 'N0210', 0.5529402732849121);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300405', 'TR00000661', 'N0240', 0.8761758399009705);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300406', 'TR00000661', 'N0241', 0.628795611858368);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300407', 'TR00000661', 'N0237', 0.5730354380607605);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300408', 'TR00000662', 'N0244', 0.6428961277008056);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300409', 'TR00000662', 'N0216', 0.5961637735366822);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300410', 'TR00000662', 'N0246', 0.4572840929031372);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300411', 'TR00000663', 'N0241', 0.5661896484238761);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300412', 'TR00000663', 'N0246', 0.460800290107727);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300413', 'TR00000663', 'N0229', 0.4488207578659057);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300414', 'TR00000664', 'N0242', 0.5881857224873135);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300415', 'TR00000664', 'N0239', 0.5220792191369192);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300416', 'TR00000664', 'N0246', 0.4722976962725321);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300417', 'TR00000665', 'N0216', 0.6042407274246215);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300418', 'TR00000665', 'N0242', 0.4932446564946856);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300419', 'TR00000665', 'N0246', 0.4721490931510925);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300420', 'TR00000666', 'N0230', 0.5934330415725708);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300421', 'TR00000666', 'N0244', 0.5853472011429923);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300422', 'TR00000666', 'N0210', 0.484587926864624);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300423', 'TR00000667', 'N0242', 0.5176899092538017);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300424', 'TR00000667', 'N0239', 0.4842838253293718);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300425', 'TR00000667', 'N0225', 0.4714174938201904);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300426', 'TR00000668', 'N0213', 0.552860164642334);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300427', 'TR00000668', 'N0217', 0.5289720177650452);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300428', 'TR00000668', 'N0241', 0.4964594517435346);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300429', 'TR00000669', 'N0240', 0.7045842170715332);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300430', 'TR00000669', 'N0243', 0.6603264760971069);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300431', 'TR00000669', 'N0241', 0.6569164633750915);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300432', 'TR00000670', 'N0210', 0.5766447973251343);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300433', 'TR00000670', 'N0251', 0.4674738597869873);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300434', 'TR00000670', 'N0229', 0.4628621220588684);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300435', 'TR00000671', 'N0242', 0.5364911573273795);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300436', 'TR00000671', 'N0239', 0.5014160599027361);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300437', 'TR00000671', 'N0216', 0.491379816532135);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300438', 'TR00000672', 'N0246', 0.4558258295059204);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300439', 'TR00000672', 'N0229', 0.4537931442260742);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300440', 'TR00000672', 'N0217', 0.4452640056610107);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300441', 'TR00000673', 'N0242', 0.5861595102718898);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300442', 'TR00000673', 'N0239', 0.5175215738160269);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300443', 'TR00000673', 'N0210', 0.4782650470733642);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300444', 'TR00000674', 'N0246', 0.6083700673920768);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300445', 'TR00000674', 'N0228', 0.4829392353693644);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300446', 'TR00000674', 'N0225', 0.4795584718386332);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300447', 'TR00000675', 'N0216', 0.5008066368103027);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300448', 'TR00000675', 'N0229', 0.4714023303985595);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300449', 'TR00000675', 'N0246', 0.4510862231254577);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300450', 'TR00000676', 'N0246', 0.6591547545932589);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300451', 'TR00000676', 'N0210', 0.5352197408676147);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300452', 'TR00000676', 'N0225', 0.4663889686266581);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300453', 'TR00000677', 'N0228', 0.6256761980056763);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300454', 'TR00000677', 'N0217', 0.5177217245101928);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300455', 'TR00000677', 'N0246', 0.4981170279639108);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300456', 'TR00000678', 'N0245', 0.8597212028503418);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300457', 'TR00000678', 'N0222', 0.546702778339386);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300458', 'TR00000678', 'N0237', 0.5275687932968139);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300459', 'TR00000679', 'N0225', 0.4703207206726074);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300460', 'TR00000679', 'N0230', 0.4584126424789428);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300461', 'TR00000679', 'N0228', 0.4537726712226868);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300462', 'TR00000680', 'N0246', 0.6448379465511866);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300463', 'TR00000680', 'N0225', 0.445728850364685);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300464', 'TR00000680', 'N0228', 0.437238335609436);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300465', 'TR00000681', 'N0246', 0.4750994873046875);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300466', 'TR00000681', 'N0216', 0.4611900329589843);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300467', 'TR00000681', 'N0230', 0.4503213834762573);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300468', 'TR00000682', 'N0216', 0.4839552998542785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300469', 'TR00000682', 'N0246', 0.4571671843528747);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300470', 'TR00000682', 'N0230', 0.4546440760294596);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300471', 'TR00000683', 'N0216', 0.6130614757537841);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300472', 'TR00000683', 'N0229', 0.4602535049120585);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300473', 'TR00000683', 'N0246', 0.4492054224014282);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300474', 'TR00000684', 'N0216', 0.4416079401969909);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300475', 'TR00000684', 'N0227', 0.4254057168960571);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300476', 'TR00000684', 'N0225', 0.4239024639129639);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300477', 'TR00000685', 'N0216', 0.5013316702842712);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300478', 'TR00000685', 'N0246', 0.4938208345004491);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300479', 'TR00000685', 'N0223', 0.4566384863853455);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300480', 'TR00000686', 'N0246', 0.6627946206501552);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300481', 'TR00000686', 'N0217', 0.5409950208663941);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300482', 'TR00000686', 'N0213', 0.4918494176864624);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300483', 'TR00000687', 'N0246', 0.8926277589797974);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300484', 'TR00000687', 'N0222', 0.5688970843950907);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300485', 'TR00000687', 'N0237', 0.5265612840652466);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300486', 'TR00000688', 'N0246', 0.5866247262273516);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300487', 'TR00000688', 'N0217', 0.528362226486206);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300488', 'TR00000688', 'N0213', 0.5158201456069946);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300489', 'TR00000689', 'N0246', 0.449637222290039);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300490', 'TR00000689', 'N0229', 0.4469364523887634);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300491', 'TR00000689', 'N0225', 0.4427924394607543);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300492', 'TR00000690', 'N0222', 0.493089465300242);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300493', 'TR00000690', 'N0246', 0.4736095110575358);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300494', 'TR00000690', 'N0240', 0.4619065324465433);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300495', 'TR00000691', 'N0213', 0.5492926478385926);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300496', 'TR00000691', 'N0217', 0.5317545413970948);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300497', 'TR00000691', 'N0244', 0.4785200936453683);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300498', 'TR00000692', 'N0213', 0.5084210753440856);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300499', 'TR00000692', 'N0229', 0.4776565790176391);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300500', 'TR00000692', 'N0251', 0.4465613007545471);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300501', 'TR00000693', 'N0246', 0.6161006944520133);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300502', 'TR00000693', 'N0229', 0.4818811845779419);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300503', 'TR00000693', 'N0223', 0.4585787963867188);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300504', 'TR00000694', 'N0244', 0.5104546819414411);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300505', 'TR00000694', 'N0216', 0.4824679613113403);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300506', 'TR00000694', 'N0229', 0.469083301226298);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300507', 'TR00000695', 'N0212', 0.4947682023048401);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300508', 'TR00000695', 'N0216', 0.4682440280914306);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300509', 'TR00000695', 'N0251', 0.4554225873947143);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300510', 'TR00000696', 'N0223', 0.4758704614639282);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300511', 'TR00000696', 'N0246', 0.4711648654937744);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300512', 'TR00000696', 'N0225', 0.4707115364074707);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300513', 'TR00000697', 'N0217', 0.523725688457489);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300514', 'TR00000697', 'N0216', 0.4888797283172607);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300515', 'TR00000697', 'N0225', 0.4668788194656372);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300516', 'TR00000698', 'N0248', 0.914411873817444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300517', 'TR00000698', 'N0253', 0.5583946625391643);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300518', 'TR00000698', 'N0207', 0.5564900875091553);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300519', 'TR00000699', 'N0213', 0.5410450339317322);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300520', 'TR00000699', 'N0246', 0.4605983018875121);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300521', 'TR00000699', 'N0251', 0.4533271384239197);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300522', 'TR00000700', 'N0249', 0.4498563919748579);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300523', 'TR00000700', 'N0246', 0.4449206113815308);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300524', 'TR00000700', 'N0214', 0.4419572186470031);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300525', 'TR00000701', 'N0246', 0.4630394172668457);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300526', 'TR00000701', 'N0229', 0.4508682489395141);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300527', 'TR00000701', 'N0223', 0.4451667499542236);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300528', 'TR00000702', 'N0249', 0.5684475677353995);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300529', 'TR00000702', 'N0216', 0.4962442874908447);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300530', 'TR00000702', 'N0229', 0.457177448272705);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300531', 'TR00000703', 'N0228', 0.4861998987197876);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300532', 'TR00000703', 'N0225', 0.4808625888824462);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300533', 'TR00000703', 'N0214', 0.456369137763977);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300534', 'TR00000704', 'N0251', 0.8978253793716431);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300535', 'TR00000704', 'N0243', 0.5669041752815246);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300536', 'TR00000704', 'N0260', 0.5303014993667603);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300537', 'TR00000705', 'N0249', 0.4939129556928362);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300538', 'TR00000705', 'N0229', 0.4650187444686889);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300539', 'TR00000705', 'N0216', 0.4647694945335388);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300540', 'TR00000706', 'N0251', 0.5902231352669852);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300541', 'TR00000706', 'N0246', 0.4682312885920206);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300542', 'TR00000706', 'N0214', 0.4482840220133463);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300543', 'TR00000707', 'N0216', 0.5021633863449096);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300544', 'TR00000707', 'N0225', 0.4716287803649902);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300545', 'TR00000707', 'N0223', 0.4705696296691894);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300546', 'TR00000708', 'N0214', 0.4744795393943786);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300547', 'TR00000708', 'N0246', 0.4602722716331482);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300548', 'TR00000708', 'N0229', 0.4468945384025574);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300549', 'TR00000709', 'N0249', 0.5398001091820853);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300550', 'TR00000709', 'N0216', 0.4652052640914916);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300551', 'TR00000709', 'N0246', 0.4612429618835449);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300552', 'TR00000710', 'N0249', 0.643985390663147);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300553', 'TR00000710', 'N0251', 0.528964112486158);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300554', 'TR00000710', 'N0223', 0.4806461524963379);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300555', 'TR00000711', 'N0249', 0.5128555740628924);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300556', 'TR00000711', 'N0225', 0.472383804321289);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300557', 'TR00000711', 'N0228', 0.4634175729751587);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300558', 'TR00000712', 'N0251', 0.5323407207216535);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300559', 'TR00000712', 'N0216', 0.471813941001892);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300560', 'TR00000712', 'N0246', 0.4637114524841308);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300561', 'TR00000713', 'N0223', 0.4825292778015136);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300562', 'TR00000713', 'N0251', 0.4516100406646728);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300563', 'TR00000713', 'N0214', 0.4507510900497436);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300564', 'TR00000714', 'N0228', 0.6303255033493042);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300565', 'TR00000714', 'N0225', 0.4765792083740234);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300566', 'TR00000714', 'N0214', 0.4752167892456054);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300567', 'TR00000715', 'N0216', 0.4837846040725708);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300568', 'TR00000715', 'N0246', 0.4504376649856567);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300569', 'TR00000715', 'N0225', 0.4418222665786743);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300570', 'TR00000716', 'N0254', 0.590207256589617);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300571', 'TR00000716', 'N0217', 0.5481171607971191);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300572', 'TR00000716', 'N0216', 0.4981416463851928);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300573', 'TR00000717', 'N0254', 0.5749236719948905);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300574', 'TR00000717', 'N0228', 0.4825286698341369);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300575', 'TR00000717', 'N0225', 0.4749309730529785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300576', 'TR00000718', 'N0213', 0.4655590216318766);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300577', 'TR00000718', 'N0246', 0.4526437282562255);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300578', 'TR00000718', 'N0229', 0.4485317230224609);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300579', 'TR00000719', 'N0251', 0.6417079758644104);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300580', 'TR00000719', 'N0229', 0.450396966934204);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300581', 'TR00000719', 'N0228', 0.4412777781486511);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300582', 'TR00000720', 'N0251', 0.495572395324707);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300583', 'TR00000720', 'N0225', 0.4752778363227844);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300584', 'TR00000720', 'N0246', 0.4615574955940246);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300585', 'TR00000721', 'N0246', 0.4489603042602539);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300586', 'TR00000721', 'N0229', 0.4479304790496826);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300587', 'TR00000721', 'N0225', 0.4464147806167602);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300588', 'TR00000722', 'N0246', 0.4748605291048685);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300589', 'TR00000722', 'N0216', 0.4721421718597411);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300590', 'TR00000722', 'N0225', 0.4599778175354003);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300591', 'TR00000723', 'N0254', 0.586941535132272);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300592', 'TR00000723', 'N0216', 0.4770065903663635);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300593', 'TR00000723', 'N0246', 0.4489508628845214);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300594', 'TR00000724', 'N0229', 0.4600990891456604);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300595', 'TR00000724', 'N0246', 0.4554046154022216);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300596', 'TR00000724', 'N0214', 0.4373014402389526);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300597', 'TR00000725', 'N0222', 0.5616979360580444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300598', 'TR00000725', 'N0240', 0.5317257881164551);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300599', 'TR00000725', 'N0238', 0.5173859119415283);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300600', 'TR00000726', 'N0225', 0.4629453420639038);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300601', 'TR00000726', 'N0223', 0.4596811842918396);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300602', 'TR00000726', 'N0229', 0.443740153312683);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300603', 'TR00000727', 'N0254', 0.581861538546426);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300604', 'TR00000727', 'N0216', 0.5800326108932495);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300605', 'TR00000727', 'N0225', 0.4734356951713562);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300606', 'TR00000728', 'N0254', 0.6273760863712856);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300607', 'TR00000728', 'N0216', 0.6250856757164002);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300608', 'TR00000728', 'N0229', 0.4597743272781371);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300609', 'TR00000729', 'N0229', 0.4664493441581726);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300610', 'TR00000729', 'N0251', 0.4426427364349365);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300611', 'TR00000729', 'N0225', 0.4292082667350769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300612', 'TR00000730', 'N0229', 0.6452433061599732);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300613', 'TR00000730', 'N0216', 0.4969458103179931);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300614', 'TR00000730', 'N0225', 0.4755900621414184);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300615', 'TR00000731', 'N0216', 0.5012861967086791);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300616', 'TR00000731', 'N0225', 0.482159276008606);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300617', 'TR00000731', 'N0218', 0.4533550691604614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300618', 'TR00000732', 'N0254', 0.5293114270482744);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300619', 'TR00000732', 'N0216', 0.4846320390701293);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300620', 'TR00000732', 'N0230', 0.4623638939857483);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300621', 'TR00000733', 'N0253', 0.6007409048080445);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300622', 'TR00000733', 'N0222', 0.5664148688316345);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300623', 'TR00000733', 'N0237', 0.5536048889160156);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300624', 'TR00000734', 'N0222', 0.4764514279365539);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300625', 'TR00000734', 'N0229', 0.4581536293029785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300626', 'TR00000734', 'N0214', 0.4542942523956298);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300627', 'TR00000735', 'N0216', 0.4660029888153076);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300628', 'TR00000735', 'N0227', 0.4308604001998901);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300629', 'TR00000735', 'N0225', 0.4295633554458618);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300630', 'TR00000736', 'N0246', 0.45430269241333);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300631', 'TR00000736', 'N0214', 0.4347898364067077);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300632', 'TR00000736', 'N0227', 0.4315769624710083);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300633', 'TR00000737', 'N0256', 0.6083442756107875);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300634', 'TR00000737', 'N0257', 0.571865065097809);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300635', 'TR00000737', 'N0229', 0.4611106395721435);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300636', 'TR00000738', 'N0255', 0.9033532333374024);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300637', 'TR00000738', 'N0240', 0.6337484669685364);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300638', 'TR00000738', 'N0260', 0.5870410394668579);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300639', 'TR00000739', 'N0256', 0.5950757810047695);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300640', 'TR00000739', 'N0214', 0.4674754691123962);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300641', 'TR00000739', 'N0228', 0.4626298260688782);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300642', 'TR00000740', 'N0227', 0.6263289403915405);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300643', 'TR00000740', 'N0258', 0.589025718825204);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300644', 'TR00000740', 'N0216', 0.4894027948379516);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300645', 'TR00000741', 'N0240', 0.5188080906867981);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300646', 'TR00000741', 'N0222', 0.4510609745979309);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300647', 'TR00000741', 'N0210', 0.4503113508224487);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300648', 'TR00000742', 'N0256', 0.5764093944004605);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300649', 'TR00000742', 'N0229', 0.465439064502716);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300650', 'TR00000742', 'N0222', 0.4606016278266907);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300651', 'TR00000743', 'N0246', 0.4547908186912536);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300652', 'TR00000743', 'N0251', 0.4478996348381042);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300653', 'TR00000743', 'N0229', 0.4354012370109558);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300654', 'TR00000744', 'N0225', 0.4762669086456298);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300655', 'TR00000744', 'N0229', 0.4731988191604614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300656', 'TR00000744', 'N0254', 0.4611826879637581);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300657', 'TR00000745', 'N0212', 0.5315593838691711);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300658', 'TR00000745', 'N0216', 0.4918458938598632);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300659', 'TR00000745', 'N0225', 0.4511677980422973);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300660', 'TR00000746', 'N0251', 0.4840290260314941);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300661', 'TR00000746', 'N0256', 0.4793937359537397);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300662', 'TR00000746', 'N0246', 0.472940022945404);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300663', 'TR00000747', 'N0246', 0.4756196928024292);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300664', 'TR00000747', 'N0216', 0.4682232856750488);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300665', 'TR00000747', 'N0256', 0.4627627526010786);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300666', 'TR00000748', 'N0251', 0.6444739770889282);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300667', 'TR00000748', 'N0258', 0.5019368086542402);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300668', 'TR00000748', 'N0229', 0.4555328607559203);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300669', 'TR00000749', 'N0216', 0.6186901807785034);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300670', 'TR00000749', 'N0256', 0.5873245545795986);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300671', 'TR00000749', 'N0214', 0.4787003707885742);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300672', 'TR00000750', 'N0210', 0.5275483012199402);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300673', 'TR00000750', 'N0254', 0.5218139018331255);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300674', 'TR00000750', 'N0222', 0.4762651125590006);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300675', 'TR00000751', 'N0256', 0.4679427061762128);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300676', 'TR00000751', 'N0246', 0.454853868484497);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300677', 'TR00000751', 'N0229', 0.4458491921424866);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300678', 'TR00000752', 'N0256', 0.6081728219985962);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300679', 'TR00000752', 'N0223', 0.4776200842857361);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300680', 'TR00000752', 'N0229', 0.4513195753097534);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300681', 'TR00000753', 'N0213', 0.5567586851119996);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300682', 'TR00000753', 'N0254', 0.4819968734468732);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300683', 'TR00000753', 'N0230', 0.452931637763977);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300684', 'TR00000754', 'N0258', 0.5277483429227556);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300685', 'TR00000754', 'N0216', 0.5165614318847656);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300686', 'TR00000754', 'N0229', 0.489549298286438);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300687', 'TR00000755', 'N0256', 0.6106015801429748);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300688', 'TR00000755', 'N0246', 0.4827214670181274);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300689', 'TR00000755', 'N0225', 0.480543406009674);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300690', 'TR00000756', 'N0256', 0.4857136641229902);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300691', 'TR00000756', 'N0216', 0.485059905052185);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300692', 'TR00000756', 'N0228', 0.4772308778762817);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300693', 'TR00000757', 'N0212', 0.5534248065948486);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300694', 'TR00000757', 'N0216', 0.5202303361892701);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300695', 'TR00000757', 'N0259', 0.4937204803739275);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300696', 'TR00000758', 'N0260', 0.5758065533638002);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300697', 'TR00000758', 'N0212', 0.5150751272837321);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300698', 'TR00000758', 'N0216', 0.4776772499084472);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300699', 'TR00000759', 'N0246', 0.4594367980957031);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300700', 'TR00000759', 'N0225', 0.4511904001235962);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300701', 'TR00000759', 'N0229', 0.4455433130264282);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300702', 'TR00000760', 'N0225', 0.6442528200149537);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300703', 'TR00000760', 'N0258', 0.5288430418287005);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300704', 'TR00000760', 'N0228', 0.4772957245508829);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300705', 'TR00000761', 'N0261', 0.4999175991330827);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300706', 'TR00000761', 'N0246', 0.4524433135986327);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300707', 'TR00000761', 'N0229', 0.4477813124656677);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300708', 'TR00000762', 'N0222', 0.5521861791610717);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300709', 'TR00000762', 'N0238', 0.5214517831802368);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300710', 'TR00000762', 'N0237', 0.4628181171417236);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300711', 'TR00000763', 'N0225', 0.476073272228241);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300712', 'TR00000763', 'N0251', 0.4743174266815185);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300713', 'TR00000763', 'N0246', 0.455084753036499);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300714', 'TR00000764', 'N0259', 0.5655907222202846);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300715', 'TR00000764', 'N0213', 0.5083611011505127);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300716', 'TR00000764', 'N0212', 0.4711363267898559);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300717', 'TR00000765', 'N0216', 0.6087689399719238);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300718', 'TR00000765', 'N0259', 0.4913795913968767);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300719', 'TR00000765', 'N0246', 0.4591824809710184);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300720', 'TR00000766', 'N0259', 0.5850965261459351);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300721', 'TR00000766', 'N0217', 0.5334706544876099);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300722', 'TR00000766', 'N0213', 0.5225234508514405);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300723', 'TR00000767', 'N0246', 0.4557942152023315);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300724', 'TR00000767', 'N0258', 0.4508208853857858);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300725', 'TR00000767', 'N0229', 0.4482780933380126);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300726', 'TR00000768', 'N0246', 0.4711360851923624);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300727', 'TR00000768', 'N0225', 0.4346498966217041);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300728', 'TR00000768', 'N0229', 0.4321300148963928);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300729', 'TR00000769', 'N0258', 0.5927602478436061);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300730', 'TR00000769', 'N0216', 0.4609541416168212);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0300731', 'TR00000769', 'N0246', 0.4469047665596008);


-- Transactions from Batch 4
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000770', 'CL000004', '2025-06-02', 212146.69, 'EUR', 'Credit', 'Wire Transfer', 'OBYCSD1W', 'Omega Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000771', 'CL000004', '2025-06-07', 292875.26, 'EUR', 'Credit', 'Wire Transfer', 'SZNHLYDG', 'International Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000772', 'CL000004', '2024-10-13', 452.64, 'EUR', 'Credit', 'Wire Transfer', 'YRCXUS11', 'First Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000773', 'CL000004', '2024-11-04', 2948.11, 'EUR', 'Credit', 'Wire Transfer', 'XEBLLUS3', 'First Financial AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000774', 'CL000004', '2024-10-16', 220.24, 'CHF', 'Credit', 'Wire Transfer', 'DKYRSG6W', 'Omega Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000775', 'CL000004', '2024-11-02', 539.14, 'CNY', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000776', 'CL000004', '2024-11-04', 1310.28, 'CHF', 'Credit', 'Wire Transfer', 'RYDDDKDT', 'Beta Commerce Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000777', 'CL000004', '2024-11-03', 414.71, 'EUR', 'Credit', 'Wire Transfer', 'WXFGATD2', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000778', 'CL000004', '2024-11-03', 860.0, 'USD', 'Credit', 'Wire Transfer', 'JHSDSOBB', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000779', 'CL000004', '2024-10-26', 532.51, 'USD', 'Credit', 'Wire Transfer', 'ISHGLYEG', 'Alpha Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000780', 'CL000004', '2024-10-09', 140.77, 'EUR', 'Credit', 'Cash', 'ESEJFR9X', 'Prime Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000781', 'CL000004', '2024-10-11', 414.49, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000782', 'CL000004', '2024-10-19', 971.25, 'CHF', 'Debit', 'Wire Transfer', 'JHSDSOBB', 'Omega Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000783', 'CL000004', '2024-10-15', 2944.16, 'EUR', 'Debit', 'Security', 'PDTOCA2T', 'Global Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000784', 'CL000004', '2024-10-09', 6118.59, 'CHF', 'Debit', 'Wire Transfer', 'TEPTYEE3', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000785', 'CL000004', '2024-10-11', 148.72, 'USD', 'Debit', 'Security', 'YRCXUS11', 'Premier Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000786', 'CL000004', '2024-11-03', 129.31, 'USD', 'Credit', 'Wire Transfer', 'KXLGGBIU', 'Elite Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000787', 'CL000004', '2024-10-24', 1843.17, 'EUR', 'Debit', 'Cheque', 'YUHSSE02', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000788', 'CL000004', '2024-10-21', 1183.94, 'CHF', 'Debit', 'Cheque', 'MKRUSY04', 'International AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000789', 'CL000004', '2024-11-09', 1089.18, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000790', 'CL000004', '2024-12-01', 5009.0, 'CNY', 'Credit', 'Wire Transfer', 'CLWESYJL', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000791', 'CL000004', '2024-11-13', 848.14, 'CAD', 'Credit', 'Security', 'XUFUIRZQ', 'Beta Asset GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000792', 'CL000004', '2024-12-02', 422.09, 'GBP', 'Credit', 'Wire Transfer', 'XZNXSYVX', 'Elite Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000793', 'CL000004', '2024-11-27', 1691.73, 'EUR', 'Credit', 'Wire Transfer', 'WPSBFRIK', 'First Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000794', 'CL000004', '2024-11-17', 142.22, 'USD', 'Credit', 'Security', 'CLLYCA5J', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000795', 'CL000004', '2024-11-18', 2036.51, 'USD', 'Credit', 'Security', 'HYQTSODA', 'International Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000796', 'CL000004', '2024-11-21', 1159.77, 'EUR', 'Credit', 'Wire Transfer', 'WPDZAF2M', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000797', 'CL000004', '2024-11-27', 836.57, 'CHF', 'Debit', 'Security', 'YCZEBE8J', 'Omega Asset Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000798', 'CL000004', '2024-11-07', 364.66, 'EUR', 'Credit', 'Wire Transfer', 'CHHIKPTE', 'United Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000799', 'CL000004', '2024-11-29', 312.93, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000800', 'CL000004', '2024-12-03', 882.13, 'CHF', 'Credit', 'Wire Transfer', 'GGOCJP03', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000801', 'CL000004', '2024-11-25', 416.49, 'CHF', 'Credit', 'Security', 'CKAFCHSA', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000802', 'CL000004', '2024-11-22', 3783.94, 'CHF', 'Credit', 'Wire Transfer', 'NEGKVETI', 'Elite Wealth Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000803', 'CL000004', '2024-11-22', 1443.93, 'EUR', 'Credit', 'Wire Transfer', 'TEKHDEH1', 'Prime Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000804', 'CL000004', '2024-11-08', 1181.27, 'CHF', 'Debit', 'Wire Transfer', 'LJXLMMFG', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000805', 'CL000004', '2024-11-10', 1366.24, 'EUR', 'Debit', 'Wire Transfer', 'QFXWAUCI', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000806', 'CL000004', '2024-11-15', 7358.38, 'USD', 'Debit', 'Wire Transfer', 'TLPJUS9E', 'International Asset Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000807', 'CL000004', '2024-11-23', 1783.06, 'CHF', 'Credit', 'Security', 'IDZEFIPZ', 'International Wealth Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000808', 'CL000004', '2024-12-03', 3799.44, 'CHF', 'Debit', 'Security', 'YUHSSE02', 'United Financial Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000809', 'CL000004', '2024-11-30', 708.53, 'JPY', 'Debit', 'Security', 'PATVBYU1', 'Alpha Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000810', 'CL000004', '2024-11-15', 1005.88, 'CHF', 'Debit', 'Security', 'UFAFBEL5', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000811', 'CL000004', '2024-12-14', 712.27, 'CHF', 'Debit', 'Wire Transfer', 'NQQXMM1Q', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000812', 'CL000004', '2024-12-31', 1218.67, 'CHF', 'Credit', 'Wire Transfer', 'DNTELYHR', 'Global GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000813', 'CL000004', '2024-12-20', 224.91, 'CNY', 'Credit', 'Wire Transfer', 'KFKXKPVZ', 'Omega Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000814', 'CL000004', '2024-12-31', 9311.66, 'CHF', 'Credit', 'Wire Transfer', 'JGHPVE5U', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000815', 'CL000004', '2024-12-30', 1140.85, 'CHF', 'Credit', 'Wire Transfer', 'ZROKRUGN', 'First Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000816', 'CL000004', '2025-01-02', 702.2, 'EUR', 'Debit', 'Wire Transfer', 'ITJTYE3J', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000817', 'CL000004', '2025-01-02', 1030.19, 'CHF', 'Credit', 'Wire Transfer', 'PATVBYU1', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000818', 'CL000004', '2024-12-20', 1409.87, 'CNY', 'Credit', 'Cash', 'ENLHBY9P', 'Global Wealth Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000819', 'CL000004', '2024-12-18', 1790.59, 'GBP', 'Debit', 'Wire Transfer', 'TLPJUS9E', 'Global Wealth GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000820', 'CL000004', '2024-12-18', 2539.56, 'USD', 'Credit', 'Security', 'TRHRHKWD', 'International Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000821', 'CL000004', '2024-12-22', 7496.57, 'AUD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000822', 'CL000004', '2024-12-18', 7734.79, 'USD', 'Credit', 'Cash', 'ISHGLYEG', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000823', 'CL000004', '2024-12-21', 929.85, 'JPY', 'Debit', 'Security', 'CLLYCA5J', 'Global Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000824', 'CL000004', '2025-02-02', 749.57, 'CHF', 'Credit', 'Wire Transfer', 'PTLXIRUZ', 'Global Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000825', 'CL000004', '2025-01-14', 3634.12, 'CHF', 'Credit', 'Cash', 'ZHQKBE9T', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000826', 'CL000004', '2025-01-31', 926.04, 'EUR', 'Credit', 'Security', 'GYLWNLTB', 'United Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000827', 'CL000004', '2025-01-06', 3364.58, 'USD', 'Debit', 'Security', 'ORIMVELR', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000828', 'CL000004', '2025-01-21', 2028.26, 'USD', 'Debit', 'Wire Transfer', 'XZNXSYVX', 'Premier Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000829', 'CL000004', '2025-01-29', 671.16, 'EUR', 'Credit', 'Cash', 'VKBQZWBF', 'Elite Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000830', 'CL000004', '2025-01-10', 646.42, 'GBP', 'Credit', 'Wire Transfer', 'MWXESEAO', 'Premier Commerce Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000831', 'CL000004', '2025-01-12', 1478.21, 'CHF', 'Debit', 'Wire Transfer', 'IDZEFIPZ', 'Global Wealth Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000832', 'CL000004', '2025-01-15', 4591.04, 'USD', 'Debit', 'Wire Transfer', 'WKQEAT75', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000833', 'CL000004', '2025-01-28', 7423.16, 'GBP', 'Credit', 'Cash', 'FIPFAUHC', 'Prime Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000834', 'CL000004', '2025-01-04', 11958.17, 'CHF', 'Credit', 'Wire Transfer', 'HPMNLYP0', 'Omega AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000835', 'CL000004', '2025-01-08', 1624.43, 'CHF', 'Credit', 'Wire Transfer', 'CHHIKPTE', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000836', 'CL000004', '2025-01-19', 432.06, 'AUD', 'Debit', 'Security', 'YRCXUS11', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000837', 'CL000004', '2025-01-20', 393.65, 'CHF', 'Credit', 'Wire Transfer', 'YGIUHKFB', 'Omega Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000838', 'CL000004', '2025-01-14', 1621.94, 'EUR', 'Credit', 'Cheque', 'LZZBNOHJ', 'Global Trade Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000839', 'CL000004', '2025-02-01', 3474.28, 'USD', 'Credit', 'Wire Transfer', 'OBYCSD1W', 'Global Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000840', 'CL000004', '2025-01-09', 954.05, 'EUR', 'Credit', 'Wire Transfer', 'VZMKBYLD', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000841', 'CL000004', '2025-01-23', 529.38, 'USD', 'Credit', 'Wire Transfer', 'GSSBKPOT', 'First Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000842', 'CL000004', '2025-02-05', 1397.58, 'EUR', 'Credit', 'Security', 'ILRNHK28', 'Elite Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000843', 'CL000004', '2025-02-22', 1082.81, 'CHF', 'Credit', 'Security', 'TEKHDEH1', 'Elite Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000844', 'CL000004', '2025-02-14', 1703.01, 'USD', 'Debit', 'Wire Transfer', 'DXGPNOWP', 'Premier Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000845', 'CL000004', '2025-02-16', 767.83, 'EUR', 'Credit', 'Wire Transfer', 'PTLXIRUZ', 'Beta Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000846', 'CL000004', '2025-02-21', 1537.63, 'JPY', 'Credit', 'Security', 'ORIMVELR', 'First Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000847', 'CL000004', '2025-02-23', 1478.17, 'GBP', 'Credit', 'Wire Transfer', 'LZZBNOHJ', 'Alpha Asset Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000848', 'CL000004', '2025-02-28', 286.44, 'GBP', 'Credit', 'Wire Transfer', 'PTLXIRUZ', 'Elite Wealth Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000849', 'CL000004', '2025-02-22', 139.23, 'CHF', 'Debit', 'Wire Transfer', 'QFXWAUCI', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000850', 'CL000004', '2025-02-23', 1304.45, 'EUR', 'Credit', 'Cheque', 'CJJIDEJB', 'Prime Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000851', 'CL000004', '2025-02-10', 720.98, 'EUR', 'Debit', 'Security', 'BNWBSEC5', 'Alpha Financial Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000852', 'CL000004', '2025-02-21', 348.73, 'GBP', 'Credit', 'Security', 'RVUFGBBL', 'Omega Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000853', 'CL000004', '2025-02-19', 112.63, 'USD', 'Credit', 'Wire Transfer', 'TEPTYEE3', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000854', 'CL000004', '2025-02-12', 5482.67, 'CHF', 'Debit', 'Wire Transfer', 'DKYRSG6W', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000855', 'CL000004', '2025-02-17', 2924.53, 'EUR', 'Debit', 'Wire Transfer', 'HPMNLYP0', 'International Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000856', 'CL000004', '2025-02-28', 388.69, 'CNY', 'Credit', 'Wire Transfer', 'OXDDIRQT', 'Beta Financial Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000857', 'CL000004', '2025-02-17', 26405.73, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000858', 'CL000004', '2025-02-18', 1165.57, 'CHF', 'Credit', 'Security', 'LIIZRUOS', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000859', 'CL000004', '2025-02-10', 391.57, 'GBP', 'Debit', 'Wire Transfer', 'TEPTYEE3', 'Elite Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000860', 'CL000004', '2025-02-07', 2446.99, 'USD', 'Debit', 'Wire Transfer', 'SYNMCUCB', 'First Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000861', 'CL000004', '2025-02-24', 8823.05, 'USD', 'Debit', 'Security', 'ISHGLYEG', 'Prime Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000862', 'CL000004', '2025-03-18', 1255.71, 'USD', 'Credit', 'Wire Transfer', 'RFDYAUUR', 'Global Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000863', 'CL000004', '2025-03-27', 1000.71, 'AUD', 'Credit', 'Security', 'UFAFBEL5', 'Beta GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000864', 'CL000004', '2025-03-11', 2572.89, 'USD', 'Credit', 'Security', 'KVHFHK2V', 'Elite Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000865', 'CL000004', '2025-03-29', 4099.4, 'EUR', 'Credit', 'Wire Transfer', 'WGELNLPK', 'Prime Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000866', 'CL000004', '2025-03-10', 454.6, 'USD', 'Credit', 'Security', 'TEPTYEE3', 'International Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000867', 'CL000004', '2025-03-31', 270.7, 'USD', 'Credit', 'Wire Transfer', 'XUFUIRZQ', 'Alpha AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000868', 'CL000004', '2025-03-10', 3341.3, 'CHF', 'Debit', 'Wire Transfer', 'ESEJFR9X', 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000869', 'CL000004', '2025-03-14', 428.66, 'CHF', 'Credit', 'Wire Transfer', 'ZVZYNL4F', 'Global Commerce Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000870', 'CL000004', '2025-03-21', 598.49, 'GBP', 'Credit', 'Wire Transfer', 'NEXWCAKX', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000871', 'CL000004', '2025-03-12', 4314.55, 'GBP', 'Debit', 'Wire Transfer', 'NPZYJP1Y', 'Premier Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000872', 'CL000004', '2025-03-09', 2150.91, 'CAD', 'Debit', 'Wire Transfer', 'CJJIDEJB', 'Prime Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000873', 'CL000004', '2025-03-10', 440.78, 'EUR', 'Debit', 'Security', 'DXGPNOWP', 'International Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000874', 'CL000004', '2025-03-24', 194.7, 'EUR', 'Debit', 'Wire Transfer', 'ISHGLYEG', 'Premier Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000875', 'CL000004', '2025-03-06', 1931.7, 'USD', 'Credit', 'Wire Transfer', 'YCZEBE8J', 'International Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000876', 'CL000004', '2025-03-06', 2193.0, 'EUR', 'Debit', 'Wire Transfer', 'PKPMUSJT', 'United Asset Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000877', 'CL000004', '2025-03-17', 3269.49, 'USD', 'Credit', 'Wire Transfer', 'YUHSSE02', 'Premier Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000878', 'CL000004', '2025-03-06', 5060.38, 'CHF', 'Credit', 'Wire Transfer', 'HTOHCUEY', 'Omega Wealth Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000879', 'CL000004', '2025-04-01', 1176.9, 'CHF', 'Debit', 'Wire Transfer', 'TLPJUS9E', 'International GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000880', 'CL000004', '2025-03-29', 290.43, 'CHF', 'Credit', 'Wire Transfer', 'XZNXSYVX', 'Elite Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000881', 'CL000004', '2025-03-17', 1608.77, 'GBP', 'Credit', 'Cash', 'ORIMVELR', 'Omega Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000882', 'CL000004', '2025-03-20', 746.32, 'CHF', 'Credit', 'Wire Transfer', 'SYNMCUCB', 'First Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000883', 'CL000004', '2025-03-23', 1684.18, 'USD', 'Credit', 'Wire Transfer', 'DDROYEHZ', 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000884', 'CL000004', '2025-03-24', 6677.53, 'USD', 'Debit', 'Security', 'ESEJFR9X', 'Beta Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000885', 'CL000004', '2025-03-31', 2716.06, 'JPY', 'Debit', 'Wire Transfer', 'DDROYEHZ', 'Alpha Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000886', 'CL000004', '2025-04-21', 2216.06, 'USD', 'Credit', 'Wire Transfer', 'JHSDSOBB', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000887', 'CL000004', '2025-04-07', 480.99, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000888', 'CL000004', '2025-04-09', 854.62, 'CHF', 'Credit', 'Wire Transfer', 'CAOZYEMX', 'First AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000889', 'CL000004', '2025-04-30', 1098.21, 'EUR', 'Credit', 'Wire Transfer', 'VOXTKPRJ', 'Global Financial Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000890', 'CL000004', '2025-04-06', 341.21, 'AUD', 'Debit', 'Security', 'GQTNKPWJ', 'Prime Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000891', 'CL000004', '2025-04-19', 2316.62, 'CHF', 'Credit', 'Wire Transfer', 'RYDDDKDT', 'United Wealth Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000892', 'CL000004', '2025-05-03', 430.72, 'CHF', 'Debit', 'Wire Transfer', 'TEPTYEE3', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000893', 'CL000004', '2025-04-12', 804.96, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000894', 'CL000004', '2025-04-30', 699.02, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000895', 'CL000004', '2025-04-15', 1609.77, 'EUR', 'Credit', 'Wire Transfer', 'WKQEAT75', 'International Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000896', 'CL000004', '2025-04-14', 2234.78, 'JPY', 'Credit', 'Security', 'LZZBNOHJ', 'Prime Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000897', 'CL000004', '2025-04-21', 1391.02, 'USD', 'Credit', 'Wire Transfer', 'TEKHDEH1', 'Premier Financial Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000898', 'CL000004', '2025-04-16', 2761.4, 'USD', 'Debit', 'Wire Transfer', 'LIIZRUOS', 'Premier Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000899', 'CL000004', '2025-04-27', 5723.53, 'USD', 'Credit', 'Wire Transfer', 'GSSBKPOT', 'Premier Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000900', 'CL000004', '2025-04-11', 1726.64, 'GBP', 'Credit', 'Wire Transfer', 'KFKXKPVZ', 'International GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000901', 'CL000004', '2025-04-25', 411.08, 'CHF', 'Debit', 'Wire Transfer', 'SKRJJP6Q', 'Global Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000902', 'CL000004', '2025-05-25', 2750.15, 'GBP', 'Credit', 'Security', 'OBYCSD1W', 'United Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000903', 'CL000004', '2025-05-04', 174.82, 'CHF', 'Debit', 'Wire Transfer', 'CAOZYEMX', 'International Asset Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000904', 'CL000004', '2025-05-15', 3334.6, 'EUR', 'Debit', 'Wire Transfer', 'CJJIDEJB', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000905', 'CL000004', '2025-05-19', 259.76, 'EUR', 'Credit', 'Wire Transfer', 'DXGPNOWP', 'Omega Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000906', 'CL000004', '2025-05-08', 313.53, 'GBP', 'Debit', 'Wire Transfer', 'YCZEBE8J', 'Prime Commerce Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000907', 'CL000004', '2025-05-17', 1310.52, 'USD', 'Credit', 'Wire Transfer', 'MKRUSY04', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000908', 'CL000004', '2025-05-10', 193.23, 'CHF', 'Credit', 'Wire Transfer', 'GYLWNLTB', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000909', 'CL000004', '2025-05-10', 1518.78, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000910', 'CL000004', '2025-05-31', 620.75, 'CHF', 'Credit', 'Security', 'PZRADK3K', 'International Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000911', 'CL000004', '2025-05-15', 1095.78, 'CHF', 'Credit', 'Cash', 'MWXESEAO', 'Prime Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000912', 'CL000004', '2025-05-31', 1095.07, 'CHF', 'Debit', 'Security', 'TEKHDEH1', 'Alpha Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000913', 'CL000004', '2025-05-13', 451.33, 'CHF', 'Debit', 'Wire Transfer', 'WWFVBEQK', 'Elite Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000914', 'CL000004', '2025-05-06', 1066.07, 'JPY', 'Credit', 'Wire Transfer', 'ZHQKBE9T', 'Prime Wealth Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000915', 'CL000004', '2025-05-21', 1866.57, 'USD', 'Debit', 'Wire Transfer', 'JKDRIR64', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000916', 'CL000004', '2025-06-04', 813.63, 'EUR', 'Debit', 'Wire Transfer', 'SKRJJP6Q', 'United GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000917', 'CL000004', '2025-06-25', 694.62, 'CHF', 'Debit', 'Wire Transfer', 'MXVCDKPJ', 'First Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000918', 'CL000004', '2025-06-07', 441.4, 'GBP', 'Debit', 'Wire Transfer', 'PZRADK3K', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000919', 'CL000004', '2025-06-27', 1287.98, 'CHF', 'Credit', 'Wire Transfer', 'ZVZYNL4F', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000920', 'CL000004', '2025-06-24', 424.69, 'GBP', 'Debit', 'Wire Transfer', 'OXDDIRQT', 'International Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000921', 'CL000004', '2025-06-11', 1159.65, 'EUR', 'Debit', 'Wire Transfer', 'OXDDIRQT', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000922', 'CL000004', '2025-06-23', 473.37, 'EUR', 'Debit', 'Wire Transfer', 'HMIZSOJ5', 'Premier Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000923', 'CL000004', '2025-06-27', 2250.7, 'AUD', 'Debit', 'Wire Transfer', 'LJNIAF43', 'First Commerce GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000924', 'CL000004', '2025-06-19', 701.58, 'AUD', 'Credit', 'Cheque', 'DNTELYHR', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000925', 'CL000004', '2025-06-19', 2521.48, 'CHF', 'Credit', 'Wire Transfer', 'LIIZRUOS', 'Prime Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000926', 'CL000004', '2025-06-27', 1439.39, 'CHF', 'Debit', 'Security', 'CGCHFRWN', 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000927', 'CL000004', '2025-06-25', 687.53, 'EUR', 'Debit', 'Wire Transfer', 'TLPJUS9E', 'First Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000928', 'CL000004', '2025-06-06', 851.44, 'AUD', 'Credit', 'Wire Transfer', 'JHSDSOBB', 'Global Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000929', 'CL000004', '2025-06-22', 478.22, 'GBP', 'Debit', 'Cheque', 'IDZEFIPZ', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000930', 'CL000004', '2025-06-13', 1107.73, 'CHF', 'Debit', 'Wire Transfer', 'GYLWNLTB', 'International Commerce Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000931', 'CL000004', '2025-06-15', 4047.24, 'CHF', 'Debit', 'Wire Transfer', 'ZNDRJP8F', 'Elite Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000932', 'CL000004', '2025-06-03', 12803.77, 'USD', 'Credit', 'Cash', 'OCYRFIFB', 'United Commerce Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000933', 'CL000004', '2025-06-30', 1320.03, 'GBP', 'Credit', 'Wire Transfer', 'ENLHBY9P', 'Elite Financial Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000934', 'CL000004', '2025-06-08', 2509.68, 'EUR', 'Debit', 'Security', 'XEBLLUS3', 'Elite Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000935', 'CL000004', '2025-06-29', 7119.22, 'JPY', 'Debit', 'Wire Transfer', 'RYDDDKDT', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000936', 'CL000004', '2025-06-24', 761.21, 'JPY', 'Debit', 'Wire Transfer', 'YGIUHKFB', 'Premier Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000937', 'CL000004', '2025-06-10', 2508.97, 'EUR', 'Credit', 'Cheque', 'PKPMUSJT', 'Omega Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000938', 'CL000004', '2025-06-17', 521.63, 'CHF', 'Credit', 'Wire Transfer', 'CJJIDEJB', 'Premier Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000939', 'CL000004', '2025-06-27', 1021.11, 'CHF', 'Credit', 'Wire Transfer', 'XUFUIRZQ', 'Prime Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000940', 'CL000004', '2025-06-04', 662.71, 'USD', 'Credit', 'Security', 'MXVCDKPJ', 'Prime Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000941', 'CL000004', '2025-07-27', 2586.7, 'USD', 'Debit', 'Wire Transfer', 'UQTYYEHA', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000942', 'CL000004', '2025-07-11', 713.79, 'USD', 'Credit', 'Security', 'PZRADK3K', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000943', 'CL000004', '2025-07-23', 469.79, 'CNY', 'Credit', 'Wire Transfer', 'OHZDZW1V', 'International Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000944', 'CL000004', '2025-07-03', 945.15, 'EUR', 'Credit', 'Wire Transfer', 'TPAFBYY4', 'Elite Wealth Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000945', 'CL000004', '2025-07-10', 685.16, 'GBP', 'Debit', 'Security', 'PTLXIRUZ', 'Alpha Financial Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000946', 'CL000004', '2025-07-23', 868.73, 'AUD', 'Credit', 'Wire Transfer', 'OQXVCUCF', 'Premier Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000947', 'CL000004', '2025-07-18', 576.68, 'CHF', 'Credit', 'Wire Transfer', 'ZVWAAT0L', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000948', 'CL000004', '2025-07-17', 1386.65, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000949', 'CL000004', '2025-07-19', 904.05, 'CNY', 'Debit', 'Wire Transfer', 'GQTNKPWJ', 'Alpha Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000950', 'CL000004', '2025-07-04', 2504.3, 'CAD', 'Credit', 'Security', 'AIAYCA53', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000951', 'CL000004', '2025-07-25', 472.85, 'CHF', 'Credit', 'Wire Transfer', 'OXDDIRQT', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000952', 'CL000004', '2025-07-22', 2935.29, 'USD', 'Credit', 'Wire Transfer', 'SZNHLYDG', 'Prime Trade Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000953', 'CL000004', '2025-07-28', 290.43, 'CHF', 'Debit', 'Wire Transfer', 'MKRUSY04', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000954', 'CL000004', '2025-07-28', 440.46, 'USD', 'Credit', 'Wire Transfer', 'PATVBYU1', 'International Commerce Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000955', 'CL000004', '2025-07-03', 3179.63, 'USD', 'Credit', 'Security', 'SKRJJP6Q', 'Prime Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000956', 'CL000004', '2025-07-23', 1715.82, 'CHF', 'Debit', 'Wire Transfer', 'IDZEFIPZ', 'Elite Trade Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000957', 'CL000004', '2025-07-29', 3712.77, 'EUR', 'Credit', 'Security', 'SSKLDEK5', 'First Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000958', 'CL000004', '2025-07-28', 964.19, 'USD', 'Debit', 'Wire Transfer', 'WWFVBEQK', 'International Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000959', 'CL000004', '2025-07-24', 753.05, 'CHF', 'Credit', 'Wire Transfer', 'MKRUSY04', 'Beta GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000960', 'CL000004', '2025-07-09', 2310.01, 'USD', 'Credit', 'Security', 'TEPTYEE3', 'Elite AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000961', 'CL000004', '2025-07-14', 170.11, 'EUR', 'Debit', 'Wire Transfer', 'HPMNLYP0', 'First Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000962', 'CL000004', '2025-07-18', 641.49, 'USD', 'Credit', 'Wire Transfer', 'WPSBFRIK', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000963', 'CL000004', '2025-07-23', 1680.21, 'CHF', 'Credit', 'Security', 'NPZYJP1Y', 'Global Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000964', 'CL000004', '2025-07-17', 427.8, 'EUR', 'Credit', 'Wire Transfer', 'ZHQKBE9T', 'First Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000965', 'CL000004', '2025-07-09', 2136.0, 'EUR', 'Debit', 'Security', 'BIBMSE7T', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000966', 'CL000004', '2025-08-19', 4216.94, 'EUR', 'Debit', 'Wire Transfer', 'MWXESEAO', 'Alpha Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000967', 'CL000004', '2025-08-16', 1288.64, 'CHF', 'Credit', 'Security', 'RVUFGBBL', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000968', 'CL000004', '2025-08-07', 367.81, 'USD', 'Debit', 'Security', 'NTUXSYRJ', 'Beta Financial Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000969', 'CL000004', '2025-08-12', 2008.19, 'CHF', 'Debit', 'Wire Transfer', 'YUQRCU7P', 'Prime Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000970', 'CL000004', '2025-08-19', 631.08, 'EUR', 'Credit', 'Wire Transfer', 'SHIKSGOK', 'Beta GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000971', 'CL000004', '2025-08-20', 167.3, 'AUD', 'Debit', 'Wire Transfer', 'ZVZYNL4F', 'United AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000972', 'CL000004', '2025-08-26', 280.3, 'USD', 'Credit', 'Wire Transfer', 'LJXLMMFG', 'United Financial Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000973', 'CL000004', '2025-08-29', 1534.6, 'EUR', 'Credit', 'Wire Transfer', 'NEXWCAKX', 'Beta GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000974', 'CL000004', '2025-08-12', 1202.08, 'USD', 'Credit', 'Security', 'OXDDIRQT', 'United Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000975', 'CL000004', '2025-08-22', 1277.78, 'GBP', 'Debit', 'Wire Transfer', 'UWVGBE2D', 'First Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000976', 'CL000004', '2025-08-17', 6670.58, 'CHF', 'Debit', 'Wire Transfer', 'NTUXSYRJ', 'Prime Wealth Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000977', 'CL000004', '2025-08-31', 1259.03, 'EUR', 'Debit', 'Wire Transfer', 'DNTELYHR', 'Omega Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000978', 'CL000004', '2025-08-21', 2202.75, 'CHF', 'Debit', 'Wire Transfer', 'PATVBYU1', 'Elite Financial Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000979', 'CL000004', '2025-08-14', 1176.29, 'EUR', 'Debit', 'Wire Transfer', 'PTLXIRUZ', 'First Asset Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000980', 'CL000004', '2025-08-27', 4486.26, 'GBP', 'Debit', 'Wire Transfer', 'JHSDSOBB', 'First AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000981', 'CL000004', '2025-08-21', 1966.54, 'GBP', 'Credit', 'Cash', 'YRCXUS11', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000982', 'CL000004', '2025-08-11', 1746.04, 'EUR', 'Credit', 'Security', 'CHHIKPTE', 'Alpha Commerce Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000983', 'CL000004', '2025-08-03', 227.25, 'JPY', 'Credit', 'Wire Transfer', 'IDZEFIPZ', 'Prime AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000984', 'CL000004', '2025-08-11', 4153.89, 'CHF', 'Debit', 'Security', 'KFKXKPVZ', 'Omega Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000985', 'CL000004', '2025-09-23', 5703.79, 'EUR', 'Credit', 'Cheque', 'SRZCNLOM', 'Elite Trade Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000986', 'CL000004', '2025-09-25', 3627.38, 'USD', 'Credit', 'Wire Transfer', 'PTLXIRUZ', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000987', 'CL000004', '2025-09-25', 238.03, 'CHF', 'Debit', 'Wire Transfer', 'XEBLLUS3', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000988', 'CL000004', '2025-09-02', 2036.21, 'CHF', 'Debit', 'Wire Transfer', 'WPDZAF2M', 'United Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000989', 'CL000004', '2025-09-01', 1240.86, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000990', 'CL000004', '2025-09-03', 3745.37, 'CHF', 'Debit', 'Security', 'KFKXKPVZ', 'Prime Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000991', 'CL000004', '2025-09-05', 538.25, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000992', 'CL000004', '2025-09-18', 624.81, 'EUR', 'Debit', 'Wire Transfer', 'TRHRHKWD', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000993', 'CL000004', '2025-09-04', 143.14, 'CHF', 'Debit', 'Wire Transfer', 'UQTYYEHA', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000994', 'CL000004', '2025-09-10', 391.29, 'USD', 'Credit', 'Wire Transfer', 'PZRADK3K', 'Beta Commerce Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000995', 'CL000004', '2025-09-05', 838.86, 'USD', 'Debit', 'Wire Transfer', 'SYNMCUCB', 'First AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000996', 'CL000004', '2025-09-22', 1874.51, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000997', 'CL000004', '2025-09-18', 461.1, 'USD', 'Credit', 'Wire Transfer', 'DDROYEHZ', 'Alpha Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000998', 'CL000004', '2025-09-11', 5322.63, 'CHF', 'Credit', 'Wire Transfer', 'PDDIAT62', 'International AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00000999', 'CL000004', '2025-09-12', 965.35, 'EUR', 'Debit', 'Wire Transfer', 'NZJOFR3W', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001000', 'CL000004', '2025-09-06', 5613.74, 'CHF', 'Debit', 'Cheque', 'HPSFDKWJ', 'Elite Wealth AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001001', 'CL000004', '2025-09-15', 1408.32, 'EUR', 'Credit', 'Wire Transfer', 'VOXTKPRJ', 'United Commerce Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001002', 'CL000004', '2025-09-15', 498.06, 'EUR', 'Debit', 'Cash', NULL, NULL);

-- CRM Notes from Batch 4
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0300', 'CL000004', '2025-05-28', 'Initial discussion regarding expected significant EUR inflows during June. Client explained source of funds and overall context.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0301', 'CL000004', '2025-06-02', 'Confirmed receipt of large EUR wire of approximately CHF 212k from Omega Holdings. Source of funds previously reviewed. Client satisfied with booking.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0302', 'CL000004', '2025-06-07', 'Reviewed second large EUR inflow of approximately CHF 293k from International Group. No compliance concerns identified.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0303', 'CL000004', '2025-06-10', 'Client requested consolidated overview of June inflows and liquidity impact. Discussed two major EUR wires totalling approximately CHF 505k.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0304', 'CL000004', '2025-06-15', 'General relationship discussion. Client comfortable with account positioning following recent credits.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0305', 'CL000004', '2024-11-22', 'Confirmed receipt of mid-sized CHF wire of approximately CHF 3.8k from Elite Wealth Capital. Routine confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0306', 'CL000004', '2024-10-09', 'Client inquiry regarding outgoing CHF wire of approximately CHF 6.1k to Beta Corp. Execution details confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0307', 'CL000004', '2024-10-15', 'Discussed security-related debit of approximately CHF 2.9k to Global Trading. Client confirmed investment rationale.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0308', 'CL000004', '2024-10-31', 'Reviewed October account activity. No discrepancies identified.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0309', 'CL000004', '2024-12-03', 'Confirmed incoming CHF wire of approximately CHF 882 from First GmbH. Client acknowledged receipt.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0310', 'CL000004', '2024-11-03', 'Batch payment instruction received: two November credits from Prime Partners (EUR ~1.4k) and Elite Investments (USD ~129). Client authorized same-day settlement.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0311', 'CL000004', '2024-12-05', 'Annual KYC refresh completed. No material changes to risk profile.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0312', 'CL000004', '2024-12-31', 'Confirmed receipt of year-end CHF wire of approximately CHF 9.3k from Beta Trading. Large amount aligned with prior discussion.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0313', 'CL000004', '2024-12-20', 'Client discussed planned cash usage around year-end. Liquidity reviewed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0314', 'CL000004', '2025-01-04', 'Telephone instruction received for early January CHF wire. Beneficiary: Omega AG. Amount: approximately CHF 12.0k. Client authenticated via dual control. Executing 4 Jan.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0315', 'CL000004', '2025-01-15', 'Follow-up on January outgoing USD wire of approximately CHF 4.6k to Prime GmbH. Client confirmed purpose and beneficiary.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0316', 'CL000004', '2025-01-25', 'Reviewed January account movements. Client comfortable with balances.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0317', 'CL000004', '2025-01-08', 'Confirmed incoming CHF wire of approximately CHF 1.6k from Alpha Group. Routine confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0318', 'CL000004', '2025-01-12', 'Client requested clarification on January debit of approximately CHF 1.5k related to Global Wealth Corp. Explained and closed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0319', 'CL000004', '2025-02-01', 'Discussed expected February debits and upcoming liquidity needs.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0320', 'CL000004', '2025-02-12', 'Confirmed outgoing CHF wire of approximately CHF 5.5k to Premier Trading. Client acknowledged execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0321', 'CL000004', '2025-02-17', 'Reviewed February cash outflow of approximately CHF 26.4k. Client explained purpose. No concerns.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0322', 'CL000004', '2025-02-24', 'Confirmed security debit of approximately CHF 8.8k related to Prime Capital. Client comfortable with exposure.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0323', 'CL000004', '2025-02-28', 'Client requested overview of February investment-related activity.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0324', 'CL000004', '2025-03-18', 'Confirmed incoming USD wire of approximately CHF 1.3k from Global Corp. Routine booking confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0325', 'CL000004', '2025-03-12', 'Reviewed March outgoing wire of approximately CHF 2.2k to Prime Capital. Client confirmed strategic rationale.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0326', 'CL000004', '2025-03-06', 'Processing incoming payment per client instruction. Counterparty: Omega Wealth Trading. Amount: approximately CHF 5.1k. Settlement 6 Mar.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0327', 'CL000004', '2025-03-31', 'Quarterly portfolio review completed. Discussed concentration and risk management.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0328', 'CL000004', '2025-03-24', 'Confirmed debit of approximately CHF 6.7k related to Beta Holdings security transaction. Client acknowledged.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0329', 'CL000004', '2025-04-05', 'Reviewed April account activity ahead of travel. No issues noted.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0330', 'CL000004', '2025-04-19', 'Confirmed incoming CHF wire of approximately CHF 2.3k from United Wealth Capital. Client satisfied with timing.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0331', 'CL000004', '2025-02-14', 'Follow-up on outgoing USD wire of approximately CHF 1.7k to Premier Group. Execution confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0332', 'CL000004', '2025-04-30', 'Client inquiry regarding April cash movements. Clarified and closed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0333', 'CL000004', '2025-04-27', 'Confirmed incoming USD wire of approximately CHF 5.7k from Premier Investments. Large inflow aligned with prior discussion.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0334', 'CL000004', '2025-05-05', 'Discussed May account activity and upcoming obligations.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0335', 'CL000004', '2025-05-17', 'Confirmed incoming USD wire of approximately CHF 1.3k from Omega GmbH. Client acknowledged receipt.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0336', 'CL000004', '2025-05-15', 'Reviewed May debit of approximately CHF 3.3k related to Global Holdings. Client confirmed transaction purpose.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0337', 'CL000004', '2025-06-19', 'Confirmed receipt of CHF wire of approximately CHF 2.5k from Prime Partners. Routine confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0338', 'CL000004', '2025-06-15', 'Reviewed June outgoing CHF wire of approximately CHF 4.0k to Elite Group. Client confirmed beneficiary.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0339', 'CL000004', '2025-06-30', 'Client requested mid-year overview of inflows, outflows, and investment exposure.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0340', 'CL000004', '2025-06-03', 'Telephone instruction received for early June USD cash inflow. Beneficiary: United Commerce Capital. Amount: approximately CHF 12.8k. Client authenticated via dual control.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0341', 'CL000004', '2025-06-27', 'Detailed review of late June EUR wire from Alpha Group. Amount: approximately CHF 1.3k, scheduled 27 Jun. Client requested email confirmation post-execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0342', 'CL000004', '2025-07-27', 'Confirmed July debit of approximately CHF 2.6k related to Global Investments. Client acknowledged execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0343', 'CL000004', '2025-07-22', 'Confirmed incoming USD wire of approximately CHF 2.9k from Prime Trade Partners. Client satisfied.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0344', 'CL000004', '2025-07-31', 'Discussed July account activity and travel plans. No action required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0345', 'CL000004', '2025-08-17', 'Confirmed outgoing CHF wire of approximately CHF 6.7k to Prime Wealth Investments. Client acknowledged.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0346', 'CL000004', '2025-08-16', 'Received standing instruction for CHF security credit from United AG. Scheduled for 16 Aug. Client confirmed via secure message.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0347', 'CL000004', '2025-08-31', 'Reviewed August activity ahead of month-end. No discrepancies identified.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0348', 'CL000004', '2025-09-11', 'Confirmed incoming CHF wire of approximately CHF 5.3k from International AG. Client satisfied.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0349', 'CL000004', '2025-09-20', 'Client requested overview of September activity ahead of year-end planning.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0350', 'CL000004', '2025-09-23', 'Confirmed incoming EUR cheque of approximately CHF 5.7k from Elite Trade Group. Booking confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0351', 'CL000004', '2025-09-30', 'End-of-period relationship review completed. Client comfortable with service and execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0352', 'CL000004', '2024-10-13', 'Client discussed two October debits: small EUR credit from First Investments (CHF 453) and CHF wire from Omega Wealth Limited (CHF 220). Routine activity.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0353', 'CL000004', '2024-11-15', 'Follow-up call regarding November USD wire of approximately CHF 7.4k to International Asset Holdings. Client satisfied with execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0354', 'CL000004', '2024-10-18', 'Client traveling to North America for 3 weeks. Updated contact preferences and emergency contacts. All communication via secure email only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0355', 'CL000004', '2024-12-18', 'Reviewed late December outgoing GBP wire of approximately CHF 1.8k to Global Wealth GmbH. Client confirmed purpose.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0356', 'CL000004', '2024-11-25', 'Confirmed details for incoming security credit: Alpha Partners. Client satisfied with execution timeline and investment rationale.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0357', 'CL000004', '2025-01-23', 'Client meeting notes: Discussed January USD credit of approximately CHF 7.4k from Prime Corp. Counterparty approved by compliance. Processing timeline confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0358', 'CL000004', '2025-02-17', 'Batch payment instruction received: two February credits from Elite Holdings (EUR ~1.4k) and Beta Financial Limited (CNY ~389). Client authorized same-day settlement.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0359', 'CL000004', '2025-03-20', 'Succession planning discussion. Client considering gradual wealth transfer to next generation. Referred to trust and estate specialists.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0360', 'CL000004', '2025-03-29', 'Confirmed incoming EUR wire of approximately CHF 4.1k from Prime Trade GmbH. Client acknowledged receipt.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0361', 'CL000004', '2025-04-10', 'Client signature verification for new investment mandate. Documents returned, currently in processing. Expected completion within 5 business days.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0362', 'CL000004', '2025-04-16', 'Reviewed mid-April outgoing USD wire of approximately CHF 2.8k to Premier Group. Client confirmed beneficiary details.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0363', 'CL000004', '2025-05-02', 'Annual regulatory reporting completed. Client copy sent via secure delivery. No questions or concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0364', 'CL000004', '2025-05-25', 'Client requested historical statements for tax filing purposes. Provided via secure channel.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0365', 'CL000004', '2025-06-23', 'Confirmed details for multiple June debits: Elite Group (CHF 4.0k) and Premier Trading (EUR ~473). Client satisfied with execution timelines.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0366', 'CL000004', '2025-06-28', 'Updated beneficial owner information per client notification. Compliance review in progress. Account fully operational.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0367', 'CL000004', '2025-07-05', 'Discussed upcoming regulatory changes to cross-border reporting. Client acknowledged requirements. No concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0368', 'CL000004', '2025-07-20', 'Client inquiry about sustainable investment options. Sent ESG portfolio framework document. Follow-up call scheduled.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0369', 'CL000004', '2025-08-28', 'End-of-month reconciliation call. Client satisfied with August activity. No discrepancies noted.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0370', 'CL000004', '2025-08-29', 'Confirmed incoming EUR wire of approximately CHF 1.5k from Beta GmbH. Routine confirmation provided.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0371', 'CL000004', '2025-09-05', 'Reviewed September outgoing CHF wire of approximately CHF 3.7k to Prime Capital. Client confirmed strategic allocation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0372', 'CL000004', '2025-09-16', 'Client raised concerns about market volatility. Reviewed portfolio stress tests. Comfortable with current diversification.');

-- Matches from Batch 4
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400000', 'TR00000770', 'N0301', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400001', 'TR00000770', 'N0300', 0.4936177832739693);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400002', 'TR00000770', 'N0302', 0.4714580161230904);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400003', 'TR00000771', 'N0302', 0.9203736972808838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400004', 'TR00000771', 'N0301', 0.5282445294516427);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400005', 'TR00000771', 'N0300', 0.4147213339805602);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400006', 'TR00000772', 'N0352', 0.9937662553787232);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400007', 'TR00000772', 'N0300', 0.4245504140853882);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400008', 'TR00000772', 'N0332', 0.4053416490554809);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400009', 'TR00000773', 'N0343', 0.548307740688324);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400010', 'TR00000773', 'N0362', 0.5482234477996826);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400011', 'TR00000773', 'N0307', 0.508027720451355);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400012', 'TR00000774', 'N0352', 0.487477127483913);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400013', 'TR00000774', 'N0300', 0.4042662262916565);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400014', 'TR00000774', 'N0332', 0.4000376343727111);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400015', 'TR00000775', 'N0308', 0.5515050189835684);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400016', 'TR00000775', 'N0332', 0.4455228924751281);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400017', 'TR00000775', 'N0313', 0.4363971948623657);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400018', 'TR00000776', 'N0310', 0.7277981230190822);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400019', 'TR00000776', 'N0335', 0.560296893119812);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400020', 'TR00000776', 'N0324', 0.5542212605476379);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400021', 'TR00000777', 'N0352', 0.573254668712616);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400022', 'TR00000777', 'N0308', 0.5031137193952288);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400023', 'TR00000777', 'N0356', 0.4411198329925537);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400024', 'TR00000778', 'N0309', 0.5572593688964844);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400025', 'TR00000778', 'N0308', 0.4958830560956682);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400026', 'TR00000778', 'N0352', 0.4233384132385254);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400027', 'TR00000779', 'N0356', 0.4504582476615906);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400028', 'TR00000779', 'N0352', 0.4436008763313293);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400029', 'TR00000779', 'N0308', 0.4283127171652657);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400030', 'TR00000780', 'N0300', 0.4455167770385742);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400031', 'TR00000780', 'N0332', 0.4306775450706482);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400032', 'TR00000780', 'N0313', 0.4267996072769165);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400033', 'TR00000781', 'N0352', 0.7566700237137931);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400034', 'TR00000781', 'N0313', 0.4397698402404785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400035', 'TR00000781', 'N0332', 0.4316101670265198);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400036', 'TR00000782', 'N0309', 0.5766162276268005);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400037', 'TR00000782', 'N0335', 0.4986823272705078);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400038', 'TR00000782', 'N0324', 0.4726841402053833);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400039', 'TR00000783', 'N0307', 0.9949656438827514);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400040', 'TR00000783', 'N0362', 0.5518568396568299);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400041', 'TR00000783', 'N0343', 0.5480175971984863);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400042', 'TR00000784', 'N0306', 0.9889986944198608);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400043', 'TR00000784', 'N0328', 0.5925848793983459);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400044', 'TR00000784', 'N0345', 0.5465746402740479);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400045', 'TR00000785', 'N0356', 0.4359013795852661);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400046', 'TR00000785', 'N0332', 0.4191564559936523);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400047', 'TR00000785', 'N0300', 0.4123939990997314);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400048', 'TR00000786', 'N0310', 0.5869995427131653);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400049', 'TR00000786', 'N0308', 0.5028286184583391);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400050', 'TR00000786', 'N0356', 0.412667441368103);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400051', 'TR00000787', 'N0355', 0.519646782875061);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400052', 'TR00000787', 'N0331', 0.5037771701812744);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400053', 'TR00000787', 'N0310', 0.4715926599502563);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400054', 'TR00000788', 'N0335', 0.5433932542800903);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400055', 'TR00000788', 'N0324', 0.5379306316375733);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400056', 'TR00000788', 'N0341', 0.5091790318489074);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400057', 'TR00000789', 'N0310', 0.4654798081942967);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400058', 'TR00000789', 'N0324', 0.4505895853042602);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400059', 'TR00000789', 'N0335', 0.4330937147140503);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400060', 'TR00000790', 'N0326', 0.566619610786438);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400061', 'TR00000790', 'N0320', 0.5440008997917175);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400062', 'TR00000790', 'N0315', 0.5351857662200927);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400063', 'TR00000791', 'N0309', 0.5559396783510844);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400064', 'TR00000791', 'N0356', 0.4545326471328735);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400065', 'TR00000791', 'N0352', 0.4397548198699951);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400066', 'TR00000792', 'N0352', 0.5531691074371338);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400067', 'TR00000792', 'N0311', 0.4675470556531633);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400068', 'TR00000792', 'N0356', 0.4124634504318237);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400069', 'TR00000793', 'N0356', 0.5817831175667899);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400070', 'TR00000793', 'N0355', 0.5385568380355835);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400071', 'TR00000793', 'N0331', 0.5247801542282104);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400072', 'TR00000794', 'N0356', 0.4324789524078369);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400073', 'TR00000794', 'N0332', 0.4207890272140502);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400074', 'TR00000794', 'N0300', 0.4133146405220032);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400075', 'TR00000795', 'N0325', 0.4845286011695862);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400076', 'TR00000795', 'N0318', 0.4631758252779642);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400077', 'TR00000795', 'N0342', 0.4569547891616821);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400078', 'TR00000796', 'N0356', 0.5436533675874983);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400079', 'TR00000796', 'N0310', 0.4644990396499633);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400080', 'TR00000796', 'N0370', 0.4566747665405273);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400081', 'TR00000797', 'N0356', 0.6270197527749197);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400082', 'TR00000797', 'N0309', 0.5791013768741062);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400083', 'TR00000797', 'N0352', 0.4771943728129069);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400084', 'TR00000798', 'N0352', 0.4682072830200195);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400085', 'TR00000798', 'N0300', 0.4218744993209838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400086', 'TR00000798', 'N0356', 0.3990440011024475);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400087', 'TR00000799', 'N0356', 0.5098553333963667);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400088', 'TR00000799', 'N0352', 0.4428484797477722);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400089', 'TR00000799', 'N0313', 0.4320824146270752);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400090', 'TR00000800', 'N0309', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400091', 'TR00000800', 'N0311', 0.5008169548852103);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400092', 'TR00000800', 'N0335', 0.4798512172698974);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400093', 'TR00000801', 'N0356', 0.9002886486053466);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400094', 'TR00000801', 'N0352', 0.5858210325241089);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400095', 'TR00000801', 'N0332', 0.4212609529495239);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400096', 'TR00000802', 'N0305', 0.9813141298294068);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400097', 'TR00000802', 'N0371', 0.5576600233713785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400098', 'TR00000802', 'N0356', 0.5570135678563799);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400099', 'TR00000803', 'N0310', 0.7150653076171875);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400100', 'TR00000803', 'N0356', 0.5698439516339984);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400101', 'TR00000803', 'N0370', 0.5506175518035888);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400102', 'TR00000804', 'N0310', 0.4925284845488412);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400103', 'TR00000804', 'N0335', 0.4850140047073364);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400104', 'TR00000804', 'N0309', 0.4833813619613647);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400105', 'TR00000805', 'N0370', 0.5866613817214966);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400106', 'TR00000805', 'N0335', 0.5570589303970337);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400107', 'TR00000805', 'N0324', 0.5508580923080444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400108', 'TR00000806', 'N0353', 0.9670781803131104);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400109', 'TR00000806', 'N0328', 0.5419362703959147);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400110', 'TR00000806', 'N0357', 0.5288697004318237);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400111', 'TR00000807', 'N0356', 0.6208720939499991);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400112', 'TR00000807', 'N0355', 0.5535417954126993);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400113', 'TR00000807', 'N0331', 0.5364748358726501);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400114', 'TR00000808', 'N0371', 0.5361274639765421);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400115', 'TR00000808', 'N0305', 0.5344741503397623);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400116', 'TR00000808', 'N0311', 0.5262107866150992);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400117', 'TR00000809', 'N0356', 0.5639791543143136);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400118', 'TR00000809', 'N0309', 0.5486248339925494);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400119', 'TR00000809', 'N0332', 0.4330938577651977);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400120', 'TR00000810', 'N0356', 0.4876323771476745);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400121', 'TR00000810', 'N0370', 0.4569179725646973);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400122', 'TR00000810', 'N0358', 0.4555798363685608);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400123', 'TR00000811', 'N0309', 0.4427950143814086);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400124', 'TR00000811', 'N0352', 0.426614499092102);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400125', 'TR00000811', 'N0313', 0.4133417776652744);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400126', 'TR00000812', 'N0335', 0.5914474439620971);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400127', 'TR00000812', 'N0324', 0.5857011151313781);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400128', 'TR00000812', 'N0341', 0.5281525135040284);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400129', 'TR00000813', 'N0313', 0.6304508924484253);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400130', 'TR00000813', 'N0356', 0.4062546372413635);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400131', 'TR00000813', 'N0332', 0.4058578491210937);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400132', 'TR00000814', 'N0312', 0.9902425956726074);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400133', 'TR00000814', 'N0314', 0.5468407784189497);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400134', 'TR00000814', 'N0322', 0.5325377821922302);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400135', 'TR00000815', 'N0309', 0.4705096912384033);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400136', 'TR00000815', 'N0335', 0.4621568083763122);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400137', 'TR00000815', 'N0324', 0.4606873869895935);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400138', 'TR00000816', 'N0309', 0.4543071818351745);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400139', 'TR00000816', 'N0356', 0.4535525870323181);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400140', 'TR00000816', 'N0352', 0.4258910536766052);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400141', 'TR00000817', 'N0370', 0.4679383826255798);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400142', 'TR00000817', 'N0335', 0.4636202573776244);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400143', 'TR00000817', 'N0309', 0.4500610113143921);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400144', 'TR00000818', 'N0313', 0.6902639746665955);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400145', 'TR00000818', 'N0355', 0.6320251314980643);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400146', 'TR00000818', 'N0318', 0.5818218183517456);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400147', 'TR00000819', 'N0355', 0.9783676695823668);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400148', 'TR00000819', 'N0313', 0.5655281083924429);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400149', 'TR00000819', 'N0331', 0.5246393561363221);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400150', 'TR00000820', 'N0355', 0.6592517375946045);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400151', 'TR00000820', 'N0313', 0.5731235878808157);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400152', 'TR00000820', 'N0342', 0.5560816049575805);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400153', 'TR00000821', 'N0313', 0.6081753390175956);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400154', 'TR00000821', 'N0357', 0.5368362903594971);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400155', 'TR00000821', 'N0353', 0.5278915882110595);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400156', 'TR00000822', 'N0313', 0.59496374300548);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400157', 'TR00000822', 'N0357', 0.5559540033340454);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400158', 'TR00000822', 'N0353', 0.5390363812446595);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400159', 'TR00000823', 'N0313', 0.622364718573434);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400160', 'TR00000823', 'N0309', 0.5295191764831543);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400161', 'TR00000823', 'N0324', 0.4586571168899536);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400162', 'TR00000824', 'N0319', 0.5783627578190396);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400163', 'TR00000824', 'N0309', 0.4530513525009155);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400164', 'TR00000824', 'N0352', 0.432283616065979);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400165', 'TR00000825', 'N0315', 0.6465601750782558);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400166', 'TR00000825', 'N0336', 0.5619896531105041);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400167', 'TR00000825', 'N0326', 0.5339804482460022);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400168', 'TR00000826', 'N0319', 0.6157498189381191);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400169', 'TR00000826', 'N0309', 0.5344124555587769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400170', 'TR00000826', 'N0356', 0.4484981417655945);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400171', 'TR00000827', 'N0336', 0.5491970181465149);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400172', 'TR00000827', 'N0371', 0.4869940161705017);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400173', 'TR00000827', 'N0342', 0.4569545030593872);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400174', 'TR00000828', 'N0325', 0.5154868364334106);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400175', 'TR00000828', 'N0362', 0.4805862140655517);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400176', 'TR00000828', 'N0316', 0.4779376183237348);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400177', 'TR00000829', 'N0319', 0.5389797534261431);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400178', 'TR00000829', 'N0316', 0.5019642387117658);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400179', 'TR00000829', 'N0352', 0.452441132068634);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400180', 'TR00000830', 'N0352', 0.4365294377009073);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400181', 'TR00000830', 'N0309', 0.4215115070343017);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400182', 'TR00000830', 'N0356', 0.4075685262680054);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400183', 'TR00000831', 'N0318', 0.9658706855773926);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400184', 'TR00000831', 'N0317', 0.6197397742952618);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400185', 'TR00000831', 'N0370', 0.5422317862510682);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400186', 'TR00000832', 'N0315', 0.9931815814971924);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400187', 'TR00000832', 'N0343', 0.4894389343261718);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400188', 'TR00000832', 'N0360', 0.4803947758674621);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400189', 'TR00000833', 'N0357', 0.8150116259711129);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400190', 'TR00000833', 'N0345', 0.5489061427116394);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400191', 'TR00000833', 'N0328', 0.5331064462661743);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400192', 'TR00000834', 'N0314', 0.9876645278930664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400193', 'TR00000834', 'N0340', 0.5502301692962647);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400194', 'TR00000834', 'N0312', 0.5346306119646345);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400195', 'TR00000835', 'N0317', 0.967911274433136);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400196', 'TR00000835', 'N0318', 0.6374978576387678);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400197', 'TR00000835', 'N0341', 0.6277468276023864);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400198', 'TR00000836', 'N0352', 0.5941476297378541);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400199', 'TR00000836', 'N0356', 0.4429167509078979);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400200', 'TR00000836', 'N0300', 0.4290202975273132);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400201', 'TR00000837', 'N0352', 0.4652697006861369);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400202', 'TR00000837', 'N0316', 0.4442616326468331);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400203', 'TR00000837', 'N0356', 0.4102402567863464);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400204', 'TR00000838', 'N0318', 0.730954366638547);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400205', 'TR00000838', 'N0331', 0.5149287223815918);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400206', 'TR00000838', 'N0370', 0.5071500658988952);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400207', 'TR00000839', 'N0319', 0.6087468147277832);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400208', 'TR00000839', 'N0336', 0.5519997310638428);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400209', 'TR00000839', 'N0371', 0.5297095370292664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400210', 'TR00000840', 'N0309', 0.5596154928207397);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400211', 'TR00000840', 'N0341', 0.4708544445037841);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400212', 'TR00000840', 'N0324', 0.4513322353363037);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400213', 'TR00000841', 'N0352', 0.5972488594055175);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400214', 'TR00000841', 'N0316', 0.5475335615021841);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400215', 'TR00000841', 'N0332', 0.4090482115745544);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400216', 'TR00000842', 'N0358', 0.7274150919914245);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400217', 'TR00000842', 'N0310', 0.5796847772598267);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400218', 'TR00000842', 'N0318', 0.5570064306259155);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400219', 'TR00000843', 'N0358', 0.5331857227143788);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400220', 'TR00000843', 'N0318', 0.469779888788859);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400221', 'TR00000843', 'N0310', 0.4656143466631571);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400222', 'TR00000844', 'N0331', 0.9730120134353636);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400223', 'TR00000844', 'N0358', 0.5497427429471697);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400224', 'TR00000844', 'N0355', 0.5400541186332702);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400225', 'TR00000845', 'N0352', 0.4358630418777465);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400226', 'TR00000845', 'N0309', 0.4336495399475097);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400227', 'TR00000845', 'N0300', 0.4231470465660095);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400228', 'TR00000846', 'N0358', 0.640891352721623);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400229', 'TR00000846', 'N0310', 0.5425245761871338);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400230', 'TR00000846', 'N0318', 0.5394020915031433);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400231', 'TR00000847', 'N0358', 0.5512307337352208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400232', 'TR00000847', 'N0317', 0.5362569522857666);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400233', 'TR00000847', 'N0370', 0.5321575164794922);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400234', 'TR00000848', 'N0323', 0.6095805168151855);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400235', 'TR00000848', 'N0356', 0.4071786403656006);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400236', 'TR00000848', 'N0332', 0.4065982818603516);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400237', 'TR00000849', 'N0300', 0.4104033350944518);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400238', 'TR00000849', 'N0332', 0.4041778564453125);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400239', 'TR00000849', 'N0356', 0.4040534019470215);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400240', 'TR00000850', 'N0310', 0.5770732355117798);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400241', 'TR00000850', 'N0358', 0.5660520485469273);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400242', 'TR00000850', 'N0324', 0.5368484139442444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400243', 'TR00000851', 'N0356', 0.4893795768419901);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400244', 'TR00000851', 'N0352', 0.4767337123552957);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400245', 'TR00000851', 'N0300', 0.4445080518722534);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400246', 'TR00000852', 'N0352', 0.4663317036628723);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400247', 'TR00000852', 'N0356', 0.4422294974327087);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400248', 'TR00000852', 'N0332', 0.4259063601493835);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400249', 'TR00000853', 'N0356', 0.4073901414871215);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400250', 'TR00000853', 'N0332', 0.4043787717819214);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400251', 'TR00000853', 'N0300', 0.3970402479171753);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400252', 'TR00000854', 'N0320', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400253', 'TR00000854', 'N0326', 0.6000554037094116);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400254', 'TR00000854', 'N0333', 0.5888730239868164);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400255', 'TR00000855', 'N0331', 0.5734792913709368);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400256', 'TR00000855', 'N0343', 0.5454350233078002);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400257', 'TR00000855', 'N0362', 0.543572461605072);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400258', 'TR00000856', 'N0323', 0.6071125984191894);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400259', 'TR00000856', 'N0352', 0.4422826329867045);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400260', 'TR00000856', 'N0332', 0.4067012786865234);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400261', 'TR00000857', 'N0321', 0.7808250308036804);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400262', 'TR00000857', 'N0300', 0.4514104843139648);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400263', 'TR00000857', 'N0332', 0.4339792728424072);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400264', 'TR00000858', 'N0358', 0.6434565373829433);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400265', 'TR00000858', 'N0331', 0.5797074065889631);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400266', 'TR00000858', 'N0318', 0.4630403280258178);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400267', 'TR00000859', 'N0352', 0.4220374345779419);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400268', 'TR00000859', 'N0356', 0.409887957572937);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400269', 'TR00000859', 'N0332', 0.402058482170105);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400270', 'TR00000860', 'N0342', 0.5281687498092651);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400271', 'TR00000860', 'N0337', 0.5261417865753174);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400272', 'TR00000860', 'N0330', 0.5230070352554321);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400273', 'TR00000861', 'N0322', 0.9879009914398194);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400274', 'TR00000861', 'N0357', 0.4879188728332519);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400275', 'TR00000861', 'N0312', 0.4847467184066772);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400276', 'TR00000862', 'N0324', 0.99438542842865);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400277', 'TR00000862', 'N0335', 0.5645638942718506);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400278', 'TR00000862', 'N0359', 0.526136793409075);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400279', 'TR00000863', 'N0370', 0.594766206741333);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400280', 'TR00000863', 'N0327', 0.470221403666905);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400281', 'TR00000863', 'N0356', 0.454017162322998);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400282', 'TR00000864', 'N0325', 0.6158784576824734);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400283', 'TR00000864', 'N0362', 0.5701415133476258);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400284', 'TR00000864', 'N0342', 0.5596289873123169);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400285', 'TR00000865', 'N0360', 0.998645133972168);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400286', 'TR00000865', 'N0371', 0.5422072807947794);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400287', 'TR00000865', 'N0305', 0.5170031428337097);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400288', 'TR00000866', 'N0352', 0.5528820037841797);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400289', 'TR00000866', 'N0356', 0.4259946227073669);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400290', 'TR00000866', 'N0332', 0.4132611393928527);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400291', 'TR00000867', 'N0327', 0.5889304041862488);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400292', 'TR00000867', 'N0356', 0.4639802289009094);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400293', 'TR00000867', 'N0329', 0.428788469518934);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400294', 'TR00000868', 'N0325', 0.6343083708626883);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400295', 'TR00000868', 'N0336', 0.5299997687339782);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400296', 'TR00000868', 'N0315', 0.4936914157867431);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400297', 'TR00000869', 'N0352', 0.5662216663360596);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400298', 'TR00000869', 'N0300', 0.4102194786071777);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400299', 'TR00000869', 'N0332', 0.403128182888031);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400300', 'TR00000870', 'N0359', 0.5728661605290004);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400301', 'TR00000870', 'N0352', 0.4480350685119629);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400302', 'TR00000870', 'N0309', 0.4195806741714477);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400303', 'TR00000871', 'N0325', 0.6838405680656433);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400304', 'TR00000871', 'N0360', 0.532834506034851);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400305', 'TR00000871', 'N0315', 0.5325670361518859);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400306', 'TR00000872', 'N0325', 0.8404930986676897);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400307', 'TR00000872', 'N0330', 0.54423255443573);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400308', 'TR00000872', 'N0343', 0.472018666267395);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400309', 'TR00000873', 'N0352', 0.5689808011054993);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400310', 'TR00000873', 'N0356', 0.4534722638130188);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400311', 'TR00000873', 'N0300', 0.4396472454071045);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400312', 'TR00000874', 'N0359', 0.4666043196405683);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400313', 'TR00000874', 'N0300', 0.4247313022613525);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400314', 'TR00000874', 'N0356', 0.424341971874237);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400315', 'TR00000875', 'N0355', 0.5344097137451171);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400316', 'TR00000875', 'N0342', 0.4590767931938171);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400317', 'TR00000875', 'N0324', 0.4530812144279479);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400318', 'TR00000876', 'N0330', 0.5704194704691569);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400319', 'TR00000876', 'N0325', 0.5540498784610203);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400320', 'TR00000876', 'N0342', 0.4694800535837809);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400321', 'TR00000877', 'N0336', 0.5226552009582519);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400322', 'TR00000877', 'N0359', 0.497274443081447);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400323', 'TR00000877', 'N0325', 0.4844192011015755);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400324', 'TR00000878', 'N0326', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400325', 'TR00000878', 'N0320', 0.5871018807093302);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400326', 'TR00000878', 'N0315', 0.5532796621322632);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400327', 'TR00000879', 'N0327', 0.5449863144329616);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400328', 'TR00000879', 'N0309', 0.4844380092620849);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400329', 'TR00000879', 'N0335', 0.4835768055915832);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400330', 'TR00000880', 'N0327', 0.5270286457879203);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400331', 'TR00000880', 'N0356', 0.4148611307144165);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400332', 'TR00000880', 'N0332', 0.4099780440330505);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400333', 'TR00000881', 'N0324', 0.6455751964024135);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400334', 'TR00000881', 'N0318', 0.5475185632705688);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400335', 'TR00000881', 'N0359', 0.5141787971769061);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400336', 'TR00000882', 'N0359', 0.6000723719596863);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400337', 'TR00000882', 'N0309', 0.4753166119257608);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400338', 'TR00000882', 'N0352', 0.4503097693125407);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400339', 'TR00000883', 'N0331', 0.5646075439453125);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400340', 'TR00000883', 'N0355', 0.5302439212799073);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400341', 'TR00000883', 'N0324', 0.5234139425413948);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400342', 'TR00000884', 'N0328', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400343', 'TR00000884', 'N0306', 0.5370326471328736);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400344', 'TR00000884', 'N0345', 0.5113993287086487);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400345', 'TR00000885', 'N0327', 0.6050368905067444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400346', 'TR00000885', 'N0342', 0.5723877739906311);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400347', 'TR00000885', 'N0343', 0.5482239484786987);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400348', 'TR00000886', 'N0330', 0.6980069058282035);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400349', 'TR00000886', 'N0362', 0.5154560429709298);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400350', 'TR00000886', 'N0325', 0.5088133215904236);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400351', 'TR00000887', 'N0352', 0.539476215839386);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400352', 'TR00000887', 'N0329', 0.5283106344086783);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400353', 'TR00000887', 'N0313', 0.430516505241394);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400354', 'TR00000888', 'N0309', 0.6031812381744385);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400355', 'TR00000888', 'N0329', 0.4549931441034589);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400356', 'TR00000888', 'N0352', 0.4503888320922851);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400357', 'TR00000889', 'N0332', 0.649352240562439);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400358', 'TR00000889', 'N0363', 0.5638273733002799);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400359', 'TR00000889', 'N0324', 0.4790582219759623);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400360', 'TR00000890', 'N0329', 0.592559153693063);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400361', 'TR00000890', 'N0352', 0.4574688625335693);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400362', 'TR00000890', 'N0356', 0.4341774344444274);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400363', 'TR00000891', 'N0330', 0.9983564567565918);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400364', 'TR00000891', 'N0362', 0.6080571140561785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400365', 'TR00000891', 'N0325', 0.5548851529757182);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400366', 'TR00000892', 'N0363', 0.6054072567394801);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400367', 'TR00000892', 'N0352', 0.5573122620582581);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400368', 'TR00000892', 'N0334', 0.5493168371064322);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400369', 'TR00000893', 'N0309', 0.5137892723083496);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400370', 'TR00000893', 'N0300', 0.4438138961791992);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400371', 'TR00000893', 'N0352', 0.4405427813529968);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400372', 'TR00000894', 'N0332', 0.6774622917175293);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400373', 'TR00000894', 'N0363', 0.5576374786240714);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400374', 'TR00000894', 'N0334', 0.4576533658163888);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400375', 'TR00000895', 'N0370', 0.5508904218673706);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400376', 'TR00000895', 'N0330', 0.5326723848070417);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400377', 'TR00000895', 'N0331', 0.5313562512397766);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400378', 'TR00000896', 'N0362', 0.6034080164773123);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400379', 'TR00000896', 'N0330', 0.5773319108145577);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400380', 'TR00000896', 'N0325', 0.5240592042605082);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400381', 'TR00000897', 'N0324', 0.5641548752784729);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400382', 'TR00000897', 'N0335', 0.5614563941955566);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400383', 'TR00000897', 'N0310', 0.5406816403071085);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400384', 'TR00000898', 'N0362', 0.9798450303077696);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400385', 'TR00000898', 'N0331', 0.6180082988739014);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400386', 'TR00000898', 'N0330', 0.5592082943235125);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400387', 'TR00000899', 'N0333', 0.9783418130874634);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400388', 'TR00000899', 'N0320', 0.565242190361023);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400389', 'TR00000899', 'N0332', 0.5471309150968279);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400390', 'TR00000900', 'N0355', 0.5729183149337769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400391', 'TR00000900', 'N0331', 0.5271456480026245);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400392', 'TR00000900', 'N0317', 0.4875861406326294);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400393', 'TR00000901', 'N0332', 0.4818020803587777);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400394', 'TR00000901', 'N0352', 0.4482746601104736);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400395', 'TR00000901', 'N0300', 0.4162427544593811);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400396', 'TR00000902', 'N0364', 0.638550877571106);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400397', 'TR00000902', 'N0342', 0.5592009067535401);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400398', 'TR00000902', 'N0300', 0.5524455155645098);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400399', 'TR00000903', 'N0334', 0.5854388543537685);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400400', 'TR00000903', 'N0363', 0.5601369040352957);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400401', 'TR00000903', 'N0332', 0.5042504106249128);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400402', 'TR00000904', 'N0336', 0.964555115699768);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400403', 'TR00000904', 'N0342', 0.4740090799331665);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400404', 'TR00000904', 'N0360', 0.4679314613342284);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400405', 'TR00000905', 'N0300', 0.4331637382507324);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400406', 'TR00000905', 'N0332', 0.4132263779640198);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400407', 'TR00000905', 'N0356', 0.40722416639328);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400408', 'TR00000906', 'N0334', 0.5129932965551104);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400409', 'TR00000906', 'N0352', 0.417606782913208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400410', 'TR00000906', 'N0363', 0.4139900139399937);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400411', 'TR00000907', 'N0335', 0.9998591017723084);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400412', 'TR00000907', 'N0324', 0.5557388544082641);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400413', 'TR00000907', 'N0341', 0.5249363660812378);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400414', 'TR00000908', 'N0334', 0.444261918749128);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400415', 'TR00000908', 'N0300', 0.4147231221199035);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400416', 'TR00000908', 'N0356', 0.4044597744941711);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400417', 'TR00000909', 'N0318', 0.5391146659851074);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400418', 'TR00000909', 'N0310', 0.5389801263809204);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400419', 'TR00000909', 'N0358', 0.5309927225112915);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400420', 'TR00000910', 'N0300', 0.5554658617292132);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400421', 'TR00000910', 'N0352', 0.4472569942474365);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400422', 'TR00000910', 'N0356', 0.4411102294921875);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400423', 'TR00000911', 'N0335', 0.6153931634766715);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400424', 'TR00000911', 'N0318', 0.4586033105850219);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400425', 'TR00000911', 'N0310', 0.457214982509613);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400426', 'TR00000912', 'N0300', 0.5533096517835344);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400427', 'TR00000912', 'N0356', 0.4815415096282959);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400428', 'TR00000912', 'N0318', 0.4507141828536987);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400429', 'TR00000913', 'N0352', 0.5885446739196778);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400430', 'TR00000913', 'N0356', 0.4115527153015136);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400431', 'TR00000913', 'N0332', 0.4059386014938354);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400432', 'TR00000914', 'N0334', 0.5931176253727504);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400433', 'TR00000914', 'N0363', 0.4815897141184125);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400434', 'TR00000914', 'N0310', 0.4498554388682047);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400435', 'TR00000915', 'N0335', 0.5685354862894331);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400436', 'TR00000915', 'N0355', 0.5569911432266236);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400437', 'TR00000915', 'N0331', 0.5386123418807983);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400438', 'TR00000916', 'N0309', 0.5842808198928834);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400439', 'TR00000916', 'N0352', 0.4279562830924988);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400440', 'TR00000916', 'N0300', 0.4089475750923156);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400441', 'TR00000917', 'N0366', 0.5038968886647905);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400442', 'TR00000917', 'N0309', 0.4701919388771057);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400443', 'TR00000917', 'N0352', 0.440484185218811);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400444', 'TR00000918', 'N0352', 0.5507974624633789);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400445', 'TR00000918', 'N0356', 0.4091008901596069);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400446', 'TR00000918', 'N0332', 0.4036394119262695);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400447', 'TR00000919', 'N0341', 0.9780384731292724);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400448', 'TR00000919', 'N0317', 0.6148924660682679);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400449', 'TR00000919', 'N0366', 0.5861574360302517);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400450', 'TR00000920', 'N0352', 0.5344829082489014);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400451', 'TR00000920', 'N0366', 0.4625792895044599);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400452', 'TR00000920', 'N0332', 0.3990609169006348);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400453', 'TR00000921', 'N0335', 0.4915009450912475);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400454', 'TR00000921', 'N0304', 0.4625048671449934);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400455', 'TR00000921', 'N0370', 0.4464232563972473);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400456', 'TR00000922', 'N0352', 0.5952396821975708);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400457', 'TR00000922', 'N0366', 0.4339555842535836);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400458', 'TR00000922', 'N0300', 0.4312422752380371);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400459', 'TR00000923', 'N0341', 0.6745459794998169);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400460', 'TR00000923', 'N0366', 0.5826250025204249);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400461', 'TR00000923', 'N0330', 0.5242363452911377);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400462', 'TR00000924', 'N0304', 0.4640864763941084);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400463', 'TR00000924', 'N0352', 0.4557311487197876);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400464', 'TR00000924', 'N0332', 0.4103469014167785);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400465', 'TR00000925', 'N0337', 0.9871910285949708);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400466', 'TR00000925', 'N0310', 0.6108517718315124);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400467', 'TR00000925', 'N0342', 0.544775378704071);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400468', 'TR00000926', 'N0341', 0.7855330061912537);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400469', 'TR00000926', 'N0366', 0.608233232157571);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400470', 'TR00000926', 'N0310', 0.5765584659576416);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400471', 'TR00000927', 'N0366', 0.5097826566014971);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400472', 'TR00000927', 'N0352', 0.4570380640029907);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400473', 'TR00000927', 'N0309', 0.443677274386088);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400474', 'TR00000928', 'N0309', 0.5547426342964172);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400475', 'TR00000928', 'N0352', 0.4279218435287475);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400476', 'TR00000928', 'N0332', 0.4098518371582031);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400477', 'TR00000929', 'N0352', 0.5457367420196534);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400478', 'TR00000929', 'N0356', 0.4642578554153442);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400479', 'TR00000929', 'N0366', 0.42124331508364);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400480', 'TR00000930', 'N0304', 0.5379338996750967);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400481', 'TR00000930', 'N0324', 0.4682028293609619);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400482', 'TR00000930', 'N0335', 0.4676603078842163);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400483', 'TR00000931', 'N0338', 0.967436022758484);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400484', 'TR00000931', 'N0365', 0.6908757877349854);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400485', 'TR00000931', 'N0304', 0.6004480600357056);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400486', 'TR00000932', 'N0340', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400487', 'TR00000932', 'N0314', 0.5015065908432007);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400488', 'TR00000932', 'N0357', 0.4647968530654907);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400489', 'TR00000933', 'N0341', 0.6608250583921159);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400490', 'TR00000933', 'N0339', 0.5976381421089172);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400491', 'TR00000933', 'N0366', 0.544330860887255);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400492', 'TR00000934', 'N0342', 0.5643873691558837);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400493', 'TR00000934', 'N0330', 0.5164454936981201);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400494', 'TR00000934', 'N0337', 0.5125130891799927);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400495', 'TR00000935', 'N0320', 0.6256668996810913);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400496', 'TR00000935', 'N0365', 0.608339536530631);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400497', 'TR00000935', 'N0366', 0.5801468202045985);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400498', 'TR00000936', 'N0366', 0.4799247060503278);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400499', 'TR00000936', 'N0352', 0.4352680484453837);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400500', 'TR00000936', 'N0309', 0.4236144661903381);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400501', 'TR00000937', 'N0342', 0.5829664421081543);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400502', 'TR00000937', 'N0337', 0.5112063169479371);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400503', 'TR00000937', 'N0330', 0.5070854067802429);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400504', 'TR00000938', 'N0304', 0.5463738816125052);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400505', 'TR00000938', 'N0352', 0.4403856039047241);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400506', 'TR00000938', 'N0356', 0.4387705039978027);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400507', 'TR00000939', 'N0341', 0.6722816228866577);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400508', 'TR00000939', 'N0366', 0.5773911544254848);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400509', 'TR00000939', 'N0339', 0.5048573698316301);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400510', 'TR00000940', 'N0352', 0.4457241487503052);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400511', 'TR00000940', 'N0356', 0.4291550874710083);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400512', 'TR00000940', 'N0332', 0.4198216438293456);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400513', 'TR00000941', 'N0342', 0.9836398553848268);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400514', 'TR00000941', 'N0362', 0.5612899541854858);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400515', 'TR00000941', 'N0343', 0.5344997985022408);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400516', 'TR00000942', 'N0356', 0.4358837842941284);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400517', 'TR00000942', 'N0352', 0.4319246292114257);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400518', 'TR00000942', 'N0332', 0.4194463491439819);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400519', 'TR00000943', 'N0352', 0.5488703846931458);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400520', 'TR00000943', 'N0368', 0.4931262101445879);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400521', 'TR00000943', 'N0332', 0.3999828100204468);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400522', 'TR00000944', 'N0309', 0.5465758085250855);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400523', 'TR00000944', 'N0367', 0.5156082647187369);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400524', 'TR00000944', 'N0339', 0.4953710760389055);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400525', 'TR00000945', 'N0356', 0.4809488217035929);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400526', 'TR00000945', 'N0352', 0.4584858576456705);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400527', 'TR00000945', 'N0332', 0.4255746960639953);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400528', 'TR00000946', 'N0309', 0.5656399130821228);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400529', 'TR00000946', 'N0368', 0.5020684804235186);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400530', 'TR00000946', 'N0324', 0.4641085457801819);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400531', 'TR00000947', 'N0368', 0.5356378214699882);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400532', 'TR00000947', 'N0352', 0.4349320650100708);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400533', 'TR00000947', 'N0356', 0.4039830207824706);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400534', 'TR00000948', 'N0318', 0.5534283638000488);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400535', 'TR00000948', 'N0335', 0.5433617830276489);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400536', 'TR00000948', 'N0324', 0.5419862747192383);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400537', 'TR00000949', 'N0368', 0.5983399220875332);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400538', 'TR00000949', 'N0309', 0.554861581325531);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400539', 'TR00000949', 'N0356', 0.4550847721099854);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400540', 'TR00000950', 'N0341', 0.6036149215698242);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400541', 'TR00000950', 'N0367', 0.5740470477512905);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400542', 'TR00000950', 'N0317', 0.5707229566574097);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400543', 'TR00000951', 'N0352', 0.5639690399169922);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400544', 'TR00000951', 'N0356', 0.4432753992080688);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400545', 'TR00000951', 'N0368', 0.4374934894698007);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400546', 'TR00000952', 'N0343', 0.987913579940796);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400547', 'TR00000952', 'N0362', 0.5542226552963256);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400548', 'TR00000952', 'N0368', 0.5348560469491142);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400549', 'TR00000953', 'N0344', 0.5023842300687518);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400550', 'TR00000953', 'N0356', 0.4210264563560486);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400551', 'TR00000953', 'N0332', 0.4027944087982177);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400552', 'TR00000954', 'N0352', 0.5379802227020264);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400553', 'TR00000954', 'N0344', 0.4936178054128374);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400554', 'TR00000954', 'N0356', 0.3991834044456482);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400555', 'TR00000955', 'N0343', 0.5600715708732605);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400556', 'TR00000955', 'N0336', 0.5369939684867859);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400557', 'TR00000955', 'N0367', 0.5349008219582694);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400558', 'TR00000956', 'N0355', 0.5522999405860901);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400559', 'TR00000956', 'N0331', 0.542086911201477);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400560', 'TR00000956', 'N0368', 0.5229459013257708);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400561', 'TR00000957', 'N0342', 0.6363605635506766);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400562', 'TR00000957', 'N0344', 0.5508811371667044);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400563', 'TR00000957', 'N0305', 0.5156484317779542);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400564', 'TR00000958', 'N0309', 0.5571004748344421);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400565', 'TR00000958', 'N0344', 0.498222085407802);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400566', 'TR00000958', 'N0324', 0.4736103057861328);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400567', 'TR00000959', 'N0309', 0.4796121072769165);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400568', 'TR00000959', 'N0368', 0.4701254878725324);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400569', 'TR00000959', 'N0352', 0.4364951848983764);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400570', 'TR00000960', 'N0337', 0.5137633562088013);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400571', 'TR00000960', 'N0330', 0.5030949950218201);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400572', 'TR00000960', 'N0325', 0.4929293155670166);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400573', 'TR00000961', 'N0300', 0.4208400964736938);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400574', 'TR00000961', 'N0332', 0.4016114830970764);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400575', 'TR00000961', 'N0356', 0.396367335319519);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400576', 'TR00000962', 'N0368', 0.5281164067132132);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400577', 'TR00000962', 'N0309', 0.4501048755645752);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400578', 'TR00000962', 'N0352', 0.4245717287063598);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400579', 'TR00000963', 'N0324', 0.6248352718353272);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400580', 'TR00000963', 'N0355', 0.5579415035247803);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400581', 'TR00000963', 'N0331', 0.5449158549308777);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400582', 'TR00000964', 'N0352', 0.5830204319953919);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400583', 'TR00000964', 'N0368', 0.4951455201421465);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400584', 'TR00000964', 'N0300', 0.4208845138549804);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400585', 'TR00000965', 'N0330', 0.5039060235023498);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400586', 'TR00000965', 'N0325', 0.4875980138778686);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400587', 'TR00000965', 'N0342', 0.4815966558456421);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400588', 'TR00000966', 'N0360', 0.5512649655342102);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400589', 'TR00000966', 'N0315', 0.526115608215332);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400590', 'TR00000966', 'N0305', 0.5118244409561157);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400591', 'TR00000967', 'N0346', 0.5912342977523803);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400592', 'TR00000967', 'N0324', 0.5394823431968689);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400593', 'TR00000967', 'N0335', 0.5367533922195434);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400594', 'TR00000968', 'N0356', 0.4470467805862426);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400595', 'TR00000968', 'N0352', 0.4355874180793762);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400596', 'TR00000968', 'N0332', 0.424800968170166);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400597', 'TR00000969', 'N0325', 0.5610032002131145);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400598', 'TR00000969', 'N0343', 0.4920540968577067);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400599', 'TR00000969', 'N0337', 0.4778406063715616);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400600', 'TR00000970', 'N0309', 0.4568871808052063);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400601', 'TR00000970', 'N0352', 0.4270878195762634);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400602', 'TR00000970', 'N0300', 0.4206579208374023);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400603', 'TR00000971', 'N0300', 0.4014373898506164);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400604', 'TR00000971', 'N0346', 0.399915360042027);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400605', 'TR00000971', 'N0356', 0.399413001537323);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400606', 'TR00000972', 'N0369', 0.5558020608765738);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400607', 'TR00000972', 'N0332', 0.403550398349762);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400608', 'TR00000972', 'N0356', 0.398601222038269);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400609', 'TR00000973', 'N0370', 0.988372917175293);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400610', 'TR00000973', 'N0369', 0.5912484475544522);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400611', 'TR00000973', 'N0358', 0.5342845630645752);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400612', 'TR00000974', 'N0324', 0.5404340267181397);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400613', 'TR00000974', 'N0335', 0.5373753070831299);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400614', 'TR00000974', 'N0341', 0.5091058611869812);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400615', 'TR00000975', 'N0324', 0.5614886355400086);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400616', 'TR00000975', 'N0335', 0.5457221269607544);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400617', 'TR00000975', 'N0310', 0.512957763671875);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400618', 'TR00000976', 'N0345', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400619', 'TR00000976', 'N0328', 0.5486789226531983);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400620', 'TR00000976', 'N0306', 0.5307703495025635);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400621', 'TR00000977', 'N0370', 0.621860899244036);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400622', 'TR00000977', 'N0335', 0.5880833101272583);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400623', 'TR00000977', 'N0347', 0.5675709009170532);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400624', 'TR00000978', 'N0330', 0.5368632197380065);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400625', 'TR00000978', 'N0325', 0.5243929862976074);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400626', 'TR00000978', 'N0362', 0.4780900875727335);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400627', 'TR00000979', 'N0324', 0.4616787592569987);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400628', 'TR00000979', 'N0309', 0.4548497835795084);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400629', 'TR00000979', 'N0370', 0.452308702468872);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400630', 'TR00000980', 'N0369', 0.6010277816227505);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400631', 'TR00000980', 'N0315', 0.5284636855125427);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400632', 'TR00000980', 'N0360', 0.5248514294624329);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400633', 'TR00000981', 'N0355', 0.5316864490509033);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400634', 'TR00000981', 'N0362', 0.4528654408454895);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400635', 'TR00000981', 'N0331', 0.4504091811180115);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400636', 'TR00000982', 'N0331', 0.5266742944717407);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400637', 'TR00000982', 'N0355', 0.5223776817321777);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400638', 'TR00000982', 'N0317', 0.5146739761034648);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400639', 'TR00000983', 'N0344', 0.4962960089956011);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400640', 'TR00000983', 'N0356', 0.4030599832534789);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400641', 'TR00000983', 'N0332', 0.3920530915260314);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400642', 'TR00000984', 'N0305', 0.5446449708938599);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400643', 'TR00000984', 'N0326', 0.5296999645233155);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400644', 'TR00000984', 'N0360', 0.5147562384605407);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400645', 'TR00000985', 'N0350', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400646', 'TR00000985', 'N0320', 0.5227645993232727);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400647', 'TR00000985', 'N0333', 0.5222328424453735);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400648', 'TR00000986', 'N0371', 0.5401380372047424);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400649', 'TR00000986', 'N0305', 0.5324181389808655);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400650', 'TR00000986', 'N0336', 0.5179619073867798);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400651', 'TR00000987', 'N0300', 0.4115180611610412);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400652', 'TR00000987', 'N0351', 0.4098748190062387);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400653', 'TR00000987', 'N0332', 0.4052436232566833);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400654', 'TR00000988', 'N0370', 0.56123411996024);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400655', 'TR00000988', 'N0325', 0.5386707782745361);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400656', 'TR00000988', 'N0347', 0.506674005304064);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400657', 'TR00000989', 'N0347', 0.5672848769596646);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400658', 'TR00000989', 'N0324', 0.5559442043304443);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400659', 'TR00000989', 'N0370', 0.5537195648465838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400660', 'TR00000990', 'N0371', 0.8878267495972769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400661', 'TR00000990', 'N0325', 0.6051374506950379);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400662', 'TR00000990', 'N0360', 0.5474945497512818);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400663', 'TR00000991', 'N0332', 0.4292674541473388);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400664', 'TR00000991', 'N0313', 0.4256821632385253);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400665', 'TR00000991', 'N0352', 0.4177521228790283);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400666', 'TR00000992', 'N0372', 0.4861639039857046);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400667', 'TR00000992', 'N0349', 0.4821010725838797);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400668', 'TR00000992', 'N0352', 0.457218701839447);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400669', 'TR00000993', 'N0347', 0.4347172175134931);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400670', 'TR00000993', 'N0300', 0.4264074683189392);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400671', 'TR00000993', 'N0356', 0.4140621185302734);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400672', 'TR00000994', 'N0352', 0.4225583553314209);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400673', 'TR00000994', 'N0356', 0.4150551080703735);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400674', 'TR00000994', 'N0332', 0.4007425546646118);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400675', 'TR00000995', 'N0309', 0.5690079641342164);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400676', 'TR00000995', 'N0352', 0.4280972075462341);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400677', 'TR00000995', 'N0356', 0.4036179900169372);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400678', 'TR00000996', 'N0331', 0.5238507509231567);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400679', 'TR00000996', 'N0349', 0.5100008385522025);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400680', 'TR00000996', 'N0355', 0.4830953359603882);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400681', 'TR00000997', 'N0352', 0.5578824996948243);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400682', 'TR00000997', 'N0372', 0.493309702192034);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400683', 'TR00000997', 'N0349', 0.4793891089303153);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400684', 'TR00000998', 'N0348', 0.9866255474090576);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400685', 'TR00000998', 'N0326', 0.5598453164100646);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400686', 'TR00000998', 'N0320', 0.5504271507263183);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400687', 'TR00000999', 'N0309', 0.5619815587997437);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400688', 'TR00000999', 'N0335', 0.45623459815979);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400689', 'TR00000999', 'N0324', 0.4501420497894287);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400690', 'TR00001000', 'N0371', 0.6223110386303493);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400691', 'TR00001000', 'N0326', 0.6189500284194945);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400692', 'TR00001000', 'N0348', 0.585533891405378);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400693', 'TR00001001', 'N0370', 0.5529133081436157);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400694', 'TR00001001', 'N0324', 0.5519877314567566);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400695', 'TR00001001', 'N0335', 0.5515650868415832);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400696', 'TR00001002', 'N0352', 0.574466097354889);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400697', 'TR00001002', 'N0372', 0.5162251659802028);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0400698', 'TR00001002', 'N0300', 0.4481901168823242);


-- Transactions from Batch 5
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001003', 'CL000005', '2025-02-12', 8527.46, 'CHF', 'Credit', 'Wire Transfer', NULL, 'Elite Wealth Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001004', 'CL000005', '2025-02-06', 6679.94, 'CHF', 'Debit', 'Cash', NULL, 'Alpha Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001005', 'CL000005', '2025-02-06', 6692.54, 'CHF', 'Credit', 'Wire Transfer', NULL, 'Prime Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001006', 'CL000005', '2025-02-06', 9895.04, 'CHF', 'Credit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001007', 'CL000005', '2025-02-12', 6750.02, 'CHF', 'Debit', 'Wire Transfer', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001008', 'CL000005', '2025-02-11', 9497.5, 'CHF', 'Credit', 'Cash', 'XZNXSYVX', 'United Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001009', 'CL000005', '2025-02-06', 9214.34, 'CHF', 'Credit', 'Wire Transfer', 'TLPJUS9E', 'Beta Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001010', 'CL000005', '2025-02-08', 8968.33, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001011', 'CL000005', '2025-02-11', 6858.84, 'CHF', 'Credit', 'Wire Transfer', 'NPZYJP1Y', 'Omega Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001012', 'CL000005', '2025-02-07', 6364.41, 'CHF', 'Credit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001013', 'CL000005', '2025-02-08', 8327.08, 'CHF', 'Debit', 'Wire Transfer', 'FIPFAUHC', 'Prime Wealth Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001014', 'CL000005', '2025-02-06', 5542.8, 'CHF', 'Credit', 'Cash', 'SBRQAFD1', 'Beta Wealth Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001015', 'CL000005', '2025-02-08', 8723.0, 'CHF', 'Debit', 'Wire Transfer', 'GYLWNLTB', 'International Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001016', 'CL000005', '2025-02-10', 5060.09, 'CHF', 'Credit', 'Cash', 'DNTELYHR', 'International Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001017', 'CL000005', '2024-10-15', 1136.07, 'CHF', 'Credit', 'Wire Transfer', 'PNYFNOZI', 'Elite Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001018', 'CL000005', '2024-10-08', 979.86, 'USD', 'Debit', 'Wire Transfer', 'LJNIAF43', 'International Commerce Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001019', 'CL000005', '2024-10-25', 554.49, 'CHF', 'Debit', 'Wire Transfer', 'ORIMVELR', 'Premier Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001020', 'CL000005', '2024-10-17', 346.87, 'CHF', 'Debit', 'Wire Transfer', 'XZNXSYVX', 'First Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001021', 'CL000005', '2024-10-06', 1766.6, 'GBP', 'Credit', 'Wire Transfer', 'ZVWAAT0L', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001022', 'CL000005', '2024-10-30', 4742.65, 'CHF', 'Credit', 'Wire Transfer', 'UWVGBE2D', 'Alpha Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001023', 'CL000005', '2024-10-09', 8602.86, 'CAD', 'Credit', 'Wire Transfer', 'SHIKSGOK', 'Alpha Trade Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001024', 'CL000005', '2024-10-29', 2531.99, 'EUR', 'Credit', 'Cash', 'HPMNLYP0', 'Alpha Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001025', 'CL000005', '2024-10-19', 1061.51, 'JPY', 'Credit', 'Wire Transfer', 'NPZYJP1Y', 'International Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001026', 'CL000005', '2024-10-27', 1146.99, 'USD', 'Credit', 'Wire Transfer', 'PATVBYU1', 'First Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001027', 'CL000005', '2024-10-18', 1826.59, 'EUR', 'Credit', 'Wire Transfer', 'MTWDUSFY', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001028', 'CL000005', '2024-10-13', 1557.46, 'CHF', 'Debit', 'Wire Transfer', 'RVUFGBBL', 'Prime Trade Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001029', 'CL000005', '2024-10-11', 798.7, 'USD', 'Credit', 'Wire Transfer', 'SBRQAFD1', 'Elite Trade Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001030', 'CL000005', '2024-10-06', 881.88, 'USD', 'Debit', 'Security', 'DDROYEHZ', 'International GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001031', 'CL000005', '2024-10-25', 1385.57, 'CAD', 'Credit', 'Cash', 'DXGPNOWP', 'Prime Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001032', 'CL000005', '2024-10-19', 5211.7, 'CHF', 'Debit', 'Wire Transfer', 'SZNHLYDG', 'Alpha Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001033', 'CL000005', '2024-10-10', 896.85, 'GBP', 'Debit', 'Wire Transfer', 'OITLIR36', 'International Commerce Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001034', 'CL000005', '2024-11-03', 265.59, 'CHF', 'Debit', 'Wire Transfer', 'FIPFAUHC', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001035', 'CL000005', '2024-11-02', 1527.08, 'CHF', 'Debit', 'Cheque', 'NPZYJP1Y', 'United GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001036', 'CL000005', '2024-10-13', 1316.72, 'USD', 'Debit', 'Security', 'LJNIAF43', 'Omega Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001037', 'CL000005', '2024-11-26', 3828.21, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001038', 'CL000005', '2024-11-09', 2430.25, 'CHF', 'Debit', 'Wire Transfer', 'YUQRCU7P', 'International Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001039', 'CL000005', '2024-12-03', 1205.84, 'JPY', 'Credit', 'Cash', 'MTWDUSFY', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001040', 'CL000005', '2024-12-01', 1682.2, 'USD', 'Debit', 'Security', 'SKRJJP6Q', 'International Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001041', 'CL000005', '2024-11-16', 630.88, 'EUR', 'Credit', 'Wire Transfer', 'ZVWAAT0L', 'United Financial Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001042', 'CL000005', '2024-11-13', 720.28, 'GBP', 'Credit', 'Wire Transfer', 'UJXHSDVP', 'Prime Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001043', 'CL000005', '2024-11-30', 1876.89, 'JPY', 'Debit', 'Wire Transfer', 'WGELNLPK', 'First Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001044', 'CL000005', '2024-12-01', 2609.03, 'CHF', 'Credit', 'Security', 'SHIKSGOK', 'Global GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001045', 'CL000005', '2024-11-21', 982.64, 'CHF', 'Credit', 'Wire Transfer', 'NPZYJP1Y', 'Beta Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001046', 'CL000005', '2024-12-03', 12060.01, 'EUR', 'Credit', 'Cash', 'OBYCSD1W', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001047', 'CL000005', '2024-11-30', 18593.4, 'CHF', 'Credit', 'Security', 'LIIZRUOS', 'Alpha Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001048', 'CL000005', '2024-11-25', 376.81, 'CHF', 'Credit', 'Security', 'PATVBYU1', 'International Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001049', 'CL000005', '2024-11-29', 208.09, 'EUR', 'Credit', 'Wire Transfer', 'ZVZYNL4F', 'First Commerce Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001050', 'CL000005', '2024-12-04', 6377.78, 'EUR', 'Debit', 'Wire Transfer', 'CAIRAF8O', 'First Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001051', 'CL000005', '2024-11-11', 1149.83, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001052', 'CL000005', '2024-11-06', 862.99, 'USD', 'Debit', 'Wire Transfer', 'AIAYCA53', 'Elite Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001053', 'CL000005', '2024-11-19', 759.54, 'GBP', 'Debit', 'Wire Transfer', 'CAIRAF8O', 'Elite Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001054', 'CL000005', '2024-11-13', 563.19, 'JPY', 'Credit', 'Cheque', 'KRHINO1C', 'Alpha Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001055', 'CL000005', '2024-11-20', 1548.38, 'USD', 'Credit', 'Wire Transfer', 'YGIUHKFB', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001056', 'CL000005', '2024-11-27', 272.97, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001057', 'CL000005', '2024-11-07', 630.34, 'USD', 'Debit', 'Security', 'QMUCLYHY', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001058', 'CL000005', '2024-12-26', 3242.65, 'GBP', 'Debit', 'Wire Transfer', 'MWXESEAO', 'International Financial Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001059', 'CL000005', '2024-12-20', 1306.93, 'CHF', 'Credit', 'Security', 'QFXWAUCI', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001060', 'CL000005', '2024-12-08', 531.33, 'CHF', 'Debit', 'Wire Transfer', 'NEXWCAKX', 'Global Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001061', 'CL000005', '2024-12-12', 844.29, 'GBP', 'Debit', 'Wire Transfer', 'KRHINO1C', 'Alpha Commerce Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001062', 'CL000005', '2024-12-05', 867.75, 'EUR', 'Credit', 'Cheque', 'GFYWGBLX', 'Prime Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001063', 'CL000005', '2024-12-25', 554.11, 'USD', 'Credit', 'Wire Transfer', 'SKRJJP6Q', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001064', 'CL000005', '2024-12-28', 406.86, 'CHF', 'Credit', 'Security', 'JGHPVE5U', 'Global Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001065', 'CL000005', '2024-12-19', 2817.76, 'EUR', 'Credit', 'Wire Transfer', 'CHHIKPTE', 'Elite Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001066', 'CL000005', '2024-12-06', 21637.91, 'EUR', 'Debit', 'Wire Transfer', 'OBYCSD1W', 'Prime Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001067', 'CL000005', '2024-12-23', 438.32, 'CHF', 'Credit', 'Security', 'YGIUHKFB', 'Elite Commerce Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001068', 'CL000005', '2024-12-20', 375.68, 'CHF', 'Credit', 'Cash', 'UFAFBEL5', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001069', 'CL000005', '2024-12-30', 901.57, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001070', 'CL000005', '2024-12-06', 946.47, 'USD', 'Debit', 'Cheque', 'ZVZYNL4F', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001071', 'CL000005', '2024-12-25', 383.52, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001072', 'CL000005', '2024-12-12', 1227.23, 'CHF', 'Credit', 'Security', 'SYNMCUCB', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001073', 'CL000005', '2024-12-29', 1216.81, 'CHF', 'Debit', 'Wire Transfer', 'OCYRFIFB', 'First Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001074', 'CL000005', '2024-12-05', 3375.68, 'USD', 'Debit', 'Wire Transfer', 'DDROYEHZ', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001075', 'CL000005', '2025-01-01', 1394.87, 'EUR', 'Credit', 'Wire Transfer', 'WPDZAF2M', 'Premier Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001076', 'CL000005', '2024-12-16', 423.46, 'USD', 'Debit', 'Wire Transfer', 'OBYCSD1W', 'Alpha Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001077', 'CL000005', '2024-12-09', 1351.7, 'USD', 'Debit', 'Wire Transfer', 'GQTNKPWJ', 'Omega Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001078', 'CL000005', '2024-12-21', 396.69, 'CHF', 'Debit', 'Security', 'LJXLMMFG', 'Beta Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001079', 'CL000005', '2024-12-20', 1157.03, 'EUR', 'Debit', 'Security', 'XZNXSYVX', 'Alpha Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001080', 'CL000005', '2025-01-03', 1052.23, 'CHF', 'Credit', 'Wire Transfer', 'EKMRBYO1', 'Premier Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001081', 'CL000005', '2024-12-18', 469.98, 'EUR', 'Credit', 'Wire Transfer', 'WKQEAT75', 'International Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001082', 'CL000005', '2024-12-13', 897.25, 'USD', 'Credit', 'Security', 'HMIZSOJ5', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001083', 'CL000005', '2025-01-04', 305.4, 'EUR', 'Debit', 'Wire Transfer', 'JKDRIR64', 'Beta Wealth Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001084', 'CL000005', '2025-01-23', 75.58, 'CHF', 'Credit', 'Wire Transfer', 'OXDDIRQT', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001085', 'CL000005', '2025-01-24', 6492.72, 'GBP', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001086', 'CL000005', '2025-01-20', 318.21, 'USD', 'Credit', 'Wire Transfer', 'HPMNLYP0', 'International Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001087', 'CL000005', '2025-01-13', 369.74, 'CHF', 'Credit', 'Wire Transfer', 'TLPJUS9E', 'Premier GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001088', 'CL000005', '2025-01-23', 2677.05, 'CHF', 'Debit', 'Security', 'OHZDZW1V', 'Alpha Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001089', 'CL000005', '2025-01-06', 1483.45, 'CHF', 'Debit', 'Security', 'VZMKBYLD', 'Alpha Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001090', 'CL000005', '2025-01-30', 4146.74, 'EUR', 'Credit', 'Security', 'TEKHDEH1', 'Global Financial AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001091', 'CL000005', '2025-01-30', 1309.73, 'EUR', 'Debit', 'Security', 'IDZEFIPZ', 'Alpha Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001092', 'CL000005', '2025-02-02', 1264.67, 'CHF', 'Credit', 'Wire Transfer', 'YGIUHKFB', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001093', 'CL000005', '2025-01-19', 1207.95, 'USD', 'Debit', 'Wire Transfer', 'HYQTSODA', 'First Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001094', 'CL000005', '2025-01-21', 314.98, 'GBP', 'Credit', 'Wire Transfer', 'TRHRHKWD', 'First Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001095', 'CL000005', '2025-01-08', 1090.37, 'USD', 'Credit', 'Wire Transfer', 'JFGYFRXV', 'Omega AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001096', 'CL000005', '2025-01-16', 784.52, 'CAD', 'Credit', 'Wire Transfer', 'LJXLMMFG', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001097', 'CL000005', '2025-02-01', 1459.0, 'EUR', 'Credit', 'Wire Transfer', 'ZVWAAT0L', 'Premier Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001098', 'CL000005', '2025-01-14', 1984.02, 'CHF', 'Debit', 'Wire Transfer', 'NTUXSYRJ', 'Premier Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001099', 'CL000005', '2025-01-27', 463.09, 'USD', 'Debit', 'Security', 'LJNIAF43', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001100', 'CL000005', '2025-01-21', 2056.21, 'CHF', 'Debit', 'Wire Transfer', 'JFGYFRXV', 'First Asset Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001101', 'CL000005', '2025-01-30', 1680.57, 'CHF', 'Credit', 'Cash', 'OBYCSD1W', 'Beta Financial Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001102', 'CL000005', '2025-01-12', 582.03, 'CHF', 'Credit', 'Wire Transfer', 'JBRISGL4', 'United Asset Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001103', 'CL000005', '2025-01-23', 1668.9, 'USD', 'Credit', 'Security', 'ILRNHK28', 'Prime Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001104', 'CL000005', '2025-01-27', 857.24, 'GBP', 'Credit', 'Wire Transfer', 'OBYCSD1W', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001105', 'CL000005', '2025-03-04', 2772.55, 'CAD', 'Credit', 'Security', 'CHHIKPTE', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001106', 'CL000005', '2025-02-03', 658.32, 'CHF', 'Credit', 'Wire Transfer', 'ENLHBY9P', 'International Financial Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001107', 'CL000005', '2025-02-10', 6808.63, 'CNY', 'Debit', 'Cheque', 'HPSFDKWJ', 'Alpha Asset Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001108', 'CL000005', '2025-02-25', 363.12, 'USD', 'Debit', 'Wire Transfer', 'LJNIAF43', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001109', 'CL000005', '2025-03-02', 1392.48, 'CHF', 'Credit', 'Wire Transfer', 'CKAFCHSA', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001110', 'CL000005', '2025-02-15', 3771.7, 'USD', 'Debit', 'Security', 'RMEFSEC0', 'Beta Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001111', 'CL000005', '2025-02-23', 1397.37, 'USD', 'Credit', 'Cash', 'UQTYYEHA', 'Elite Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001112', 'CL000005', '2025-02-25', 427.68, 'CHF', 'Credit', 'Wire Transfer', 'ITJTYE3J', 'Beta Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001113', 'CL000005', '2025-02-13', 466.66, 'CHF', 'Debit', 'Wire Transfer', 'SRZCNLOM', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001114', 'CL000005', '2025-02-13', 165.97, 'GBP', 'Debit', 'Wire Transfer', 'OBYCSD1W', 'First Asset Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001115', 'CL000005', '2025-02-04', 1319.08, 'JPY', 'Credit', 'Security', 'GSSBKPOT', 'Omega Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001116', 'CL000005', '2025-02-16', 657.03, 'JPY', 'Credit', 'Security', 'TEPTYEE3', 'Elite GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001117', 'CL000005', '2025-02-06', 1358.34, 'CHF', 'Debit', 'Cheque', 'SRZCNLOM', 'United Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001118', 'CL000005', '2025-02-11', 235.05, 'USD', 'Debit', 'Wire Transfer', 'PNYFNOZI', 'Global GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001119', 'CL000005', '2025-02-11', 2534.36, 'JPY', 'Debit', 'Wire Transfer', 'WGELNLPK', 'Elite Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001120', 'CL000005', '2025-02-17', 366.15, 'CHF', 'Credit', 'Cheque', 'KXLGGBIU', 'International Trade GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001121', 'CL000005', '2025-04-02', 509.17, 'CHF', 'Credit', 'Wire Transfer', 'XUFUIRZQ', 'Alpha Wealth GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001122', 'CL000005', '2025-03-14', 1623.47, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001123', 'CL000005', '2025-03-06', 6147.46, 'USD', 'Credit', 'Wire Transfer', 'ZNDRJP8F', 'Prime Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001124', 'CL000005', '2025-03-27', 2964.83, 'EUR', 'Credit', 'Wire Transfer', 'ILRNHK28', 'Premier Wealth Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001125', 'CL000005', '2025-03-30', 280.28, 'USD', 'Credit', 'Cash', 'GFYWGBLX', 'International Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001126', 'CL000005', '2025-03-22', 624.08, 'CHF', 'Debit', 'Wire Transfer', 'TLPJUS9E', 'Omega AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001127', 'CL000005', '2025-03-15', 6271.87, 'EUR', 'Credit', 'Wire Transfer', 'OBYCSD1W', 'Prime Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001128', 'CL000005', '2025-03-22', 868.4, 'CHF', 'Credit', 'Wire Transfer', 'TPAFBYY4', 'International Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001129', 'CL000005', '2025-03-25', 11603.82, 'EUR', 'Credit', 'Wire Transfer', 'VKBQZWBF', 'Prime Asset Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001130', 'CL000005', '2025-03-31', 4866.75, 'CHF', 'Credit', 'Wire Transfer', 'PZRADK3K', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001131', 'CL000005', '2025-03-10', 711.68, 'CHF', 'Credit', 'Wire Transfer', 'ILRNHK28', 'Premier Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001132', 'CL000005', '2025-04-03', 1115.31, 'CHF', 'Credit', 'Cash', 'WKQEAT75', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001133', 'CL000005', '2025-03-30', 1197.74, 'GBP', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001134', 'CL000005', '2025-03-27', 4982.22, 'CHF', 'Credit', 'Cheque', 'PIULLU9E', 'Omega Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001135', 'CL000005', '2025-03-21', 2615.46, 'CNY', 'Credit', 'Wire Transfer', 'WXFGATD2', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001136', 'CL000005', '2025-03-14', 937.57, 'EUR', 'Credit', 'Security', 'HYQTSODA', 'Global Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001137', 'CL000005', '2025-03-28', 2822.05, 'USD', 'Debit', 'Wire Transfer', 'LZZBNOHJ', 'Global Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001138', 'CL000005', '2025-03-07', 10676.52, 'EUR', 'Credit', 'Security', 'KRHINO1C', 'Premier Financial Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001139', 'CL000005', '2025-04-21', 12311.63, 'CHF', 'Debit', 'Wire Transfer', 'GSSBKPOT', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001140', 'CL000005', '2025-05-01', 479.42, 'JPY', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001141', 'CL000005', '2025-04-07', 1964.93, 'GBP', 'Debit', 'Wire Transfer', 'SBRQAFD1', 'Elite Trade Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001142', 'CL000005', '2025-05-03', 567.43, 'CHF', 'Credit', 'Cash', 'RVUFGBBL', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001143', 'CL000005', '2025-04-25', 592.6, 'CHF', 'Credit', 'Wire Transfer', 'SSKLDEK5', 'First Trade Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001144', 'CL000005', '2025-04-19', 726.9, 'USD', 'Credit', 'Wire Transfer', 'MWXESEAO', 'Prime Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001145', 'CL000005', '2025-05-02', 2302.59, 'EUR', 'Debit', 'Security', 'TEKHDEH1', 'International Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001146', 'CL000005', '2025-04-14', 287.18, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001147', 'CL000005', '2025-04-12', 1301.42, 'USD', 'Debit', 'Wire Transfer', 'MWXESEAO', 'Premier Financial Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001148', 'CL000005', '2025-04-12', 953.31, 'CHF', 'Credit', 'Wire Transfer', 'ZHQKBE9T', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001149', 'CL000005', '2025-04-15', 3051.78, 'USD', 'Credit', 'Wire Transfer', 'DDROYEHZ', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001150', 'CL000005', '2025-04-05', 53.83, 'EUR', 'Debit', 'Wire Transfer', 'VOXTKPRJ', 'International Asset GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001151', 'CL000005', '2025-04-09', 479.18, 'CHF', 'Credit', 'Wire Transfer', 'RYDDDKDT', 'Beta Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001152', 'CL000005', '2025-04-28', 391.32, 'CHF', 'Debit', 'Cheque', 'LJNIAF43', 'Prime Wealth Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001153', 'CL000005', '2025-04-27', 594.37, 'JPY', 'Debit', 'Security', 'ZROKRUGN', 'Omega Trade Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001154', 'CL000005', '2025-04-13', 12071.75, 'CHF', 'Credit', 'Wire Transfer', 'OQXVCUCF', 'Beta Financial Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001155', 'CL000005', '2025-04-25', 551.52, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001156', 'CL000005', '2025-04-07', 988.79, 'CNY', 'Debit', 'Wire Transfer', 'NPZYJP1Y', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001157', 'CL000005', '2025-04-18', 1514.94, 'USD', 'Credit', 'Wire Transfer', 'XZNXSYVX', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001158', 'CL000005', '2025-04-23', 12725.04, 'CHF', 'Debit', 'Security', 'WXFGATD2', 'First Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001159', 'CL000005', '2025-04-16', 2725.7, 'CHF', 'Debit', 'Wire Transfer', 'YRCXUS11', 'Elite GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001160', 'CL000005', '2025-04-18', 3861.46, 'CHF', 'Credit', 'Security', 'ZNDRJP8F', 'Premier Trade Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001161', 'CL000005', '2025-04-25', 991.56, 'EUR', 'Credit', 'Security', 'TPAFBYY4', 'International Financial AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001162', 'CL000005', '2025-05-27', 791.15, 'USD', 'Credit', 'Security', 'YCZEBE8J', 'Omega Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001163', 'CL000005', '2025-05-19', 2648.6, 'CNY', 'Debit', 'Wire Transfer', 'ISHGLYEG', 'International Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001164', 'CL000005', '2025-05-31', 2776.9, 'JPY', 'Debit', 'Wire Transfer', 'TRHRHKWD', 'Premier Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001165', 'CL000005', '2025-05-15', 267.59, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001166', 'CL000005', '2025-05-19', 50.52, 'GBP', 'Credit', 'Security', 'WWFVBEQK', 'First Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001167', 'CL000005', '2025-05-23', 1960.58, 'USD', 'Credit', 'Wire Transfer', 'AHFTCHY6', 'International Wealth Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001168', 'CL000005', '2025-05-21', 3866.75, 'USD', 'Credit', 'Wire Transfer', 'LJNIAF43', 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001169', 'CL000005', '2025-05-22', 10456.59, 'CHF', 'Credit', 'Cash', 'WXFGATD2', 'Elite Wealth Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001170', 'CL000005', '2025-05-12', 101.53, 'USD', 'Debit', 'Wire Transfer', 'GYLWNLTB', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001171', 'CL000005', '2025-05-06', 2335.36, 'EUR', 'Credit', 'Wire Transfer', 'RMEFSEC0', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001172', 'CL000005', '2025-05-05', 1013.49, 'EUR', 'Credit', 'Wire Transfer', 'IGYHVEQ1', 'Prime Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001173', 'CL000005', '2025-05-12', 1265.32, 'CHF', 'Credit', 'Wire Transfer', 'TEPTYEE3', 'First Trade Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001174', 'CL000005', '2025-06-01', 1382.58, 'EUR', 'Debit', 'Security', 'TLPJUS9E', 'Beta AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001175', 'CL000005', '2025-05-31', 21934.33, 'CHF', 'Credit', 'Cash', 'BIBMSE7T', 'Prime Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001176', 'CL000005', '2025-05-30', 1767.13, 'USD', 'Credit', 'Security', 'GQTNKPWJ', 'Prime GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001177', 'CL000005', '2025-05-21', 1063.33, 'CHF', 'Credit', 'Cash', 'ZVWAAT0L', 'International Asset Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001178', 'CL000005', '2025-05-17', 561.48, 'USD', 'Debit', 'Wire Transfer', 'GYLWNLTB', 'First Financial Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001179', 'CL000005', '2025-05-06', 533.16, 'USD', 'Credit', 'Cash', 'DNTELYHR', 'Elite GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001180', 'CL000005', '2025-05-13', 1690.83, 'GBP', 'Credit', 'Wire Transfer', 'PNYFNOZI', 'Beta Asset Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001181', 'CL000005', '2025-06-02', 1838.2, 'EUR', 'Debit', 'Security', 'YUQRCU7P', 'International Commerce Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001182', 'CL000005', '2025-05-07', 2436.7, 'EUR', 'Debit', 'Wire Transfer', 'NTUXSYRJ', 'Beta AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001183', 'CL000005', '2025-05-06', 2863.74, 'CHF', 'Debit', 'Wire Transfer', 'ITJTYE3J', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001184', 'CL000005', '2025-05-20', 731.06, 'JPY', 'Debit', 'Security', 'DDROYEHZ', 'Elite Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001185', 'CL000005', '2025-05-17', 4715.25, 'CHF', 'Credit', 'Security', 'UFAFBEL5', 'Prime Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001186', 'CL000005', '2025-05-18', 1279.52, 'USD', 'Debit', 'Wire Transfer', 'UECLNLPQ', 'Elite Financial Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001187', 'CL000005', '2025-05-29', 811.87, 'USD', 'Debit', 'Wire Transfer', 'ZROKRUGN', 'United Financial Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001188', 'CL000005', '2025-05-28', 558.73, 'CHF', 'Credit', 'Wire Transfer', 'AIAYCA53', 'Elite GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001189', 'CL000005', '2025-05-25', 4684.29, 'JPY', 'Credit', 'Wire Transfer', 'ISHGLYEG', 'First Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001190', 'CL000005', '2025-05-06', 2569.11, 'EUR', 'Credit', 'Wire Transfer', 'QMUCLYHY', 'Beta Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001191', 'CL000005', '2025-06-09', 428.61, 'CHF', 'Credit', 'Wire Transfer', 'MTWDUSFY', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001192', 'CL000005', '2025-06-20', 1238.01, 'CHF', 'Credit', 'Wire Transfer', 'TLPJUS9E', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001193', 'CL000005', '2025-06-11', 5199.91, 'EUR', 'Debit', 'Cheque', 'JGHPVE5U', 'Elite Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001194', 'CL000005', '2025-06-11', 5958.2, 'USD', 'Credit', 'Security', 'CHHIKPTE', 'International Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001195', 'CL000005', '2025-06-11', 3843.37, 'CHF', 'Debit', 'Wire Transfer', 'PTLXIRUZ', 'Prime Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001196', 'CL000005', '2025-06-08', 3468.54, 'EUR', 'Debit', 'Security', 'YCZEBE8J', 'International Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001197', 'CL000005', '2025-06-28', 177.37, 'CHF', 'Debit', 'Wire Transfer', 'HPMNLYP0', 'Alpha AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001198', 'CL000005', '2025-06-06', 330.69, 'CHF', 'Credit', 'Security', 'CAIRAF8O', 'Premier Asset Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001199', 'CL000005', '2025-06-17', 2720.48, 'EUR', 'Debit', 'Cheque', 'MYHKSY64', 'Beta Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001200', 'CL000005', '2025-06-19', 734.31, 'EUR', 'Debit', 'Wire Transfer', 'NEGKVETI', 'First Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001201', 'CL000005', '2025-06-09', 1906.88, 'CHF', 'Debit', 'Wire Transfer', 'KFKXKPVZ', 'Elite Wealth AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001202', 'CL000005', '2025-06-24', 170.64, 'CNY', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001203', 'CL000005', '2025-06-13', 2466.23, 'CHF', 'Debit', 'Security', 'JFGYFRXV', 'Premier Asset Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001204', 'CL000005', '2025-06-10', 772.53, 'CHF', 'Debit', 'Wire Transfer', 'NZJOFR3W', 'United GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001205', 'CL000005', '2025-06-20', 467.65, 'CHF', 'Debit', 'Security', 'GYLWNLTB', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001206', 'CL000005', '2025-06-15', 732.48, 'EUR', 'Debit', 'Wire Transfer', 'LZZBNOHJ', 'Premier Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001207', 'CL000005', '2025-06-27', 3830.91, 'GBP', 'Debit', 'Security', 'VOXTKPRJ', 'Premier Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001208', 'CL000005', '2025-07-01', 682.27, 'CHF', 'Credit', 'Cash', 'ZVZYNL4F', 'Prime Asset Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001209', 'CL000005', '2025-06-20', 763.71, 'GBP', 'Credit', 'Security', 'JBRISGL4', 'Elite Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001210', 'CL000005', '2025-06-25', 659.61, 'CHF', 'Credit', 'Security', 'XEBLLUS3', 'Premier Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001211', 'CL000005', '2025-06-24', 188.7, 'CHF', 'Credit', 'Cash', 'LJXLMMFG', 'Alpha Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001212', 'CL000005', '2025-06-28', 2418.2, 'CHF', 'Debit', 'Security', 'PZRADK3K', 'Omega Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001213', 'CL000005', '2025-06-13', 117.77, 'CHF', 'Credit', 'Wire Transfer', 'AIAYCA53', 'Omega Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001214', 'CL000005', '2025-06-07', 206.96, 'USD', 'Credit', 'Wire Transfer', 'BIBMSE7T', 'United GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001215', 'CL000005', '2025-06-04', 560.68, 'EUR', 'Credit', 'Security', 'RMEFSEC0', 'Global AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001216', 'CL000005', '2025-07-02', 1591.12, 'USD', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001217', 'CL000005', '2025-06-13', 392.16, 'EUR', 'Debit', 'Wire Transfer', 'QFXWAUCI', 'Elite Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001218', 'CL000005', '2025-06-05', 2217.84, 'CHF', 'Credit', 'Cash', 'WGELNLPK', 'Alpha AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001219', 'CL000005', '2025-07-19', 237.28, 'GBP', 'Debit', 'Wire Transfer', 'ZNDRJP8F', 'Alpha Commerce Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001220', 'CL000005', '2025-07-12', 2485.26, 'CHF', 'Debit', 'Wire Transfer', 'NEXWCAKX', 'Omega Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001221', 'CL000005', '2025-07-31', 992.45, 'EUR', 'Credit', 'Wire Transfer', 'GCGOSDFO', 'United Trade AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001222', 'CL000005', '2025-07-03', 666.47, 'EUR', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001223', 'CL000005', '2025-07-31', 1775.32, 'JPY', 'Credit', 'Security', 'GSSBKPOT', 'Alpha Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001224', 'CL000005', '2025-07-13', 199.46, 'CHF', 'Credit', 'Wire Transfer', 'NZJOFR3W', 'International Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001225', 'CL000005', '2025-07-23', 112.88, 'USD', 'Credit', 'Wire Transfer', 'MTWDUSFY', 'Omega Wealth GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001226', 'CL000005', '2025-07-11', 782.08, 'JPY', 'Credit', 'Wire Transfer', 'MTWDUSFY', 'Premier AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001227', 'CL000005', '2025-07-20', 475.43, 'CHF', 'Credit', 'Security', 'XZNXSYVX', 'First AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001228', 'CL000005', '2025-07-04', 3262.93, 'CHF', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001229', 'CL000005', '2025-07-27', 683.64, 'CHF', 'Credit', 'Wire Transfer', 'NEGKVETI', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001230', 'CL000005', '2025-07-07', 2001.47, 'USD', 'Debit', 'Security', 'GYLWNLTB', 'International Trade Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001231', 'CL000005', '2025-07-27', 3220.22, 'CNY', 'Credit', 'Wire Transfer', 'HPSFDKWJ', 'United Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001232', 'CL000005', '2025-07-14', 1018.89, 'USD', 'Debit', 'Security', 'PIULLU9E', 'Beta Financial Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001233', 'CL000005', '2025-07-17', 2450.91, 'USD', 'Credit', 'Cash', 'OCYRFIFB', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001234', 'CL000005', '2025-07-24', 1093.65, 'EUR', 'Debit', 'Wire Transfer', 'OITLIR36', 'Omega AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001235', 'CL000005', '2025-07-28', 2155.16, 'EUR', 'Debit', 'Wire Transfer', 'GCGOSDFO', 'Alpha GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001236', 'CL000005', '2025-07-30', 504.33, 'USD', 'Debit', 'Wire Transfer', 'QFXWAUCI', 'United Commerce GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001237', 'CL000005', '2025-07-18', 1297.93, 'GBP', 'Credit', 'Wire Transfer', 'MKRUSY04', 'Elite Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001238', 'CL000005', '2025-07-30', 1418.0, 'USD', 'Debit', 'Wire Transfer', 'WKQEAT75', 'Alpha Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001239', 'CL000005', '2025-07-06', 645.46, 'CAD', 'Debit', 'Wire Transfer', 'GYLWNLTB', 'Omega GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001240', 'CL000005', '2025-07-30', 7755.34, 'AUD', 'Debit', 'Wire Transfer', 'CAOZYEMX', 'Beta Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001241', 'CL000005', '2025-07-03', 3472.9, 'AUD', 'Credit', 'Wire Transfer', 'TEPTYEE3', 'United Trade Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001242', 'CL000005', '2025-08-01', 380.15, 'CNY', 'Credit', 'Wire Transfer', 'GFYWGBLX', 'Elite Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001243', 'CL000005', '2025-07-03', 2776.31, 'CHF', 'Debit', 'Wire Transfer', 'OHZDZW1V', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001244', 'CL000005', '2025-07-26', 2144.11, 'CHF', 'Credit', 'Wire Transfer', 'LJXLMMFG', 'Global Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001245', 'CL000005', '2025-07-30', 86.6, 'EUR', 'Credit', 'Wire Transfer', 'QFXWAUCI', 'United Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001246', 'CL000005', '2025-07-18', 3028.6, 'GBP', 'Debit', 'Security', 'OBYCSD1W', 'Premier Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001247', 'CL000005', '2025-07-15', 536.94, 'USD', 'Credit', 'Wire Transfer', 'YUQRCU7P', 'Elite Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001248', 'CL000005', '2025-07-11', 956.79, 'EUR', 'Credit', 'Cash', 'MKRUSY04', 'International Commerce Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001249', 'CL000005', '2025-08-01', 2945.19, 'EUR', 'Credit', 'Security', 'MWXESEAO', 'First Asset Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001250', 'CL000005', '2025-08-10', 2272.36, 'CHF', 'Debit', 'Wire Transfer', 'PDTOCA2T', 'Elite Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001251', 'CL000005', '2025-08-25', 2867.33, 'EUR', 'Debit', 'Security', 'IDZEFIPZ', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001252', 'CL000005', '2025-08-10', 308.89, 'CHF', 'Credit', 'Wire Transfer', 'OXDDIRQT', 'Beta AG');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001253', 'CL000005', '2025-08-02', 238.53, 'EUR', 'Debit', 'Wire Transfer', 'RFDYAUUR', 'Premier Trade Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001254', 'CL000005', '2025-08-23', 251.71, 'EUR', 'Debit', 'Wire Transfer', 'YWWJNOF4', 'Omega Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001255', 'CL000005', '2025-08-14', 230.68, 'EUR', 'Debit', 'Cheque', 'YCZEBE8J', 'Omega Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001256', 'CL000005', '2025-08-24', 6089.69, 'EUR', 'Credit', 'Security', 'WXFGATD2', 'First Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001257', 'CL000005', '2025-08-20', 2456.83, 'USD', 'Credit', 'Security', 'BIBMSE7T', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001258', 'CL000005', '2025-08-27', 1370.68, 'CHF', 'Credit', 'Wire Transfer', 'ISHGLYEG', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001259', 'CL000005', '2025-08-25', 229.83, 'USD', 'Credit', 'Wire Transfer', 'WWFVBEQK', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001260', 'CL000005', '2025-08-06', 2536.36, 'JPY', 'Debit', 'Wire Transfer', 'SRZCNLOM', 'First GmbH');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001261', 'CL000005', '2025-08-05', 722.22, 'USD', 'Credit', 'Cheque', 'SRZCNLOM', 'Premier Trade Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001262', 'CL000005', '2025-08-05', 472.69, 'CHF', 'Debit', 'Wire Transfer', 'AIAYCA53', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001263', 'CL000005', '2025-08-14', 2416.5, 'USD', 'Debit', 'Wire Transfer', 'GFYWGBLX', 'First Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001264', 'CL000005', '2025-08-16', 1567.3, 'CHF', 'Credit', 'Cash', 'KVHFHK2V', 'International Trade Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001265', 'CL000005', '2025-08-03', 1297.94, 'CHF', 'Credit', 'Cash', 'JHSDSOBB', 'Omega Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001266', 'CL000005', '2025-08-12', 410.88, 'CHF', 'Debit', 'Security', 'PNYFNOZI', 'Alpha Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001267', 'CL000005', '2025-09-26', 379.99, 'CHF', 'Debit', 'Security', 'VOXTKPRJ', 'Alpha Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001268', 'CL000005', '2025-09-29', 1181.1, 'CNY', 'Debit', 'Cheque', 'PZRADK3K', 'International Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001269', 'CL000005', '2025-09-15', 1057.15, 'CHF', 'Debit', 'Wire Transfer', 'PATVBYU1', 'International Corp');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001270', 'CL000005', '2025-09-05', 1834.82, 'USD', 'Debit', 'Wire Transfer', 'NPZYJP1Y', 'Alpha Financial Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001271', 'CL000005', '2025-09-08', 1387.14, 'EUR', 'Credit', 'Wire Transfer', 'UWVGBE2D', 'Global Holdings');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001272', 'CL000005', '2025-09-22', 3102.48, 'CHF', 'Credit', 'Security', 'VKBQZWBF', 'Alpha Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001273', 'CL000005', '2025-09-15', 7441.86, 'EUR', 'Credit', 'Security', 'VZMKBYLD', 'Beta Financial Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001274', 'CL000005', '2025-09-24', 3918.87, 'GBP', 'Debit', 'Cash', NULL, NULL);
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001275', 'CL000005', '2025-09-26', 3633.19, 'CAD', 'Debit', 'Wire Transfer', 'WWFVBEQK', 'First Financial Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001276', 'CL000005', '2025-09-28', 1441.75, 'CHF', 'Credit', 'Cash', 'CAOZYEMX', 'Elite Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001277', 'CL000005', '2025-09-03', 808.33, 'USD', 'Credit', 'Cheque', 'SZNHLYDG', 'Global Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001278', 'CL000005', '2025-09-25', 1492.99, 'CHF', 'Debit', 'Security', 'RYDDDKDT', 'Global Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001279', 'CL000005', '2025-09-02', 6876.26, 'EUR', 'Credit', 'Security', 'MKRUSY04', 'First Group');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001280', 'CL000005', '2025-09-08', 3358.32, 'EUR', 'Credit', 'Wire Transfer', 'TEKHDEH1', 'First Asset Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001281', 'CL000005', '2025-09-23', 1422.81, 'EUR', 'Debit', 'Wire Transfer', 'BNWBSEC5', 'United Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001282', 'CL000005', '2025-09-12', 1582.98, 'AUD', 'Debit', 'Security', 'SZNHLYDG', 'Elite Trading');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001283', 'CL000005', '2025-09-07', 2493.16, 'USD', 'Debit', 'Wire Transfer', 'OXDDIRQT', 'First Partners');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001284', 'CL000005', '2025-09-14', 695.26, 'CHF', 'Credit', 'Wire Transfer', 'GCGOSDFO', 'Global Capital');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001285', 'CL000005', '2025-09-08', 270.35, 'CHF', 'Debit', 'Security', 'HPSFDKWJ', 'United Investments');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001286', 'CL000005', '2025-09-10', 508.77, 'USD', 'Credit', 'Security', 'BIBMSE7T', 'Omega Limited');
INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('TR00001287', 'CL000005', '2025-09-10', 1170.97, 'GBP', 'Credit', 'Wire Transfer', 'CGCHFRWN', 'First Holdings');

-- CRM Notes from Batch 5
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0400', 'CL000005', '2025-01-15', 'Estate planning consultation. Client working with legal advisors on family trust structure. May impact account configuration in Q2.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0401', 'CL000005', '2025-02-12', 'Client requested confirmation of incoming wire from Elite Wealth Capital for approximately CHF 8.5k. Funds credited without issues.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0402', 'CL000005', '2025-02-06', 'Telephone instruction received for outgoing cash withdrawal of approximately CHF 6.7k. Client authenticated via dual control and execution confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0403', 'CL000005', '2025-02-06', 'Confirmed receipt of incoming wire from Prime Asset Limited amounting to CHF 6.7k. Client satisfied with booking.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0404', 'CL000005', '2025-02-06', 'Client reviewed two cash credits received on the same day totalling approximately CHF 15.9k. No concerns raised during follow-up call.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0405', 'CL000005', '2025-02-12', 'Processing outgoing wire per client instruction. Counterparty: Unknown. Amount: CHF 6.8k. Settlement 12 Feb.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0406', 'CL000005', '2025-02-06', 'Confirmed incoming wire from Beta Group for CHF 9.2k. Source of funds reviewed and documented.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0407', 'CL000005', '2025-02-08', 'Batch payment instruction received: two outgoing payments totalling approximately CHF 17.3k. Client authorized same-day settlement.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0408', 'CL000005', '2025-02-11', 'Detailed review of incoming payment from Omega Holdings. Amount: approximately CHF 6.9k. Client requested written confirmation via secure message.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0409', 'CL000005', '2025-02-07', 'Cash credit of CHF 6.4k booked successfully. No follow-up required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0410', 'CL000005', '2025-02-08', 'Client authorized outgoing wire to International Trading for approximately CHF 8.7k. Execution completed same day.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0411', 'CL000005', '2025-02-10', 'Received standing instruction for cash credit from International Trading. Amount: CHF 5.1k. Processed per mandate.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0412', 'CL000005', '2024-10-15', 'Confirmed incoming wire from Elite Trading for CHF 1.1k. Booking confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0413', 'CL000005', '2024-10-08', 'Follow-up on outgoing USD wire. Client verified the USD 980 transfer and provided final authorization.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0414', 'CL000005', '2024-10-25', 'Client discussed two small outgoing wires during October totalling approximately CHF 901. Routine operational activity.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0415', 'CL000005', '2024-10-06', 'Incoming GBP wire from Prime GmbH confirmed. Client requested FX rate explanation. Amount GBP 1.8k.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0416', 'CL000005', '2024-10-20', 'Annual KYC refresh completed. Updated employment details and income sources. No material changes to risk assessment.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0417', 'CL000005', '2024-10-09', 'Confirmed incoming CAD wire from Alpha Trade Group amounting to approximately CHF 8.6k. No further action required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0418', 'CL000005', '2024-10-29', 'Client reviewed incoming cash credit of EUR 2.5k. Booking confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0419', 'CL000005', '2024-10-27', 'Batch review of three incoming wires received mid-October totalling CHF 4.0k. All entries reconciled successfully.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0420', 'CL000005', '2024-10-13', 'Client meeting notes: Discussed outgoing payment to Prime Trade Capital. Amount: CHF 1.6k. Counterparty approved by compliance. Processing timeline confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0421', 'CL000005', '2024-11-03', 'Client contacted bank regarding several small operational debits in November. No discrepancies identified.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0422', 'CL000005', '2024-11-02', 'Confirmed cheque debit of CHF 1.5k. Documentation complete.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0423', 'CL000005', '2024-12-03', 'Incoming wire from United Capital for EUR 12.1k confirmed. Client requested settlement confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0424', 'CL000005', '2024-11-30', 'Client reviewed security credit from Alpha Trading amounting to CHF 18.6k. Portfolio impact discussed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0425', 'CL000005', '2024-12-06', 'Outgoing wire to Prime Asset Limited for EUR 21.6k executed following client authorization.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0426', 'CL000005', '2024-12-30', 'Client discussed multiple small cash movements in December. Routine activity acknowledged.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0427', 'CL000005', '2024-12-19', 'Confirmed incoming wire from Elite Capital for EUR 2.8k. Client satisfied.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0428', 'CL000005', '2024-12-25', 'Client discussed two incoming credits on the same date totalling CHF 1.0k. No follow-up required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0429', 'CL000005', '2025-01-01', 'Confirmed incoming wire from Premier Limited for EUR 1.4k. Booked successfully.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0430', 'CL000005', '2025-01-14', 'Follow-up on outgoing wire to Premier Corp. Client verified the CHF 2.0k transfer and provided final authorization.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0431', 'CL000005', '2025-01-30', 'Client confirmed incoming security credit from Global Financial AG amounting to EUR 4.1k.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0432', 'CL000005', '2025-01-20', 'Quarterly portfolio review completed. Client overall satisfied with performance. Discussed potential rebalancing in Q1. No immediate actions required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0433', 'CL000005', '2025-03-25', 'Batch payment instruction received: two March wires totalling EUR 18.9k. Client confirmed source of funds.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0434', 'CL000005', '2025-04-13', 'Incoming wire from Beta Financial Corp for CHF 12.1k reviewed and confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0435', 'CL000005', '2025-04-23', 'Client authorized outgoing wire to First Limited for approximately CHF 12.7k. Risk checks completed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0436', 'CL000005', '2025-05-31', 'Telephone instruction received for large incoming cash credit. Beneficiary: Prime Group. Amount: CHF 21.9k. Client authenticated via dual control.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0437', 'CL000005', '2025-05-31', 'Client reviewed several May transactions including wires and cash movements. No issues identified.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0438', 'CL000005', '2025-06-11', 'Confirmed incoming wire from Prime Trading for USD 6.1k. Client requested confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0439', 'CL000005', '2025-06-11', 'Follow-up call regarding outgoing cheque debit of EUR 5.2k. Client acknowledged execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0440', 'CL000005', '2025-06-24', 'Client discussed two outgoing payments in June totalling CHF 7.3k. Both processed as instructed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0441', 'CL000005', '2025-06-09', 'Confirmed details for incoming payment: CHF 1.9k from United Investments. Client satisfied with execution timeline.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0442', 'CL000005', '2025-06-30', 'General relationship review. Client satisfied with service quality and operational handling.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0443', 'CL000005', '2025-07-27', 'Confirmed incoming wire from Elite Partners for CHF 684. No further action required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0444', 'CL000005', '2025-07-30', 'Client discussed several small cash debits in July. Explained routine expenses and client acknowledged.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0445', 'CL000005', '2025-09-02', 'Incoming security credit from First Group amounting to EUR 6.9k reviewed with client.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0446', 'CL000005', '2025-09-15', 'Client confirmed incoming security credit from Beta Financial Capital for EUR 7.4k.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0447', 'CL000005', '2025-09-30', 'End-of-period review completed. Client comfortable with transaction activity and overall account position.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0448', 'CL000005', '2024-10-25', 'Tax optimization discussion ahead of year-end reporting. Client working with tax advisor. Reviewed documentation requirements.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0449', 'CL000005', '2024-10-06', 'Confirmed details for outgoing security debit: International GmbH. Client satisfied with execution timeline and investment rationale.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0450', 'CL000005', '2024-11-10', 'Client traveling to North America for 2 weeks. Updated contact preferences and emergency contacts. All communication via secure email only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0451', 'CL000005', '2024-10-19', 'Reviewed security debit to Alpha Trading for CHF 5.2k. Client confirmed strategic allocation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0452', 'CL000005', '2024-11-25', 'Client requested access to enhanced online reporting platform. Arranged demo with digital banking team for next week.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0453', 'CL000005', '2024-12-03', 'Confirmed incoming cash credit of JPY 1.2k from Omega Trading. Routine confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0454', 'CL000005', '2024-12-01', 'Reviewed December security debit to International Trade GmbH. Client comfortable with investment rationale.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0455', 'CL000005', '2024-12-04', 'Client submitted transfer request: First Corp, EUR 6.4k outgoing. Compliance approved, executing 4 Dec.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0456', 'CL000005', '2024-12-10', 'Discussed upcoming changes to fee structure. Client acknowledged and had no concerns. Sent follow-up email with detailed breakdown.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0457', 'CL000005', '2025-01-02', 'Follow-up call regarding the incoming wire from Premier Limited. Client satisfied with execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0458', 'CL000005', '2025-01-29', 'Confirmed details for incoming payment: EUR 4.1k from Global Financial AG. Client satisfied with execution timeline.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0459', 'CL000005', '2025-02-05', 'Client signature verification for new mandate. Documents returned, currently in processing. Expected completion within 5 business days.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0460', 'CL000005', '2025-02-18', 'Succession planning discussion. Client considering gradual wealth transfer to next generation. Referred to trust and estate specialists.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0461', 'CL000005', '2025-03-10', 'Client requested historical statements for tax filing purposes. Provided via secure channel.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0462', 'CL000005', '2025-03-06', 'Confirmed incoming wire from Prime Trading for USD 6.1k. Routine confirmation provided.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0463', 'CL000005', '2025-03-22', 'Reviewed outgoing wire to Omega AG for CHF 624. Client confirmed execution.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0464', 'CL000005', '2025-03-28', 'Updated beneficial owner information per client notification. Compliance review in progress. Account fully operational.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0465', 'CL000005', '2025-03-25', 'Confirmed incoming wire of EUR 11.6k from Prime Asset Investments. Large inflow aligned with prior discussion.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0466', 'CL000005', '2025-04-01', 'Client called regarding general account access issues. Resolved MFA setup problem. No transactions discussed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0467', 'CL000005', '2025-04-15', 'Discussed upcoming regulatory changes to cross-border reporting. Client acknowledged requirements. No concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0468', 'CL000005', '2025-04-15', 'Reviewed incoming wire from Beta Corp for USD 3.1k. Client acknowledged receipt.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0469', 'CL000005', '2025-04-23', 'Confirmed outgoing security debit to First Limited. Client satisfied with execution timeline and investment rationale.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0470', 'CL000005', '2025-05-05', 'Annual regulatory reporting completed. Client copy sent via secure delivery. No questions or concerns raised.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0471', 'CL000005', '2025-05-20', 'Client inquiry about sustainable investment options. Sent ESG portfolio framework document. Follow-up call scheduled.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0472', 'CL000005', '2025-05-23', 'Confirmed incoming wire from International Wealth Group for USD 2.0k. Routine confirmation.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0473', 'CL000005', '2025-05-28', 'Client raised concerns about geopolitical risks. Reviewed portfolio stress tests. Comfortable with current diversification.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0474', 'CL000005', '2025-06-05', 'Discussed potential currency hedging strategy given CHF strength. Client wants to wait and monitor. Scheduled review for next quarter.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0475', 'CL000005', '2025-06-20', 'Confirmed incoming wire from First GmbH for CHF 1.2k. Client acknowledged receipt.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0476', 'CL000005', '2025-06-25', 'Annual relationship review scheduled for next month. Client requested detailed fee breakdown and performance attribution. Preparing materials.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0477', 'CL000005', '2025-06-28', 'End-of-month reconciliation call. Client satisfied with June activity. No discrepancies noted.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0478', 'CL000005', '2025-07-01', 'Confirmed incoming cash credit of CHF 682 from Prime Asset Corp. Routine booking.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0479', 'CL000005', '2025-07-15', 'Client traveling to Asia for 3 weeks. Updated contact preferences and emergency contacts. All communication via secure email only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0480', 'CL000005', '2025-07-12', 'Reviewed outgoing wire to Omega Group for CHF 2.5k. Client confirmed beneficiary details.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0481', 'CL000005', '2025-07-31', 'Confirmed incoming wire from United Trade AG for EUR 992. Booking confirmed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0482', 'CL000005', '2025-07-28', 'Client requested clarification on July account activity summary. Reviewed movements and client satisfied.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0483', 'CL000005', '2025-08-05', 'Long-term asset allocation review. Client interested in increasing alternatives exposure. Exploring private equity opportunities.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0484', 'CL000005', '2025-08-10', 'Confirmed incoming wire from Beta AG for CHF 309. No further action required.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0485', 'CL000005', '2025-08-24', 'Reviewed large incoming security credit from First Investments for EUR 6.1k. Portfolio impact discussed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0486', 'CL000005', '2025-08-27', 'Confirmed incoming wire from Global Limited for CHF 1.4k. Client satisfied.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0487', 'CL000005', '2025-08-30', 'Client requested overview of August investment-related activity. Consolidated review completed.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0488', 'CL000005', '2025-09-02', 'Confirmed details for incoming security credit: First Group. Client satisfied with execution timeline and investment rationale.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0489', 'CL000005', '2025-09-08', 'Reviewed incoming wire from Global Holdings for EUR 1.4k. Routine confirmation provided.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0490', 'CL000005', '2025-09-15', 'Client discussed upcoming liquidity needs for Q4. Client comfortable with current cash position. Planning only.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0491', 'CL000005', '2025-09-15', 'Confirmed incoming security credit from Beta Financial Capital for EUR 7.4k. Large credit aligned with portfolio strategy.');
INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('N0492', 'CL000005', '2025-09-23', 'Reviewed outgoing wire to United Capital for EUR 1.4k. Client confirmed execution.');

-- Matches from Batch 5
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500000', 'TR00001003', 'N0401', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500001', 'TR00001003', 'N0405', 0.7302209854125976);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500002', 'TR00001003', 'N0408', 0.6694461413792201);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500003', 'TR00001004', 'N0403', 0.8069844007492065);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500004', 'TR00001004', 'N0402', 0.8050795316696167);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500005', 'TR00001004', 'N0409', 0.7708647080830165);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500006', 'TR00001005', 'N0403', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500007', 'TR00001005', 'N0402', 0.7866694211959838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500008', 'TR00001005', 'N0409', 0.7324001499584744);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500009', 'TR00001006', 'N0406', 0.7842211723327636);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500010', 'TR00001006', 'N0402', 0.7167287230491638);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500011', 'TR00001006', 'N0403', 0.709250545501709);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500012', 'TR00001007', 'N0405', 0.8273792743682861);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500013', 'TR00001007', 'N0408', 0.7720527120998927);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500014', 'TR00001007', 'N0401', 0.6970054388046265);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500015', 'TR00001008', 'N0408', 0.742679579257965);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500016', 'TR00001008', 'N0411', 0.6948756286076136);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500017', 'TR00001008', 'N0410', 0.6584119285855974);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500018', 'TR00001009', 'N0406', 0.985717315673828);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500019', 'TR00001009', 'N0410', 0.7143494265420096);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500020', 'TR00001009', 'N0403', 0.707572054862976);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500021', 'TR00001010', 'N0410', 0.7803788185119628);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500022', 'TR00001010', 'N0406', 0.7051039593560354);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500023', 'TR00001010', 'N0409', 0.697695881979806);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500024', 'TR00001011', 'N0408', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500025', 'TR00001011', 'N0405', 0.7928330370358058);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500026', 'TR00001011', 'N0411', 0.6818709203175136);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500027', 'TR00001012', 'N0409', 0.8289479732513427);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500028', 'TR00001012', 'N0402', 0.7914356061390467);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500029', 'TR00001012', 'N0403', 0.7757411071232386);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500030', 'TR00001013', 'N0410', 0.7964169263839721);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500031', 'TR00001013', 'N0401', 0.697818870771499);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500032', 'TR00001013', 'N0403', 0.6773676690601168);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500033', 'TR00001014', 'N0403', 0.7022845983505248);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500034', 'TR00001014', 'N0402', 0.6937748432159423);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500035', 'TR00001014', 'N0411', 0.6784333382334028);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500036', 'TR00001015', 'N0410', 0.9884893250465392);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500037', 'TR00001015', 'N0411', 0.8246238320214409);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500038', 'TR00001015', 'N0406', 0.7229523079735892);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500039', 'TR00001016', 'N0411', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500040', 'TR00001016', 'N0408', 0.6840591737202235);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500041', 'TR00001016', 'N0405', 0.6327945130211966);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500042', 'TR00001017', 'N0412', 0.9867925596237184);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500043', 'TR00001017', 'N0420', 0.681498350415911);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500044', 'TR00001017', 'N0475', 0.5710933208465576);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500045', 'TR00001018', 'N0413', 0.8611038208007813);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500046', 'TR00001018', 'N0449', 0.644290524437314);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500047', 'TR00001018', 'N0481', 0.5695420980453492);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500048', 'TR00001019', 'N0448', 0.5718291759490967);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500049', 'TR00001019', 'N0478', 0.4472087144851684);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500050', 'TR00001019', 'N0457', 0.424962420463562);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500051', 'TR00001020', 'N0416', 0.4767746056829179);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500052', 'TR00001020', 'N0469', 0.4472167801856995);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500053', 'TR00001020', 'N0488', 0.4435116481781005);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500054', 'TR00001021', 'N0415', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500055', 'TR00001021', 'N0449', 0.70915114402771);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500056', 'TR00001021', 'N0413', 0.6205887453896659);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500057', 'TR00001022', 'N0418', 0.6584411450794765);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500058', 'TR00001022', 'N0411', 0.5628734946250915);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500059', 'TR00001022', 'N0419', 0.5543536390577044);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500060', 'TR00001023', 'N0417', 0.9853221368789672);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500061', 'TR00001023', 'N0449', 0.5845882500920977);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500062', 'TR00001023', 'N0406', 0.5548245350519816);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500063', 'TR00001024', 'N0418', 0.8443249702453614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500064', 'TR00001024', 'N0422', 0.5455187712396894);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500065', 'TR00001024', 'N0421', 0.4955543024199349);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500066', 'TR00001025', 'N0412', 0.6165849242891585);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500067', 'TR00001025', 'N0413', 0.5830415844917297);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500068', 'TR00001025', 'N0416', 0.5559983917645046);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500069', 'TR00001026', 'N0414', 0.5719202416283744);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500070', 'TR00001026', 'N0475', 0.5673134636878967);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500071', 'TR00001026', 'N0453', 0.5310276985168457);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500072', 'TR00001027', 'N0486', 0.6057508182525635);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500073', 'TR00001027', 'N0412', 0.5631780351911272);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500074', 'TR00001027', 'N0415', 0.5565495610237121);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500075', 'TR00001028', 'N0420', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500076', 'TR00001028', 'N0412', 0.6185911791665213);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500077', 'TR00001028', 'N0422', 0.5405669927597045);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500078', 'TR00001029', 'N0413', 0.6237718548093523);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500079', 'TR00001029', 'N0412', 0.5603571369534447);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500080', 'TR00001029', 'N0449', 0.505760679926191);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500081', 'TR00001030', 'N0449', 0.8919638586044312);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500082', 'TR00001030', 'N0413', 0.6256567256791251);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500083', 'TR00001030', 'N0414', 0.497160792350769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500084', 'TR00001031', 'N0414', 0.6210968136787414);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500085', 'TR00001031', 'N0448', 0.5834583759307861);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500086', 'TR00001031', 'N0422', 0.5353736996650695);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500087', 'TR00001032', 'N0451', 0.9478523206710816);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500088', 'TR00001032', 'N0411', 0.5808517169952393);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500089', 'TR00001032', 'N0416', 0.5471994587353297);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500090', 'TR00001033', 'N0413', 0.7717785137040274);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500091', 'TR00001033', 'N0449', 0.569977541196914);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500092', 'TR00001033', 'N0414', 0.525626826286316);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500093', 'TR00001034', 'N0421', 0.6487973093986511);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500094', 'TR00001034', 'N0449', 0.4248249650001526);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500095', 'TR00001034', 'N0469', 0.4224410533905029);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500096', 'TR00001035', 'N0422', 0.8302849650382995);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500097', 'TR00001035', 'N0421', 0.629847652571542);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500098', 'TR00001035', 'N0420', 0.5839486479759216);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500099', 'TR00001036', 'N0420', 0.7222393751144409);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500100', 'TR00001036', 'N0453', 0.5740895462036133);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500101', 'TR00001036', 'N0412', 0.570220114503588);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500102', 'TR00001037', 'N0458', 0.5897608876228332);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500103', 'TR00001037', 'N0452', 0.5883995839527676);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500104', 'TR00001037', 'N0431', 0.5596484422683715);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500105', 'TR00001038', 'N0418', 0.542553722858429);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500106', 'TR00001038', 'N0480', 0.5228062629699707);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500107', 'TR00001038', 'N0441', 0.4902359437942505);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500108', 'TR00001039', 'N0453', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500109', 'TR00001039', 'N0454', 0.6022050278527395);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500110', 'TR00001039', 'N0412', 0.5334844064712525);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500111', 'TR00001040', 'N0454', 0.8743348789215087);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500112', 'TR00001040', 'N0453', 0.6126452939850944);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500113', 'TR00001040', 'N0420', 0.5917084852854411);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500114', 'TR00001041', 'N0478', 0.5512309074401855);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500115', 'TR00001041', 'N0443', 0.5396957635879517);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500116', 'TR00001041', 'N0463', 0.5004873752593995);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500117', 'TR00001042', 'N0478', 0.58377112865448);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500118', 'TR00001042', 'N0443', 0.5239858150482178);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500119', 'TR00001042', 'N0413', 0.4473018407821655);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500120', 'TR00001043', 'N0454', 0.6083764621189662);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500121', 'TR00001043', 'N0453', 0.5981839026723589);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500122', 'TR00001043', 'N0415', 0.5340963959693908);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500123', 'TR00001044', 'N0454', 0.7193357062339782);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500124', 'TR00001044', 'N0418', 0.5647825837135315);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500125', 'TR00001044', 'N0480', 0.5247329115867615);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500126', 'TR00001045', 'N0413', 0.5789951324462891);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500127', 'TR00001045', 'N0481', 0.5474883317947388);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500128', 'TR00001045', 'N0414', 0.5426737666130066);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500129', 'TR00001046', 'N0423', 0.9820554208755492);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500130', 'TR00001046', 'N0455', 0.655989498751504);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500131', 'TR00001046', 'N0454', 0.6016122238976614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500132', 'TR00001047', 'N0424', 0.9841064882278444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500133', 'TR00001047', 'N0454', 0.6572925158909388);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500134', 'TR00001047', 'N0423', 0.5662225927625384);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500135', 'TR00001048', 'N0452', 0.6478076457977295);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500136', 'TR00001048', 'N0454', 0.4980225685664585);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500137', 'TR00001048', 'N0449', 0.4841436815261841);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500138', 'TR00001049', 'N0454', 0.5919386761529105);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500139', 'TR00001049', 'N0452', 0.4841339860643659);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500140', 'TR00001049', 'N0449', 0.4426128387451172);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500141', 'TR00001050', 'N0455', 0.9937744569778442);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500142', 'TR00001050', 'N0445', 0.5813909482955932);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500143', 'TR00001050', 'N0405', 0.5801731705665588);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500144', 'TR00001051', 'N0453', 0.52751704454422);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500145', 'TR00001051', 'N0475', 0.5008536338806152);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500146', 'TR00001051', 'N0412', 0.4979487657546997);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500147', 'TR00001052', 'N0421', 0.5414910163198199);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500148', 'TR00001052', 'N0414', 0.5072506189346314);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500149', 'TR00001052', 'N0413', 0.4806292176246642);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500150', 'TR00001053', 'N0443', 0.5564129543304444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500151', 'TR00001053', 'N0413', 0.4612260818481445);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500152', 'TR00001053', 'N0412', 0.4474104356765747);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500153', 'TR00001054', 'N0469', 0.4410596799850464);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500154', 'TR00001054', 'N0478', 0.4390224695205688);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500155', 'TR00001054', 'N0449', 0.4351051211357116);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500156', 'TR00001055', 'N0420', 0.5683644771575928);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500157', 'TR00001055', 'N0492', 0.5303968071937561);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500158', 'TR00001055', 'N0429', 0.5260539531707764);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500159', 'TR00001056', 'N0452', 0.5511453883988516);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500160', 'TR00001056', 'N0454', 0.5222322259630476);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500161', 'TR00001056', 'N0444', 0.436704683303833);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500162', 'TR00001057', 'N0478', 0.5871354770660401);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500163', 'TR00001057', 'N0421', 0.5435177002634322);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500164', 'TR00001057', 'N0443', 0.5134199142456055);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500165', 'TR00001058', 'N0468', 0.5291941046714783);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500166', 'TR00001058', 'N0426', 0.4656907592500959);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500167', 'TR00001058', 'N0415', 0.4646785497665405);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500168', 'TR00001059', 'N0492', 0.5505912494659424);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500169', 'TR00001059', 'N0475', 0.5349082112312317);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500170', 'TR00001059', 'N0453', 0.5214642643928528);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500171', 'TR00001060', 'N0456', 0.5814167635781424);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500172', 'TR00001060', 'N0449', 0.4449644923210143);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500173', 'TR00001060', 'N0478', 0.4365757942199706);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500174', 'TR00001061', 'N0456', 0.5855036275727408);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500175', 'TR00001061', 'N0414', 0.5294167876243592);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500176', 'TR00001061', 'N0413', 0.4584778189659118);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500177', 'TR00001062', 'N0453', 0.5990870135171072);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500178', 'TR00001062', 'N0454', 0.5120650444711958);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500179', 'TR00001062', 'N0414', 0.4967193722724915);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500180', 'TR00001063', 'N0426', 0.4462863428252084);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500181', 'TR00001063', 'N0484', 0.4367833089828491);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500182', 'TR00001063', 'N0449', 0.4366200685501099);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500183', 'TR00001064', 'N0426', 0.5585672037942069);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500184', 'TR00001064', 'N0449', 0.4646299123764038);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500185', 'TR00001064', 'N0457', 0.4543619019644601);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500186', 'TR00001065', 'N0427', 0.9778113794326782);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500187', 'TR00001065', 'N0420', 0.5069200348854065);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500188', 'TR00001065', 'N0418', 0.4612162470817565);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500189', 'TR00001066', 'N0425', 0.9922981691360472);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500190', 'TR00001066', 'N0423', 0.6022071089063372);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500191', 'TR00001066', 'N0436', 0.5679265896479289);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500192', 'TR00001067', 'N0469', 0.4659567117691039);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500193', 'TR00001067', 'N0449', 0.4633208870887756);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500194', 'TR00001067', 'N0488', 0.4592830896377563);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500195', 'TR00001068', 'N0449', 0.462362642288208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500196', 'TR00001068', 'N0444', 0.4383585691452026);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500197', 'TR00001068', 'N0454', 0.4315648031234741);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500198', 'TR00001069', 'N0426', 0.6495065927505492);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500199', 'TR00001069', 'N0413', 0.5691823959350586);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500200', 'TR00001069', 'N0457', 0.5085754122052873);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500201', 'TR00001070', 'N0453', 0.6057487882886614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500202', 'TR00001070', 'N0413', 0.5529792070388794);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500203', 'TR00001070', 'N0481', 0.5407123565673828);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500204', 'TR00001071', 'N0426', 0.4653667194502694);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500205', 'TR00001071', 'N0444', 0.443184757232666);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500206', 'TR00001071', 'N0449', 0.4362469911575317);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500207', 'TR00001072', 'N0456', 0.5851134198052542);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500208', 'TR00001072', 'N0475', 0.5284971237182617);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500209', 'TR00001072', 'N0453', 0.5232341289520264);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500210', 'TR00001073', 'N0426', 0.590761000769479);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500211', 'TR00001073', 'N0475', 0.5842809391021728);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500212', 'TR00001073', 'N0429', 0.5510232652936663);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500213', 'TR00001074', 'N0468', 0.5431767463684082);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500214', 'TR00001074', 'N0454', 0.5273411546434674);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500215', 'TR00001074', 'N0458', 0.4823833656311035);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500216', 'TR00001075', 'N0429', 0.9824518156051636);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500217', 'TR00001075', 'N0457', 0.8124150892666409);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500218', 'TR00001075', 'N0486', 0.5582150530815124);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500219', 'TR00001076', 'N0449', 0.4490001797676086);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500220', 'TR00001076', 'N0456', 0.4368881038257054);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500221', 'TR00001076', 'N0469', 0.4352721691131592);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500222', 'TR00001077', 'N0456', 0.6202951260975429);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500223', 'TR00001077', 'N0489', 0.5376000595092774);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500224', 'TR00001077', 'N0492', 0.5280453324317932);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500225', 'TR00001078', 'N0469', 0.4610341787338257);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500226', 'TR00001078', 'N0488', 0.4595526695251464);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500227', 'TR00001078', 'N0449', 0.4569940209388732);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500228', 'TR00001079', 'N0453', 0.526889193058014);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500229', 'TR00001079', 'N0475', 0.517813527584076);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500230', 'TR00001079', 'N0412', 0.4933158397674561);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500231', 'TR00001080', 'N0429', 0.6393391578538077);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500232', 'TR00001080', 'N0457', 0.6389712234905789);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500233', 'TR00001080', 'N0413', 0.5721431612968445);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500234', 'TR00001081', 'N0449', 0.4682255220413208);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500235', 'TR00001081', 'N0454', 0.4441070628166199);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500236', 'TR00001081', 'N0478', 0.415138041973114);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500237', 'TR00001082', 'N0413', 0.5893443822860718);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500238', 'TR00001082', 'N0456', 0.5505514110837664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500239', 'TR00001082', 'N0414', 0.5064999580383301);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500240', 'TR00001083', 'N0457', 0.5728258269173758);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500241', 'TR00001083', 'N0484', 0.5554178635279338);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500242', 'TR00001083', 'N0426', 0.4457103831427438);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500243', 'TR00001084', 'N0469', 0.4439147663116455);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500244', 'TR00001084', 'N0449', 0.4335107088088989);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500245', 'TR00001084', 'N0457', 0.426709361076355);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500246', 'TR00001085', 'N0408', 0.5510268926620483);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500247', 'TR00001085', 'N0403', 0.528982138633728);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500248', 'TR00001085', 'N0445', 0.5201674699783325);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500249', 'TR00001086', 'N0484', 0.515355110168457);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500250', 'TR00001086', 'N0449', 0.4597572159767151);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500251', 'TR00001086', 'N0454', 0.4392150712013244);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500252', 'TR00001087', 'N0449', 0.4547355127334594);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500253', 'TR00001087', 'N0457', 0.4332288813591003);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500254', 'TR00001087', 'N0454', 0.4254119229316711);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500255', 'TR00001088', 'N0418', 0.5655608534812927);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500256', 'TR00001088', 'N0480', 0.5163683891296387);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500257', 'TR00001088', 'N0427', 0.5095310807228088);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500258', 'TR00001089', 'N0420', 0.6102780890464782);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500259', 'TR00001089', 'N0429', 0.5656316501753671);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500260', 'TR00001089', 'N0422', 0.5531217336654662);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500261', 'TR00001090', 'N0431', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500262', 'TR00001090', 'N0458', 0.9860966226032802);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500263', 'TR00001090', 'N0449', 0.4740392446517944);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500264', 'TR00001091', 'N0429', 0.535002965927124);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500265', 'TR00001091', 'N0492', 0.5296666026115417);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500266', 'TR00001091', 'N0453', 0.5226395010948182);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500267', 'TR00001092', 'N0475', 0.563089394569397);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500268', 'TR00001092', 'N0453', 0.5312981724739074);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500269', 'TR00001092', 'N0420', 0.4875060796737671);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500270', 'TR00001093', 'N0469', 0.5903290104866028);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500271', 'TR00001093', 'N0475', 0.5629704666137696);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500272', 'TR00001093', 'N0453', 0.5200189828872681);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500273', 'TR00001094', 'N0484', 0.5197180628776551);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500274', 'TR00001094', 'N0469', 0.4485978762308756);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500275', 'TR00001094', 'N0449', 0.4342223167419433);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500276', 'TR00001095', 'N0463', 0.5979265999794007);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500277', 'TR00001095', 'N0481', 0.5568680882453919);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500278', 'TR00001095', 'N0412', 0.5249863266944885);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500279', 'TR00001096', 'N0413', 0.4534274339675903);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500280', 'TR00001096', 'N0469', 0.4385937285423278);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500281', 'TR00001096', 'N0478', 0.4384857773780822);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500282', 'TR00001097', 'N0420', 0.5906499338150024);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500283', 'TR00001097', 'N0492', 0.5781083536148072);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500284', 'TR00001097', 'N0429', 0.5728448224067688);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500285', 'TR00001098', 'N0430', 0.9823000383377076);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500286', 'TR00001098', 'N0415', 0.5522490501403808);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500287', 'TR00001098', 'N0441', 0.5474697113037109);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500288', 'TR00001099', 'N0449', 0.4652227520942688);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500289', 'TR00001099', 'N0454', 0.4507704019546508);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500290', 'TR00001099', 'N0488', 0.4457662582397461);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500291', 'TR00001100', 'N0441', 0.5748265186945597);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500292', 'TR00001100', 'N0430', 0.5520777821540832);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500293', 'TR00001100', 'N0472', 0.5291119575500488);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500294', 'TR00001101', 'N0420', 0.6074427604675292);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500295', 'TR00001101', 'N0415', 0.5392226696014404);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500296', 'TR00001101', 'N0441', 0.4770259380340576);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500297', 'TR00001102', 'N0463', 0.529758894443512);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500298', 'TR00001102', 'N0478', 0.4784985256195068);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500299', 'TR00001102', 'N0449', 0.4285045623779296);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500300', 'TR00001103', 'N0420', 0.6220272016525268);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500301', 'TR00001103', 'N0415', 0.5597227764129639);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500302', 'TR00001103', 'N0418', 0.4598578691482544);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500303', 'TR00001104', 'N0414', 0.526712191104889);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500304', 'TR00001104', 'N0449', 0.4592027139663696);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500305', 'TR00001104', 'N0475', 0.4578613591194153);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500306', 'TR00001105', 'N0418', 0.5618741393089294);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500307', 'TR00001105', 'N0480', 0.5038708686828614);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500308', 'TR00001105', 'N0427', 0.4914405107498169);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500309', 'TR00001106', 'N0478', 0.5758306980133057);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500310', 'TR00001106', 'N0443', 0.5668954650561014);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500311', 'TR00001106', 'N0463', 0.5167019367218018);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500312', 'TR00001107', 'N0408', 0.7714350530079432);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500313', 'TR00001107', 'N0405', 0.7288647549492971);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500314', 'TR00001107', 'N0411', 0.6937767386436462);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500315', 'TR00001108', 'N0449', 0.4585103821754455);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500316', 'TR00001108', 'N0454', 0.4318702173233032);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500317', 'TR00001108', 'N0469', 0.4165204524993896);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500318', 'TR00001109', 'N0453', 0.6220195603370666);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500319', 'TR00001109', 'N0422', 0.5536207318305969);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500320', 'TR00001109', 'N0486', 0.5488851308822632);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500321', 'TR00001110', 'N0431', 0.572356104850769);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500322', 'TR00001110', 'N0458', 0.5659849643707275);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500323', 'TR00001110', 'N0411', 0.5260589224951607);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500324', 'TR00001111', 'N0422', 0.5398755550384522);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500325', 'TR00001111', 'N0489', 0.5139704418182374);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500326', 'TR00001111', 'N0492', 0.5093160748481751);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500327', 'TR00001112', 'N0484', 0.4478676629066467);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500328', 'TR00001112', 'N0449', 0.4369657158851623);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500329', 'TR00001112', 'N0469', 0.4293675899505615);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500330', 'TR00001113', 'N0469', 0.4462426733970642);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500331', 'TR00001113', 'N0478', 0.4424044489860534);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500332', 'TR00001113', 'N0449', 0.4381623744964599);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500333', 'TR00001114', 'N0469', 0.4488599101702372);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500334', 'TR00001114', 'N0460', 0.4405223471777779);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500335', 'TR00001114', 'N0488', 0.4387945810953776);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500336', 'TR00001115', 'N0453', 0.6034342718124389);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500337', 'TR00001115', 'N0475', 0.5081991672515869);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500338', 'TR00001115', 'N0492', 0.5059185028076172);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500339', 'TR00001116', 'N0478', 0.5639910340309143);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500340', 'TR00001116', 'N0460', 0.5333021896226066);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500341', 'TR00001116', 'N0443', 0.532971842288971);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500342', 'TR00001117', 'N0492', 0.5398749033610026);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500343', 'TR00001117', 'N0441', 0.5068321744600932);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500344', 'TR00001117', 'N0486', 0.5051482439041137);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500345', 'TR00001118', 'N0449', 0.4652940821647644);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500346', 'TR00001118', 'N0454', 0.4444196653366088);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500347', 'TR00001118', 'N0469', 0.4142757654190063);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500348', 'TR00001119', 'N0418', 0.5412768483161926);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500349', 'TR00001119', 'N0480', 0.516758668422699);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500350', 'TR00001119', 'N0420', 0.4967539262771606);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500351', 'TR00001120', 'N0454', 0.5993075799942017);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500352', 'TR00001120', 'N0460', 0.5585900136402675);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500353', 'TR00001120', 'N0449', 0.4680133056640625);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500354', 'TR00001121', 'N0466', 0.5840816923550197);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500355', 'TR00001121', 'N0449', 0.4576969305674235);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500356', 'TR00001121', 'N0464', 0.4515261990683419);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500357', 'TR00001122', 'N0420', 0.5844223618507385);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500358', 'TR00001122', 'N0422', 0.5704797029495239);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500359', 'TR00001122', 'N0441', 0.4774058818817138);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500360', 'TR00001123', 'N0462', 0.9905902814865112);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500361', 'TR00001123', 'N0438', 0.7454585981369019);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500362', 'TR00001123', 'N0403', 0.5933870029449463);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500363', 'TR00001124', 'N0464', 0.581365580218179);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500364', 'TR00001124', 'N0427', 0.5474866986274719);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500365', 'TR00001124', 'N0468', 0.5332085132598877);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500366', 'TR00001125', 'N0464', 0.5585961716515677);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500367', 'TR00001125', 'N0466', 0.5513754861695426);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500368', 'TR00001125', 'N0449', 0.4713232946395874);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500369', 'TR00001126', 'N0463', 0.9904110622406006);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500370', 'TR00001126', 'N0478', 0.5703303813934326);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500371', 'TR00001126', 'N0443', 0.5478842616081238);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500372', 'TR00001127', 'N0403', 0.7421453189849854);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500373', 'TR00001127', 'N0405', 0.5690738677978515);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500374', 'TR00001127', 'N0438', 0.5660913149515787);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500375', 'TR00001128', 'N0463', 0.6296827793121338);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500376', 'TR00001128', 'N0414', 0.532564914226532);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500377', 'TR00001128', 'N0413', 0.4625380039215088);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500378', 'TR00001129', 'N0465', 0.9752690029144286);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500379', 'TR00001129', 'N0423', 0.5608061194419861);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500380', 'TR00001129', 'N0434', 0.5268944501876831);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500381', 'TR00001130', 'N0466', 0.5741470762661525);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500382', 'TR00001130', 'N0411', 0.563575267791748);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500383', 'TR00001130', 'N0439', 0.5186170101165771);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500384', 'TR00001131', 'N0461', 0.6134766936302185);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500385', 'TR00001131', 'N0478', 0.5896063089370728);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500386', 'TR00001131', 'N0443', 0.5779406499862672);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500387', 'TR00001132', 'N0466', 0.5539228337151664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500388', 'TR00001132', 'N0475', 0.5496314120292664);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500389', 'TR00001132', 'N0453', 0.5376674175262451);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500390', 'TR00001133', 'N0464', 0.5526692049843924);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500391', 'TR00001133', 'N0466', 0.5363446729523795);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500392', 'TR00001133', 'N0453', 0.5311017632484436);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500393', 'TR00001134', 'N0464', 0.6042505809238978);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500394', 'TR00001134', 'N0411', 0.5621598482131958);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500395', 'TR00001134', 'N0439', 0.5426805734634399);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500396', 'TR00001135', 'N0480', 0.5531473588943482);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500397', 'TR00001135', 'N0418', 0.5400373458862304);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500398', 'TR00001135', 'N0427', 0.5254545688629151);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500399', 'TR00001136', 'N0413', 0.5593768477439881);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500400', 'TR00001136', 'N0481', 0.5282373309135437);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500401', 'TR00001136', 'N0414', 0.5069963455200196);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500402', 'TR00001137', 'N0464', 0.6063050746917724);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500403', 'TR00001137', 'N0468', 0.5450163841247558);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500404', 'TR00001137', 'N0427', 0.5245201230049134);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500405', 'TR00001138', 'N0462', 0.626343400137765);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500406', 'TR00001138', 'N0465', 0.5329345703125);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500407', 'TR00001138', 'N0461', 0.526991423538753);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500408', 'TR00001139', 'N0435', 0.6981413739068167);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500409', 'TR00001139', 'N0469', 0.5904674666268485);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500410', 'TR00001139', 'N0423', 0.5783934545516968);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500411', 'TR00001140', 'N0470', 0.4876706753458295);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500412', 'TR00001140', 'N0478', 0.4509378433227539);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500413', 'TR00001140', 'N0444', 0.447565484046936);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500414', 'TR00001141', 'N0415', 0.563780403137207);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500415', 'TR00001141', 'N0430', 0.5397870421409607);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500416', 'TR00001141', 'N0472', 0.5310585618019104);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500417', 'TR00001142', 'N0470', 0.5610956685883658);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500418', 'TR00001142', 'N0463', 0.5219228029251098);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500419', 'TR00001142', 'N0478', 0.4686924934387206);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500420', 'TR00001143', 'N0469', 0.6220904883884248);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500421', 'TR00001143', 'N0463', 0.5129167675971985);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500422', 'TR00001143', 'N0478', 0.4470237493515014);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500423', 'TR00001144', 'N0478', 0.5967102479934693);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500424', 'TR00001144', 'N0443', 0.5430851459503174);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500425', 'TR00001144', 'N0469', 0.5217971716608321);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500426', 'TR00001145', 'N0418', 0.5739753723144531);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500427', 'TR00001145', 'N0470', 0.5453065838132586);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500428', 'TR00001145', 'N0480', 0.495008385181427);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500429', 'TR00001146', 'N0467', 0.5609981724194117);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500430', 'TR00001146', 'N0484', 0.5179174065589905);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500431', 'TR00001146', 'N0444', 0.433121109008789);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500432', 'TR00001147', 'N0429', 0.5607307147979737);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500433', 'TR00001147', 'N0486', 0.5503479639689127);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500434', 'TR00001147', 'N0475', 0.5477633237838745);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500435', 'TR00001148', 'N0413', 0.5828737497329712);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500436', 'TR00001148', 'N0481', 0.5704902410507202);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500437', 'TR00001148', 'N0414', 0.5451939344406128);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500438', 'TR00001149', 'N0468', 0.988301248550415);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500439', 'TR00001149', 'N0467', 0.594422459602356);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500440', 'TR00001149', 'N0427', 0.520151162147522);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500441', 'TR00001150', 'N0449', 0.4677943301200867);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500442', 'TR00001150', 'N0466', 0.4553252731050763);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500443', 'TR00001150', 'N0454', 0.4424518179893493);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500444', 'TR00001151', 'N0484', 0.4449919414520263);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500445', 'TR00001151', 'N0478', 0.4409666419029235);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500446', 'TR00001151', 'N0449', 0.4323542475700378);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500447', 'TR00001152', 'N0469', 0.4939932210104806);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500448', 'TR00001152', 'N0449', 0.4312732100486755);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500449', 'TR00001152', 'N0488', 0.4208207845687866);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500450', 'TR00001153', 'N0469', 0.5543960962976728);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500451', 'TR00001153', 'N0463', 0.5323392788569132);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500452', 'TR00001153', 'N0488', 0.4767470518747965);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500453', 'TR00001154', 'N0434', 0.9753053379058838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500454', 'TR00001154', 'N0435', 0.5401864409446716);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500455', 'TR00001154', 'N0423', 0.5383430123329163);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500456', 'TR00001155', 'N0469', 0.5909153597695487);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500457', 'TR00001155', 'N0478', 0.4433257341384887);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500458', 'TR00001155', 'N0444', 0.4392581820487976);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500459', 'TR00001156', 'N0413', 0.5913510680198669);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500460', 'TR00001156', 'N0481', 0.5510701537132263);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500461', 'TR00001156', 'N0414', 0.5300492525100708);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500462', 'TR00001157', 'N0453', 0.6265079689025879);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500463', 'TR00001157', 'N0420', 0.5732400178909302);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500464', 'TR00001157', 'N0492', 0.5417322158813477);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500465', 'TR00001158', 'N0435', 0.9686444473266602);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500466', 'TR00001158', 'N0469', 0.8761301708221435);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500467', 'TR00001158', 'N0423', 0.5192375302314758);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500468', 'TR00001159', 'N0468', 0.6552887269428798);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500469', 'TR00001159', 'N0427', 0.5573254895210267);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500470', 'TR00001159', 'N0467', 0.5556039997509548);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500471', 'TR00001160', 'N0431', 0.5778778791427612);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500472', 'TR00001160', 'N0458', 0.5644279241561889);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500473', 'TR00001160', 'N0468', 0.558884426525661);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500474', 'TR00001161', 'N0469', 0.624156870160784);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500475', 'TR00001161', 'N0413', 0.5686644077301025);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500476', 'TR00001161', 'N0481', 0.5435704112052918);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500477', 'TR00001162', 'N0473', 0.5558535882404873);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500478', 'TR00001162', 'N0437', 0.5084614787782942);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500479', 'TR00001162', 'N0413', 0.4619878649711608);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500480', 'TR00001163', 'N0471', 0.5815246173313686);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500481', 'TR00001163', 'N0472', 0.568476711341313);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500482', 'TR00001163', 'N0418', 0.540084445476532);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500483', 'TR00001164', 'N0437', 0.6363627314567566);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500484', 'TR00001164', 'N0480', 0.5424016070365906);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500485', 'TR00001164', 'N0418', 0.5387939095497132);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500486', 'TR00001165', 'N0471', 0.4421720130102975);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500487', 'TR00001165', 'N0444', 0.4387115478515624);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500488', 'TR00001165', 'N0488', 0.4261484026908874);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500489', 'TR00001166', 'N0471', 0.5824683972767422);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500490', 'TR00001166', 'N0469', 0.4826863479614258);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500491', 'TR00001166', 'N0488', 0.4781263065338135);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500492', 'TR00001167', 'N0472', 0.9797248315811158);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500493', 'TR00001167', 'N0415', 0.5548231124877929);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500494', 'TR00001167', 'N0441', 0.5322463154792786);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500495', 'TR00001168', 'N0472', 0.6479474752289909);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500496', 'TR00001168', 'N0471', 0.5632397481373379);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500497', 'TR00001168', 'N0458', 0.547703742980957);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500498', 'TR00001169', 'N0471', 0.5571344035012381);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500499', 'TR00001169', 'N0408', 0.5040624539057413);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500500', 'TR00001169', 'N0401', 0.4831934285163879);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500501', 'TR00001170', 'N0449', 0.4452995896339416);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500502', 'TR00001170', 'N0454', 0.4220396876335144);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500503', 'TR00001170', 'N0469', 0.4185485959053039);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500504', 'TR00001171', 'N0470', 0.600085289137704);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500505', 'TR00001171', 'N0418', 0.5539724588394165);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500506', 'TR00001171', 'N0480', 0.515557861328125);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500507', 'TR00001172', 'N0470', 0.6210147380828857);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500508', 'TR00001172', 'N0413', 0.5774580836296082);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500509', 'TR00001172', 'N0481', 0.5689073085784913);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500510', 'TR00001173', 'N0475', 0.5827775160471598);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500511', 'TR00001173', 'N0453', 0.5275013089179993);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500512', 'TR00001173', 'N0420', 0.5078733364741007);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500513', 'TR00001174', 'N0437', 0.5964525052479335);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500514', 'TR00001174', 'N0422', 0.5184528231620789);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500515', 'TR00001174', 'N0492', 0.5163040876388549);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500516', 'TR00001175', 'N0436', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500517', 'TR00001175', 'N0437', 0.6352557301521301);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500518', 'TR00001175', 'N0425', 0.542040867805481);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500519', 'TR00001176', 'N0415', 0.7193937492370606);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500520', 'TR00001176', 'N0420', 0.6144741368293761);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500521', 'TR00001176', 'N0437', 0.5903574534824916);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500522', 'TR00001177', 'N0471', 0.5927045651844569);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500523', 'TR00001177', 'N0413', 0.5408329486846924);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500524', 'TR00001177', 'N0428', 0.5216703295707703);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500525', 'TR00001178', 'N0471', 0.4959179605756487);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500526', 'TR00001178', 'N0478', 0.4438109914461771);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500527', 'TR00001178', 'N0469', 0.4376455942789713);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500528', 'TR00001179', 'N0470', 0.5912065693310329);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500529', 'TR00001179', 'N0449', 0.4691040706634521);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500530', 'TR00001179', 'N0454', 0.4462153506278992);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500531', 'TR00001180', 'N0415', 0.5779350280761718);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500532', 'TR00001180', 'N0420', 0.5775302648544312);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500533', 'TR00001180', 'N0475', 0.4475824356079101);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500534', 'TR00001181', 'N0437', 0.5661456601960319);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500535', 'TR00001181', 'N0441', 0.5472944021224976);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500536', 'TR00001181', 'N0472', 0.5366737405459086);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500537', 'TR00001182', 'N0470', 0.5602988021714347);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500538', 'TR00001182', 'N0418', 0.5515916585922241);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500539', 'TR00001182', 'N0480', 0.5071151971817016);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500540', 'TR00001183', 'N0470', 0.5982618519238063);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500541', 'TR00001183', 'N0468', 0.5394529819488525);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500542', 'TR00001183', 'N0427', 0.5172361373901367);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500543', 'TR00001184', 'N0471', 0.6394114017486572);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500544', 'TR00001184', 'N0478', 0.5727156162261963);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500545', 'TR00001184', 'N0443', 0.5409890723228455);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500546', 'TR00001185', 'N0411', 0.5622595548629761);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500547', 'TR00001185', 'N0471', 0.5057063783918108);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500548', 'TR00001185', 'N0403', 0.4711147618293762);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500549', 'TR00001186', 'N0492', 0.5449428915977478);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500550', 'TR00001186', 'N0475', 0.5356052994728089);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500551', 'TR00001186', 'N0471', 0.5310876863343374);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500552', 'TR00001187', 'N0437', 0.5661430852753775);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500553', 'TR00001187', 'N0473', 0.5291344233921595);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500554', 'TR00001187', 'N0413', 0.4810568332672119);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500555', 'TR00001188', 'N0473', 0.548383754491806);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500556', 'TR00001188', 'N0437', 0.5320631946836198);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500557', 'TR00001188', 'N0449', 0.4585300874710083);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500558', 'TR00001189', 'N0469', 0.6029285979270935);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500559', 'TR00001189', 'N0411', 0.5467513084411622);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500560', 'TR00001189', 'N0403', 0.4816607427597046);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500561', 'TR00001190', 'N0468', 0.6255326461791992);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500562', 'TR00001190', 'N0470', 0.6091696092060634);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500563', 'TR00001190', 'N0418', 0.5574656605720519);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500564', 'TR00001191', 'N0441', 0.6092639636993409);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500565', 'TR00001191', 'N0474', 0.5097470794405257);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500566', 'TR00001191', 'N0449', 0.4358789205551147);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500567', 'TR00001192', 'N0475', 0.9840053868293762);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500568', 'TR00001192', 'N0453', 0.5086709856987);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500569', 'TR00001192', 'N0420', 0.4695279121398925);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500570', 'TR00001193', 'N0439', 0.8158963441848754);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500571', 'TR00001193', 'N0438', 0.6483985543251037);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500572', 'TR00001193', 'N0427', 0.5880409789085388);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500573', 'TR00001194', 'N0438', 0.7715980887413024);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500574', 'TR00001194', 'N0439', 0.6783097624778747);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500575', 'TR00001194', 'N0485', 0.5535217237472534);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500576', 'TR00001195', 'N0439', 0.6711076021194458);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500577', 'TR00001195', 'N0458', 0.5386824369430542);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500578', 'TR00001195', 'N0431', 0.5309148311614991);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500579', 'TR00001196', 'N0441', 0.6656055041721889);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500580', 'TR00001196', 'N0411', 0.6318083715438843);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500581', 'TR00001196', 'N0439', 0.5954940761838641);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500582', 'TR00001197', 'N0477', 0.6307695031166076);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500583', 'TR00001197', 'N0442', 0.5297937171799796);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500584', 'TR00001197', 'N0476', 0.5242068256650652);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500585', 'TR00001198', 'N0474', 0.6203447648457119);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500586', 'TR00001198', 'N0484', 0.5122666001319885);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500587', 'TR00001198', 'N0488', 0.459822928905487);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500588', 'TR00001199', 'N0418', 0.5584732770919799);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500589', 'TR00001199', 'N0427', 0.4909906148910522);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500590', 'TR00001199', 'N0480', 0.4810553550720214);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500591', 'TR00001200', 'N0478', 0.5522591590881348);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500592', 'TR00001200', 'N0443', 0.5299851655960083);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500593', 'TR00001200', 'N0413', 0.4566793441772461);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500594', 'TR00001201', 'N0441', 0.8018919229507445);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500595', 'TR00001201', 'N0472', 0.5652690124511719);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500596', 'TR00001201', 'N0430', 0.5532294154167176);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500597', 'TR00001202', 'N0476', 0.6020885058811734);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500598', 'TR00001202', 'N0477', 0.4876436029161726);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500599', 'TR00001202', 'N0444', 0.4519318342208862);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500600', 'TR00001203', 'N0441', 0.5692265306200299);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500601', 'TR00001203', 'N0418', 0.5569571495056153);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500602', 'TR00001203', 'N0480', 0.5107618570327759);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500603', 'TR00001204', 'N0474', 0.4613145453589303);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500604', 'TR00001204', 'N0481', 0.459993143081665);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500605', 'TR00001204', 'N0449', 0.4510167551040649);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500606', 'TR00001205', 'N0449', 0.482305474281311);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500607', 'TR00001205', 'N0454', 0.4559880328178405);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500608', 'TR00001205', 'N0476', 0.4540827018874032);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500609', 'TR00001206', 'N0457', 0.593150622844696);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500610', 'TR00001206', 'N0478', 0.5609992980957031);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500611', 'TR00001206', 'N0443', 0.5348296642303467);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500612', 'TR00001207', 'N0477', 0.5964122005871364);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500613', 'TR00001207', 'N0431', 0.5802852511405945);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500614', 'TR00001207', 'N0458', 0.5707280397415161);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500615', 'TR00001208', 'N0478', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500616', 'TR00001208', 'N0442', 0.5721099206379482);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500617', 'TR00001208', 'N0443', 0.5321460962295532);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500618', 'TR00001209', 'N0488', 0.4852230739593506);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500619', 'TR00001209', 'N0469', 0.4535691261291503);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500620', 'TR00001209', 'N0449', 0.449385130405426);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500621', 'TR00001210', 'N0476', 0.6446698188781739);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500622', 'TR00001210', 'N0478', 0.6259877852031163);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500623', 'TR00001210', 'N0443', 0.5529206824302674);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500624', 'TR00001211', 'N0476', 0.6035228439739773);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500625', 'TR00001211', 'N0477', 0.5039672766413008);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500626', 'TR00001211', 'N0444', 0.4435824394226074);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500627', 'TR00001212', 'N0477', 0.6291773796081543);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500628', 'TR00001212', 'N0480', 0.5663920354843139);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500629', 'TR00001212', 'N0418', 0.550720477104187);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500630', 'TR00001213', 'N0449', 0.4303061485290527);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500631', 'TR00001213', 'N0469', 0.4196156859397888);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500632', 'TR00001213', 'N0488', 0.4180624008178711);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500633', 'TR00001214', 'N0474', 0.5536995308739798);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500634', 'TR00001214', 'N0449', 0.4557971668243408);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500635', 'TR00001214', 'N0454', 0.4355088305473327);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500636', 'TR00001215', 'N0474', 0.6000298568180629);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500637', 'TR00001215', 'N0437', 0.4876151715006147);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500638', 'TR00001215', 'N0449', 0.4620849251747131);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500639', 'TR00001216', 'N0420', 0.5654084324836731);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500640', 'TR00001216', 'N0422', 0.5280964732170105);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500641', 'TR00001216', 'N0442', 0.5164794819695608);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500642', 'TR00001217', 'N0469', 0.4512697052955627);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500643', 'TR00001217', 'N0449', 0.4392836093902588);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500644', 'TR00001217', 'N0457', 0.4358722162246704);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500645', 'TR00001218', 'N0474', 0.6345172643661499);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500646', 'TR00001218', 'N0441', 0.5715680633272444);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500647', 'TR00001218', 'N0430', 0.5194001078605652);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500648', 'TR00001219', 'N0449', 0.4396749973297119);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500649', 'TR00001219', 'N0469', 0.4277664184570312);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500650', 'TR00001219', 'N0488', 0.4205575704574585);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500651', 'TR00001220', 'N0480', 0.9817403507232666);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500652', 'TR00001220', 'N0418', 0.5406692743301391);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500653', 'TR00001220', 'N0420', 0.4763453006744385);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500654', 'TR00001221', 'N0481', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500655', 'TR00001221', 'N0444', 0.5999611207417079);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500656', 'TR00001221', 'N0413', 0.5983508825302124);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500657', 'TR00001222', 'N0478', 0.7527138011796134);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500658', 'TR00001222', 'N0443', 0.4962096452713013);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500659', 'TR00001222', 'N0442', 0.4869548405919756);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500660', 'TR00001223', 'N0444', 0.6366994806698391);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500661', 'TR00001223', 'N0481', 0.6284844040870666);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500662', 'TR00001223', 'N0420', 0.5718039274215698);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500663', 'TR00001224', 'N0449', 0.4632236671447754);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500664', 'TR00001224', 'N0454', 0.4435493421554565);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500665', 'TR00001224', 'N0469', 0.4134168148040771);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500666', 'TR00001225', 'N0482', 0.4475890023367745);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500667', 'TR00001225', 'N0449', 0.445266858736674);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500668', 'TR00001225', 'N0454', 0.4210951129595438);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500669', 'TR00001226', 'N0413', 0.4607016563415527);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500670', 'TR00001226', 'N0478', 0.4409249782562255);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500671', 'TR00001226', 'N0481', 0.4352279663085937);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500672', 'TR00001227', 'N0488', 0.4785613965988159);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500673', 'TR00001227', 'N0469', 0.4757354927062988);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500674', 'TR00001227', 'N0449', 0.4456704497337341);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500675', 'TR00001228', 'N0468', 0.4944743394851685);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500676', 'TR00001228', 'N0441', 0.4831144094467163);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500677', 'TR00001228', 'N0418', 0.4716203212738037);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500678', 'TR00001229', 'N0443', 0.9851384115219116);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500679', 'TR00001229', 'N0482', 0.5987485476902553);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500680', 'TR00001229', 'N0478', 0.5815240621566773);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500681', 'TR00001230', 'N0472', 0.5546699682871501);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500682', 'TR00001230', 'N0441', 0.5438091039657593);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500683', 'TR00001230', 'N0430', 0.5044901728630066);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500684', 'TR00001231', 'N0482', 0.5985747047833034);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500685', 'TR00001231', 'N0444', 0.5496931041990007);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500686', 'TR00001231', 'N0468', 0.539605438709259);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500687', 'TR00001232', 'N0413', 0.590207839012146);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500688', 'TR00001232', 'N0481', 0.5366204500198365);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500689', 'TR00001232', 'N0428', 0.5163533687591553);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500690', 'TR00001233', 'N0480', 0.6067750746863229);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500691', 'TR00001233', 'N0418', 0.5661660671234131);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500692', 'TR00001233', 'N0420', 0.4785338044166565);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500693', 'TR00001234', 'N0463', 0.5963948440551757);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500694', 'TR00001234', 'N0481', 0.5689632773399353);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500695', 'TR00001234', 'N0453', 0.5513733458518982);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500696', 'TR00001235', 'N0482', 0.6407397747039795);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500697', 'TR00001235', 'N0444', 0.5797938483101981);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500698', 'TR00001235', 'N0472', 0.5378513813018799);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500699', 'TR00001236', 'N0444', 0.6566253185272217);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500700', 'TR00001236', 'N0482', 0.5526795046670097);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500701', 'TR00001236', 'N0443', 0.5524420465741838);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500702', 'TR00001237', 'N0475', 0.5403107166290283);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500703', 'TR00001237', 'N0492', 0.5371460676193237);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500704', 'TR00001237', 'N0429', 0.537055516242981);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500705', 'TR00001238', 'N0444', 0.6584052324295044);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500706', 'TR00001238', 'N0481', 0.6469652601650784);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500707', 'TR00001238', 'N0482', 0.5662273066384451);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500708', 'TR00001239', 'N0478', 0.6247766358511788);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500709', 'TR00001239', 'N0463', 0.5414129686355591);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500710', 'TR00001239', 'N0443', 0.5233974456787109);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500711', 'TR00001240', 'N0444', 0.6527142286300659);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500712', 'TR00001240', 'N0446', 0.5679983925819397);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500713', 'TR00001240', 'N0482', 0.5647667544228689);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500714', 'TR00001241', 'N0442', 0.4804949368749346);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500715', 'TR00001241', 'N0441', 0.4699942509333292);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500716', 'TR00001241', 'N0458', 0.4467548847198486);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500717', 'TR00001242', 'N0444', 0.5872712748391288);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500718', 'TR00001242', 'N0482', 0.4922522817339216);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500719', 'TR00001242', 'N0483', 0.4391629610742841);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500720', 'TR00001243', 'N0480', 0.5577164840698242);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500721', 'TR00001243', 'N0418', 0.540550434589386);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500722', 'TR00001243', 'N0427', 0.5166867494583129);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500723', 'TR00001244', 'N0482', 0.5622423665864127);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500724', 'TR00001244', 'N0430', 0.5543378472328185);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500725', 'TR00001244', 'N0472', 0.5396639466285705);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500726', 'TR00001245', 'N0444', 0.6510740756988525);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500727', 'TR00001245', 'N0482', 0.5581168787819999);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500728', 'TR00001245', 'N0449', 0.4421993136405944);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500729', 'TR00001246', 'N0468', 0.516418707370758);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500730', 'TR00001246', 'N0427', 0.5005200028419494);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500731', 'TR00001246', 'N0420', 0.4723158359527588);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500732', 'TR00001247', 'N0478', 0.4293886184692382);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500733', 'TR00001247', 'N0443', 0.4273667883872986);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500734', 'TR00001247', 'N0449', 0.4269506335258484);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500735', 'TR00001248', 'N0413', 0.5538957357406616);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500736', 'TR00001248', 'N0481', 0.5530003786087037);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500737', 'TR00001248', 'N0414', 0.495350980758667);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500738', 'TR00001249', 'N0444', 0.6130578892571585);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500739', 'TR00001249', 'N0468', 0.513585901260376);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500740', 'TR00001249', 'N0427', 0.5129081964492798);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500741', 'TR00001250', 'N0420', 0.4871563911437988);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500742', 'TR00001250', 'N0480', 0.4637438368797302);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500743', 'TR00001250', 'N0475', 0.462773036956787);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500744', 'TR00001251', 'N0468', 0.5117976546287537);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500745', 'TR00001251', 'N0427', 0.5096396565437317);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500746', 'TR00001251', 'N0488', 0.4874989104270935);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500747', 'TR00001252', 'N0484', 0.9902494859695437);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500748', 'TR00001252', 'N0449', 0.4302316904067993);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500749', 'TR00001252', 'N0469', 0.4231471896171569);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500750', 'TR00001253', 'N0444', 0.5400229896817889);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500751', 'TR00001253', 'N0483', 0.4571863259587969);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500752', 'TR00001253', 'N0482', 0.4531070215361459);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500753', 'TR00001254', 'N0449', 0.4420456051826477);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500754', 'TR00001254', 'N0469', 0.4232937097549438);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500755', 'TR00001254', 'N0454', 0.4194605469703674);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500756', 'TR00001255', 'N0484', 0.4710786376680647);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500757', 'TR00001255', 'N0488', 0.4501802635192871);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500758', 'TR00001255', 'N0449', 0.4370192527770996);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500759', 'TR00001256', 'N0485', 0.9799897265434264);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500760', 'TR00001256', 'N0455', 0.576341028213501);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500761', 'TR00001256', 'N0409', 0.5282655596733093);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500762', 'TR00001257', 'N0418', 0.5646658182144165);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500763', 'TR00001257', 'N0480', 0.4923246383666992);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500764', 'TR00001257', 'N0420', 0.4826439499855041);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500765', 'TR00001258', 'N0486', 0.970745904445648);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500766', 'TR00001258', 'N0429', 0.5523067545890809);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500767', 'TR00001258', 'N0489', 0.5480584573745728);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500768', 'TR00001259', 'N0487', 0.4465773446219307);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500769', 'TR00001259', 'N0449', 0.4426934480667114);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500770', 'TR00001259', 'N0454', 0.4211746573448181);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500771', 'TR00001260', 'N0483', 0.535613603251321);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500772', 'TR00001260', 'N0418', 0.5290857076644897);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500773', 'TR00001260', 'N0480', 0.5041529655456543);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500774', 'TR00001261', 'N0478', 0.5946474234263103);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500775', 'TR00001261', 'N0483', 0.5798884272575378);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500776', 'TR00001261', 'N0481', 0.5024625204858326);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500777', 'TR00001262', 'N0483', 0.5839914560317994);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500778', 'TR00001262', 'N0484', 0.4842333776610238);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500779', 'TR00001262', 'N0478', 0.4518455028533935);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500780', 'TR00001263', 'N0418', 0.5359812021255493);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500781', 'TR00001263', 'N0420', 0.4956682395935058);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500782', 'TR00001263', 'N0480', 0.4887798666954041);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500783', 'TR00001264', 'N0420', 0.6148363510767618);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500784', 'TR00001264', 'N0422', 0.565777826309204);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500785', 'TR00001264', 'N0441', 0.4703364372253418);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500786', 'TR00001265', 'N0453', 0.5955831956863403);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500787', 'TR00001265', 'N0444', 0.5430438791002545);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500788', 'TR00001265', 'N0483', 0.5289822953087943);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500789', 'TR00001266', 'N0484', 0.5712131398064749);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500790', 'TR00001266', 'N0469', 0.4508509397506713);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500791', 'TR00001266', 'N0488', 0.4508074522018432);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500792', 'TR00001267', 'N0447', 0.5135997329439436);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500793', 'TR00001267', 'N0488', 0.4653116583824157);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500794', 'TR00001267', 'N0469', 0.4651663541793823);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500795', 'TR00001268', 'N0447', 0.5963814088276455);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500796', 'TR00001268', 'N0453', 0.5263535737991333);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500797', 'TR00001268', 'N0475', 0.5178308725357056);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500798', 'TR00001269', 'N0413', 0.5897677421569825);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500799', 'TR00001269', 'N0481', 0.5470684766769409);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500800', 'TR00001269', 'N0412', 0.521737027168274);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500801', 'TR00001270', 'N0415', 0.5617030501365662);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500802', 'TR00001270', 'N0488', 0.5573397959981645);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500803', 'TR00001270', 'N0489', 0.5549207295690264);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500804', 'TR00001271', 'N0489', 0.9636547517776488);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500805', 'TR00001271', 'N0492', 0.5565411567687988);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500806', 'TR00001271', 'N0486', 0.5507821512222291);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500807', 'TR00001272', 'N0468', 0.5201322793960571);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500808', 'TR00001272', 'N0427', 0.4883666276931763);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500809', 'TR00001272', 'N0488', 0.4876363110542297);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500810', 'TR00001273', 'N0446', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500811', 'TR00001273', 'N0491', 0.9898463797569276);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500812', 'TR00001273', 'N0445', 0.5730576276779175);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500813', 'TR00001274', 'N0458', 0.5455044031143188);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500814', 'TR00001274', 'N0431', 0.5225297451019287);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500815', 'TR00001274', 'N0419', 0.4689348101615905);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500816', 'TR00001275', 'N0447', 0.4933312807764325);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500817', 'TR00001275', 'N0458', 0.4619984070460001);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500818', 'TR00001275', 'N0431', 0.4561740080515543);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500819', 'TR00001276', 'N0447', 0.5810338156563895);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500820', 'TR00001276', 'N0492', 0.5780958754675729);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500821', 'TR00001276', 'N0422', 0.5588773965835571);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500822', 'TR00001277', 'N0488', 0.6588168879917691);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500823', 'TR00001277', 'N0487', 0.4861660991396223);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500824', 'TR00001277', 'N0449', 0.4424252271652221);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500825', 'TR00001278', 'N0486', 0.6993365836143494);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500826', 'TR00001278', 'N0492', 0.6954966442925589);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500827', 'TR00001278', 'N0420', 0.5889616966247558);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500828', 'TR00001279', 'N0445', 1.0);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500829', 'TR00001279', 'N0488', 0.8809799623489379);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500830', 'TR00001279', 'N0455', 0.5785216641426086);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500831', 'TR00001280', 'N0468', 0.5318147301673889);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500832', 'TR00001280', 'N0488', 0.4766493411291213);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500833', 'TR00001280', 'N0458', 0.461943769454956);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500834', 'TR00001281', 'N0492', 0.9984349918365478);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500835', 'TR00001281', 'N0429', 0.5435077667236328);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500836', 'TR00001281', 'N0489', 0.5283580780029297);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500837', 'TR00001282', 'N0412', 0.5834251117706298);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500838', 'TR00001282', 'N0420', 0.5795781135559082);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500839', 'TR00001282', 'N0422', 0.5271464705467224);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500840', 'TR00001283', 'N0489', 0.6272261330059596);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500841', 'TR00001283', 'N0418', 0.546052360534668);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500842', 'TR00001283', 'N0488', 0.5118995959418161);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500843', 'TR00001284', 'N0478', 0.5666863679885864);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500844', 'TR00001284', 'N0443', 0.5323397874832153);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500845', 'TR00001284', 'N0413', 0.4666249752044678);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500846', 'TR00001285', 'N0488', 0.4941688231059483);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500847', 'TR00001285', 'N0449', 0.4587672472000121);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500848', 'TR00001285', 'N0469', 0.4543916702270507);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500849', 'TR00001286', 'N0469', 0.47204598903656);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500850', 'TR00001286', 'N0449', 0.4494691729545593);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500851', 'TR00001286', 'N0488', 0.4424017667770386);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500852', 'TR00001287', 'N0489', 0.6028383343560355);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500853', 'TR00001287', 'N0475', 0.5682468366622925);
INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('M0500854', 'TR00001287', 'N0453', 0.5177462577819825);

COMMIT;

-- Total batches processed: 4