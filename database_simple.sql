-- One-table version: Incident Response Management
CREATE DATABASE IF NOT EXISTS incident_simple;
USE incident_simple;

DROP TABLE IF EXISTS INCIDENT;

CREATE TABLE INCIDENT (
    incident_id   INT PRIMARY KEY AUTO_INCREMENT,
    incident_date DATE NOT NULL,
    description   VARCHAR(200) NOT NULL,
    incident_type VARCHAR(50) NOT NULL,
    severity      VARCHAR(20) NOT NULL
                  CHECK (severity IN ('Critical','High','Medium','Low','Informational')),
    team_name     VARCHAR(60) NOT NULL,
    status        VARCHAR(15) NOT NULL DEFAULT 'Open'
                  CHECK (status IN ('Open','In Progress','Resolved','Closed')),
    reported_by   VARCHAR(50)
);

INSERT INTO INCIDENT (incident_date, description, incident_type, severity, team_name, status, reported_by) VALUES
('2026-09-03', 'Spear phishing campaign targeting accounts department', 'Phishing', 'High', 'Phishing Response Team', 'Closed', 'Rajesh K.'),
('2026-09-10', 'Ransomware found on laboratory workstation subnet', 'Malware', 'Critical', 'Malware Analysis Team', 'Resolved', 'Anita P.'),
('2026-09-18', 'Repeated brute-force SSH failures on admin gateways', 'Unauthorized Access', 'Medium', 'Network Security Team', 'Closed', 'Security Bot'),
('2026-09-27', 'Core switch power failure caused campus blackout', 'System Failure', 'High', 'Infrastructure Support Team', 'Resolved', 'Manoj S.'),
('2026-10-02', 'Student records exposed on external pasteboard', 'Data Breach', 'Critical', 'Data Protection Team', 'In Progress', 'Dean Office'),
('2026-10-08', 'Credential-harvesting emails across student mailboxes', 'Phishing', 'Medium', 'Phishing Response Team', 'In Progress', 'Neha G.'),
('2026-10-14', 'Suspicious outbound beaconing from library host', 'Malware', 'High', 'Malware Analysis Team', 'Open', 'SIEM Alert'),
('2026-10-18', 'Search indexing delay on library portal', 'System Failure', 'Low', 'Infrastructure Support Team', 'Open', 'Pooja T.'),
('2026-10-22', 'Privilege escalation alert on admin portal', 'Unauthorized Access', 'High', 'Network Security Team', 'Open', 'Audit Team'),
('2026-10-25', 'Open telnet port flagged by vulnerability scan', 'Unauthorized Access', 'Informational', 'Network Security Team', 'Closed', 'Sec Scanner');

SELECT * FROM INCIDENT;
