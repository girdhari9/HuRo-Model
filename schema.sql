create table if not exists posts (
  postid integer primary key autoincrement,
  posttitle text not null,
  posturl text not null,
  postcontent text not null,
  postauthor text not null,
  posttheme text not null,
  postdate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

create table if not exists pages (
  pageid integer primary key autoincrement,
  pageurl text not null,
  pagetitle text not null,
  pagecontent text not null,
  pageauthor text not null,
  pagedate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

create table if not exists users (
  userid integer primary key autoincrement,
  username text not null,
  password text not null,
  fullname text not null,
  emailid text not null,
  mobile_no text not null,
  createdate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

create table if not exists usersinfo (
  userid integer primary key autoincrement,
  username text not null,
  userinfodate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

create table if not exists comments (
  commentid integer primary key autoincrement,
  postid text not null,
  userid text not null,
  comment text not null,
  commentdate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

create table if not exists votes (
  userid integer not null,
  postid integer not null,
  likes integer not null DEFAULT 0,
  dislikes integer not null DEFAULT 0,
  votesdate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

create table if not exists postspara (
  postid integer not null,
  posttag1 text,
  posttag2 text,
  posttag3 text,
  posttag4 text,
  posttag5 text,
  postAcc1 real,
  postAcc2 real,
  postAcc3 real,
  modifydate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

create table if not exists usersProfile (
  userid integer not null,
  userCred integer DEFAULT 5,
  userPoints integer DEFAULT 50,
  modifydate TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);