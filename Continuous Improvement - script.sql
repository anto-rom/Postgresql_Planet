-- DROP SCHEMA planet;

CREATE SCHEMA planet AUTHORIZATION postgres;

-- DROP DOMAIN planet."year";

CREATE DOMAIN planet."year" AS integer
	CONSTRAINT year_check CHECK (VALUE >= 1901 AND VALUE <= 2155);
-- DROP SEQUENCE planet.agent_agent_id_seq;

CREATE SEQUENCE planet.agent_agent_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.call_agent_call_agent_id_seq;

CREATE SEQUENCE planet.call_agent_call_agent_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.call_agent_call_agent_id_seq1;

CREATE SEQUENCE planet.call_agent_call_agent_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.contact_rate_contact_rate_id_seq;

CREATE SEQUENCE planet.contact_rate_contact_rate_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.contact_rate_contact_rate_id_seq1;

CREATE SEQUENCE planet.contact_rate_contact_rate_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.country_country_id_seq;

CREATE SEQUENCE planet.country_country_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.date_date_id_seq;

CREATE SEQUENCE planet.date_date_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.date_date_id_seq1;

CREATE SEQUENCE planet.date_date_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.department_department_id_seq;

CREATE SEQUENCE planet.department_department_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.department_department_id_seq1;

CREATE SEQUENCE planet.department_department_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.incoming_tickets_incoming_tickets_id_seq;

CREATE SEQUENCE planet.incoming_tickets_incoming_tickets_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.incoming_tickets_incoming_tickets_id_seq1;

CREATE SEQUENCE planet.incoming_tickets_incoming_tickets_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.language_language_id_seq;

CREATE SEQUENCE planet.language_language_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.productivity_productivity_id_seq;

CREATE SEQUENCE planet.productivity_productivity_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.productivity_productivity_id_seq1;

CREATE SEQUENCE planet.productivity_productivity_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.quality_evaluations_quality_evaluations_id_seq;

CREATE SEQUENCE planet.quality_evaluations_quality_evaluations_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.quality_evaluations_quality_evaluations_id_seq1;

CREATE SEQUENCE planet.quality_evaluations_quality_evaluations_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.repeat_cases_seq;

CREATE SEQUENCE planet.repeat_cases_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.repeat_rate_id_seq;

CREATE SEQUENCE planet.repeat_rate_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 6768
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.repeat_rate_repeat_rate_id_seq;

CREATE SEQUENCE planet.repeat_rate_repeat_rate_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.repeat_rate_repeat_rate_id_seq1;

CREATE SEQUENCE planet.repeat_rate_repeat_rate_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.tickets_sla_tickets_sla_id_seq;

CREATE SEQUENCE planet.tickets_sla_tickets_sla_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.tickets_sla_tickets_sla_id_seq1;

CREATE SEQUENCE planet.tickets_sla_tickets_sla_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.tl_tl_id_seq;

CREATE SEQUENCE planet.tl_tl_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE planet.tl_tl_id_seq1;

CREATE SEQUENCE planet.tl_tl_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;-- planet.call_agent definition

-- Drop table

-- DROP TABLE planet.call_agent;

CREATE TABLE planet.call_agent (
	call_agent_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	agent_id int4 NULL,
	sla bool NULL,
	vip bool NULL,
	queue_name varchar NULL,
	total_call_duration numeric NULL,
	abandoned bool NULL,
	handle_time int4 NULL,
	talk_time int4 NULL,
	consult_time int4 NULL,
	ring_duration int4 NULL,
	queue_duration int4 NULL,
	end_reason varchar NULL,
	call_state varchar NULL,
	call_result varchar NULL,
	call_type varchar NULL,
	"Date" date NULL,
	CONSTRAINT call_agent_pkey PRIMARY KEY (call_agent_id)
);


-- planet."date" definition

-- Drop table

-- DROP TABLE planet."date";

CREATE TABLE planet."date" (
	date_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	"Date" date NULL,
	"Month" varchar(20) NULL,
	"Month_number" int4 NULL,
	"Week_number" int4 GENERATED ALWAYS AS (EXTRACT(week FROM "Date" - '3 days'::interval)::integer) STORED NULL,
	"Week_Year" int4 GENERATED ALWAYS AS (EXTRACT(year FROM "Date" - '3 days'::interval)::integer) STORED NULL,
	CONSTRAINT date_pkey PRIMARY KEY (date_id)
);

-- Table Triggers

create trigger trg_update_date_fields before
insert
    or
update
    on
    planet.date for each row execute function planet.update_date_fields();


-- planet.department definition

-- Drop table

-- DROP TABLE planet.department;

CREATE TABLE planet.department (
	department_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	department_name varchar(45) NOT NULL,
	vertical varchar NULL,
	department_group varchar NULL,
	team_hierarchy varchar NULL,
	CONSTRAINT department_pkey PRIMARY KEY (department_id)
);


-- planet.repeat_cases definition

-- Drop table

-- DROP TABLE planet.repeat_cases;

CREATE TABLE planet.repeat_cases (
	repeat_cases_id int4 DEFAULT nextval('planet.repeat_cases_seq'::regclass) NOT NULL,
	case_number int4 NULL,
	department_id int4 NULL,
	agent_id int4 NULL,
	nb_repeats int4 NULL,
	"Date" date NULL,
	CONSTRAINT repeat_cases_pkey PRIMARY KEY (repeat_cases_id)
);


-- planet.surveys_sent definition

-- Drop table

-- DROP TABLE planet.surveys_sent;

CREATE TABLE planet.surveys_sent (
	surveys_sent_id int4 NOT NULL,
	"Date" date NULL,
	department_id int4 NULL,
	case_number int4 NULL,
	account_name varchar NULL,
	managed_account bool NULL,
	CONSTRAINT surveys_sent_pk PRIMARY KEY (surveys_sent_id)
);

-- Table Triggers

create trigger "clean data" after
insert
    on
    planet.surveys_sent for each row execute function planet.clean_text_fields();


-- planet.tl definition

-- Drop table

-- DROP TABLE planet.tl;

CREATE TABLE planet.tl (
	tl_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	first_name varchar(45) NOT NULL,
	last_name varchar(45) NOT NULL,
	CONSTRAINT tl_pkey PRIMARY KEY (tl_id)
);


-- planet.transfers definition

-- Drop table

-- DROP TABLE planet.transfers;

CREATE TABLE planet.transfers (
	transfers_id int4 DEFAULT nextval('planet.repeat_cases_seq'::regclass) NOT NULL,
	"Date" date NULL,
	agent_id int4 NULL,
	department_id int4 NULL,
	new_value int4 NULL,
	case_number int4 NULL,
	CONSTRAINT transfers_pkey PRIMARY KEY (transfers_id)
);


-- planet."VoC" definition

-- Drop table

-- DROP TABLE planet."VoC";

CREATE TABLE planet."VoC" (
	"VoC_ID" numeric NOT NULL,
	"Date" date NULL,
	case_number int8 NULL,
	survey_name text NULL,
	"Premium" bool NULL,
	account_name text NULL,
	department_id int4 NULL,
	vertical text NULL,
	case_origin text NULL,
	case_reason text NULL,
	case_subreason text NULL,
	subject text NULL,
	agent_id int4 NULL,
	country text NULL,
	"NPS_type" text NULL,
	survey_resolution numeric NULL,
	"NPS" numeric NULL,
	"NPS_Reason" text NULL,
	"NES" numeric NULL,
	"CSAT_Service" numeric NULL,
	"CSAT_Product" numeric NULL,
	"HC_Score" numeric NULL,
	date_id int4 NULL,
	customer_comment varchar NULL,
	contact_name varchar NULL,
	email varchar NULL,
	"chain" varchar NULL,
	department_name varchar NULL,
	team_hierarchy varchar NULL,
	customer_comment_detractor varchar NULL,
	department_group varchar NULL,
	"Week_number" int4 GENERATED ALWAYS AS (EXTRACT(week FROM "Date" - '3 days'::interval)::integer) STORED NULL,
	"Year" int4 GENERATED ALWAYS AS (EXTRACT(year FROM "Date" - '3 days'::interval)::integer) STORED NULL,
	"Month_number" int4 GENERATED ALWAYS AS (EXTRACT(month FROM "Date")::integer) STORED NULL,
	"Month_name" text GENERATED ALWAYS AS (planet.immutable_month_name("Date"::timestamp without time zone)) STORED NULL,
	CONSTRAINT "VoC_ID" UNIQUE ("VoC_ID"),
	CONSTRAINT voc_department_fk FOREIGN KEY (department_id) REFERENCES planet.department(department_id)
);

-- Table Triggers

create trigger planet_cleaner after
insert
    on
    planet."VoC" for each row execute function planet.clean_text_fields();
create trigger clean_text_fields_trigger before
insert
    or
update
    on
    planet."VoC" for each row execute function planet.clean_text_fields();


-- planet.agent definition

-- Drop table

-- DROP TABLE planet.agent;

CREATE TABLE planet.agent (
	agent_id int4 NOT NULL,
	first_name varchar(45) NOT NULL,
	last_name varchar(45) NOT NULL,
	tl_id int4 NOT NULL,
	department_id int4 NOT NULL,
	CONSTRAINT agent_unique UNIQUE (agent_id),
	CONSTRAINT agent_department_fk FOREIGN KEY (department_id) REFERENCES planet.department(department_id),
	CONSTRAINT agent_tl_fk FOREIGN KEY (tl_id) REFERENCES planet.tl(tl_id)
);


-- planet.call_performance definition

-- Drop table

-- DROP TABLE planet.call_performance;

CREATE TABLE planet.call_performance (
	date_id int4 NULL,
	department_id int4 NULL,
	inbound int4 NULL,
	sla numeric NULL,
	aba numeric NULL,
	asa time NULL,
	aht time NULL,
	CONSTRAINT call_performance_date_fk FOREIGN KEY (date_id) REFERENCES planet."date"(date_id)
);


-- planet.case_reason definition

-- Drop table

-- DROP TABLE planet.case_reason;

CREATE TABLE planet.case_reason (
	case_reason_id int4 NOT NULL,
	department_id int4 NULL,
	case_number int4 NULL,
	agent_id int4 NULL,
	age int4 NULL,
	"Date" date NULL,
	case_reason varchar NULL,
	case_subreason varchar NULL,
	CONSTRAINT case_reason_pk PRIMARY KEY (case_reason_id),
	CONSTRAINT case_reason_agent_fk FOREIGN KEY (agent_id) REFERENCES planet.agent(agent_id)
);


-- planet.contact_rate definition

-- Drop table

-- DROP TABLE planet.contact_rate;

CREATE TABLE planet.contact_rate (
	contact_rate_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	department_id int4 NOT NULL,
	total_number numeric NOT NULL,
	"Date" date NULL,
	date_id int4 NULL,
	CONSTRAINT contact_rate_pkey PRIMARY KEY (contact_rate_id),
	CONSTRAINT contact_rate_date_fk FOREIGN KEY (date_id) REFERENCES planet."date"(date_id)
);


-- planet.incoming_tickets definition

-- Drop table

-- DROP TABLE planet.incoming_tickets;

CREATE TABLE planet.incoming_tickets (
	incoming_tickets_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	department_id int4 NOT NULL,
	date_id int4 NOT NULL,
	ticket_total int4 NULL,
	"Date" date NULL,
	CONSTRAINT incoming_tickets_pkey PRIMARY KEY (incoming_tickets_id),
	CONSTRAINT incoming_tickets_date_fk FOREIGN KEY (date_id) REFERENCES planet."date"(date_id),
	CONSTRAINT incoming_tickets_department_fk FOREIGN KEY (department_id) REFERENCES planet.department(department_id)
);


-- planet.outbounds definition

-- Drop table

-- DROP TABLE planet.outbounds;

CREATE TABLE planet.outbounds (
	outbound_id int4 NOT NULL,
	agent_id int4 NULL,
	"Date" date NULL,
	total_outbounds numeric NULL,
	department_id int4 NULL,
	CONSTRAINT outbounds_pk PRIMARY KEY (outbound_id),
	CONSTRAINT outbounds_agent_fk FOREIGN KEY (agent_id) REFERENCES planet.agent(agent_id),
	CONSTRAINT outbounds_department_fk FOREIGN KEY (department_id) REFERENCES planet.department(department_id)
);


-- planet.productivity definition

-- Drop table

-- DROP TABLE planet.productivity;

CREATE TABLE planet.productivity (
	productivity_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	department_id int4 NOT NULL,
	agent_id int4 NOT NULL,
	productivity_total numeric NULL,
	"Date" date NULL,
	CONSTRAINT productivity_pkey PRIMARY KEY (productivity_id),
	CONSTRAINT productivity_agent_fk FOREIGN KEY (agent_id) REFERENCES planet.agent(agent_id)
);


-- planet.quality_evaluations definition

-- Drop table

-- DROP TABLE planet.quality_evaluations;

CREATE TABLE planet.quality_evaluations (
	quality_evaluations_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	department_id int4 NOT NULL,
	agent_id int4 NOT NULL,
	"Date" date NULL,
	quality_total numeric NULL,
	case_number int8 NULL,
	evaluator int4 NULL,
	case_type varchar NULL,
	CONSTRAINT quality_evaluations_pkey PRIMARY KEY (quality_evaluations_id),
	CONSTRAINT quality_evaluations_agent_fk FOREIGN KEY (agent_id) REFERENCES planet.agent(agent_id),
	CONSTRAINT quality_evaluations_department_fk FOREIGN KEY (department_id) REFERENCES planet.department(department_id)
);


-- planet.repeat_rate definition

-- Drop table

-- DROP TABLE planet.repeat_rate;

CREATE TABLE planet.repeat_rate (
	repeat_rate_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	department_id int4 NOT NULL,
	agent_id int4 NOT NULL,
	"Date" date NULL,
	"3_repeats" int4 NULL,
	all_touchpoints int4 NULL,
	"Month" varchar NULL,
	CONSTRAINT repeat_rate_pkey PRIMARY KEY (repeat_rate_id),
	CONSTRAINT repeat_rate_agent_fk FOREIGN KEY (agent_id) REFERENCES planet.agent(agent_id)
);

-- Table Triggers

create trigger trg_set_month_name before
insert
    or
update
    on
    planet.repeat_rate for each row execute function planet.set_month_name();


-- planet.tickets_sla definition

-- Drop table

-- DROP TABLE planet.tickets_sla;

CREATE TABLE planet.tickets_sla (
	tickets_sla_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	department_id int4 NOT NULL,
	date_id int4 NULL,
	sla_ticket numeric NULL,
	CONSTRAINT tickets_sla_pkey PRIMARY KEY (tickets_sla_id),
	CONSTRAINT tickets_sla_department_fk FOREIGN KEY (department_id) REFERENCES planet.department(department_id)
);


-- planet."AGENTS_Monthly_Outbounds" source

CREATE OR REPLACE VIEW planet."AGENTS_Monthly_Outbounds"
AS SELECT d."Month_number",
    a.agent_id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    dp.department_id,
    dp.department_name,
    sum(o.total_outbounds) AS outbounds,
    dp.department_name AS name
   FROM planet.outbounds o
     JOIN planet.date d ON o."Date" = d."Date"
     JOIN planet.department dp ON dp.department_id = o.department_id
     JOIN planet.agent a ON a.agent_id = o.agent_id
  GROUP BY d."Month_number", dp.department_id, dp.department_name, (concat(a.first_name, ' ', a.last_name)), a.agent_id;


-- planet."AGENTS_Monthly_Productivity" source

CREATE OR REPLACE VIEW planet."AGENTS_Monthly_Productivity"
AS SELECT a.agent_id AS id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    concat(tl.first_name, ' ', tl.last_name) AS "TL_Name",
    avg(p.productivity_total) AS case_average,
    d."Month_number" AS "Month"
   FROM planet.productivity p
     JOIN planet.agent a ON a.agent_id = p.agent_id
     JOIN planet.date d ON d."Date" = p."Date"
     JOIN planet.tl tl ON tl.tl_id = a.tl_id
  WHERE a.department_id = ANY (ARRAY[1, 2, 3])
  GROUP BY a.agent_id, (concat(a.first_name, ' ', a.last_name)), (concat(tl.first_name, ' ', tl.last_name)), d."Month_number";


-- planet."AGENTS_Monthly_Tickets_SLA" source

CREATE OR REPLACE VIEW planet."AGENTS_Monthly_Tickets_SLA"
AS SELECT d."Month_number",
    a.agent_id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    avg(sla.sla_ticket) AS sla,
    dp.department_name AS name
   FROM planet.tickets_sla sla
     JOIN planet.date d ON sla.date_id = d.date_id
     JOIN planet.department dp ON dp.department_id = sla.department_id
     JOIN planet.agent a ON a.department_id = sla.department_id
  GROUP BY d."Month_number", dp.department_name, (concat(a.first_name, ' ', a.last_name)), a.agent_id
  ORDER BY d."Month_number", a.agent_id;


-- planet."AGENTS_Monthly_call_performance" source

CREATE OR REPLACE VIEW planet."AGENTS_Monthly_call_performance"
AS SELECT a.agent_id,
    d."Month_number",
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    count(*) AS total_calls,
    round(100.0 * count(*) FILTER (WHERE c.sla = true)::numeric / NULLIF(count(*), 0)::numeric, 2) AS sla_percentage,
    round(100.0 * count(*) FILTER (WHERE c.sla = true AND c.vip = true)::numeric / NULLIF(count(*) FILTER (WHERE c.vip = true), 0)::numeric, 2) AS sla_vip_percentage,
    round(100.0 * count(*) FILTER (WHERE c.abandoned = true)::numeric / NULLIF(count(*), 0)::numeric, 2) AS abandoned_percentage,
    to_char(make_interval(secs => round(avg(c.talk_time) + avg(c.consult_time) + 120::numeric)::double precision), 'HH24:MI:SS'::text) AS aht_formatted,
    to_char(make_interval(secs => round(avg(c.ring_duration))::double precision), 'HH24:MI:SS'::text) AS asa_formatted
   FROM planet.call_agent c
     JOIN planet.agent a ON a.agent_id = c.agent_id
     JOIN planet.date d ON d."Date" = c."Date"
  WHERE d."Week_Year" = 2025
  GROUP BY a.agent_id, d."Month_number", a.first_name, a.last_name
  ORDER BY a.agent_id, d."Month_number";


-- planet."AGENT_Monthly_RR" source

CREATE OR REPLACE VIEW planet."AGENT_Monthly_RR"
AS SELECT dt."Month_number",
    a.agent_id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    concat(tl.first_name, ' ', tl.last_name) AS "TL_Name",
    dt."Week_Year",
    sum(rr."3_repeats") AS repeats,
    sum(rr.all_touchpoints) AS touchpoints,
    rr.department_id,
    d.department_name AS name,
    sum(rr."3_repeats")::numeric * 100.0 / NULLIF(sum(rr.all_touchpoints), 0)::numeric AS rr
   FROM planet.repeat_rate rr
     JOIN planet.department d ON d.department_id = rr.department_id
     JOIN planet.date dt ON dt."Date" = rr."Date"
     JOIN planet.agent a ON a.agent_id = rr.agent_id
     JOIN planet.tl tl ON a.tl_id = tl.tl_id
  GROUP BY dt."Month_number", rr.department_id, d.department_name, dt."Week_Year", a.agent_id, a.first_name, a.last_name, tl.first_name, tl.last_name;


-- planet."AGENT_Monthly_VoC" source

CREATE OR REPLACE VIEW planet."AGENT_Monthly_VoC"
AS SELECT d2."Month_number",
    a.agent_id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    d.department_name AS name,
    count(
        CASE
            WHEN v.survey_resolution = '1'::numeric THEN 1
            ELSE NULL::integer
        END) AS "Resolved",
    count(v.survey_resolution) AS "Not_resolved",
    round(count(
        CASE
            WHEN v.survey_resolution = '1'::numeric THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v.survey_resolution), 0)::numeric * 100::numeric, 2) AS "Resolution_total",
    count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_promoter,
    count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_detractor,
    count(v."NPS")::numeric AS nps_total,
    round((count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric - count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric) / NULLIF(count(v."NPS"), 0)::numeric * 100::numeric, 2) AS "NPS",
    count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text AND (v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END) AS csat_positive,
    count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text AND (v."CSAT_Service" = ANY (ARRAY[1::numeric, 2::numeric])) THEN 1
            ELSE NULL::integer
        END) AS csat_negative,
    count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END) AS csat_total,
    round(count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text AND (v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END), 0)::numeric * 100::numeric, 2) AS "CSAT_Service",
    count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text AND (v."NES" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END) AS nes_positive,
    count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text AND (v."NES" = ANY (ARRAY[1::numeric, 2::numeric])) THEN 1
            ELSE NULL::integer
        END) AS nes_negative,
    count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END) AS nes_total,
    round(count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text AND (v."NES" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END), 0)::numeric * 100::numeric, 2) AS "NES",
    count(
        CASE
            WHEN v."CSAT_Product" IS NOT NULL AND v."CSAT_Product"::text <> 'NaN'::text AND (v."CSAT_Product" = ANY (ARRAY[1::numeric, 2::numeric])) THEN 1
            ELSE NULL::integer
        END) AS "Product_negative",
    count(
        CASE
            WHEN v."CSAT_Product" IS NOT NULL AND v."CSAT_Product"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END) AS product_total,
    round(count(
        CASE
            WHEN v."CSAT_Product" IS NOT NULL AND v."CSAT_Product"::text <> 'NaN'::text AND (v."CSAT_Product" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(
        CASE
            WHEN v."CSAT_Product" IS NOT NULL AND v."CSAT_Product"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END), 0)::numeric * 100::numeric, 2) AS "CSAT_Product"
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
     JOIN planet.agent a ON a.agent_id = v.agent_id
  WHERE d2."Week_Year" = 2025 AND (d.department_id = ANY (ARRAY[1, 2, 3]))
  GROUP BY d2."Month_number", d2."Week_Year", d.department_name, (concat(a.first_name, ' ', a.last_name)), a.agent_id
  ORDER BY d.department_name, d2."Month_number", a.agent_id;


-- planet."AGENT_monthly_evaluations" source

CREATE OR REPLACE VIEW planet."AGENT_monthly_evaluations"
AS SELECT qe.agent_id,
    concat(a.first_name, ' ', a.last_name) AS agent_name,
    d."Month_number",
    round(avg(
        CASE
            WHEN qe.case_type::text = 'Call'::text THEN qe.quality_total
            ELSE NULL::numeric
        END), 2) AS avg_quality_call,
    round(avg(
        CASE
            WHEN qe.case_type::text = 'E-mail'::text THEN qe.quality_total
            ELSE NULL::numeric
        END), 2) AS avg_quality_email,
    round(avg(qe.quality_total), 2) AS avg_quality_total
   FROM planet.quality_evaluations qe
     JOIN planet.agent a ON a.agent_id = qe.agent_id
     JOIN planet.date d ON d."Date" = qe."Date"
  GROUP BY qe.agent_id, (concat(a.first_name, ' ', a.last_name)), d."Month_number"
  ORDER BY d."Month_number", (concat(a.first_name, ' ', a.last_name));


-- planet."DAILY_RR" source

CREATE OR REPLACE VIEW planet."DAILY_RR"
AS SELECT d.department_name,
    d.department_group,
    d.team_hierarchy,
    rr.agent_id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    concat(tl.first_name, ' ', tl.last_name) AS "TL_Name",
    rr."Date",
    sum(rr."3_repeats") AS repeats,
    sum(rr.all_touchpoints) AS touchpoints,
    sum(rr."3_repeats")::numeric * 100.0 / NULLIF(sum(rr.all_touchpoints), 0)::numeric AS "RR",
    d2."Month_number",
    d2."Month",
    d2."Week_number"
   FROM planet.repeat_rate rr
     JOIN planet.agent a ON a.agent_id = rr.agent_id
     JOIN planet.department d ON d.department_id = rr.department_id
     JOIN planet.date d2 ON d2."Date" = rr."Date"
     JOIN planet.tl tl ON tl.tl_id = a.tl_id
  GROUP BY d2."Month_number", d2."Month", d2."Week_number", (concat(a.first_name, ' ', a.last_name)), (concat(tl.first_name, ' ', tl.last_name)), d.department_name, d.department_group, d.team_hierarchy, rr.agent_id, rr."Date"
  ORDER BY d2."Month_number", d2."Week_number", (concat(a.first_name, ' ', a.last_name));


-- planet."DAILY_VoC_Results" source

CREATE OR REPLACE VIEW planet."DAILY_VoC_Results"
AS SELECT d2."Month_number",
    d2."Month",
    d2."Date",
    d.department_name,
    count(
        CASE
            WHEN v.survey_resolution = 1::numeric THEN 1
            ELSE NULL::integer
        END) AS "Resolved",
    count(v.survey_resolution) AS "Not_resolved",
    round(count(
        CASE
            WHEN v.survey_resolution = 1::numeric THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v.survey_resolution), 0)::numeric * 100::numeric, 2) AS "Resolution_total",
    count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_promoter,
    count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_detractor,
    count(v."NPS")::numeric AS nps_total,
    round((count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric - count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric) / NULLIF(count(v."NPS"), 0)::numeric * 100::numeric, 2) AS "NPS",
    count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text AND (v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END) AS csat_positive,
    count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text AND (v."CSAT_Service" = ANY (ARRAY[1::numeric, 2::numeric])) THEN 1
            ELSE NULL::integer
        END) AS csat_negative,
    count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END) AS csat_total,
    round(count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text AND (v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(
        CASE
            WHEN v."CSAT_Service" IS NOT NULL AND v."CSAT_Service"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END), 0)::numeric * 100::numeric, 2) AS "CSAT_Service",
    count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text AND (v."NES" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END) AS nes_positive,
    count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text AND (v."NES" = ANY (ARRAY[1::numeric, 2::numeric])) THEN 1
            ELSE NULL::integer
        END) AS nes_negative,
    count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END) AS nes_total,
    round(count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text AND (v."NES" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(
        CASE
            WHEN v."NES" IS NOT NULL AND v."NES"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END), 0)::numeric * 100::numeric, 2) AS "NES",
    count(
        CASE
            WHEN v."CSAT_Product" IS NOT NULL AND v."CSAT_Product"::text <> 'NaN'::text AND (v."CSAT_Product" = ANY (ARRAY[1::numeric, 2::numeric])) THEN 1
            ELSE NULL::integer
        END) AS "Product_negative",
    count(
        CASE
            WHEN v."CSAT_Product" IS NOT NULL AND v."CSAT_Product"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END) AS product_total,
    round(count(
        CASE
            WHEN v."CSAT_Product" IS NOT NULL AND v."CSAT_Product"::text <> 'NaN'::text AND (v."CSAT_Product" = ANY (ARRAY[4::numeric, 5::numeric])) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(
        CASE
            WHEN v."CSAT_Product" IS NOT NULL AND v."CSAT_Product"::text <> 'NaN'::text THEN 1
            ELSE NULL::integer
        END), 0)::numeric * 100::numeric, 2) AS "CSAT_Product"
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
  WHERE d2."Week_Year" = 2025
  GROUP BY d2."Month_number", d2."Month", d.department_name, d2."Date"
  ORDER BY d2."Month_number", d2."Date";


-- planet."DAILY_repeat_cases" source

CREATE OR REPLACE VIEW planet."DAILY_repeat_cases"
AS SELECT rc.repeat_cases_id,
    rc."Date",
    rc.case_number,
    rc.department_id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    d.department_name AS "Department_Name",
    rc.nb_repeats
   FROM planet.repeat_cases rc
     JOIN planet.agent a ON rc.agent_id = a.agent_id
     JOIN planet.department d ON d.department_id = rc.department_id
  ORDER BY rc."Date", rc.nb_repeats;


-- planet."MONTHLY_Call_performance" source

CREATE OR REPLACE VIEW planet."MONTHLY_Call_performance"
AS SELECT dep.department_name AS "Department",
    d."Month_number",
    d."Week_Year",
    sum(cp.inbound) AS total_inbound,
    avg(cp.inbound) AS avg_inbound,
    avg(cp.sla) AS avg_sla,
    avg(cp.aba) AS avg_aba,
    avg((cp.asa || ' seconds'::text)::interval) AS avg_asa,
    avg((cp.aht || ' minutes'::text)::interval) AS avg_aht
   FROM planet.call_performance cp
     JOIN planet.date d ON cp.date_id = d.date_id
     JOIN planet.department dep ON dep.department_id = cp.department_id
  GROUP BY dep.department_name, d."Month_number", d."Week_Year"
  ORDER BY d."Week_Year", d."Month_number";


-- planet."MONTHLY_Evaluations" source

CREATE OR REPLACE VIEW planet."MONTHLY_Evaluations"
AS SELECT d."Month_number",
    avg(q.quality_total) AS score,
    dp.department_name AS name
   FROM planet.quality_evaluations q
     JOIN planet.date d ON q."Date" = d."Date"
     JOIN planet.department dp ON dp.department_id = q.department_id
  GROUP BY d."Month_number", dp.department_name;


-- planet."MONTHLY_Incoming" source

CREATE OR REPLACE VIEW planet."MONTHLY_Incoming"
AS SELECT d."Month",
    d."Month_number",
    sum(it.ticket_total) AS sum,
    dp.department_name AS name
   FROM planet.incoming_tickets it
     JOIN planet.date d ON it.date_id = d.date_id
     JOIN planet.department dp ON dp.department_id = it.department_id
  GROUP BY d."Month", d."Month_number", dp.department_name;


-- planet."MONTHLY_Outbounds" source

CREATE OR REPLACE VIEW planet."MONTHLY_Outbounds"
AS SELECT d."Month_number",
    dp.department_id,
    dp.department_name,
    sum(o.total_outbounds) AS outbounds,
    dp.department_name AS name
   FROM planet.outbounds o
     JOIN planet.date d ON o."Date" = d."Date"
     JOIN planet.department dp ON dp.department_id = o.department_id
  GROUP BY d."Month_number", dp.department_id, dp.department_name;


-- planet."MONTHLY_Productivity" source

CREATE OR REPLACE VIEW planet."MONTHLY_Productivity"
AS SELECT d."Month_number",
    avg(p.productivity_total) AS productivity,
    dp.department_name AS name
   FROM planet.productivity p
     JOIN planet.date d ON p."Date" = d."Date"
     JOIN planet.department dp ON dp.department_id = p.department_id
  GROUP BY d."Month_number", dp.department_name;


-- planet."MONTHLY_RR" source

CREATE OR REPLACE VIEW planet."MONTHLY_RR"
AS SELECT dt."Month_number",
    dt."Week_Year",
    sum(rr."3_repeats") AS repeats,
    sum(rr.all_touchpoints) AS touchpoints,
    rr.department_id,
    d.department_name AS name,
    sum(rr."3_repeats")::numeric * 100.0 / NULLIF(sum(rr.all_touchpoints), 0)::numeric AS rr
   FROM planet.repeat_rate rr
     JOIN planet.department d ON d.department_id = rr.department_id
     JOIN planet.date dt ON dt."Date" = rr."Date"
  GROUP BY dt."Month_number", rr.department_id, d.department_name, dt."Week_Year";


-- planet."MONTHLY_Tickets_SLA" source

CREATE OR REPLACE VIEW planet."MONTHLY_Tickets_SLA"
AS SELECT d."Month_number",
    avg(sla.sla_ticket) AS sla,
    dp.department_name AS name
   FROM planet.tickets_sla sla
     JOIN planet.date d ON sla.date_id = d.date_id
     JOIN planet.department dp ON dp.department_id = sla.department_id
  GROUP BY d."Month_number", dp.department_name;


-- planet."MONTHLY_Transfers" source

CREATE OR REPLACE VIEW planet."MONTHLY_Transfers"
AS SELECT d."Month_number",
    count(t.transfers_id) AS total_transfers,
    dp_from.department_name AS from_department,
    dp_to.department_name AS to_department
   FROM planet.transfers t
     JOIN planet.department dp_from ON dp_from.department_id = t.department_id
     JOIN planet.department dp_to ON dp_to.department_id = t.new_value
     JOIN planet.date d ON d."Date" = t."Date"
  WHERE d."Week_Year" = 2025
  GROUP BY d."Month_number", dp_from.department_name, dp_to.department_name;


-- planet."MONTHLY_VoC" source

CREATE OR REPLACE VIEW planet."MONTHLY_VoC"
AS SELECT d2."Month_number",
    d2."Week_Year",
    d.department_id,
    d.department_name,
    count(
        CASE
            WHEN v.survey_resolution = '1'::numeric THEN 1
            ELSE NULL::integer
        END) AS "Resolved",
    count(v.survey_resolution) AS "Not_resolved",
    round(count(
        CASE
            WHEN v.survey_resolution = '1'::numeric THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v.survey_resolution), 0)::numeric * 100::numeric, 2) AS "Resolution_total",
    count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_promoter,
    count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_detractor,
    count(v."NPS")::numeric AS nps_total,
    round((count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric - count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric) / NULLIF(count(v."NPS"), 0)::numeric * 100::numeric, 2) AS "NPS",
    count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END) AS csat_positive,
    count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS csat_negative,
    count(v."CSAT_Service") AS csat_total,
    round(count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."CSAT_Service"), 0)::numeric * 100::numeric, 2) AS "CSAT_Service",
    count(
        CASE
            WHEN v."NES" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END) AS nes_positive,
    count(
        CASE
            WHEN v."NES" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS nes_negative,
    count(v."NES") AS nes_total,
    round(count(
        CASE
            WHEN v."NES" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."NES"), 0)::numeric * 100::numeric, 2) AS "NES",
    count(
        CASE
            WHEN v."CSAT_Product" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS "Product_negative",
    count(v."CSAT_Product") AS product_total,
    round(count(
        CASE
            WHEN v."CSAT_Product" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."CSAT_Product"), 0)::numeric * 100::numeric, 2) AS "CSAT_Product"
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
     JOIN planet.agent a ON a.agent_id = v.agent_id
  WHERE d2."Week_Year" = 2025
  GROUP BY d2."Month_number", d2."Week_Year", d.department_id, d.department_name
  ORDER BY d.department_name, d2."Month_number";


-- planet."MONTHLY_VoC_PMS" source

CREATE OR REPLACE VIEW planet."MONTHLY_VoC_PMS"
AS SELECT d2."Month_number",
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    d2."Week_Year",
    d.department_group,
    d.department_name AS name,
    count(
        CASE
            WHEN v.survey_resolution = '1'::numeric THEN 1
            ELSE NULL::integer
        END) AS "Resolved",
    count(v.survey_resolution) AS "Not_resolved",
    round(count(
        CASE
            WHEN v.survey_resolution = '1'::numeric THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v.survey_resolution), 0)::numeric * 100::numeric, 2) AS "Resolution_total",
    count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_promoter,
    count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_detractor,
    count(v."NPS")::numeric AS nps_total,
    round((count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric - count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric) / NULLIF(count(v."NPS"), 0)::numeric * 100::numeric, 2) AS "NPS",
    count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END) AS csat_positive,
    count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS csat_negative,
    count(v."CSAT_Service") AS csat_total,
    round(count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."CSAT_Service"), 0)::numeric * 100::numeric, 2) AS "CSAT_Service",
    count(
        CASE
            WHEN v."NES" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END) AS nes_positive,
    count(
        CASE
            WHEN v."NES" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS nes_negative,
    count(v."NES") AS nes_total,
    round(count(
        CASE
            WHEN v."NES" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."NES"), 0)::numeric * 100::numeric, 2) AS "NES",
    count(
        CASE
            WHEN v."CSAT_Product" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS "Product_negative",
    count(v."CSAT_Product") AS product_total,
    round(count(
        CASE
            WHEN v."CSAT_Product" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."CSAT_Product"), 0)::numeric * 100::numeric, 2) AS "CSAT_Product"
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
     JOIN planet.agent a ON a.agent_id = v.agent_id
  WHERE d2."Week_Year" = 2025 AND (d.department_id = ANY (ARRAY[4, 5, 6, 7, 8, 9, 10, 11, 29, 43]))
  GROUP BY d2."Month_number", d2."Week_Year", d.department_name, d.department_group, (concat(a.first_name, ' ', a.last_name))
  ORDER BY d.department_name, d2."Month_number";


-- planet."MONTHLY_VoC_Reasons" source

CREATE OR REPLACE VIEW planet."MONTHLY_VoC_Reasons"
AS SELECT d."Month",
    dep.department_name,
    d."Week_Year" AS "Year",
    d."Month_number",
    v."NPS_type",
    v."NPS_Reason",
    count(*) AS total_reasons
   FROM planet."VoC" v
     JOIN planet.date d ON d."Date" = v."Date"
     JOIN planet.department dep ON dep.department_id = v.department_id
  GROUP BY d."Month", dep.department_name, d."Week_Year", d."Month_number", v."NPS_type", v."NPS_Reason"
  ORDER BY d."Week_Year", d."Month_number";


-- planet."Productivity_difference" source

CREATE MATERIALIZED VIEW planet."Productivity_difference"
TABLESPACE pg_default
AS WITH productivity_sum AS (
         SELECT d."Week_number",
            d."Week_Year",
            sum(p.productivity_total) AS agent_productivity
           FROM planet.productivity p
             JOIN planet.date d ON d."Date" = p."Date"
          GROUP BY d."Week_number", d."Week_Year"
        ), email_count AS (
         SELECT d."Week_number",
            d."Week_Year",
            count(*) AS email
           FROM planet.case_reason cr
             JOIN planet.date d ON d."Date" = cr."Date"
          GROUP BY d."Week_number", d."Week_Year"
        ), calls_count AS (
         SELECT d."Week_number",
            d."Week_Year",
            count(*) AS calls
           FROM planet.call_agent ca
             JOIN planet.date d ON d."Date" = ca."Date"
          WHERE ca.call_type::text = 'Inbound Call'::text
          GROUP BY d."Week_number", d."Week_Year"
        )
 SELECT ps."Week_number",
    ps."Week_Year",
    ps.agent_productivity,
    COALESCE(ec.email, 0::bigint) AS email,
    COALESCE(cc.calls, 0::bigint) AS calls,
    ps.agent_productivity - (COALESCE(ec.email, 0::bigint) + COALESCE(cc.calls, 0::bigint))::numeric AS difference
   FROM productivity_sum ps
     LEFT JOIN email_count ec ON ec."Week_number" = ps."Week_number" AND ec."Week_Year" = ps."Week_Year"
     LEFT JOIN calls_count cc ON cc."Week_number" = ps."Week_number" AND cc."Week_Year" = ps."Week_Year"
WITH DATA;


-- planet."VOC_PMS" source

CREATE OR REPLACE VIEW planet."VOC_PMS"
AS SELECT v."VoC_ID",
    v."Date" AS voc_date,
    v.case_number,
    v.survey_name,
    v."Premium",
    v.account_name,
    v.department_id,
    v.vertical,
    v.case_origin,
    v.case_reason,
    v.case_subreason,
    v.subject,
    v.agent_id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    v.country,
    v."NPS_type",
    v.survey_resolution,
    v."NPS",
    v."NPS_Reason",
    v."NES",
    v."CSAT_Service",
    v."CSAT_Product",
    v."HC_Score",
    regexp_replace(v.customer_comment::text, '[^\u0000-\u007F]'::text, ''::text, 'g'::text) AS customer_comment,
    regexp_replace(v.customer_comment_detractor::text, '[^\u0000-\u007F]'::text, ''::text, 'g'::text) AS customer_comment_detractor,
    v.contact_name,
    v.email,
    v.chain,
    v.department_name AS voc_department_name,
    v.team_hierarchy,
    v.department_group,
    d.department_name AS dep_name,
    d2."Month",
    d2."Week_number",
    d2."Date" AS calendar_date,
    concat(a.first_name, ' ', a.last_name) AS agent
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
     JOIN planet.agent a ON a.agent_id = v.agent_id
  WHERE d.department_id = ANY (ARRAY[4, 5, 6, 7, 8, 9, 10, 11, 29, 43])
  ORDER BY d2."Date";


-- planet."VOC_Payments" source

CREATE OR REPLACE VIEW planet."VOC_Payments"
AS SELECT v."VoC_ID",
    v."Date" AS voc_date,
    v.case_number,
    v.survey_name,
    v."Premium",
    v.account_name,
    v.department_id,
    v.vertical,
    v.case_origin,
    v.case_reason,
    v.case_subreason,
    v.subject,
    v.agent_id,
    concat(a.first_name, ' ', a.last_name) AS "Agent_Name",
    v.country,
    v."NPS_type",
    v.survey_resolution,
    v."NPS",
    v."NPS_Reason",
    v."NES",
    v."CSAT_Service",
    v."CSAT_Product",
    v."HC_Score",
    regexp_replace(v.customer_comment::text, '[^\u0000-\u007F]'::text, ''::text, 'g'::text) AS customer_comment,
    regexp_replace(v.customer_comment_detractor::text, '[^\u0000-\u007F]'::text, ''::text, 'g'::text) AS customer_comment_detractor,
    v.contact_name,
    v.email,
    v.chain,
    v.department_name AS voc_department_name,
    v.team_hierarchy,
    v.department_group,
    d.department_name AS dep_name,
    d2."Month",
    d2."Week_number",
    d2."Date" AS calendar_date,
    concat(a.first_name, ' ', a.last_name) AS agent
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
     JOIN planet.agent a ON a.agent_id = v.agent_id
  WHERE d.department_id = ANY (ARRAY[1, 2, 3])
  ORDER BY d2."Date";


-- planet."VoC_PMS_Negative" source

CREATE OR REPLACE VIEW planet."VoC_PMS_Negative"
AS SELECT v.survey_resolution,
    v."NPS_type",
    d.department_id,
    d.department_name AS dep_name,
    d2."Month",
    d2."Week_number",
    d2."Date",
    v.survey_name,
    concat(a.first_name, ' ', a.last_name) AS concat,
    v.case_number,
    v."Premium",
    v.case_origin,
    v.case_reason,
    regexp_replace(v.customer_comment::text, '[^\u0000-\u007F]'::text, ''::text, 'g'::text) AS customer_comment,
    regexp_replace(v.customer_comment_detractor::text, '[^\u0000-\u007F]'::text, ''::text, 'g'::text) AS customer_comment_detractor
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
     JOIN planet.agent a ON a.agent_id = v.agent_id
  WHERE (d.department_id = ANY (ARRAY[4, 5, 6, 7, 8, 9, 10, 11, 29, 43])) AND d2."Week_Year" = 2025 AND EXTRACT(month FROM d2."Date") >= 6::numeric AND (v.survey_resolution = 0::numeric OR v."NPS_type" = 'Detractor'::text);


-- planet."VoC_Payments_Negative" source

CREATE OR REPLACE VIEW planet."VoC_Payments_Negative"
AS SELECT v.survey_resolution,
    v."NPS_type",
    d.department_id,
    d.department_name AS dep_name,
    d2."Month",
    d2."Week_number",
    d2."Week_Year",
    d2."Date",
    v.survey_name,
    concat(a.first_name, ' ', a.last_name) AS concat,
    v.case_number,
    v."Premium",
    v.case_origin,
    v.case_reason,
    regexp_replace(v.customer_comment::text, '[^\u0000-\u007F]'::text, ''::text, 'g'::text) AS customer_comment,
    regexp_replace(v.customer_comment_detractor::text, '[^\u0000-\u007F]'::text, ''::text, 'g'::text) AS customer_comment_detractor
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
     JOIN planet.agent a ON a.agent_id = v.agent_id
  WHERE (d.department_id = ANY (ARRAY[1, 2, 3])) AND d2."Week_Year" = 2025 AND EXTRACT(month FROM d2."Date") >= 6::numeric AND (v.survey_resolution = 0::numeric OR v."NPS_type" = 'Detractor'::text);


-- planet."VoC_UTF8_Conflicts" source

CREATE OR REPLACE VIEW planet."VoC_UTF8_Conflicts"
AS SELECT "VoC_ID",
    "Date",
    case_number,
    survey_name,
    "Premium",
    account_name,
    department_id,
    vertical,
    case_origin,
    case_reason,
    case_subreason,
    subject,
    agent_id,
    country,
    "NPS_type",
    survey_resolution,
    "NPS",
    "NPS_Reason",
    "NES",
    "CSAT_Service",
    "CSAT_Product",
    "HC_Score",
    date_id,
    customer_comment,
    contact_name,
    email,
    chain,
    department_name,
    team_hierarchy,
    customer_comment_detractor,
    department_group
   FROM planet."VoC"
  WHERE survey_name ~ '[^\u0000-\u007F]'::text OR account_name ~ '[^\u0000-\u007F]'::text OR vertical ~ '[^\u0000-\u007F]'::text OR case_origin ~ '[^\u0000-\u007F]'::text OR case_reason ~ '[^\u0000-\u007F]'::text OR case_subreason ~ '[^\u0000-\u007F]'::text OR subject ~ '[^\u0000-\u007F]'::text OR country ~ '[^\u0000-\u007F]'::text OR "NPS_type" ~ '[^\u0000-\u007F]'::text OR "NPS_Reason" ~ '[^\u0000-\u007F]'::text OR customer_comment::text ~ '[^\u0000-\u007F]'::text OR contact_name::text ~ '[^\u0000-\u007F]'::text OR email::text ~ '[^\u0000-\u007F]'::text OR chain::text ~ '[^\u0000-\u007F]'::text OR department_name::text ~ '[^\u0000-\u007F]'::text OR team_hierarchy::text ~ '[^\u0000-\u007F]'::text OR customer_comment_detractor::text ~ '[^\u0000-\u007F]'::text OR department_group::text ~ '[^\u0000-\u007F]'::text;


-- planet."VoC_clean" source

CREATE OR REPLACE VIEW planet."VoC_clean"
AS SELECT "VoC_ID",
    "Date",
    case_number,
    survey_name,
    "Premium",
    account_name,
    department_id,
    vertical,
    case_origin,
    case_reason,
    case_subreason,
    subject,
    agent_id,
    country,
    "NPS_type",
    survey_resolution,
    "NPS",
    "NPS_Reason",
    "NES",
    "CSAT_Service",
    "CSAT_Product",
    "HC_Score",
    date_id,
    customer_comment,
    contact_name,
    email,
    chain,
    department_name,
    team_hierarchy,
    customer_comment_detractor,
    department_group,
    "Week_number",
    "Year",
    "Month_number",
    "Month_name",
    NULLIF("CSAT_Service", 'NaN'::numeric) AS "CSAT_Service_clean",
    NULLIF("NES", 'NaN'::numeric) AS "NES_clean",
    NULLIF("CSAT_Product", 'NaN'::numeric) AS "CSAT_Product_clean"
   FROM planet."VoC";


-- planet."WEEKLY_Call_performance" source

CREATE OR REPLACE VIEW planet."WEEKLY_Call_performance"
AS SELECT dep.department_name AS "Department",
    d."Week_number",
    sum(cp.inbound) AS total_inbound,
    avg(cp.inbound) AS avg_inbound,
    avg(cp.sla) AS avg_sla,
    avg(cp.aba) AS avg_aba,
    avg((cp.asa || ' seconds'::text)::interval) AS avg_asa,
    avg((cp.aht || ' minutes'::text)::interval) AS avg_aht
   FROM planet.call_performance cp
     JOIN planet.date d ON cp.date_id = d.date_id
     JOIN planet.department dep ON dep.department_id = cp.department_id
  GROUP BY dep.department_name, d."Week_number"
  ORDER BY dep.department_name, d."Week_number";


-- planet."WEEKLY_Contact_Rate" source

CREATE OR REPLACE VIEW planet."WEEKLY_Contact_Rate"
AS SELECT d."Week_number",
    avg(cr.total_number) AS contact_rate,
    dp.department_name AS name
   FROM planet.contact_rate cr
     JOIN planet.date d ON cr."Date" = d."Date"
     JOIN planet.department dp ON dp.department_id = cr.department_id
  GROUP BY d."Week_number", dp.department_name;


-- planet."WEEKLY_Evaluations" source

CREATE OR REPLACE VIEW planet."WEEKLY_Evaluations"
AS SELECT d."Week_number",
    avg(q.quality_total) AS score,
    dp.department_name AS name
   FROM planet.quality_evaluations q
     JOIN planet.date d ON q."Date" = d."Date"
     JOIN planet.department dp ON dp.department_id = q.department_id
  GROUP BY d."Week_number", dp.department_name;


-- planet."WEEKLY_Incoming" source

CREATE OR REPLACE VIEW planet."WEEKLY_Incoming"
AS SELECT d."Week_number",
    sum(it.ticket_total) AS sum,
    dp.department_name AS name
   FROM planet.incoming_tickets it
     JOIN planet.date d ON it.date_id = d.date_id
     JOIN planet.department dp ON dp.department_id = it.department_id
  GROUP BY d."Week_number", dp.department_name;


-- planet."WEEKLY_Outbounds" source

CREATE OR REPLACE VIEW planet."WEEKLY_Outbounds"
AS SELECT d."Week_number",
    dp.department_id,
    dp.department_name,
    sum(o.total_outbounds) AS outbounds,
    dp.department_name AS name
   FROM planet.outbounds o
     JOIN planet.date d ON o."Date" = d."Date"
     JOIN planet.department dp ON dp.department_id = o.department_id
  GROUP BY d."Week_number", dp.department_id, dp.department_name;


-- planet."WEEKLY_Productivity" source

CREATE OR REPLACE VIEW planet."WEEKLY_Productivity"
AS SELECT d."Week_number",
    avg(p.productivity_total) AS productivity,
    dp.department_name AS name
   FROM planet.productivity p
     JOIN planet.date d ON p."Date" = d."Date"
     JOIN planet.department dp ON dp.department_id = p.department_id
  GROUP BY d."Week_number", dp.department_name;


-- planet."WEEKLY_RR" source

CREATE OR REPLACE VIEW planet."WEEKLY_RR"
AS SELECT dt."Week_number",
    dt."Week_Year",
    sum(rr."3_repeats") AS repeats,
    sum(rr.all_touchpoints) AS touchpoints,
    rr.department_id,
    d.department_name AS name,
    sum(rr."3_repeats")::numeric * 100.0 / NULLIF(sum(rr.all_touchpoints), 0)::numeric AS rr
   FROM planet.repeat_rate rr
     JOIN planet.department d ON d.department_id = rr.department_id
     JOIN planet.date dt ON dt."Date" = rr."Date"
  GROUP BY dt."Week_number", rr.department_id, d.department_name, dt."Week_Year";


-- planet."WEEKLY_Tickets_SLA" source

CREATE OR REPLACE VIEW planet."WEEKLY_Tickets_SLA"
AS SELECT d."Week_number",
    avg(sla.sla_ticket) AS sla,
    dp.department_name AS name
   FROM planet.tickets_sla sla
     JOIN planet.date d ON sla.date_id = d.date_id
     JOIN planet.department dp ON dp.department_id = sla.department_id
  GROUP BY d."Week_number", dp.department_name;


-- planet."WEEKLY_VoC" source

CREATE OR REPLACE VIEW planet."WEEKLY_VoC"
AS SELECT d2."Week_number",
    d2."Week_Year",
    d.department_name AS name,
    count(
        CASE
            WHEN v.survey_resolution = '1'::numeric THEN 1
            ELSE NULL::integer
        END) AS "Resolved",
    count(v.survey_resolution) AS "Not_resolved",
    round(count(
        CASE
            WHEN v.survey_resolution = '1'::numeric THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v.survey_resolution), 0)::numeric * 100::numeric, 2) AS "Resolution_total",
    count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_promoter,
    count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric AS nps_detractor,
    count(v."NPS")::numeric AS nps_total,
    round((count(
        CASE
            WHEN v."NPS" = ANY (ARRAY[9::numeric, 10::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric - count(
        CASE
            WHEN v."NPS" >= 0::numeric AND v."NPS" <= 6::numeric THEN 1
            ELSE NULL::integer
        END)::numeric) / NULLIF(count(v."NPS"), 0)::numeric * 100::numeric, 2) AS "NPS",
    count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END) AS csat_positive,
    count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS csat_negative,
    count(v."CSAT_Service") AS csat_total,
    round(count(
        CASE
            WHEN v."CSAT_Service" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."CSAT_Service"), 0)::numeric * 100::numeric, 2) AS "CSAT_Service",
    count(
        CASE
            WHEN v."NES" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END) AS nes_positive,
    count(
        CASE
            WHEN v."NES" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS nes_negative,
    count(v."NES") AS nes_total,
    round(count(
        CASE
            WHEN v."NES" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."NES"), 0)::numeric * 100::numeric, 2) AS "NES",
    count(
        CASE
            WHEN v."CSAT_Product" = ANY (ARRAY[1::numeric, 2::numeric]) THEN 1
            ELSE NULL::integer
        END) AS "Product_negative",
    count(v."CSAT_Product") AS product_total,
    round(count(
        CASE
            WHEN v."CSAT_Product" = ANY (ARRAY[4::numeric, 5::numeric]) THEN 1
            ELSE NULL::integer
        END)::numeric / NULLIF(count(v."CSAT_Product"), 0)::numeric * 100::numeric, 2) AS "CSAT_Product"
   FROM planet."VoC" v
     JOIN planet.department d ON d.department_id = v.department_id
     JOIN planet.date d2 ON d2."Date" = v."Date"
     JOIN planet.agent a ON a.agent_id = v.agent_id
  WHERE d2."Week_Year" = 2025
  GROUP BY d2."Week_number", d2."Week_Year", d.department_name
  ORDER BY d.department_name, d2."Week_number";


-- planet.contact_per_month source

CREATE OR REPLACE VIEW planet.contact_per_month
AS SELECT d.department_name AS name,
    avg(cr.total_number) AS avg,
    d2."Month"
   FROM planet.contact_rate cr
     JOIN planet.department d ON d.department_id = cr.department_id
     JOIN planet.date d2 ON d2.date_id = cr.date_id
  GROUP BY d.department_name, d2."Month";



-- DROP FUNCTION planet._group_concat(text, text);

CREATE OR REPLACE FUNCTION planet._group_concat(text, text)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$
SELECT CASE
  WHEN $2 IS NULL THEN $1
  WHEN $1 IS NULL THEN $2
  ELSE $1 || ', ' || $2
END
$function$
;

-- DROP FUNCTION planet.clean_text_fields();

CREATE OR REPLACE FUNCTION planet.clean_text_fields()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- Limpieza solo de columnas que existen en surveys_sent
    IF NEW.account_name IS NOT NULL THEN
        NEW.account_name := regexp_replace(NEW.account_name, '[^\u0000-\u007F]', '', 'g');
    END IF;
    RETURN NEW;
END;
$function$
;

-- DROP AGGREGATE planet.group_concat(text);

CREATE OR REPLACE AGGREGATE planet.group_concat(pg_catalog.text) (
	SFUNC = planet._group_concat,
	STYPE = text
);

-- DROP FUNCTION planet.immutable_month_name(date);

CREATE OR REPLACE FUNCTION planet.immutable_month_name(date)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$
    SELECT to_char($1, 'Month')
$function$
;

-- DROP FUNCTION planet.immutable_month_name(timestamp);

CREATE OR REPLACE FUNCTION planet.immutable_month_name(ts timestamp without time zone)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$
    SELECT to_char($1::date, 'FMMonth')
$function$
;

-- DROP FUNCTION planet.immutable_short_month_name(timestamp);

CREATE OR REPLACE FUNCTION planet.immutable_short_month_name(ts timestamp without time zone)
 RETURNS text
 LANGUAGE sql
 IMMUTABLE
AS $function$
    SELECT to_char($1::date, 'Mon')
$function$
;

-- DROP FUNCTION planet.set_month_name();

CREATE OR REPLACE FUNCTION planet.set_month_name()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW."Month" := TO_CHAR(NEW."Date", 'FMMonth');
    RETURN NEW;
END;
$function$
;

-- DROP FUNCTION planet.update_date_fields();

CREATE OR REPLACE FUNCTION planet.update_date_fields()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW."Month" := TO_CHAR(NEW."Date", 'Month');
    NEW."Month_number" := EXTRACT(MONTH FROM NEW."Date")::int;
    RETURN NEW;
END;
$function$
;