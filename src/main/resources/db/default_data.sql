INSERT INTO skill_scale VALUES(11, 41, 6, 5, 1, 1, 10, 1);
INSERT INTO stat_level_scale VALUES
  ('str', 10, 5, 10, 5),
  ('vit', 10, 5, 10, 5),
  ('spd', 10, 5, 10, 5),
  ('dex', 10, 5, 10, 5),
  ('int', 10, 5, 10, 5),
  ('wis', 10, 5, 10, 5);

INSERT INTO stat_skill_scale VALUES
  ('fire', 'str', 10),
  ('water', 'str', 6),
  ('lightning', 'str', 4),
  ('wind', 'str', 0),
  ('earth', 'str', 6),
  ('sonic', 'str', 4),
  ('personal', 'str', 10),
  ('material', 'str', 8),
  ('shift', 'str', 6),
  ('life', 'str', 2),
  ('space', 'str', 0),
  ('gravity', 'str', 4),
  ('fire', 'vit', 0),
  ('water', 'vit', 8),
  ('lightning', 'vit', 2),
  ('wind', 'vit', 8),
  ('earth', 'vit', 10),
  ('sonic', 'vit', 0),
  ('personal', 'vit', 6),
  ('material', 'vit', 10),
  ('shift', 'vit', 8),
  ('life', 'vit', 6),
  ('space', 'vit', 2),
  ('gravity', 'vit', 0),
  ('fire', 'spd', 8),
  ('water', 'spd', 4),
  ('lightning', 'spd', 8),
  ('wind', 'spd', 6),
  ('earth', 'spd', 0),
  ('sonic', 'spd', 10),
  ('personal', 'spd', 8),
  ('material', 'spd', 0),
  ('shift', 'spd', 2),
  ('life', 'spd', 0),
  ('space', 'spd', 4),
  ('gravity', 'spd', 10),
  ('fire', 'dex', 4),
  ('water', 'dex', 0),
  ('lightning', 'dex', 6),
  ('wind', 'dex', 10),
  ('earth', 'dex', 2),
  ('sonic', 'dex', 8),
  ('personal', 'dex', 2),
  ('material', 'dex', 4),
  ('shift', 'dex', 10),
  ('life', 'dex', 4),
  ('space', 'dex', 8),
  ('gravity', 'dex', 2),
  ('fire', 'int', 6),
  ('water', 'int', 2),
  ('lightning', 'int', 10),
  ('wind', 'int', 2),
  ('earth', 'int', 4),
  ('sonic', 'int', 6),
  ('personal', 'int', 0),
  ('material', 'int', 2),
  ('shift', 'int', 4),
  ('life', 'int', 8),
  ('space', 'int', 10),
  ('gravity', 'int', 6),
  ('fire', 'wis', 2),
  ('water', 'wis', 10),
  ('lightning', 'wis', 0),
  ('wind', 'wis', 4),
  ('earth', 'wis', 8),
  ('sonic', 'wis', 2),
  ('personal', 'wis', 4),
  ('material', 'wis', 6),
  ('shift', 'wis', 0),
  ('life', 'wis', 10),
  ('space', 'wis', 6),
  ('gravity', 'wis', 8);

INSERT INTO vital_scale VALUES
  (600, 30, 20, 2, 1);

INSERT INTO monster (id, name, hp, xp) VALUES
 ('269f9976-b499-4f99-8b07-f8c64c34aff3', 'Puddling', 333, 111),
 ('5c6da319-8a84-47ab-9c67-7bd3ea2a0e47', 'Baurus', 680, 280),
 ('78dd427c-88df-40c4-a3f8-38f4e1cd527a', 'Highwayman', 1320, 640),
 ('b1fd091f-5fe9-4efd-a8c9-04b6fbac2bb2', 'Wandering Berzerker', 2001, 900),
 ('7a388f50-8610-4acd-a529-24154e6ae82a', 'Cursed Cube', 4096, 2197),
 ('421f2a94-b09e-4698-adbc-c192ea41b625', 'Basalt-Skin Bear', 5800, 3190),
 ('038437a7-d4ff-4dbd-9021-17f20b86712c', 'Displacer Treant', 7777, 4444),
 ('f59eec6c-2fd1-4c32-bf9f-7ce548d2ad0b', 'The Innkeeper''s Door', 10000, 10000);

INSERT INTO character VALUES
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'roland', 50, -1, -1, -1),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'hyperion', 50, -1, -1, -1);

INSERT INTO character_skill VALUES
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'fire', 15, 'Burn', 5, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'water', 15, 'Freeze', 5, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'lightning', 15, 'Shock', 5, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'wind', 15, 'Stagger', 5, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'earth', 15, 'Root', 5, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'sonic', 15, 'Deafen', 5, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'personal', 15, 'Martial Training', 5, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'material', 20, 'Bestow', 10, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'shift', 4, '', 0, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'life', 39, 'Animate', 25, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'space', 20, 'Summon', 10, '', 0),
 ('150b0c3d-db29-4a2f-b8b4-edec40ba6dff', 'gravity', 20, 'Flight', 10, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'fire', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'water', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'lightning', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'wind', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'earth', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'sonic', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'personal', 97, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'material', 9, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'shift', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'life', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'space', 0, '', 0, '', 0),
 ('6e490be9-35ae-4fb2-9fba-ead60fd75a23', 'gravity', 0, '', 0, '', 0);