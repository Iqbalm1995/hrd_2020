
CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `hrd_2020`.`list_vacancy_view` 
    AS
(SELECT
  `vac`.`id`        AS `vac_id`,
  `vac`.`job_title` AS `vac_job_title`,
  `vac`.`desc`      AS `vac_desc`,
  `vac`.`status`    AS `vac_status`,
  `vac`.`due_date`  AS `vac_due_date`,
  `usr`.`name`      AS `vac_create_by`,
  `rol`.`role_name` AS `usr_role`,
  `vac`.`create_at` AS `vac_create_at`,
  COALESCE((SELECT COUNT(`rec`.`id`) FROM `rec_recruitment` `rec` WHERE `rec`.`vacancy_id` = `vac`.`id` AND `rec`.`deleted` = '0' GROUP BY `vac`.`id`),0) AS `count_rec_pos`
FROM ((`vac_vacancy` `vac`
    JOIN `usr_users` `usr`
      ON (`vac`.`create_by` = `usr`.`id`))
   JOIN `usr_roles` `rol`
     ON (`usr`.`role_id` = `rol`.`id`))
WHERE `vac`.`deleted` = '0');

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `hrd_2020`.`rec_vacancy_view` 
    AS
(SELECT
  `vac`.`id`        AS `vac_id`,
  `rec`.`id`        AS `rec_id`,
  `vac`.`job_title` AS `vac_job_title`,
  `vac`.`desc`      AS `vac_desc`,
  `vac`.`status`    AS `vac_status`,
  `vac`.`due_date`  AS `vac_due_date`,
  `usr`.`name`      AS `vac_create_by`,
  `rol`.`role_name` AS `usr_role`,
  `vac`.`create_at` AS `vac_create_at`,
  `rec`.`desc`      AS `rec_desc`,
  `rec`.`status`    AS `rec_status`,
  `rec`.`capacity`  AS `rec_capacity`,
  `rec`.`loaded`    AS `rec_loaded`,
  `pos`.`pos_name`  AS `rec_pos_name`,
  `divs`.`div_name` AS `rec_div_name`
FROM (((((`rec_recruitment` `rec`
       JOIN `vac_vacancy` `vac`
         ON (`rec`.`vacancy_id` = `vac`.`id`))
      JOIN `usr_users` `usr`
        ON (`vac`.`create_by` = `usr`.`id`))
     JOIN `usr_roles` `rol`
       ON (`usr`.`role_id` = `rol`.`id`))
    JOIN `div_position` `pos`
      ON (`rec`.`pos_id` = `pos`.`id`))
   JOIN `div_division` `divs`
     ON (`pos`.`division_id` = `divs`.`id`))
WHERE `vac`.`deleted` <> '0');
