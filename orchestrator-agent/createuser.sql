-- Orch database
CREATE DATABASE IF NOT EXISTS orchestrator;

-- Orch account
GRANT ALL PRIVILEGES ON orchestrator.* TO 'orchestrator'@'%' IDENTIFIED BY 'orchestrator';
GRANT SUPER, PROCESS, REPLICATION SLAVE, RELOAD ON *.* TO 'orchestrator'@'%';
GRANT ALL PRIVILEGES ON orchestrator.* TO 'orchestrator'@'localhost' IDENTIFIED BY 'orchestrator';
GRANT SUPER, PROCESS, REPLICATION SLAVE, RELOAD ON *.* TO 'orchestrator'@'localhost';
GRANT ALL PRIVILEGES ON orchestrator.* TO 'orchestrator'@'localhost' IDENTIFIED BY 'orchestrator';

-- Replication
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'10.0.0.%' IDENTIFIED BY 'repl';

FLUSH PRIVILEGES;

