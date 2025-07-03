 Continuous Improvement Database – planet schema
📌 Overview
This PostgreSQL database schema is designed to support operational analytics, agent performance tracking, and customer experience (VoC) metrics within a service-oriented environment. The schema is tailored for Continuous Improvement teams to enable data-driven decision-making across departments.

🏗️ Schema: planet
The planet schema centralizes structured data from multiple sources including calls, tickets, quality assessments, surveys, agent data, and productivity metrics.

Key Features:
Granular data at daily, weekly, and monthly levels

Built-in support for KPIs such as NPS, CSAT, NES, SLA, AHT, ABA, and productivity

Materialized views for performance optimization

Cleaned and enriched VoC data using stored functions and triggers

🗃️ Main Tables
Table	Description
agent	Agent master data including reporting lines
call_agent	Inbound call-level details with duration metrics
case_reason	Reasons and subreasons for customer interactions
productivity	Tickets handled per agent per day
repeat_rate	Touchpoint and repeat case metrics
quality_evaluations	Quality scores segmented by case type
VoC	Raw customer feedback data
transfers	Ticket handoffs between departments
surveys_sent	Metadata of surveys dispatched
call_performance	Aggregated call center performance metrics
incoming_tickets	Daily inbound ticket counts by department
outbounds	Outbound activity tracking
contact_rate	Contact attempt rates

👓 Views
The schema includes over 30 analytical views for reporting and dashboarding. These are grouped as follows:

Agent-level KPIs
AGENTS_Monthly_Productivity

AGENTS_Monthly_call_performance

AGENT_Monthly_RR

AGENT_Monthly_VoC

AGENT_monthly_evaluations

Department-level Metrics
MONTHLY_Productivity

MONTHLY_Evaluations

MONTHLY_Incoming

MONTHLY_Tickets_SLA

MONTHLY_RR

MONTHLY_Call_performance

MONTHLY_VoC

MONTHLY_Transfers

MONTHLY_Outbounds

Daily Operational Views
DAILY_RR

DAILY_VoC_Results

DAILY_repeat_cases

VoC Specialized Views
VOC_Payments

VOC_PMS

VoC_Payments_Negative

VoC_PMS_Negative

VoC_UTF8_Conflicts

VoC_clean

Performance Delta
Productivity_difference (Materialized View): calculates the gap between agent productivity and actual workload

🔄 Triggers & Data Cleaning
planet.clean_text_fields() – Ensures text fields are stored in clean UTF-8 format

planet.set_month_name() – Automatically populates month names

planet.update_date_fields() – Derives calendar fields such as Week_number and Week_Year

🛠️ Setup Instructions
Create the schema:

sql
Copiar
Editar
CREATE SCHEMA planet;
Execute the SQL file:

bash
Copiar
Editar
psql -U [user] -d [database] -f Continuous_Improvement.sql
Ensure all triggers and functions are created and the appropriate permissions are granted.

✅ Use Cases
Agent performance dashboards

SLA and contact center KPIs

VoC insights (NPS, CSAT, NES)

Weekly/monthly reporting automation

Process improvement initiatives

📅 Temporal Model
This schema includes a central date table with dynamic week/year calculations to support:

ISO week-based aggregation

Consistent time-based KPIs

🔒 Permissions
All sequences and tables are owned by postgres, and full privileges are granted for internal usage.

🧑‍💻 Author
Antonio Romero
Continuous Improvement & VoC Team Lead
linkedin.com/in/antonio-romero-gonzález-926b1586
