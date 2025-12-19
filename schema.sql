CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    agent_id INT,
    category VARCHAR(50),
    priority VARCHAR(20),
    created_at DATE,
    resolved_at DATE,
    sla_met BOOLEAN,
    satisfaction_score INT
);
