SELECT assignments.id, assignments.day, chapter, name, COUNT(assistance_request.*) AS total_requests
FROM assignments
JOIN assistance_request ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;