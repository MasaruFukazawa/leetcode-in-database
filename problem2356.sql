--
-- number-of-unique-subjects-taught-by-each-teacher/
--
SELECT
    distinct_teacher.teacher_id AS teacher_id,
    count(distinct_teacher.teacher_id) AS cnt
FROM
    (
        SELECT DISTINCT
            teacher_id,
            subject_id
        FROM
            Teacher
    ) AS distinct_teacher
GROUP By
    distinct_teacher.teacher_ida