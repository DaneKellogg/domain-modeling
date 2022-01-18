-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS CRM;

-- CREATE TABLES

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  company_id TEXT
);

CREATE TABLE activity (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  call_or_email TEXT,
  contact_person_id TEXT,
  salesperson_id TEXT,
  date TEXT,
  time TEXT,
  note TEXT
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  industry TEXT
);

CREATE TABLE salesperson (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);
