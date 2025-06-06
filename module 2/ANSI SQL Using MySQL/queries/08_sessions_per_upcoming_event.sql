-- Exercise 8: Count of sessions for each upcoming event

SELECT 
    e.title AS event_title,
    COUNT(s.session_id) AS session_count
FROM Events e
LEFT JOIN Sessions s ON e.event_id = s.event_id
WHERE e.status = 'upcoming'
GROUP BY e.event_id, e.title
ORDER BY session_count DESC;
