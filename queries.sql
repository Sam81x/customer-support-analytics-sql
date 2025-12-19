-- Average resolution time by agent
SELECT
    agent_id,
    AVG(resolved_at - created_at) AS avg_resolution_days
FROM tickets
GROUP BY agent_id;

-- SLA compliance rate
SELECT
    ROUND(100.0 * SUM(CASE WHEN sla_met THEN 1 ELSE 0 END) / COUNT(*), 2) AS sla_rate
FROM tickets;

-- Customer satisfaction by category
SELECT
    category,
    AVG(satisfaction_score) AS avg_satisfaction
FROM tickets
GROUP BY category;
