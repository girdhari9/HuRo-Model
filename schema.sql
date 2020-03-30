CREATE TABLE IF NOT EXISTS "posts" (
	`postid`	integer PRIMARY KEY AUTOINCREMENT,
	`posttitle`	text NOT NULL,
	`posturl`	text NOT NULL UNIQUE,
	`postcontent`	text NOT NULL,
	`postauthor`	INTEGER NOT NULL,
	'posttype'      text NOT NULL,
	`posttheme`	INTEGER NOT NULL,
	`poststatus`	INTEGER DEFAULT 0,
	`postdate`	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE pages (
  pageid integer primary key autoincrement,
  pageurl text not null,
  pagetitle text not null,
  pagecontent text not null,
  pageauthor text not null,
  pagedate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS "users" (
	`userid`	integer PRIMARY KEY AUTOINCREMENT,
	`username`	text NOT NULL UNIQUE,
	`password`	text NOT NULL,
	`fullname`	text NOT NULL,
	`emailid`	text NOT NULL,
	`mobile_no`	text NOT NULL,
	'preferences'   text NOT NULL DEFAULT '',
	`pagedate`	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE usersinfo (
  userid integer primary key autoincrement,
  username text not null,
  pagedate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS "comments" (
	commentid	integer PRIMARY KEY AUTOINCREMENT,
	postid	text NOT NULL,
	userid	text NOT NULL,
	comment	TEXT NOT NULL,
	cmttime	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE votes (
  userid integer not null,
  postid integer not null,
  likes integer not null DEFAULT 0,
  dislikes integer not null DEFAULT 0,
  pagedate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

